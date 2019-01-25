// Copyright (c) 2019, Paulo Sousa Dias. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a Apache License v2.0
// license that can be found in the LICENSE file.

// To run call "flutter packages pub run lib/imc_generator" with IMC.xml on the base folder.

import "dart:io";
import "dart:convert";

import 'package:xml/xml.dart' as xml;
import 'package:crypto/crypto.dart';

const _header = '''// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// IMC Code Generator
// **************************************************************************

''';

const _header_gen = '''$_header
import 'package:built_value/built_value.dart';
import 'package:imc_def/imc_def_base.dart';

part 'imc_def_e.dart';
part 'imc_def_el.dart';
part 'imc_def_m.dart';
part 'imc_def_i.dart';

''';

const _header_gen_parts = '''$_header
part of 'imc_def_gen.dart';

''';

const _idxGen = 0;
const _idxMsg = 1;
const _idxBuilders = 2;
const _idxEnums = 3;
const _idxLocEnum = 4;

/// A list of reserved words to not se on enums liks
const _reservedWords = <String>[
  "abstract",
  "as",
  "assert",
  "async",
  "await",
  "bool",
  "break",
  "case",
  "catch",
  "class",
  "const",
  "continue",
  "covariant",
  "default",
  "deferred",
  "do",
  "double",
  "dynamic",
  "else",
  "enum",
  "export",
  "extends",
  "external",
  "factory",
  "false",
  "final",
  "finally",
  "for",
  "Function",
  "get",
  "hide",
  "if",
  "implements",
  "import",
  "in",
  "int",
  "interface",
  "is",
  "library",
  "mixin",
  "new",
  "null",
  "on",
  "operator",
  "part",
  "rethrow",
  "return",
  "set",
  "show",
  "static",
  "super",
  "switch",
  "sync",
  "this",
  "throw",
  "true",
  "try",
  "typedef",
  "var",
  "void",
  "while",
  "with",
  "yield"
];

/// To hold list of messages-groups.
/// Keys are the messages, and values are the message group it belong.
var _messagesGroups = Map<String, String>();

String _toSentenceCase(String s) => "${s[0].toUpperCase()}${s.substring(1)}";

String _replaceMiddleUnderscoreLetterWithUpercaseLetter(String s) => s.split(new RegExp(r'_')).reduce((t1, t2) => t1 + _toSentenceCase(t2));

String _convertToFieldName(String s) => _replaceMiddleUnderscoreLetterWithUpercaseLetter("${s[0].toLowerCase()}${s.substring(1)}");

String _convertToClassName(String s) => _replaceMiddleUnderscoreLetterWithUpercaseLetter(_toSentenceCase(s));

/// Adds 'v' prefix if is a reserved word or starts with numbers
String _accountForReservedName(String s) {
  if (_reservedWords.contains(s.trim())) return "${s}Val";
  if (s.startsWith(new RegExp(r'[0-9]'))) return "v$s";
  return s;
}

/// Looks for 'description' element and writes it to [sink].
/// The level tells how mush spaces ident.
_writeDescription(IOSink sink, xml.XmlElement e, {int level = 0}) {
  e
      .findElements("description")
      .forEach((d) => d.text.trim().split("\n").forEach((tx) {
            for (var i = 0; i < level; i++) sink.write('  ');
            sink.write('/// ${tx.trim()}\n');
          }));
}

/// Writes the empty abstract message group classes from where their 
/// elements can extend instead of [ImcMessage],
/// Fill also [_messagesGroups] variable.
_writeMessageGroup(xml.XmlElement g, IOSink sink) {
  var name = g.getAttribute("name");
  var abbrev = g.getAttribute("abbrev");

  sink.write('/// $name message group class\n///\n');
  _writeDescription(sink, g);
  var msgStringClass = '''abstract class $abbrev extends ImcMessage {
}\n\n''';
  sink.write('$msgStringClass');

  g.findElements("message-type").forEach((t) {
    var msg = t.getAttribute("abbrev");
    _messagesGroups.putIfAbsent(msg, () => abbrev);
  });
}

