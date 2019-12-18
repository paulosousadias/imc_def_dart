// Copyright (c) 2019, Paulo Sousa Dias. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// To run call "flutter packages pub run bin/imc_generator" with IMC.xml on the base folder.

import "dart:io";
import "dart:convert";

import 'package:xml/xml.dart' as xml;
import 'package:crypto/crypto.dart';

import 'package:yaml/yaml.dart';

const _header = '''// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// IMC Code Generator
// **************************************************************************
''';

const _header_gen = '''$_header
import 'dart:math' as math;
import 'package:built_value/built_value.dart';
import 'package:imc_def/imc_def_base.dart';

part 'imc_def_e.dart';
part 'imc_def_el.dart';
part 'imc_def_m.dart';
part 'imc_def_i.dart';

''';

const _header_ser_gen = '''$_header
import 'dart:typed_data';
import 'dart:convert' show utf8;

import 'package:imc_def/imc_def_base.dart' as imc;
import 'package:imc_def/imc_def.dart' as imc;
''';

const _header_gen_parts = '''$_header
part of 'imc_def_gen.dart';

''';

const _idxGen = 0;
const _idxMsg = 1;
const _idxBuilders = 2;
const _idxEnums = 3;
const _idxLocEnum = 4;
const _idxSerGen = 5;

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

String _replaceMiddleUnderscoreLetterWithUpercaseLetter(String s) =>
    s.split(RegExp(r'_')).reduce((t1, t2) => t1 + _toSentenceCase(t2));

String _convertToFieldName(String s) =>
    _replaceMiddleUnderscoreLetterWithUpercaseLetter(
        "${s[0].toLowerCase()}${s.substring(1)}");

String _convertToClassName(String s) =>
    _replaceMiddleUnderscoreLetterWithUpercaseLetter(_toSentenceCase(s));

/// Adds 'v' prefix if is a reserved word or starts with numbers
String _accountForReservedName(String s) {
  if (_reservedWords.contains(s.trim())) return "${s}Val";
  if (s.startsWith(RegExp(r'[0-9]'))) return "v$s";
  return s;
}

/// Looks for 'description' element and writes it to [sink].
/// The level tells how mush spaces ident.
_writeDescription(IOSink sink, xml.XmlElement element, {int level = 0}) {
  element
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

  // Message serializer
  _writeMessageSerializer(name, abbrev, msgId, m, sinks[_idxSerGen]);
}