/// Writes each message related code
_writeMessageCode(xml.XmlElement m, List<IOSink> sinks) {
  var name = m.getAttribute("name");
  var abbrev = m.getAttribute("abbrev");
  var msgId = m.getAttribute("id");

  // Message class
  _writeMessageClass(name, abbrev, msgId, m, sinks);

  // Message immutable
  _writeMessageImmutable(name, abbrev, msgId, m, sinks[_idxBuilders]);

  // Message builder
  _writeMessageBuilder(name, abbrev, msgId, m, sinks[_idxBuilders]);
}

/// Writes a message class
_writeMessageClass(String name, String abbrev, String msgId, xml.XmlElement m,
    List<IOSink> sinks) {
  sinks[_idxMsg].write('/// $name class\n///\n');
  _writeDescription(sinks[_idxMsg], m);

  var extentionClass = _messagesGroups[abbrev] ?? "ImcMessage";

  var msgStringClass =
      '''abstract class $abbrev extends $extentionClass implements Built<$abbrev, ${abbrev}Builder> {
  $abbrev._();
  @override
  int get msgId => $msgId;
  @override
  String get abbrev => "$abbrev";
''';
  var msgStringClassClose = '''}\n\n''';
  sinks[_idxMsg].write('$msgStringClass');
  m.findElements("field").forEach((f) => _writeMessageField(f, m, sinks));
  sinks[_idxMsg].write('$msgStringClassClose');
}

/// Writes a message class immutable related code
_writeMessageImmutable(
    String name, String abbrev, String msgId, xml.XmlElement m, IOSink sink) {
  sink.write('/// $name immutable class\n///\n');
  var msgStringImmutableClass = '''class _\$$abbrev extends $abbrev {
  @override
  final DateTime timestamp;
  @override
  final int src;
  @override
  final int srcEnt;
  @override
  final int dst;
  @override
  final int dstEnt;\n''';
  sink.write('$msgStringImmutableClass');

  m.findElements("field").forEach((f) {
    var abbrev = f.getAttribute("abbrev");
    var type = f.getAttribute("type");
    var unit = f.getAttribute("unit");
    var typesData = getTypesForImcAndDart(abbrev, type, unit, f, m);
    var dartType = typesData[1];

    var fStr = '''\n  @override\n  final $dartType ${_convertToFieldName(abbrev)};''';
    sink.write('$fStr');
  });

  var msgStringImmutableClass2 = '''\n
  factory _\$$abbrev([void updates(${abbrev}Builder b)]) =>
      (new ${abbrev}Builder()..update(updates)).build();

  _\$$abbrev._(
      {this.timestamp,
      this.src: ImcId.nullId,
      this.srcEnt: ImcEntityId.nullId,
      this.dst: ImcId.nullId,
      this.dstEnt: ImcEntityId.nullId''';
  sink.write('$msgStringImmutableClass2');

  m.findElements("field").forEach((f) {
    var abbrev = f.getAttribute("abbrev");
    var fStr = ''',\n      this.${_convertToFieldName(abbrev)}''';
    sink.write('$fStr');
  });

  var msgStringImmutableClass3 = '''})
      : super._();

  @override
  $abbrev rebuild(void updates(${abbrev}Builder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ${abbrev}Builder toBuilder() => new ${abbrev}Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $abbrev &&
        timestamp == other.timestamp &&
        src == other.src &&
        srcEnt == other.srcEnt &&
        dst == other.dst &&
        dstEnt == other.dstEnt''';
  sink.write('$msgStringImmutableClass3');

  var hashElements = List<String>();
  hashElements.addAll([
    "0",
    "timestamp.hashCode",
    "src.hashCode",
    "srcEnt.hashCode",
    "dst.hashCode",
    "dstEnt.hashCode"
  ]);

  m.findElements("field").forEach((f) {
    var abbrev = f.getAttribute("abbrev");
    var fStr = ''' &&\n        ${_convertToFieldName(abbrev)} == this.${_convertToFieldName(abbrev)}''';
    sink.write('$fStr');

    hashElements.add("${_convertToFieldName(abbrev)}.hashCode");
  });

  var hashStr = "";
  for (var i = 0; i < hashElements.length; i++) {
    if (i == 0)
      hashStr = "\$jc(${hashElements[i]}, \n        ${hashElements[++i]})";
    else
      hashStr = "\$jc($hashStr, \n        ${hashElements[i]})";
  }
  hashStr = "\$jf($hashStr)";

  var msgStringImmutableClass4 = ''';
  }

  @override
  int get hashCode {
    return $hashStr''';

  sink.write('$msgStringImmutableClass4');

  var msgStringImmutableClass5 = ''';
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('$abbrev')
          ..add('timestamp', timestamp)
          ..add('src', src)
          ..add('srcEnt', srcEnt)
          ..add('dst', dst)
          ..add('dstEnt', dstEnt)''';
  sink.write('$msgStringImmutableClass5');

  m.findElements("field").forEach((f) {
    var abbrev = f.getAttribute("abbrev");
    var fStr = '''\n          ..add('${_convertToFieldName(abbrev)}', ${_convertToFieldName(abbrev)})''';
    sink.write('$fStr');
  });

  var msgStringImmutableClass6 = ''')\n        .toString();
  }
''';
  sink.write('$msgStringImmutableClass6');

  var msgStringImmutableClassClose = '''}\n\n''';
  sink.write('$msgStringImmutableClassClose');
}