/// Writes a message class
_writeMessageClass(String name, String abbrev, String msgId, xml.XmlElement m,
    List<IOSink> sinks) {
  sinks[_idxMsg].write('/// $name class\n///\n');
  _writeDescription(sinks[_idxMsg], m);

  var extentionClass = _messagesGroups[abbrev] ?? "ImcMessage";

  var msgStringClass =
      '''abstract class $abbrev extends $extentionClass implements Built<$abbrev, ${abbrev}Builder> {
  static const static_id = $msgId;
  $abbrev._();
  factory $abbrev([updates(${abbrev}Builder b)]) = _\$$abbrev;

  @override
  int get msgId => static_id;
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

    var fStr =
        '''\n  @override\n  final $dartType ${_convertToFieldName(abbrev)};''';
    sink.write('$fStr');
  });

  var msgStringImmutableClass2 = '''\n
  factory _\$$abbrev([void updates(${abbrev}Builder b)]) =>
      (${abbrev}Builder()..update(updates)).build();

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
  ${abbrev}Builder toBuilder() => ${abbrev}Builder()..replace(this);

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
    "timestamp?.hashCode",
    "src?.hashCode",
    "srcEnt?.hashCode",
    "dst?.hashCode",
    "dstEnt?.hashCode"
  ]);

  m.findElements("field").forEach((f) {
    var abbrev = f.getAttribute("abbrev");
    var fStr =
        ''' &&\n        ${_convertToFieldName(abbrev)} == this.${_convertToFieldName(abbrev)}''';
    sink.write('$fStr');

    hashElements.add("${_convertToFieldName(abbrev)}?.hashCode");
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
          ..add('src', "0x\${src?.toRadixString(16)} (\${src ?? '-'})")
          ..add('srcEnt', "0x\${srcEnt?.toRadixString(16)} (\${srcEnt ?? '-'})")
          ..add('dst', "0x\${dst?.toRadixString(16)} (\${dst ?? '-'})")
          ..add('dstEnt', "0x\${dstEnt?.toRadixString(16)} (\${dstEnt ?? '-'})")''';
  sink.write('$msgStringImmutableClass5');

  m.findElements("field").forEach((f) {
    var abbrev = f.getAttribute("abbrev");
    var unit = f.getAttribute("unit");
    var unitConv = '';
    if (unit != null && unit.length > 0) {
      if (unit.startsWith('rad')) {
        unitConv = '\${';
        unitConv +=
            '${_convertToFieldName(abbrev)} != null ? " [\${${_convertToFieldName(abbrev)} * 180.0 / math.pi} (${unit.replaceFirst("rad", "deg")})]" : ""';
        unitConv += '}';
      }
    }
    var fStr =
        '''\n          ..add('${_convertToFieldName(abbrev)}', '\$${_convertToFieldName(abbrev)}${unit != null ? ' ($unit)' : ''}$unitConv')''';
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
      '''class ${abbrev}Builder extends Object with ImcBuilderHeaderPart implements BuilderWithInstanciator<$abbrev, ${abbrev}Builder> {
  _\$$abbrev _\$v;

  DateTime _timestamp;
  @override
  DateTime get timestamp => _\$this._timestamp;
  @override
  set timestamp(DateTime timestamp) => _\$this._timestamp = timestamp;

  int _src;
  @override
  int get src => _\$this._src;
  @override
  set src(int src) => _\$this._src = src;

  int _srcEnt;
  @override
  int get srcEnt => _\$this._srcEnt;
  @override
  set srcEnt(int srcEnt) => _\$this._srcEnt = srcEnt;

  int _dst;
  @override
  int get dst => _\$this._dst;
  @override
  set dst(int dst) => _\$this._dst = dst;

  int _dstEnt;
  @override
  int get dstEnt => _\$this._dstEnt;
  @override
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

  ${abbrev}Builder.fromHeader(ImcBuilderHeaderPart headerFrom) {
    this.copyFromHeader(headerFrom);
  }

  ${abbrev}Builder newInstance([ImcBuilderHeaderPart headerFrom]) => ${abbrev}Builder()..copyFromHeader(headerFrom);

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

    var fStr =
        '''      _${_convertToFieldName(abbrev)} = _\$v.${_convertToFieldName(abbrev)};\n''';
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
      throw ArgumentError.notNull('other');
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
        _\$$abbrev._(
            timestamp: timestamp ?? DateTime.now(),
            src: src ?? ImcId.nullId,
            srcEnt: srcEnt ?? ImcEntityId.nullId,
            dst: dst ?? ImcId.nullId,
            dstEnt: dstEnt ?? ImcEntityId.nullId''';
  sink.write('$msgStringImmutableBuilder2');

  m.findElements("field").forEach((f) {
    var abbrev = f.getAttribute("abbrev");
    var type = f.getAttribute("type");
    var unit = f.getAttribute("unit");
    var typesData = getTypesForImcAndDart(abbrev, type, unit, f, m);

    var ifNullVal = typesData[2] == null ? "" : " ?? ${typesData[2]}";

    var fStr =
        ''',\n            ${_convertToFieldName(abbrev)}: ${_convertToFieldName(abbrev)}$ifNullVal''';
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

/// Writes a message class serializer related code
_writeMessageSerializer(
    String name, String abbrev, String msgId, xml.XmlElement m, IOSink sink) {
  sink.write('\n/// $name serializer class\n///\n');

  var serClassStart =
      '''class ${abbrev}Serializer extends imc.ImcSerializer<imc.$abbrev, imc.${abbrev}Builder> {
  @override
  ByteData serialize(imc.$abbrev message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    var payloadSize = serializePayload(message, byteData, byteOffset);
    // End payload

    byteOffset = headerSize + payloadSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  int serializePayload(imc.$abbrev message, ByteData byteData, int offset) {
    var byteOffset = offset;
\n''';
  sink.write('$serClassStart');

  m.findElements("field").forEach((f) {
    var abbrev = f.getAttribute("abbrev");
    var type = f.getAttribute("type");
    var unit = f.getAttribute("unit");
    // var typesData = getTypesForImcAndDart(abbrev, type, unit, f, m);
    // var dartType = typesData[1];

    var enumLike = "";
    switch (unit) {
      case "Enumerated":
      case "Bitfield":
        enumLike = ".value";
        break;
      default:
        break;
    }

    var fieldName = _convertToFieldName(abbrev);
    sink.write('    // field $fieldName\n');
    var fStr = '';
    switch (type) {
      case "uint8_t":
        fStr =
            '''    byteData.setUint8(byteOffset, message.$fieldName$enumLike);\n''';
        fStr += '    byteOffset += 1;\n';
        break;
      case "uint16_t":
        fStr =
            '''    byteData.setUint16(byteOffset, message.$fieldName$enumLike, imc.endian_ser);\n''';
        fStr += '    byteOffset += 2;\n';
        break;
      case "uint32_t":
        fStr =
            '''    byteData.setUint32(byteOffset, message.$fieldName$enumLike, imc.endian_ser);\n''';
        fStr += '    byteOffset += 4;\n';
        break;
      case "uint64_t":
        fStr =
            '''    byteData.setUint64(byteOffset, message.$fieldName$enumLike, imc.endian_ser);\n''';
        fStr += '    byteOffset += 8;\n';
        break;
      case "int8_t":
        fStr =
            '''    byteData.setInt8(byteOffset, message.$fieldName$enumLike);\n''';
        fStr += '    byteOffset += 1;\n';
        break;
      case "int16_t":
        fStr =
            '''    byteData.setInt16(byteOffset, message.$fieldName$enumLike, imc.endian_ser);\n''';
        fStr += '    byteOffset += 2;\n';
        break;
      case "int32_t":
        fStr =
            '''    byteData.setInt32(byteOffset, message.$fieldName$enumLike, imc.endian_ser);\n''';
        fStr += '    byteOffset += 4;\n';
        break;
      case "int64_t":
        fStr =
            '''    byteData.setInt64(byteOffset, message.$fieldName$enumLike, imc.endian_ser);\n''';
        fStr += '    byteOffset += 8;\n';
        break;
      case "fp32_t":
        fStr =
            '''    byteData.setFloat32(byteOffset, message.$fieldName$enumLike, imc.endian_ser);\n''';
        fStr += '    byteOffset += 4;\n';
        break;
      case "fp64_t":
        fStr =
            '''    byteData.setFloat64(byteOffset, message.$fieldName$enumLike, imc.endian_ser);\n''';
        fStr += '    byteOffset += 8;\n';
        break;
      case "rawdata":
        fStr = '''    var ${fieldName}SSize = message.$fieldName.length;\n''';
        fStr +=
            '''    byteData.setUint16(byteOffset, ${fieldName}SSize, imc.endian_ser);\n''';
        fStr += '    byteOffset += 2;\n';
        fStr +=
            '    message.$fieldName.forEach((b) => byteData.setUint8(byteOffset++, b));\n';
        break;
      case "plaintext":
        fStr =
            '    var ${fieldName}Encoded = utf8.encode(message.$fieldName);\n';
        fStr += '''    var ${fieldName}SSize = ${fieldName}Encoded.length;\n''';
        fStr +=
            '''    byteData.setUint16(byteOffset, ${fieldName}SSize, imc.endian_ser);\n''';
        fStr += '    byteOffset += 2;\n';
        fStr +=
            '    ${fieldName}Encoded.forEach((b) => byteData.setUint8(byteOffset++, b));\n';
        break;
      case "message":
        fStr = '    if (message.$fieldName == null) {\n';
        fStr +=
            '      byteData.setUint16(byteOffset, imc.ImcId.nullId, imc.endian_ser);\n';
        fStr += '      byteOffset += 2;\n';
        fStr += '    } else {\n';
        fStr += '      var id = message.$fieldName.msgId;\n';
        fStr +=
            '      var pMsgSerializer = imc.messagesSerializers[imc.idsToMessages[id] ?? imc.ImcId.nullId]?.call();\n';
        fStr += '      if (pMsgSerializer != null) {\n';
        fStr += '        byteData.setUint16(byteOffset, id, imc.endian_ser);\n';
        fStr += '        byteOffset += 2;\n';
        fStr +=
            '        var mPSize = pMsgSerializer.serializePayload(message.$fieldName, byteData, byteOffset);\n';
        fStr += '        byteOffset += mPSize;\n';
        fStr += '      }\n';
        fStr += '    }\n';
        break;
      case "message-list":
        fStr =
            '    if (message.$fieldName == null || message.$fieldName.isEmpty) {\n';
        fStr += '      byteData.setUint16(byteOffset, 0, imc.endian_ser);\n';
        fStr += '      byteOffset += 2;\n';
        fStr += '    } else {\n';
        fStr += '      var msgsCounter = 0;\n';
        fStr += '      var bufCounterPos = byteOffset;\n';
        fStr += '      byteOffset += 2;\n';
        fStr += '      for (int i = 0; i < message.$fieldName.length; i++) {\n';
        fStr += '        var id = message.$fieldName[i]?.msgId;\n';
        fStr +=
            '        var pMsgSerializer = imc.messagesSerializers[imc.idsToMessages[id ?? imc.ImcId.nullId] ?? imc.ImcId.nullId]?.call();\n';
        fStr += '        if (id != null && pMsgSerializer != null) {\n';
        fStr +=
            '          byteData.setUint16(byteOffset, id, imc.endian_ser);\n';
        fStr += '          byteOffset += 2;\n';
        fStr +=
            '          var mPSize = pMsgSerializer.serializePayload(message.$fieldName[i], byteData, byteOffset);\n';
        fStr += '          byteOffset += mPSize;\n';
        fStr += '          msgsCounter++;\n';
        fStr += '        }\n';
        fStr +=
            '        byteData.setUint16(bufCounterPos, msgsCounter, imc.endian_ser);\n';
        fStr += '      }\n';
        fStr += '    }\n';
        break;
      default:
        break;
    }
    sink.write('$fStr');
  });

  var serClass1 = '''\n    return byteOffset - offset;
  }

  @override
  imc.$abbrev deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianness = imc.getEndianness(byteData, byteOffset);
    byteOffset += 2;
    if (endianness == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianness);
    byteOffset += 2;
    if (msgId != imc.$abbrev.static_id)
      return null;

    var builder = imc.${abbrev}Builder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianness, offset);
    byteOffset = offset + imc.header_size;

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianness);
    if (calcCrc != readCrc)
      return null;

    // Payload
    var payloadSizeRead = deserializePayload(builder, byteData, endianness, byteOffset);
    // End payload
    
    if (payloadSizeRead != payloadSize)
      return null;
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }

  int deserializePayload(imc.${abbrev}Builder builder, ByteData byteData, Endian endianness, int offset) {
    var byteOffset = offset;
\n''';
  sink.write('$serClass1');

  m.findElements("field").forEach((f) {
    var abbrev = f.getAttribute("abbrev");
    var type = f.getAttribute("type");
    var unit = f.getAttribute("unit");
    var typesData = getTypesForImcAndDart(abbrev, type, unit, f, m);
    var dartType = typesData[1];

    var enumLike = "";
    var enumLikeE = "";
    switch (unit) {
      case "Enumerated":
      case "Bitfield":
        enumLike = "imc.$dartType(";
        enumLikeE = ")";
        break;
      default:
        break;
    }

    var fieldName = _convertToFieldName(abbrev);
    sink.write('    // field $fieldName\n');
    var fStr = '';
    switch (type) {
      case "uint8_t":
        fStr =
            '''    builder.$fieldName = ${enumLike}byteData.getUint8(byteOffset)$enumLikeE;\n''';
        fStr += '    byteOffset += 1;\n';
        break;
      case "uint16_t":
        fStr =
            '''    builder.$fieldName = ${enumLike}byteData.getUint16(byteOffset, endianness)$enumLikeE;\n''';
        fStr += '    byteOffset += 2;\n';
        break;
      case "uint32_t":
        fStr =
            '''    builder.$fieldName = ${enumLike}byteData.getUint32(byteOffset, endianness)$enumLikeE;\n''';
        fStr += '    byteOffset += 4;\n';
        break;
      case "uint64_t":
        fStr =
            '''    builder.$fieldName = ${enumLike}byteData.getUint64(byteOffset, endianness)$enumLikeE;\n''';
        fStr += '    byteOffset += 8;\n';
        break;
      case "int8_t":
        fStr =
            '''    builder.$fieldName = ${enumLike}byteData.getInt8(byteOffset)$enumLikeE;\n''';
        fStr += '    byteOffset += 1;\n';
        break;
      case "int16_t":
        fStr =
            '''    builder.$fieldName = ${enumLike}byteData.getInt16(byteOffset, endianness)$enumLikeE;\n''';
        fStr += '    byteOffset += 2;\n';
        break;
      case "int32_t":
        fStr =
            '''    builder.$fieldName = ${enumLike}byteData.getInt32(byteOffset, endianness)$enumLikeE;\n''';
        fStr += '    byteOffset += 4;\n';
        break;
      case "int64_t":
        fStr =
            '''    builder.$fieldName = ${enumLike}byteData.getInt64(byteOffset, endianness)$enumLikeE;\n''';
        fStr += '    byteOffset += 8;\n';
        break;
      case "fp32_t":
        fStr =
            '''    builder.$fieldName = ${enumLike}byteData.getFloat32(byteOffset, endianness)$enumLikeE;\n''';
        fStr += '    byteOffset += 4;\n';
        break;
      case "fp64_t":
        fStr =
            '''    builder.$fieldName = ${enumLike}byteData.getFloat64(byteOffset, endianness)$enumLikeE;\n''';
        fStr += '    byteOffset += 8;\n';
        break;
      case "rawdata":
        fStr =
            '''    var ${fieldName}SSize = byteData.getUint16(byteOffset, endianness);\n''';
        fStr += '    byteOffset += 2;\n';
        fStr += '    var ${fieldName}DData = List<int>(${fieldName}SSize);\n';
        fStr += '    for (var i = 0; i < ${fieldName}SSize; i++) {\n';
        fStr +=
            '      ${fieldName}DData[i] = byteData.getUint8(byteOffset++);\n';
        fStr += '    }\n';
        fStr += '    builder.$fieldName = ${fieldName}DData;\n';
        break;
      case "plaintext":
        fStr =
            '''    var ${fieldName}SSize = byteData.getUint16(byteOffset, endianness);\n''';
        fStr += '    byteOffset += 2;\n';
        fStr += '    var ${fieldName}DData = List<int>(${fieldName}SSize);\n';
        fStr += '    for (var i = 0; i < ${fieldName}SSize; i++) {\n';
        fStr +=
            '      ${fieldName}DData[i] = byteData.getUint8(byteOffset++);\n';
        fStr += '    }\n';
        fStr +=
            '    var ${fieldName}Decoded = utf8.decode(${fieldName}DData);\n';
        fStr += '    builder.$fieldName = ${fieldName}Decoded;\n';
        break;
      case "message":
        fStr =
            '    var ${fieldName}SId = byteData.getUint16(byteOffset, endianness);\n';
        fStr += '    byteOffset += 2;\n';
        fStr += '    if (${fieldName}SId == imc.ImcId.nullId) {\n';
        fStr += '      builder.$fieldName = null;\n';
        fStr += '    } else {\n';
        fStr +=
            '      var pMsgBuilder = imc.messagesBuilders[imc.idsToMessages[${fieldName}SId] ?? imc.ImcId.nullId]?.call()?.newInstance(builder);\n';
        fStr +=
            '      var pMsgSerializer = imc.messagesSerializers[imc.idsToMessages[${fieldName}SId] ?? imc.ImcId.nullId]?.call();\n';
        fStr += '      if (pMsgBuilder != null && pMsgSerializer != null) {\n';
        fStr +=
            '        var mPSize = pMsgSerializer.deserializePayload(pMsgBuilder, byteData, endianness, byteOffset);\n';
        fStr += '        byteOffset += mPSize;\n';
        fStr += '        builder.$fieldName = pMsgBuilder.build();\n';
        fStr += '      }\n';
        fStr += '    }\n';
        break;
      case "message-list":
        fStr =
            '    var ${fieldName}MMsgsNumber = byteData.getUint16(byteOffset, endianness);\n';
        fStr += '    byteOffset += 2;\n';
        fStr += '    builder.$fieldName = [];\n';
        fStr += '    for (int i = 0; i < ${fieldName}MMsgsNumber; i++) {\n';
        fStr +=
            '      var ${fieldName}SId = byteData.getUint16(byteOffset, endianness);\n';
        fStr += '      byteOffset += 2;\n';
        fStr += '      if (${fieldName}SId != imc.ImcId.nullId) {\n';
        fStr +=
            '        var pMsgBuilder = imc.messagesBuilders[imc.idsToMessages[${fieldName}SId] ?? imc.ImcId.nullId]?.call()?.newInstance(builder);\n';
        fStr +=
            '        var pMsgSerializer = imc.messagesSerializers[imc.idsToMessages[${fieldName}SId] ?? imc.ImcId.nullId]?.call();\n';
        fStr +=
            '        if (pMsgBuilder != null && pMsgSerializer != null) {\n';
        fStr +=
            '          var mPSize = pMsgSerializer.deserializePayload(pMsgBuilder, byteData, endianness, byteOffset);\n';
        fStr += '          byteOffset += mPSize;\n';
        fStr += '          builder.$fieldName.add(pMsgBuilder.build());\n';
        fStr += '        }\n';
        fStr += '      }\n';
        fStr += '    }\n';
        break;
      default:
        break;
    }
    sink.write('$fStr');
  });

  var serClassEnd = '''\n    return byteOffset - offset;
  }
}
''';
  sink.write('$serClassEnd');
}

/// Writes a message field code
_writeMessageField(
    xml.XmlElement field, xml.XmlElement message, List<IOSink> sinks) {
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

/// Returns the field [imc related type, type for dart, null if no default value].
List<String> getTypesForImcAndDart(String abbrev, String type, String unit,
    xml.XmlElement field, xml.XmlElement message) {
  var typeImc;
  var dartType;
  var defaultVal;
  switch (type) {
    case "uint8_t":
      typeImc = "ImcType.typeUInt8";
      dartType = "int";
      defaultVal = field.getAttribute("value") ?? "0";
      break;
    case "uint16_t":
      typeImc = "ImcType.typeUInt16";
      dartType = "int";
      defaultVal = field.getAttribute("value") ?? "0";
      break;
    case "uint32_t":
      typeImc = "ImcType.typeUint32";
      dartType = "int";
      defaultVal = field.getAttribute("value") ?? "0";
      break;
    case "int8_t":
      typeImc = "ImcType.typeInt8";
      dartType = "int";
      defaultVal = field.getAttribute("value") ?? "0";
      break;
    case "int16_t":
      typeImc = "ImcType.typeInt16";
      dartType = "int";
      defaultVal = field.getAttribute("value") ?? "0";
      break;
    case "int32_t":
      typeImc = "ImcType.typeInt32";
      dartType = "int";
      defaultVal = field.getAttribute("value") ?? "0";
      break;
    case "int64_t":
      typeImc = "ImcType.typeInt64";
      dartType = "int";
      defaultVal = field.getAttribute("value") ?? "0";
      break;
    case "fp32_t":
      typeImc = "ImcType.typeFp32";
      dartType = "double";
      defaultVal = field.getAttribute("value") ?? "0";
      break;
    case "fp64_t":
      typeImc = "ImcType.typeFp64";
      dartType = "double";
      defaultVal = field.getAttribute("value") ?? "0";
      break;
    case "rawdata":
      typeImc = "ImcType.typeRawdata";
      dartType = "List<int>";
      defaultVal = "List<int>(0)";
      break;
    case "plaintext":
      typeImc = "ImcType.typePlaintext";
      dartType = "String";
      defaultVal = field.getAttribute("value") ?? "''";
      break;
    case "message":
      typeImc = "ImcType.typeMessage";
      dartType = field.getAttribute("message-type") ?? "ImcMessage";
      break;
    case "message-list":
      typeImc = "ImcType.typeMessageList";
      dartType = "List<${field.getAttribute("message-type") ?? "ImcMessage"}>";
      defaultVal =
          "List<${field.getAttribute("message-type") ?? "ImcMessage"}>(0)";
      break;
    default:
      break;
  }

  switch (unit) {
    case "Enumerated":
    case "Bitfield":
      dartType = _getTypeForEnumLike(abbrev, field, message, unit);
      defaultVal = "$dartType(${defaultVal ?? '0'})";
      break;
    default:
      break;
  }

  return [typeImc, dartType, defaultVal];
}

/// Gets the name of the type for the enum like class.
_getTypeForEnumLike(String fieldAbbrev, xml.XmlElement field,
    xml.XmlElement message, String unit) {
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
_writeEnumLikeWorker(
    String eName, xml.XmlElement field, String unit, IOSink sink) {
  var eList = '';
  var eNameList = '';
  var c = 0;
  var prefix = field.getAttribute("prefix")?.toLowerCase() ?? '';
  if (prefix.length > 0) prefix += '_';
  var vLst = field.findElements("value");
  vLst.forEach((f) {
    var commaSep = vLst.length > 1 ? ',' : '';
    if (++c % 1 == 0) eList += "\n        ";
    if (++c % 1 == 0) eNameList += "\n        ";
    var ab = _accountForReservedName(
        prefix + f.getAttribute('abbrev').toLowerCase());
    eList += '$ab$commaSep';
    eNameList += "$ab: '''${f.getAttribute("name")}'''$commaSep";
  });
  if (vLst.length > 1) {
    eList += "\n      ";
    eNameList += "\n      ";
  }

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
    var vName = _accountForReservedName(
        prefix + f.getAttribute("abbrev").toLowerCase());
    var vVal = f.getAttribute("id");
    var bodyV = '''  static const $vName = const $eName($vVal);
''';
    _writeDescription(sink, f, level: 1);
    sink.write(bodyV);
  });

  var body2 = '''\n  static get values => [$eList];

  static get names => {$eNameList};

  const $eName(int value) : super(value);
''';
  sink.write(body2);

  var bodyBitfield = "";
  switch (unit) {
    case "Bitfield":
      bodyBitfield = '''\n  @override
  String toPrettyString() {
    var ret;
    if (value == 0) return '';

    var valNot = value;
    for (var item in values) {
      if (hasBits(<$eName>[item])) {
        ret ??= '';
        ret += '\${ret.isNotEmpty ? '|' : ''}\${names[item]}';
        valNot &= ~item.value;
      }
    }
    if (valNot != 0) {
      ret ??= '';
      ret += '\${ret.isNotEmpty ? '|' : ''}?';
    }
    return ret ?? super.toPrettyString();
  }

  static $eName fromBits(
          List<$eName> bits) =>
      (bits == null || bits.length < 2)
          ? $eName(bits == null || bits.isEmpty ? 0 : bits[0])
          : bits.reduce((b1, b2) => $eName(b1.value | b2.value));
''';
      break;
    case "Enumerated":
    default:
      bodyBitfield = '''\n  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
''';
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
  sink.write('''/// Lookup table from message names to IDs''');
  sink.write('''\nconst messagesToIds = {''');
  msgElm.findElements("message").forEach((m) => sink
      .write("\n  '${m.getAttribute("abbrev")}': ${m.getAttribute("id")},"));
  sink.write('''\n};\n''');

  sink.write('''\n/// Lookup table from IDs to message names''');
  sink.write('''\nconst idsToMessages = {''');
  msgElm.findElements("message").forEach((m) => sink
      .write("\n  ${m.getAttribute("id")}: '${m.getAttribute("abbrev")}',"));
  sink.write('''\n};\n''');

  sink.write('''\n/// Lookup 2D table from groups to message names''');
  sink.write('''\nconst messageGroups = {''');
  msgElm.findElements("message-groups").forEach((mg) {
    mg.findElements("message-group").forEach((m) {
      sink.write("\n  '${m.getAttribute("abbrev")}': [");
      m.findElements("message-type").forEach(
          (mt) => sink.write("\n      '${mt.getAttribute("abbrev")}',"));
      sink.write('''\n    ],''');
    });
  });
  sink.write('''\n};\n''');

  sink.write('''\n/// Signature for a function that creates a builder.''');
  sink.write('''\n///''');
  sink.write('''\n/// Used by [messagesBuilders].''');
  sink.write(
      '''\ntypedef BuilderWithInstanciatorBuilder = BuilderWithInstanciator Function();\n''');

  sink.write('''\n/// Lookup table from message names to builders''');
  sink.write(
      '''\nfinal messagesBuilders = <String, BuilderWithInstanciatorBuilder>{''');
  msgElm.findElements("message").forEach((m) => sink.write(
      "\n  '${m.getAttribute("abbrev")}': () => ${m.getAttribute("abbrev")}Builder(),"));
  sink.write('''\n};\n''');
}

/// Get config from `pubspec.yaml` or `imc_def.yaml`
Map<String, dynamic> _getConfig() {
  // if `imc_def.yaml` exists use it, otherwise use `pubspec.yaml`
  String filePath = (FileSystemEntity.typeSync("imc_def.yaml") !=
          FileSystemEntityType.notFound)
      ? "imc_def.yaml"
      : "pubspec.yaml";

  final File file = File(filePath);
  final String yamlString = file.readAsStringSync();
  final Map yamlMap = loadYaml(yamlString);

  if (yamlMap == null || !(yamlMap['imc_def'] is Map)) {
    stderr.writeln(Exception(
        "Your `$filePath` file does not contain a `imc_def` section."));
  }

  // yamlMap has the type YamlMap, which has several unwanted sideeffects
  final Map<String, dynamic> config = <String, dynamic>{};
  for (MapEntry<dynamic, dynamic> entry in yamlMap['imc_def'].entries) {
    config[entry.key] = entry.value;
  }

  if (!config.containsKey('imc')) {
    stderr
        .writeln(Exception("Your `imc_def` section does not contain a `imc`."));
    exit(1);
  }

  return config;
}

enum _Mode { local, production }

/// This code grnerate the IMC relate classes to work with IMC.
/// The following are NOT generated:
///  - imc_def_base.dart
///  - imc_def_enums.dart holds the base for enum like code.
///  - imc_serializers_base.dart holds the serializers base code.
///
/// The following are ARE generated:
///  - imc_def_gen.dart holds the lists for id to names and vice-versa lookup
///  - imc_def_m.dart holding the IMC classes.
///  - imc_def_i.dart holding the builders and immutables in built_value style.
///  - imc_def_e.dart holding global enum like classes.
///  - imc_def_el.dart holding message field local enum like classes.
///  - imc_serializers_gen.dart holds the lists for name/id to serializer and
///       serializers code
///
/// To run copy the IMC.xml to the base 'xml' folder and run
/// "flutter packages pub run bin/imc_generator" to (re)generate the code.
main(List<String> args) async {
  Map<String, dynamic> config = _getConfig();
  var localOrProductionMode = config.length == 0 || config['mode'] != null
      ? _Mode.local
      : _Mode.production;
  String xmlFilePath;
  String packageName;
  switch (localOrProductionMode) {
    case _Mode.production:
      xmlFilePath = config['imc'];
      packageName = config['package'] ?? '';
      break;
    default:
      xmlFilePath = 'xml/IMC.xml';
      packageName = '';
  }
  if (packageName.isNotEmpty && !packageName.endsWith('/')) packageName += '/';

  String imcXml;
  try {
    imcXml = await File(xmlFilePath).readAsString();
  } catch (e) {
    stderr.writeln(e);
    exit(1);
  }

  var document = xml.parse(imcXml);

  var fxGen = await File('lib/src/${packageName}imc_def_gen.dart')
      .create(recursive: true);
  var fxMessages = await File('lib/src/${packageName}imc_def_m.dart')
      .create(recursive: true);
  var fxBuilders = await File('lib/src/${packageName}imc_def_i.dart')
      .create(recursive: true);
  var fxEnums = await File('lib/src/${packageName}imc_def_e.dart')
      .create(recursive: true);
  var fxLEnums = await File('lib/src/${packageName}imc_def_el.dart')
      .create(recursive: true);
  var fxSerGen = await File('lib/src/${packageName}imc_serializers_gen.dart')
      .create(recursive: true);

  print('Generating ${fxGen.path}');
  print('Generating ${fxMessages.path}');
  print('Generating ${fxBuilders.path}');
  print('Generating ${fxEnums.path}');
  print('Generating ${fxLEnums.path}');
  print('Generating ${fxSerGen.path}');

  var imcAsBytes = utf8.encode(imcXml); // data being hashed
  var imcDigest = md5.convert(imcAsBytes);
  print("Hash of IMC file is $imcDigest");

  var sinkGen = fxGen.openWrite();
  var sinkMessages = fxMessages.openWrite();
  var sinkBuilders = fxBuilders.openWrite();
  var sinkEnums = fxEnums.openWrite();
  var sinkLEnums = fxLEnums.openWrite();
  var sinkSerGen = fxSerGen.openWrite();

  var sinks = <IOSink>[
    sinkGen,
    sinkMessages,
    sinkBuilders,
    sinkEnums,
    sinkLEnums,
    sinkSerGen
  ];

  sinkGen.write('$_header_gen');
  sinkMessages.write('$_header_gen_parts');
  sinkBuilders.write('$_header_gen_parts');
  sinkEnums.write('$_header_gen_parts');
  sinkLEnums.write('$_header_gen_parts');
  sinkSerGen.write('$_header_ser_gen');

  var msgElm = document.findElements("messages").first;
  sinks[_idxMsg]
      .write('const String VERSION = "${msgElm.getAttribute("version")}";\n');

  var headerElm = msgElm.findElements("header").first;
  var syncElm = headerElm.findElements("field").first;
  sinks[_idxMsg]
      .write('const int SYNC_NUMBER = ${syncElm.getAttribute("value")};\n');

  var sNmbr = int.parse(syncElm.getAttribute("value"));
  int rSNmbr = ((sNmbr & 0xFF) << 8 | sNmbr >> 8);
  sinks[_idxMsg].write(
      'const int SYNC_NUMBER_REVERSED = 0x${rSNmbr.toRadixString(16).toUpperCase()};\n');

  sinks[_idxMsg].write('const String MD5_SUM = "$imcDigest";\n');

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

  sinks[_idxSerGen]
      .write('''\n/// Signature for a function that creates a builder.''');
  sinks[_idxSerGen].write('''\n///''');
  sinks[_idxSerGen].write('''\n/// Used by [messagesSerializers].''');
  sinks[_idxSerGen].write(
      '''\ntypedef ImcSerializerBuilder = imc.ImcSerializer Function();''');

  sinks[_idxSerGen].write(
      '''\nfinal messagesSerializers = <String, ImcSerializerBuilder>{''');
  msgElm.findElements("message").forEach((m) => sinks[_idxSerGen].write(
      "\n  '${m.getAttribute("abbrev")}': () => ${m.getAttribute("abbrev")}Serializer(),"));
  sinks[_idxSerGen].write('''\n};\n''');

  sinks[_idxSerGen].write(
      '''\nfinal messagesIdsSerializers = <int, ImcSerializerBuilder>{''');
  msgElm.findElements("message").forEach((m) => sinks[_idxSerGen].write(
      "\n  ${m.getAttribute("id")}: () => ${m.getAttribute("abbrev")}Serializer(),"));
  sinks[_idxSerGen].write('''\n};\n''');

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

  // Generating the imc_def for easy import and use
  if (localOrProductionMode == _Mode.production) {
    var fxSerDef = await File('lib/src/${packageName}imc_def.dart')
        .create(recursive: true);
    print('Generating ${fxSerDef.path}');
    var sinkDef = fxSerDef.openWrite();

    sinkDef.write('$_header');
    sinkDef.write('''

library imc_def;

export 'package:imc_def/imc_def_base.dart';
export 'imc_def_gen.dart';
export 'imc_serializers_gen.dart';
''');

    sinkDef.close();
  }

  // Close the IOSink to free system resources.
  sinkGen.close();
  sinkMessages.close();
  sinkBuilders.close();
  sinkEnums.close();
  sinkLEnums.close();
  sinkSerGen.close();
}