/// Writes a message class builder related code
_writeMessageBuilder(
    String name, String abbrev, String msgId, xml.XmlElement m, IOSink sink) {
  sink.write('/// $name builder class\n///\n');
  var msgStringImmutableBuilder =
      '''class ${abbrev}Builder implements Builder<$abbrev, ${abbrev}Builder> {
  _\$$abbrev _\$v;

  DateTime _timestamp;
  DateTime get timestamp => _\$this._timestamp;
  set timestamp(DateTime timestamp) => _\$this._timestamp = timestamp;

  int _src;
  int get src => _\$this._src;
  set src(int src) => _\$this._src = src;

  int _srcEnt;
  int get srcEnt => _\$this._srcEnt;
  set srcEnt(int srcEnt) => _\$this._srcEnt = srcEnt;

  int _dst;
  int get dst => _\$this._dst;
  set dst(int dst) => _\$this._dst = dst;

  int _dstEnt;
  int get dstEnt => _\$this._dstEnt;
  set dstEnt(int dstEnt) => _\$this._dstEnt = dstEnt;\n''';
  sink.write('$msgStringImmutableBuilder');

  m.findElements("field").forEach((f) {
    var abbrev = f.getAttribute("abbrev");
    var type = f.getAttribute("type");
    var unit = f.getAttribute("unit");
    var typesData = getTypesForImcAndDart(abbrev, type, unit, f, m);
    var dartType = typesData[1];

    var fStr = '''\n  $dartType _${_convertToFieldName(abbrev)};
  $dartType get ${_convertToFieldName(abbrev)} => _\$this._${_convertToFieldName(abbrev)};
  set ${_convertToFieldName(abbrev)}($dartType ${_convertToFieldName(abbrev)}) => _\$this._${_convertToFieldName(abbrev)} = ${_convertToFieldName(abbrev)};\n''';
    sink.write('$fStr');
  });

  var msgStringImmutableBuilder1 = '''\n  ${abbrev}Builder();

  ${abbrev}Builder get _\$this {
    if (_\$v != null) {
      _timestamp = _\$v.timestamp;
      _src = _\$v.src;
      _srcEnt = _\$v.srcEnt;
      _dst = _\$v.dst;
      _dstEnt = _\$v.dstEnt;\n''';
  sink.write('$msgStringImmutableBuilder1');

  m.findElements("field").forEach((f) {
    var abbrev = f.getAttribute("abbrev");

    var fStr = '''      _${_convertToFieldName(abbrev)} = _\$v.${_convertToFieldName(abbrev)};\n''';
    sink.write('$fStr');
  });

  var msgStringImmutableBuilder2 = '''
      _\$v = null;
    }
    return this;
  }

  @override
  void replace($abbrev other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _\$v = other as _\$$abbrev;
  }

  @override
  void update(void updates(${abbrev}Builder b)) {
    if (updates != null) updates(this);
  }

  @override
  _\$$abbrev build() {
    final _\$result = _\$v ??
        new _\$$abbrev._(
            timestamp: timestamp,
            src: src,
            srcEnt: srcEnt,
            dst: dst,
            dstEnt: dstEnt''';
  sink.write('$msgStringImmutableBuilder2');

  m.findElements("field").forEach((f) {
    var abbrev = f.getAttribute("abbrev");

    var fStr = ''',\n            ${_convertToFieldName(abbrev)}: ${_convertToFieldName(abbrev)}''';
    sink.write('$fStr');
  });

  var msgStringImmutableBuilder3 = ''');
    replace(_\$result);
    return _\$result;
  }
''';
  sink.write('$msgStringImmutableBuilder3');

  var msgStringImmutableBuilderClose = '''}\n\n''';
  sink.write('$msgStringImmutableBuilderClose');
}

/// Writes a message field code
_writeMessageField(xml.XmlElement field, xml.XmlElement message, List<IOSink> sinks) {
  var name = field.getAttribute("name");
  var abbrev = field.getAttribute("abbrev");
  var type = field.getAttribute("type");
  var unit = field.getAttribute("unit");

  var typesData = getTypesForImcAndDart(abbrev, type, unit, field, message);
  var typeImc = typesData[0];
  var dartType = typesData[1];
  
  var unitsStr = "";
  switch (unit) {
    case "Enumerated":
    case "Bitfield":
      _writeLocalEnumLike(abbrev, field, message, unit, sinks[_idxLocEnum]);
      break;
    default:
      unitsStr = unit == null ? "" : ', units: "$unit"';
  }
  var str = '''  @ImcField("$name", "$abbrev", $typeImc$unitsStr)
  $dartType get ${_convertToFieldName(abbrev)};
''';

  sinks[_idxMsg].write('\n');
  _writeDescription(sinks[_idxMsg], field, level: 1);
  sinks[_idxMsg].write('$str');
}

/// Returns the field [imc related type, type for dart].
List<String> getTypesForImcAndDart(String abbrev, String type, String unit,
    xml.XmlElement field, xml.XmlElement message) {
  var typeImc;
  var dartType;
  switch (type) {
    case "uint8_t":
      typeImc = "ImcType.typeUInt8";
      dartType = "int";
      break;
    case "uint16_t":
      typeImc = "ImcType.typeUInt16";
      dartType = "int";
      break;
    case "uint32_t":
      typeImc = "ImcType.typeUint32";
      dartType = "int";
      break;
    case "int8_t":
      typeImc = "ImcType.typeInt8";
      dartType = "int";
      break;
    case "int16_t":
      typeImc = "ImcType.typeInt16";
      dartType = "int";
      break;
    case "int32_t":
      typeImc = "ImcType.typeInt32";
      dartType = "int";
      break;
    case "int64_t":
      typeImc = "ImcType.typeInt64";
      dartType = "int";
      break;
    case "fp32_t":
      typeImc = "ImcType.typeFp32";
      dartType = "double";
      break;
    case "fp64_t":
      typeImc = "ImcType.typeFp64";
      dartType = "double";
      break;
    case "rawdata":
      typeImc = "ImcType.typeRawdata";
      dartType = "List<int>";
      break;
    case "plaintext":
      typeImc = "ImcType.typePlaintext";
      dartType = "String";
      break;
    case "message":
      typeImc = "ImcType.typeMessage";
      dartType = field.getAttribute("message-type") ?? "ImcMessage";
      break;
    case "message-list":
      typeImc = "ImcType.typeMessageList";
      dartType = "List<${field.getAttribute("message-type") ?? "ImcMessage"}>";
      break;
    default:
      break;
  }

  switch (unit) {
    case "Enumerated":
    case "Bitfield":
      dartType = _getTypeForEnumLike(abbrev, field, message, unit);
      break;
    default:
      break;
  }

  return [typeImc, dartType];
}

/// Gets the name of the type for the enum like class.
_getTypeForEnumLike(
    String fieldAbbrev, xml.XmlElement field, xml.XmlElement message, String unit) {
  var eDef = field.getAttribute("enum-def");
  if (eDef != null) return "${eDef}Enum";
  eDef = field.getAttribute("bitfield-def");
  if (eDef != null) return "${eDef}Bitfield";

  var sufix;
  switch (unit) {
    case "Enumerated":
      sufix = "Enum";
      break;
    default:
      sufix = unit;
  }
  // Local def
  var msgAbbrev = message.getAttribute("abbrev");
  return "$msgAbbrev$sufix${_convertToClassName(fieldAbbrev)}";
}

/// Writes the global enum like code classes.
_writeGlobalEnumLike(xml.XmlElement def, String unit, IOSink sink) {
  var sufix;
  switch (unit) {
    case "Enumerated":
      sufix = "Enum";
      break;
    default:
      sufix = unit;
  }
  var eName = "${_convertToClassName(def.getAttribute("abbrev"))}$sufix";

  // So writting global enums like
  _writeEnumLikeWorker(eName, def, unit, sink);
}

/// Writes eath message field local enum like code classes.
_writeLocalEnumLike(String abbrev, xml.XmlElement field, xml.XmlElement message,
    String unit, IOSink sink) {
  if (field.getAttribute("enum-def") != null ||
      field.getAttribute("bitfield-def") != null) return;

  // So writting local enums like
  var eName = _getTypeForEnumLike(abbrev, field, message, unit);
  _writeEnumLikeWorker(eName, field, unit, sink);
}

/// A worker to be used for the enum like code creation.
_writeEnumLikeWorker(String eName, xml.XmlElement field, String unit, IOSink sink) {
  var eList = "";
  var c = 0;
  field.findElements("value").forEach((f) {
    if (eList.length != 0) eList += ", ";
    if (++c % 5 == 0) eList += "\n      ";
    eList += _accountForReservedName(f.getAttribute("abbrev").toLowerCase());
  });

  var sufix;
  switch (unit) {
    case "Enumerated":
      sufix = "Enum";
      break;
    default:
      sufix = unit;
  }

  _writeDescription(sink, field);
  var body = '''class $eName extends ${sufix}Type {
''';
  sink.write(body);

  field.findElements("value").forEach((f) {
    var vName = _accountForReservedName(f.getAttribute("abbrev").toLowerCase());
    var vVal = f.getAttribute("id");
    var bodyV = '''  static const $vName = const $eName._($vVal);
''';
    _writeDescription(sink, f, level: 1);
    sink.write(bodyV);
  });

  var body2 = '''\n  static get values => [$eList];

  const $eName._(int value) : super(value);
''';
  sink.write(body2);

  var bodyBitfield = "";
  switch (unit) {
    case "Bitfield":
      bodyBitfield = '''\n  static $eName fromBits(
          List<$eName> bits) =>
      bits.reduce((b1, b2) => $eName._(b1.value | b2.value));
''';
      break;
    default:
  }
  sink.write(bodyBitfield);

  if (eName == "BooleanEnum") {
    var boolStr = '''\n  bool getBool() => value == 1 ? true : false;\n''';
    sink.write(boolStr);
  }
  var bodyEnd = '''}\n\n''';
  sink.write(bodyEnd);
}

void _writeMsgList(xml.XmlElement msgElm, IOSink sink) {
  sink.write('''const messagesToIds = {''');
  msgElm.findElements("message").forEach((m) => sink.write("\n  '${m.getAttribute("abbrev")}': ${m.getAttribute("id")},"));
  sink.write('''\n};\n''');

  sink.write('''\nconst idsToMessages = {''');
  msgElm.findElements("message").forEach((m) => sink.write("\n  ${m.getAttribute("id")}: '${m.getAttribute("abbrev")}',"));
  sink.write('''\n};\n''');

  sink.write('''\nconst messageGroups = {''');
  msgElm.findElements("message-groups").forEach((mg) {
    mg.findElements("message-group").forEach((m) {
      sink.write("\n  '${m.getAttribute("abbrev")}': [");
      m.findElements("message-type").forEach((mt) => sink.write("\n      '${mt.getAttribute("abbrev")}',"));
      sink.write('''\n    ],'''); 
    });
  });
  sink.write('''\n};\n''');

}

/// This code grnerate the IMC relate classes to work with IMC.
/// The following are NOT generated:
///  - imc_def.dart (the only one you need to import in your code)
///  - imc_def_enums.dart holds the base for enum like code.
/// 
/// The following are ARE generated:
///  - imc_def_m.dart holding the IMC classes.
///  - imc_def_i.dart holding the builders and immutables in built_value style.
///  - imc_def_e.dart holding global enum like classes.
///  - imc_def_el.dart holding message field local enum like classes.
/// 
/// To run copy the IMC.xml to the base folder and run 
/// "flutter packages pub run lib/imc_generator" to (re)generate the code.
main(List<String> args) async {
  String imcXml = await File('xml/IMC.xml').readAsString();

  var document = xml.parse(imcXml);

  var fxGen = new File('lib/src/imc_def_gen.dart');
  var fxMessages = new File('lib/src/imc_def_m.dart');
  var fxBuilders = new File('lib/src/imc_def_i.dart');
  var fxEnums = new File('lib/src/imc_def_e.dart');
  var fxLEnums = new File('lib/src/imc_def_el.dart');

  print(fxMessages.path);

  var imcAsBytes = utf8.encode(imcXml); // data being hashed
  var imcDigest = md5.convert(imcAsBytes);
  print("Hash $imcDigest");

  var sinkGen = fxGen.openWrite();
  var sinkMessages = fxMessages.openWrite();
  var sinkBuilders = fxBuilders.openWrite();
  var sinkEnums = fxEnums.openWrite();
  var sinkLEnums = fxLEnums.openWrite();

  var sinks = <IOSink>[sinkGen, sinkMessages, sinkBuilders, sinkEnums, sinkLEnums];

  sinkGen.write('$_header_gen');
  sinkMessages.write('$_header_gen_parts');
  sinkBuilders.write('$_header_gen_parts');
  sinkEnums.write('$_header_gen_parts');
  sinkLEnums.write('$_header_gen_parts');

  var msgElm = document.findElements("messages").first;
  sinks[_idxMsg]
      .write('const String VERSION = "${msgElm.getAttribute("version")}";\n');

  var headerElm = msgElm.findElements("header").first;
  var syncElm = headerElm.findElements("field").first;
  sinks[_idxMsg]
      .write('const int SYNC_NUMBER = ${syncElm.getAttribute("value")};\n');
  sinks[_idxMsg]
      .write('const String MD5_SUM = "$imcDigest";\n');

  sinks[_idxMsg].write('\n');

  sinks[_idxMsg].write('''/// The base IMCMessage
///
abstract class ImcMessage extends Message {
  @override
  int get sync => SYNC_NUMBER;
}
''');

  sinks[_idxMsg].write('\n');

  // Writting message-groups
  msgElm.findElements("message-groups").forEach((mg) => mg
      .findElements("message-group")
      .forEach((g) => _writeMessageGroup(g, sinks[_idxMsg])));

  // Writting messages
  msgElm.findElements("message").forEach((m) => _writeMessageCode(m, sinks));

  // Writting global Enum like
  msgElm.findElements("enumerations").forEach((e) => e
      .findElements("def")
      .forEach((m) => _writeGlobalEnumLike(m, "Enumerated", sinks[_idxEnums])));
  msgElm.findElements("bitfields").forEach((e) => e
      .findElements("def")
      .forEach((m) => _writeGlobalEnumLike(m, "Bitfield", sinks[_idxEnums])));


  _writeMsgList(msgElm, sinks[_idxGen]);

  // Close the IOSink to free system resources.
  sinkGen.close();
  sinkMessages.close();
  sinkBuilders.close();
  sinkEnums.close();
  sinkLEnums.close();
}
