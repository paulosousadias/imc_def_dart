// Copyright (c) 2019-23, Paulo Sousa Dias. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// To run call "flutter packages pub run bin/imc_generator" with IMC.xml on the base folder.

import 'dart:io';
import 'dart:convert';

import 'package:xml/xml.dart' as xml;
import 'package:crypto/crypto.dart';

import 'package:yaml/yaml.dart';

const _header = '''// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// IMC Code Generator
// **************************************************************************
''';

const _headerGen = '''$_header
import 'dart:convert';
import 'dart:core';
import 'dart:core' as core; // To be used on conflicts like for imc.Map
import 'dart:math' as math;
import 'package:collection/collection.dart';
import 'package:imc_def/imc_def_base.dart';

part 'imc_def_e.dart';
part 'imc_def_el.dart';
part 'imc_def_m.dart';
part 'imc_def_i.dart';

''';

const _headerSerGen = '''$_header
import 'dart:typed_data';
import 'dart:convert' show utf8;

import 'package:imc_def/imc_def.dart' as imc;
''';

const _headerGenParts = '''$_header
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
  'abstract',
  'as',
  'assert',
  'async',
  'await',
  'base',
  'bool',
  'break',
  'case',
  'catch',
  'class',
  'const',
  'continue',
  'covariant',
  'default',
  'deferred',
  'do',
  'double',
  'dynamic',
  'else',
  'enum',
  'export',
  'extends',
  'extension',
  'external',
  'factory',
  'false',
  'final',
  'finally',
  'for',
  'Function',
  'get',
  'hide',
  'if',
  'implements',
  'import',
  'in',
  'int',
  'interface',
  'is',
  'late',
  'library',
  'mixin',
  'new',
  'null',
  'on',
  'operator',
  'part',
  'required',
  'rethrow',
  'return',
  'sealed',
  'set',
  'show',
  'static',
  'super',
  'switch',
  'sync',
  'this',
  'throw',
  'true',
  'try',
  'typedef',
  'var',
  'void',
  'when',
  'while',
  'with',
  'yield',
];

/// To hold list of messages-groups.
/// Keys are the messages, and values are the message group it belong.
var _messagesGroups = <String, String>{};

String _toSentenceCase(String s) => '${s[0].toUpperCase()}${s.substring(1)}';

String _replaceMiddleUnderscoreLetterWithUpercaseLetter(String s) =>
    s.split(RegExp(r'_')).reduce((t1, t2) => t1 + _toSentenceCase(t2));

String _convertToFieldName(String s) =>
    _replaceMiddleUnderscoreLetterWithUpercaseLetter(
        '${s[0].toLowerCase()}${s.substring(1)}');

String _convertToClassName(String s) =>
    _replaceMiddleUnderscoreLetterWithUpercaseLetter(_toSentenceCase(s));

/// Adds 'v' prefix if is a reserved word or starts with numbers
String _accountForReservedName(String s) {
  if (_reservedWords.contains(s.trim())) return '${s}Val';
  if (s.startsWith(RegExp(r'[0-9]'))) return 'v$s';
  return s;
}

/// Looks for 'description' element and writes it to [sink].
/// The level tells how mush spaces ident.
void _writeDescription(IOSink sink, xml.XmlElement element, {int level = 0}) {
  element
      .findElements('description')
      .forEach((d) => d.innerText.trim().split('\n').forEach((tx) {
            for (var i = 0; i < level; i++) {
              sink.write('  ');
            }
            var txTrim = tx.trim();
            txTrim = txTrim.isEmpty ? txTrim : ' $txTrim';
            sink.write('///$txTrim\n');
          }));
}

/// Writes the empty abstract message group classes from where their
/// elements can extend instead of [ImcMessage],
/// Fill also [_messagesGroups] variable.
void _writeMessageGroup(xml.XmlElement g, IOSink sink) {
  var name = g.getAttribute('name');
  var abbrev = g.getAttribute('abbrev');

  if (name == null || name.isEmpty || abbrev == null || abbrev.isEmpty) {
    throw Exception(
        'Message group ${g.name} is missing name and/or abbrev! Skipping!');
  }

  sink.write('/// $name message group class\n///\n');
  _writeDescription(sink, g);
  var msgStringClass = '''abstract class $abbrev extends ImcMessage {}\n\n''';
  sink.write(msgStringClass);

  g.findElements('message-type').forEach((t) {
    var msg = t.getAttribute('abbrev');
    if (msg == null || msg.isEmpty) {
      throw Exception(
          'Message group $name, the message type ${t.name} is missing valid abbrev!');
    }

    _messagesGroups.putIfAbsent(msg, () => abbrev);
  });
}

/// Writes each message related code
void _writeMessageCode(xml.XmlElement m, List<IOSink> sinks) {
  var name = m.getAttribute('name');
  if (name == null || name.isEmpty) {
    throw Exception(
        'Element name is ${name == null ? 'null' : 'empty'} for element ${m.name}! Skipping!');
  }

  var abbrev = m.getAttribute('abbrev');
  if (abbrev == null || abbrev.isEmpty) {
    throw Exception(
        'Element abbrev is ${abbrev == null ? 'null' : 'empty'} for element ${m.name}! Skipping!');
  }

  var msgId = m.getAttribute('id');
  if (msgId == null || msgId.isEmpty) {
    throw Exception(
        'Element msgId is ${msgId == null ? 'null' : 'empty'} for element ${m.name}! Skipping!');
  }

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
void _writeMessageClass(String name, String abbrev, String msgId,
    xml.XmlElement m, List<IOSink> sinks) {
  sinks[_idxMsg].write('/// $name class\n///\n');
  _writeDescription(sinks[_idxMsg], m);

  var extentionClass = _messagesGroups[abbrev] ?? 'ImcMessage';

  var msgStringClass = '''abstract class $abbrev extends $extentionClass
    implements Built<$abbrev, ${abbrev}Builder> {
  static const staticId = $msgId;
  $abbrev._();
  factory $abbrev([void Function(${abbrev}Builder b)? updates]) =
      _\$$abbrev;

  @override
  int get msgId => staticId;
  @override
  String get abbrev => '$abbrev';
''';
  var msgStringClassClose = '''}\n\n''';
  sinks[_idxMsg].write(msgStringClass);
  m.findElements('field').forEach((f) => _writeMessageField(f, m, sinks));

  // Write toJson object
  var toJsonStr = '''
  /// To JSON object
  @override
  core.Map<String, dynamic> toJson([bool includeHeader = true]);
''';
  sinks[_idxMsg].write(toJsonStr);

  sinks[_idxMsg].write(msgStringClassClose);
}

/// Writes a message class immutable related code
void _writeMessageImmutable(
    String name, String abbrev, String msgId, xml.XmlElement m, IOSink sink) {
  sink.write('/// $name immutable class\n///\n');
  var msgStringImmutableClass = '''class _\$$abbrev extends $abbrev {
  @override
  final DateTime? timestamp;
  @override
  final int src;
  @override
  final int srcEnt;
  @override
  final int dst;
  @override
  final int dstEnt;\n''';
  sink.write(msgStringImmutableClass);

  m.findElements('field').forEach((f) {
    var abbrev = f.getAttribute('abbrev');
    var type = f.getAttribute('type');

    if (abbrev == null || abbrev.isEmpty || type == null || type.isEmpty) {
      throw Exception(
          'Field ${f.name} of $name message is missing a proper abbrev and/or type');
    }

    var unit = f.getAttribute('unit');
    var typesData = getTypesForImcAndDart(abbrev, type, unit, f, m);
    var dartType = typesData[1];

    var fStr =
        '''\n  @override\n  final $dartType${typesData[2] == null ? '?' : ''} ${_convertToFieldName(abbrev)};''';
    sink.write(fStr);
  });

  var msgStringImmutableClass2 = '''\n
  factory _\$$abbrev([void Function(${abbrev}Builder b)? updates]) =>
      (${abbrev}Builder()..update(updates)).build() as _\$$abbrev;

  factory _\$$abbrev.fromJson(core.Map<String, dynamic> json) {
    var val = ${abbrev}Builder();
    val.timestamp = json.containsKey('timestamp') && json['timestamp'] != null
        ? DateTime.fromMillisecondsSinceEpoch(
            ((json['timestamp'] as double) * 1E3).toInt(),
            isUtc: true)
        : DateTime.now();
    if (json.containsKey('src')) val.src = json['src'] as int;
    if (json.containsKey('src_ent')) val.srcEnt = json['src_ent'] as int;
    if (json.containsKey('dst')) val.dst = json['dst'] as int;
    if (json.containsKey('dst_ent')) val.dstEnt = json['dst_ent'] as int;

''';

  m.findElements('field').forEach((f) {
    var abbrev = f.getAttribute('abbrev');
    var type = f.getAttribute('type');
    var unit = f.getAttribute('unit');

    if (abbrev == null || abbrev.isEmpty || type == null || type.isEmpty) {
      throw Exception(
          'Field ${f.name} of $name message is missing a proper abbrev and/or type');
    }

    var typesData = getTypesForImcAndDart(abbrev, type, unit, f, m);
    var dartType = typesData[1];
    var defaultVal = typesData[2];
    var dartInnerType = typesData[3];

    switch (type) {
      case 'message-list': // List<M extends IMCMessage>
        msgStringImmutableClass2 += '''
    var ${_convertToFieldName(abbrev)} = <$dartInnerType>[];
    if (json.containsKey('$abbrev') && json['$abbrev'] != null) {
      var listJson = json['$abbrev'];
      for (dynamic lJ in listJson) {
        core.Map<String, dynamic> msgJson = lJ as core.Map<String, dynamic>;
        if (msgJson.containsKey('abbrev') && msgJson['abbrev'] != null) {
          var msgType = msgJson['abbrev'] as String;
          var builder = messagesBuilders[msgType]?.call();
          builder = builder?.fromJson(msgJson);
          var m = builder?.build() as $dartInnerType?;
          if (m != null) ${_convertToFieldName(abbrev)}.add(m);
        }
      }
    }
    val.${_convertToFieldName(abbrev)} = ${_convertToFieldName(abbrev)};\n''';
        break;
      case 'rawdata': // List<int>
        msgStringImmutableClass2 +=
            '''    val.${_convertToFieldName(abbrev)} = json.containsKey('$abbrev') ? base64.decode(json['$abbrev'] as String) : $defaultVal;\n''';
        break;
      case 'fp32_t':
      case 'fp64_t':
        msgStringImmutableClass2 +=
            '''    val.${_convertToFieldName(abbrev)} = json.containsKey('$abbrev') ? json['$abbrev'] as double : $defaultVal;\n''';
        break;
      case 'uint8_t':
      case 'uint16_t':
      case 'uint32_t':
      case 'uint64_t':
      case 'int8_t':
      case 'int16_t':
      case 'int32_t':
      case 'int64_t':
        if (unit != null &&
            unit.isNotEmpty &&
            (unit == 'Enumerated' || unit == 'Bitfield')) {
          msgStringImmutableClass2 +=
              '''    val.${_convertToFieldName(abbrev)} = json.containsKey('$abbrev') && json['$abbrev'] != null
        ? $dartType(json['$abbrev'] as int)
        : $defaultVal;\n''';
        } else {
          msgStringImmutableClass2 +=
              '''    val.${_convertToFieldName(abbrev)} = json.containsKey('$abbrev') ? json['$abbrev'] as int : $defaultVal;\n''';
        }
        break;
      case 'plaintext':
        msgStringImmutableClass2 +=
            '''    val.${_convertToFieldName(abbrev)} = json.containsKey('$abbrev') && json['$abbrev'] != null ? json['$abbrev'] as String : $defaultVal;\n''';
        break;
      case 'message':
        msgStringImmutableClass2 += '''

    $dartType? ${_convertToFieldName(abbrev)};
    if (json.containsKey('$abbrev') && json['$abbrev'] != null) {
      var msgJson = json['$abbrev'] as core.Map<String, dynamic>;
      if (msgJson.containsKey('abbrev') && msgJson['abbrev'] != null) {
        var msgType = msgJson['abbrev'] as String;
        var builder = messagesBuilders[msgType]?.call();
        builder = builder?.fromJson(msgJson);
        ${_convertToFieldName(abbrev)} = builder?.build() as $dartType?;
      }
    }
    val.${_convertToFieldName(abbrev)} = ${_convertToFieldName(abbrev)};\n''';
        break;
      default:
        break;
    }
  });

  msgStringImmutableClass2 += '''

    return val.build() as _\$$abbrev;
  }

  _\$$abbrev._(
      {this.timestamp, //Should be DateTime.now() but is not const
      this.src = ImcId.nullId,
      this.srcEnt = ImcEntityId.nullId,
      this.dst = ImcId.nullId,
      this.dstEnt = ImcEntityId.nullId''';
  sink.write(msgStringImmutableClass2);

  m.findElements('field').forEach((f) {
    var abbrev = f.getAttribute('abbrev');
    var type = f.getAttribute('type');
    if (abbrev == null || abbrev.isEmpty || type == null || type.isEmpty) {
      throw Exception(
          'Field ${f.name} of $name message is missing a proper abbrev and/or type');
    }
    var unit = f.getAttribute('unit');
    var typesData = getTypesForImcAndDart(abbrev, type, unit, f, m);

    var fStr =
        ''',\n      ${typesData[2] == null ? '' : 'required '}this.${_convertToFieldName(abbrev)}''';
    sink.write(fStr);
  });

  var msgStringImmutableClass3 = '''})
      : super._();

  @override
  $abbrev rebuild(void Function(${abbrev}Builder b) updates) =>
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
  sink.write(msgStringImmutableClass3);

  // Getting prep for hashCode method
  var hashElements = <String>[];
  hashElements.addAll([
    '0',
    'timestamp?.hashCode ?? null.hashCode',
    'src.hashCode',
    'srcEnt.hashCode',
    'dst.hashCode',
    'dstEnt.hashCode',
  ]);

  // Writting rest elements to oerator ==
  m.findElements('field').forEach((f) {
    var abbrev = f.getAttribute('abbrev');
    var type = f.getAttribute('type');

    if (abbrev == null || abbrev.isEmpty || type == null || type.isEmpty) {
      throw Exception(
          'Field ${f.name} of $name message is missing a proper abbrev and/or type');
    }

    var unit = f.getAttribute('unit');
    var typesData = getTypesForImcAndDart(abbrev, type, unit, f, m);

    var fStr = '';
    switch (type) {
      case 'message-list': // List<M extends IMCMessage>
        // Then this is a List
        //fStr = ''' &&\n        isMessageListsEqual(${_convertToFieldName(abbrev)}, other.${_convertToFieldName(abbrev)})''';
        fStr =
            ''' &&\n        DeepCollectionEquality().equals(${_convertToFieldName(abbrev)}, other.${_convertToFieldName(abbrev)})''';
        break;
      case 'rawdata': // List<int>
        //fStr = ''' &&\n        isRawdataEqual(${_convertToFieldName(abbrev)}, other.${_convertToFieldName(abbrev)})''';
        fStr =
            ''' &&\n        ListEquality().equals(${_convertToFieldName(abbrev)}, other.${_convertToFieldName(abbrev)})''';
        break;
      case 'fp32_t':
      case 'fp64_t':
        // To account for de/serialize floating point conversions
        fStr =
            ''' &&\n        (${_convertToFieldName(abbrev)} == other.${_convertToFieldName(abbrev)}
            || ${_convertToFieldName(abbrev)} - other.${_convertToFieldName(abbrev)} <= 1E-7)''';
        break;
      case 'uint8_t':
      case 'uint16_t':
      case 'uint32_t':
      case 'uint64_t':
      case 'int8_t':
      case 'int16_t':
      case 'int32_t':
      case 'int64_t':
      case 'plaintext':
      case 'message':
      default:
        fStr =
            ''' &&\n        ${_convertToFieldName(abbrev)} == other.${_convertToFieldName(abbrev)}''';
        break;
    }
    sink.write(fStr);

    hashElements.add(
        '${_convertToFieldName(abbrev)}${typesData[2] == null ? '?' : ''}.hashCode${typesData[2] == null ? ' ?? null.hashCode' : ''}');
  });

  var hashStr = '';
  for (var i = 0; i < hashElements.length; i++) {
    if (i == 0) {
      hashStr = '\$jc(${hashElements[i]},\n        ${hashElements[++i]})';
    } else {
      hashStr = '\$jc($hashStr,\n        ${hashElements[i]})';
    }
  }
  hashStr = '\$jf($hashStr)';

  var msgStringImmutableClass4 = ''';
  }

  @override
  int get hashCode {
    return $hashStr''';

  sink.write(msgStringImmutableClass4);

  var msgStringImmutableClass5 = ''';
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('$abbrev')
          ..add('timestamp', timestamp)
          ..add('src', '0x\${src.toRadixString(16)} (\$src)')
          ..add('srcEnt', '0x\${srcEnt.toRadixString(16)} (\$srcEnt)')
          ..add('dst', '0x\${dst.toRadixString(16)} (\$dst)')
          ..add('dstEnt', '0x\${dstEnt.toRadixString(16)} (\$dstEnt)')''';
  sink.write(msgStringImmutableClass5);

  m.findElements('field').forEach((f) {
    var abbrev = f.getAttribute('abbrev');
    var type = f.getAttribute('type');

    if (abbrev == null || abbrev.isEmpty) {
      throw Exception('Field ${f.name} is missing a proper abbrev and/or type');
    }

    var unit = f.getAttribute('unit');
    var unitConv = '';
    if (unit != null && unit.isNotEmpty) {
      if (unit.startsWith('rad')) {
        unitConv =
            ' [\${${_convertToFieldName(abbrev)} * 180.0 / math.pi} (${unit.replaceFirst("rad", "deg")})]';
      } else if (unit == 'Enumerated' || unit == 'Bitfield') {
        unitConv = ' [\${${_convertToFieldName(abbrev)}.toPrettyString()}]';
      }
    }

    bool isStringWithoutUnits = false;
    switch (type) {
      case 'plaintext':
        if (unit == null || unit.isEmpty) isStringWithoutUnits = true;
        break;
      default:
        break;
    }

    var fStr = "\n          ..add('${_convertToFieldName(abbrev)}', "
        "${isStringWithoutUnits ? '' : "'\$"}"
        "${_convertToFieldName(abbrev)}"
        "${unit != null ? ' ($unit)' : ''}$unitConv"
        "${isStringWithoutUnits ? '' : "'"})";
    sink.write(fStr);
  });

  var msgStringImmutableClass6 = ''')\n        .toString();
  }
''';
  sink.write(msgStringImmutableClass6);

  // Write toJson object
  var toJsonStr = '''

  /// To JSON object
  @override
  core.Map<String, dynamic> toJson([bool includeHeader = true]) => _toJson(includeHeader);

  core.Map<String, dynamic> _toJson([bool includeHeader = true]) => {
      'abbrev': '$abbrev',
      if (includeHeader) 'timestamp': (timestamp ?? DateTime.now()).millisecondsSinceEpoch / 1E3,
      if (includeHeader) 'src': src,
      if (includeHeader) 'src_ent': srcEnt,
      if (includeHeader) 'dst': dst,
      if (includeHeader) 'dst_ent': dstEnt,
''';

  m.findElements('field').forEach((f) {
    var abbrev = f.getAttribute('abbrev');
    var type = f.getAttribute('type');
    var unit = f.getAttribute('unit');

    if (abbrev == null || abbrev.isEmpty || type == null || type.isEmpty) {
      throw Exception(
          'Field ${f.name} of $name message is missing a proper abbrev and/or type');
    }

    switch (type) {
      case 'message-list': // List<M extends IMCMessage>
        toJsonStr += '''      '$abbrev': [
        ...${_convertToFieldName(abbrev)}.map((m) => m.toJson(false)),
          ],\n''';
        break;
      case 'rawdata': // List<int>
        toJsonStr +=
            '''      '$abbrev': base64.encode(${_convertToFieldName(abbrev)}),\n''';
        break;
      case 'fp32_t':
      case 'fp64_t':
        toJsonStr += '''      '$abbrev': ${_convertToFieldName(abbrev)},\n''';
        break;
      case 'uint8_t':
      case 'uint16_t':
      case 'uint32_t':
      case 'uint64_t':
      case 'int8_t':
      case 'int16_t':
      case 'int32_t':
      case 'int64_t':
        if (unit != null &&
            unit.isNotEmpty &&
            (unit == 'Enumerated' || unit == 'Bitfield')) {
          toJsonStr +=
              '''      '$abbrev': ${_convertToFieldName(abbrev)}.value,\n''';
        } else {
          toJsonStr += '''      '$abbrev': ${_convertToFieldName(abbrev)},\n''';
        }
        break;
      case 'plaintext':
        toJsonStr += '''      '$abbrev': ${_convertToFieldName(abbrev)},\n''';
        break;
      case 'message':
        toJsonStr +=
            '''      '$abbrev': ${_convertToFieldName(abbrev)}?.toJson(false),\n''';
        break;
      default:
        break;
    }
  });

  toJsonStr += '''
      };
''';
  sink.write(toJsonStr);

  var msgStringImmutableClassClose = '''}\n\n''';
  sink.write(msgStringImmutableClassClose);
}

/// Writes a message class builder related code
void _writeMessageBuilder(
    String name, String abbrev, String msgId, xml.XmlElement m, IOSink sink) {
  sink.write('/// $name builder class\n///\n');
  var msgStringImmutableBuilder = '''class ${abbrev}Builder extends Object
    with ImcBuilderHeaderPart
    implements BuilderWithInstanciator<$abbrev, ${abbrev}Builder> {
  _\$$abbrev? _\$v;

  DateTime? _timestamp = DateTime.now();
  @override
  DateTime? get timestamp => _\$this._timestamp;
  @override
  set timestamp(DateTime? timestamp) => _\$this._timestamp = timestamp;

  int _src = ImcId.nullId;
  @override
  int get src => _\$this._src;
  @override
  set src(int src) => _\$this._src = src;

  int _srcEnt = ImcEntityId.nullId;
  @override
  int get srcEnt => _\$this._srcEnt;
  @override
  set srcEnt(int srcEnt) => _\$this._srcEnt = srcEnt;

  int _dst = ImcId.nullId;
  @override
  int get dst => _\$this._dst;
  @override
  set dst(int dst) => _\$this._dst = dst;

  int _dstEnt = ImcEntityId.nullId;
  @override
  int get dstEnt => _\$this._dstEnt;
  @override
  set dstEnt(int dstEnt) => _\$this._dstEnt = dstEnt;\n''';
  sink.write(msgStringImmutableBuilder);

  m.findElements('field').forEach((f) {
    var abbrev = f.getAttribute('abbrev');
    var type = f.getAttribute('type');

    if (abbrev == null || abbrev.isEmpty || type == null || type.isEmpty) {
      throw Exception(
          'Field ${f.name} of message $name is missing abbrev and/or type! Skipping!');
    }

    var unit = f.getAttribute('unit');
    var typesData = getTypesForImcAndDart(abbrev, type, unit, f, m);
    var dartType = typesData[1];
    var initVal = typesData[2] == null ? '' : ' = ${typesData[2]}';
    var isNullMarker = typesData[2] == null ? '?' : '';

    var fStr =
        '''\n  $dartType$isNullMarker _${_convertToFieldName(abbrev)}$initVal;
  $dartType$isNullMarker get ${_convertToFieldName(abbrev)} => _\$this._${_convertToFieldName(abbrev)};
  set ${_convertToFieldName(abbrev)}($dartType$isNullMarker ${_convertToFieldName(abbrev)}) => _\$this._${_convertToFieldName(abbrev)} = ${_convertToFieldName(abbrev)};\n''';
    sink.write(fStr);
  });

  var msgStringImmutableBuilder1 = '''\n  ${abbrev}Builder();

  ${abbrev}Builder.fromHeader(ImcBuilderHeaderPart headerFrom) {
    copyFromHeader(headerFrom);
  }

  ${abbrev}Builder.fromJson(core.Map<String, dynamic> json) {
    var v = _\$$abbrev.fromJson(json);
    replace(v);
  }

  @override
  ${abbrev}Builder fromJson(core.Map<String, dynamic> json) =>
      ${abbrev}Builder.fromJson(json);

  @override
  ${abbrev}Builder newInstance([ImcBuilderHeaderPart? headerFrom]) =>
      ${abbrev}Builder()..copyFromHeader(headerFrom);

  ${abbrev}Builder get _\$this {
    if (_\$v != null) {
      _timestamp = _\$v!.timestamp;
      _src = _\$v!.src;
      _srcEnt = _\$v!.srcEnt;
      _dst = _\$v!.dst;
      _dstEnt = _\$v!.dstEnt;\n''';
  sink.write(msgStringImmutableBuilder1);

  m.findElements('field').forEach((f) {
    var abbrev = f.getAttribute('abbrev');
    if (abbrev == null || abbrev.isEmpty) {
      throw Exception(
          'Field ${f.name} of message $name is missing abbrev! Skipping!');
    }

    var fStr =
        '''      _${_convertToFieldName(abbrev)} = _\$v!.${_convertToFieldName(abbrev)};\n''';
    sink.write(fStr);
  });

  var msgStringImmutableBuilder2 = '''
      _\$v = null;
    }
    return this;
  }

  @override
  void replace($abbrev other) {
    _\$v = other as _\$$abbrev;
  }

  @override
  void update(void Function(${abbrev}Builder b)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $abbrev build() {
    final result = _\$v ??
        _\$$abbrev._(
            timestamp: timestamp ?? DateTime.now(),
            src: src,
            srcEnt: srcEnt,
            dst: dst,
            dstEnt: dstEnt''';
  sink.write(msgStringImmutableBuilder2);

  m.findElements('field').forEach((f) {
    var abbrev = f.getAttribute('abbrev');
    var type = f.getAttribute('type');

    if (abbrev == null || abbrev.isEmpty || type == null || type.isEmpty) {
      throw Exception(
          'Field ${f.name} of message $name is missing abbrev and/or type! Skipping!');
    }

    var fStr =
        ''',\n            ${_convertToFieldName(abbrev)}: ${_convertToFieldName(abbrev)}''';
    sink.write(fStr);
  });

  var msgStringImmutableBuilder3 = ''');
    replace(result);
    return result;
  }
''';
  sink.write(msgStringImmutableBuilder3);

  var msgStringImmutableBuilderClose = '''}\n\n''';
  sink.write(msgStringImmutableBuilderClose);
}

/// Writes a message class serializer related code
void _writeMessageSerializer(
    String name, String abbrev, String msgId, xml.XmlElement m, IOSink sink) {
  sink.write('\n/// $name serializer class\n///\n');

  var serClassStart = '''class ${abbrev}Serializer
    extends imc.ImcSerializer<imc.$abbrev?, imc.${abbrev}Builder> {
  @override
  ByteData serialize(imc.$abbrev? message, [int? syncNumber]) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);

    if (message == null) {
      return byteData.buffer.asByteData(0, byteOffset);
    }

    byteOffset = imc.serializeHeader(message, byteData, syncNumber);
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
  int serializePayload(
      imc.$abbrev? message, ByteData byteData, int offset) {
    if (message == null) return 0;

    var byteOffset = offset;
\n''';
  sink.write(serClassStart);

  m.findElements('field').forEach((f) {
    var abbrev = f.getAttribute('abbrev');
    var type = f.getAttribute('type');

    if (abbrev == null || abbrev.isEmpty || type == null || type.isEmpty) {
      throw Exception(
          'Field ${f.name} of message $name is missing abbrev and/or type! Skipping!');
    }

    var unit = f.getAttribute('unit');
    // var typesData = getTypesForImcAndDart(abbrev, type, unit, f, m);
    // var dartType = typesData[1];

    var enumLike = '';
    switch (unit) {
      case 'Enumerated':
      case 'Bitfield':
        enumLike = '.value';
        break;
      default:
        break;
    }

    var fieldName = _convertToFieldName(abbrev);
    sink.write('    // field $fieldName\n');
    var fStr = '';
    switch (type) {
      case 'uint8_t':
        fStr =
            '''    byteData.setUint8(byteOffset, message.$fieldName$enumLike);\n''';
        fStr += '    byteOffset += 1;\n';
        break;
      case 'uint16_t':
        fStr =
            '''    byteData.setUint16(byteOffset, message.$fieldName$enumLike, imc.endianSer);\n''';
        fStr += '    byteOffset += 2;\n';
        break;
      case 'uint32_t':
        fStr =
            '''    byteData.setUint32(byteOffset, message.$fieldName$enumLike, imc.endianSer);\n''';
        fStr += '    byteOffset += 4;\n';
        break;
      case 'uint64_t':
        fStr =
            '''    byteData.setUint64(byteOffset, message.$fieldName$enumLike, imc.endianSer);\n''';
        fStr += '    byteOffset += 8;\n';
        break;
      case 'int8_t':
        fStr =
            '''    byteData.setInt8(byteOffset, message.$fieldName$enumLike);\n''';
        fStr += '    byteOffset += 1;\n';
        break;
      case 'int16_t':
        fStr =
            '''    byteData.setInt16(byteOffset, message.$fieldName$enumLike, imc.endianSer);\n''';
        fStr += '    byteOffset += 2;\n';
        break;
      case 'int32_t':
        fStr =
            '''    byteData.setInt32(byteOffset, message.$fieldName$enumLike, imc.endianSer);\n''';
        fStr += '    byteOffset += 4;\n';
        break;
      case 'int64_t':
        fStr =
            '''    byteData.setInt64(byteOffset, message.$fieldName$enumLike, imc.endianSer);\n''';
        fStr += '    byteOffset += 8;\n';
        break;
      case 'fp32_t':
        fStr =
            '''    byteData.setFloat32(byteOffset, message.$fieldName$enumLike, imc.endianSer);\n''';
        fStr += '    byteOffset += 4;\n';
        break;
      case 'fp64_t':
        fStr =
            '''    byteData.setFloat64(byteOffset, message.$fieldName$enumLike, imc.endianSer);\n''';
        fStr += '    byteOffset += 8;\n';
        break;
      case 'rawdata':
        fStr = '''    var ${fieldName}SSize = message.$fieldName.length;\n''';
        fStr +=
            '''    byteData.setUint16(byteOffset, ${fieldName}SSize, imc.endianSer);\n''';
        fStr += '    byteOffset += 2;\n';
        fStr += '    if (${fieldName}SSize > 0) {\n';
        fStr += '      for (var b in message.$fieldName) {\n'
            '        byteData.setUint8(byteOffset++, b);\n'
            '      }\n';
        fStr += '    }\n';
        break;
      case 'plaintext':
        fStr =
            '    var ${fieldName}Encoded = utf8.encode(message.$fieldName);\n';
        fStr += '''    var ${fieldName}SSize = ${fieldName}Encoded.length;\n''';
        fStr +=
            '''    byteData.setUint16(byteOffset, ${fieldName}SSize, imc.endianSer);\n''';
        fStr += '    byteOffset += 2;\n';
        fStr += '    for (var b in ${fieldName}Encoded) {\n'
            '      byteData.setUint8(byteOffset++, b);\n'
            '    }\n';
        break;
      case 'message':
        fStr = '    if (message.$fieldName == null) {\n';
        fStr +=
            '      byteData.setUint16(byteOffset, imc.ImcId.nullId, imc.endianSer);\n';
        fStr += '      byteOffset += 2;\n';
        fStr += '    } else {\n';
        fStr += '      var id = message.$fieldName!.msgId;\n';
        fStr +=
            '      var pMsgSerializer = imc.messagesSerializers[imc.idsToMessages[id] ?? imc.ImcId.nullId]?.call();\n';
        fStr += '      if (pMsgSerializer != null) {\n';
        fStr += '        byteData.setUint16(byteOffset, id, imc.endianSer);\n';
        fStr += '        byteOffset += 2;\n';
        fStr +=
            '        var mPSize = pMsgSerializer.serializePayload(message.$fieldName, byteData, byteOffset);\n';
        fStr += '        byteOffset += mPSize;\n';
        fStr += '      }\n';
        fStr += '    }\n';
        break;
      case 'message-list':
        fStr = '    if (message.$fieldName.isEmpty) {\n';
        fStr += '      byteData.setUint16(byteOffset, 0, imc.endianSer);\n';
        fStr += '      byteOffset += 2;\n';
        fStr += '    } else {\n';
        fStr += '      var msgsCounter = 0;\n';
        fStr += '      var bufCounterPos = byteOffset;\n';
        fStr += '      byteOffset += 2;\n';
        fStr += '      for (var i = 0; i < message.$fieldName.length; i++) {\n';
        fStr += '        var id = message.$fieldName[i].msgId;\n';
        fStr += '        var pMsgSerializer = imc.messagesSerializers[\n';
        fStr +=
            '                imc.idsToMessages[id] ?? imc.ImcId.nullId.toString()]\n';
        fStr += '            ?.call();\n';
        fStr += '        if (pMsgSerializer != null) {\n';
        fStr +=
            '          byteData.setUint16(byteOffset, id, imc.endianSer);\n';
        fStr += '          byteOffset += 2;\n';
        fStr +=
            '          var mPSize = pMsgSerializer.serializePayload(message.$fieldName[i], byteData, byteOffset);\n';
        fStr += '          byteOffset += mPSize;\n';
        fStr += '          msgsCounter++;\n';
        fStr += '        }\n';
        fStr +=
            '        byteData.setUint16(bufCounterPos, msgsCounter, imc.endianSer);\n';
        fStr += '      }\n';
        fStr += '    }\n';
        break;
      default:
        break;
    }
    sink.write(fStr);
  });

  var serClass1 = '''\n    return byteOffset - offset;
  }

  @override
  imc.$abbrev? deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);

    var (endianness, _) = imc.getEndianness(byteData, byteOffset);
    byteOffset += 2;
    if (endianness == null) {
      return null;
    }

    var msgId = byteData.getUint16(byteOffset, endianness);
    byteOffset += 2;
    if (msgId != imc.$abbrev.staticId) {
      return null;
    }

    var builder = imc.${abbrev}Builder();
    var payloadSize =
        imc.deserializeHeader(builder, byteData, endianness, offset);
    if (payloadSize == null) {
      return null;
    }

    byteOffset = offset + imc.headerSize;

    var calcCrc = imc.calcCrc(byteData, offset, imc.headerSize + payloadSize);
    var readCrc = imc.getCrcFooter(
        byteData, offset + imc.headerSize + payloadSize, endianness);
    if (calcCrc != readCrc) {
      return null;
    }

    // Payload
    int payloadSizeRead;
    try {
      payloadSizeRead =
          deserializePayload(builder, byteData, endianness, byteOffset);
    } catch (_) {
      return null;
    }
    // End payload

    if (payloadSizeRead != payloadSize) {
      return null;
    }
    byteOffset = offset + imc.headerSize + payloadSize;
    return builder.build();
  }

  @override
  int deserializePayload(
      imc.${abbrev}Builder builder, ByteData byteData, Endian endianness, int offset) {
    var byteOffset = offset;
\n''';
  sink.write(serClass1);

  m.findElements('field').forEach((f) {
    var abbrev = f.getAttribute('abbrev');
    var type = f.getAttribute('type');

    if (abbrev == null || abbrev.isEmpty || type == null || type.isEmpty) {
      throw Exception(
          'Field ${f.name} of message $name is missing abbrev and/or type! Skipping!');
    }

    var unit = f.getAttribute('unit');
    var typesData = getTypesForImcAndDart(abbrev, type, unit, f, m);
    var dartType = typesData[1];
    var dartInnerType = typesData[3];

    var enumLike = '';
    var enumLikeE = '';
    switch (unit) {
      case 'Enumerated':
      case 'Bitfield':
        enumLike = 'imc.$dartType(';
        enumLikeE = ')';
        break;
      default:
        break;
    }

    var fieldName = _convertToFieldName(abbrev);
    sink.write('    // field $fieldName\n');
    var fStr = '';
    switch (type) {
      case 'uint8_t':
        fStr =
            '''    builder.$fieldName = ${enumLike}byteData.getUint8(byteOffset)$enumLikeE;\n''';
        fStr += '    byteOffset += 1;\n';
        break;
      case 'uint16_t':
        fStr =
            '''    builder.$fieldName = ${enumLike}byteData.getUint16(byteOffset, endianness)$enumLikeE;\n''';
        fStr += '    byteOffset += 2;\n';
        break;
      case 'uint32_t':
        fStr =
            '''    builder.$fieldName = ${enumLike}byteData.getUint32(byteOffset, endianness)$enumLikeE;\n''';
        fStr += '    byteOffset += 4;\n';
        break;
      case 'uint64_t':
        fStr =
            '''    builder.$fieldName = ${enumLike}byteData.getUint64(byteOffset, endianness)$enumLikeE;\n''';
        fStr += '    byteOffset += 8;\n';
        break;
      case 'int8_t':
        fStr =
            '''    builder.$fieldName = ${enumLike}byteData.getInt8(byteOffset)$enumLikeE;\n''';
        fStr += '    byteOffset += 1;\n';
        break;
      case 'int16_t':
        fStr =
            '''    builder.$fieldName = ${enumLike}byteData.getInt16(byteOffset, endianness)$enumLikeE;\n''';
        fStr += '    byteOffset += 2;\n';
        break;
      case 'int32_t':
        fStr =
            '''    builder.$fieldName = ${enumLike}byteData.getInt32(byteOffset, endianness)$enumLikeE;\n''';
        fStr += '    byteOffset += 4;\n';
        break;
      case 'int64_t':
        fStr =
            '''    builder.$fieldName = ${enumLike}byteData.getInt64(byteOffset, endianness)$enumLikeE;\n''';
        fStr += '    byteOffset += 8;\n';
        break;
      case 'fp32_t':
        fStr =
            '''    builder.$fieldName = ${enumLike}byteData.getFloat32(byteOffset, endianness)$enumLikeE;\n''';
        fStr += '    byteOffset += 4;\n';
        break;
      case 'fp64_t':
        fStr =
            '''    builder.$fieldName = ${enumLike}byteData.getFloat64(byteOffset, endianness)$enumLikeE;\n''';
        fStr += '    byteOffset += 8;\n';
        break;
      case 'rawdata':
        fStr =
            '''    var ${fieldName}SSize = byteData.getUint16(byteOffset, endianness);\n''';
        fStr += '    byteOffset += 2;\n';
        fStr +=
            '    var ${fieldName}DData = List.filled(${fieldName}SSize, 0);\n';
        fStr += '    for (var i = 0; i < ${fieldName}SSize; i++) {\n';
        fStr +=
            '      ${fieldName}DData[i] = byteData.getUint8(byteOffset++);\n';
        fStr += '    }\n';
        fStr += '    builder.$fieldName = ${fieldName}DData;\n';
        break;
      case 'plaintext':
        fStr =
            '''    var ${fieldName}SSize = byteData.getUint16(byteOffset, endianness);\n''';
        fStr += '    byteOffset += 2;\n';
        fStr +=
            '    var ${fieldName}DData = List.filled(${fieldName}SSize, 0);\n';
        fStr += '    for (var i = 0; i < ${fieldName}SSize; i++) {\n';
        fStr +=
            '      ${fieldName}DData[i] = byteData.getUint8(byteOffset++);\n';
        fStr += '    }\n';
        fStr +=
            '    var ${fieldName}Decoded = utf8.decode(${fieldName}DData);\n';
        fStr += '    builder.$fieldName = ${fieldName}Decoded;\n';
        break;
      case 'message':
        fStr =
            '    var ${fieldName}SId = byteData.getUint16(byteOffset, endianness);\n';
        fStr += '    byteOffset += 2;\n';
        fStr += '    if (${fieldName}SId == imc.ImcId.nullId) {\n';
        fStr += '      builder.$fieldName = null;\n';
        fStr += '    } else {\n';
        fStr += '      var pMsgBuilder = imc\n';
        fStr +=
            '          .messagesBuilders[imc.idsToMessages[${fieldName}SId] ?? imc.ImcId.nullId.toString()]\n';
        fStr += '          ?.call()\n';
        fStr += '          .newInstance(builder);\n';
        fStr += '      var pMsgSerializer = imc\n';
        fStr +=
            '          .messagesSerializers[imc.idsToMessages[${fieldName}SId] ?? imc.ImcId.nullId.toString()]\n';
        fStr += '          ?.call();\n';
        fStr += '      if (pMsgBuilder != null && pMsgSerializer != null) {\n';
        fStr += '        var mPSize = pMsgSerializer.deserializePayload(\n';
        fStr += '            pMsgBuilder, byteData, endianness, byteOffset);\n';
        fStr += '        byteOffset += mPSize;\n';
        fStr +=
            '        builder.$fieldName = pMsgBuilder.build() as imc.$dartType?;\n';
        fStr += '      }\n';
        fStr += '    }\n';
        break;
      case 'message-list':
        fStr =
            '    var ${fieldName}MMsgsNumber = byteData.getUint16(byteOffset, endianness);\n';
        fStr += '    byteOffset += 2;\n';
        fStr += '    builder.$fieldName = [];\n';
        fStr += '    for (var i = 0; i < ${fieldName}MMsgsNumber; i++) {\n';
        fStr +=
            '      var ${fieldName}SId = byteData.getUint16(byteOffset, endianness);\n';
        fStr += '      byteOffset += 2;\n';
        fStr += '      if (${fieldName}SId != imc.ImcId.nullId) {\n';
        fStr += '        var pMsgBuilder = imc\n';
        fStr +=
            '            .messagesBuilders[imc.idsToMessages[${fieldName}SId] ?? imc.ImcId.nullId.toString()]\n';
        fStr += '          ?.call()\n';
        fStr += '          .newInstance(builder);\n';
        fStr += '        var pMsgSerializer = imc\n';
        fStr +=
            '            .messagesSerializers[imc.idsToMessages[${fieldName}SId] ?? imc.ImcId.nullId.toString()]\n';
        fStr += '            ?.call();\n';
        fStr +=
            '        if (pMsgBuilder != null && pMsgSerializer != null) {\n';
        fStr += '          var mPSize = pMsgSerializer.deserializePayload(\n';
        fStr +=
            '              pMsgBuilder, byteData, endianness, byteOffset);\n';
        fStr += '          byteOffset += mPSize;\n';
        fStr +=
            '          builder.$fieldName.add(pMsgBuilder.build() as imc.$dartInnerType);\n';
        fStr += '        }\n';
        fStr += '      }\n';
        fStr += '    }\n';
        break;
      default:
        break;
    }
    sink.write(fStr);
  });

  var serClassEnd = '''\n    return byteOffset - offset;
  }
}
''';
  sink.write(serClassEnd);
}

/// Writes a message field code
void _writeMessageField(
    xml.XmlElement field, xml.XmlElement message, List<IOSink> sinks) {
  var name = field.getAttribute('name');
  var abbrev = field.getAttribute('abbrev');
  var type = field.getAttribute('type');

  if (name == null ||
      name.isEmpty ||
      abbrev == null ||
      abbrev.isEmpty ||
      type == null ||
      type.isEmpty) {
    throw Exception(
        'Field ${field.name} is missing abbrev and/or type! Skipping!');
  }

  var unit = field.getAttribute('unit');

  var typesData = getTypesForImcAndDart(abbrev, type, unit, field, message);
  var typeImc = typesData[0];
  var dartType = typesData[1];

  var unitsStr = '';
  switch (unit) {
    case 'Enumerated':
    case 'Bitfield':
      _writeLocalEnumLike(abbrev, field, message, unit, sinks[_idxLocEnum]);
      break;
    default:
      unitsStr = unit == null ? '' : ", units: '$unit'";
  }
  var str = '''  @ImcField('$name', '$abbrev', $typeImc$unitsStr)
  $dartType${typesData[2] == null ? '?' : ''} get ${_convertToFieldName(abbrev)};
''';

  sinks[_idxMsg].write('\n');
  _writeDescription(sinks[_idxMsg], field, level: 1);
  sinks[_idxMsg].write(str);
}

/// Returns the field [imc related type, type for dart, null if no default value].
List<String?> getTypesForImcAndDart(String abbrev, String type, String? unit,
    xml.XmlElement field, xml.XmlElement message) {
  String? typeImc;
  String? dartType;
  String? defaultVal;
  String? dartInnerType;
  switch (type) {
    case 'uint8_t':
      typeImc = 'ImcType.typeUInt8';
      dartType = 'int';
      dartInnerType = dartType;
      defaultVal = field.getAttribute('value') ?? '0';
      break;
    case 'uint16_t':
      typeImc = 'ImcType.typeUInt16';
      dartType = 'int';
      dartInnerType = dartType;
      defaultVal = field.getAttribute('value') ?? '0';
      break;
    case 'uint32_t':
      typeImc = 'ImcType.typeUint32';
      dartType = 'int';
      dartInnerType = dartType;
      defaultVal = field.getAttribute('value') ?? '0';
      break;
    case 'int8_t':
      typeImc = 'ImcType.typeInt8';
      dartType = 'int';
      dartInnerType = dartType;
      defaultVal = field.getAttribute('value') ?? '0';
      break;
    case 'int16_t':
      typeImc = 'ImcType.typeInt16';
      dartType = 'int';
      dartInnerType = dartType;
      defaultVal = field.getAttribute('value') ?? '0';
      break;
    case 'int32_t':
      typeImc = 'ImcType.typeInt32';
      dartType = 'int';
      dartInnerType = dartType;
      defaultVal = field.getAttribute('value') ?? '0';
      break;
    case 'int64_t':
      typeImc = 'ImcType.typeInt64';
      dartType = 'int';
      dartInnerType = dartType;
      defaultVal = field.getAttribute('value') ?? '0';
      break;
    case 'fp32_t':
      typeImc = 'ImcType.typeFp32';
      dartType = 'double';
      dartInnerType = dartType;
      defaultVal = field.getAttribute('value') ?? '0';
      break;
    case 'fp64_t':
      typeImc = 'ImcType.typeFp64';
      dartType = 'double';
      dartInnerType = dartType;
      defaultVal = field.getAttribute('value') ?? '0';
      break;
    case 'rawdata':
      typeImc = 'ImcType.typeRawdata';
      dartType = 'List<int>';
      dartInnerType = dartType;
      defaultVal = '<int>[]';
      break;
    case 'plaintext':
      typeImc = 'ImcType.typePlaintext';
      dartType = 'String';
      dartInnerType = dartType;
      defaultVal = field.getAttribute('value') ?? "''";
      break;
    case 'message':
      typeImc = 'ImcType.typeMessage';
      dartType = field.getAttribute('message-type') ?? 'ImcMessage';
      dartInnerType = dartType;
      break;
    case 'message-list':
      typeImc = 'ImcType.typeMessageList';
      dartType = 'List<${field.getAttribute('message-type') ?? 'ImcMessage'}>';
      dartInnerType = field.getAttribute('message-type') ?? 'ImcMessage';
      defaultVal = '<${field.getAttribute('message-type') ?? 'ImcMessage'}>[]';
      break;
    default:
      break;
  }

  switch (unit) {
    case 'Enumerated':
    case 'Bitfield':
      dartType = _getTypeForEnumLike(abbrev, field, message, unit);
      dartInnerType = dartType;
      defaultVal = '$dartType(${defaultVal ?? '0'})';
      break;
    default:
      break;
  }

  return [typeImc, dartType, defaultVal, dartInnerType];
}

/// Gets the name of the type for the enum like class.
String _getTypeForEnumLike(String fieldAbbrev, xml.XmlElement field,
    xml.XmlElement message, String? unit) {
  var eDef = field.getAttribute('enum-def');
  if (eDef != null) return '${eDef}Enum';
  eDef = field.getAttribute('bitfield-def');
  if (eDef != null) return '${eDef}Bitfield';

  String? sufix;
  switch (unit) {
    case 'Enumerated':
      sufix = 'Enum';
      break;
    default:
      sufix = unit;
  }
  // Local def
  var msgAbbrev = message.getAttribute('abbrev');
  return '$msgAbbrev$sufix${_convertToClassName(fieldAbbrev)}';
}

/// Writes the global enum like code classes.
void _writeGlobalEnumLike(xml.XmlElement def, String unit, IOSink sink) {
  var abbrev = def.getAttribute('abbrev');
  if (abbrev == null || abbrev.isEmpty) {
    throw Exception(
        'Global enum ${def.name} is missing a correct abbrev! Skipping!');
  }

  String sufix;
  switch (unit) {
    case 'Enumerated':
      sufix = 'Enum';
      break;
    default:
      sufix = unit;
  }
  var eName = '${_convertToClassName(abbrev)}$sufix';

  // So writting global enums like
  _writeEnumLikeWorker(eName, def, unit, sink);
}

/// Writes eath message field local enum like code classes.
void _writeLocalEnumLike(String abbrev, xml.XmlElement field,
    xml.XmlElement message, String? unit, IOSink sink) {
  if (field.getAttribute('enum-def') != null ||
      field.getAttribute('bitfield-def') != null) return;

  // So writting local enums like
  var eName = _getTypeForEnumLike(abbrev, field, message, unit);
  _writeEnumLikeWorker(eName, field, unit, sink);
}

/// A worker to be used for the enum like code creation.
void _writeEnumLikeWorker(
    String eName, xml.XmlElement field, String? unit, IOSink sink) {
  var eList = '';
  var eNameList = '';
  var c = 0;
  var prefix = field.getAttribute('prefix')?.toLowerCase() ?? '';
  if (prefix.isNotEmpty) {
    prefix = _replaceMiddleUnderscoreLetterWithUpercaseLetter(prefix);
  }
  var vLst = field.findElements('value');
  for (var f in vLst) {
    var eValueAbbrev = f.getAttribute('abbrev');
    if (eValueAbbrev == null || eValueAbbrev.isEmpty) {
      throw Exception(
          'Enum value ${f.name} of enum $eName is missing abbrev! Skipping!');
    }

    var commaSep = vLst.length > 1 ? ',' : '';
    if (++c % 1 == 0) eList += '\n        ';
    if (++c % 1 == 0) eNameList += '\n        ';
    var ab = _accountForReservedName(prefix +
        _toSentenceCase(_replaceMiddleUnderscoreLetterWithUpercaseLetter(
            eValueAbbrev.toLowerCase())));
    eList += '$ab$commaSep';
    eNameList += "$ab: '''${f.getAttribute('name')}'''$commaSep";
  }
  if (vLst.length > 1) {
    eList += '\n      ';
    eNameList += '\n      ';
  }

  String? sufix;
  switch (unit) {
    case 'Enumerated':
      sufix = 'Enum';
      break;
    default:
      sufix = unit;
  }

  _writeDescription(sink, field);
  var body = '''class $eName extends ${sufix}Type {
''';
  sink.write(body);

  field.findElements('value').forEach((f) {
    var eValueAbbrev = f.getAttribute('abbrev');
    if (eValueAbbrev == null || eValueAbbrev.isEmpty) {
      throw Exception(
          'Enum value ${f.name} of enum $eName is missing abbrev! Skipping!');
    }

    var vName = _toSentenceCase(
        _replaceMiddleUnderscoreLetterWithUpercaseLetter(
            eValueAbbrev.toLowerCase()));
    vName = _accountForReservedName(prefix + vName);
    var vVal = f.getAttribute('id');
    var bodyV = '''  static const $vName = $eName($vVal);
''';
    _writeDescription(sink, f, level: 1);
    sink.write(bodyV);
  });

  var body2 = '''\n  static List<$eName> get values =>
      <$eName>[${vLst.length > 1 ? eList : eList.substring(1).trim()}];

  static core.Map<$eName, String> get names =>
      <$eName, String>{$eNameList${vLst.length <= 1 ? '\n      ' : ''}};

  const $eName(super.value);
''';
  sink.write(body2);

  var bodyBitfield = '';
  switch (unit) {
    case 'Bitfield':
      bodyBitfield = '''\n  @override
  String toPrettyString() {
    String? ret;
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

  static $eName empty() =>
      $eName(0);

  static $eName fromBits(
          List<$eName> bits) =>
      (bits.length < 2)
          ? $eName(bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce((b1, b2) => $eName(b1.value | b2.value));
''';
      break;
    case 'Enumerated':
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

  if (eName == 'BooleanEnum') {
    var boolStr = '''\n  bool getBool() => value == 1 ? true : false;\n''';
    sink.write(boolStr);
  }
  var bodyEnd = '''}\n\n''';
  sink.write(bodyEnd);
}

void _writeMsgList(xml.XmlElement msgElm, IOSink sink) {
  sink.write('''/// Lookup table from message names to IDs''');
  sink.write('''\nconst messagesToIds = {''');
  msgElm.findElements('message').forEach((m) => sink
      .write("\n  '${m.getAttribute('abbrev')}': ${m.getAttribute("id")},"));
  sink.write('''\n};\n''');

  sink.write('''\n/// Lookup table from IDs to message names''');
  sink.write('''\nconst idsToMessages = {''');
  msgElm.findElements('message').forEach((m) => sink
      .write("\n  ${m.getAttribute("id")}: '${m.getAttribute('abbrev')}',"));
  sink.write('''\n};\n''');

  sink.write('''\n/// Lookup 2D table from groups to message names''');
  sink.write('''\nconst messageGroups = {''');
  msgElm.findElements('message-groups').forEach((mg) {
    mg.findElements('message-group').forEach((m) {
      sink.write("\n  '${m.getAttribute('abbrev')}': [");
      m
          .findElements('message-type')
          .forEach((mt) => sink.write("\n    '${mt.getAttribute('abbrev')}',"));
      sink.write('''\n  ],''');
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
  msgElm.findElements('message').forEach((m) => sink.write(
      "\n  '${m.getAttribute('abbrev')}': () => ${m.getAttribute('abbrev')}Builder(),"));
  sink.write('''\n};\n''');
}

/// Get config from `pubspec.yaml` or `imc_def.yaml`
Map<String, dynamic> _getConfig() {
  // if `imc_def.yaml` exists use it, otherwise use `pubspec.yaml`
  var filePath = (FileSystemEntity.typeSync('imc_def.yaml') !=
          FileSystemEntityType.notFound)
      ? 'imc_def.yaml'
      : 'pubspec.yaml';

  final file = File(filePath);
  final yamlString = file.readAsStringSync();
  final yamlMap = loadYaml(yamlString);

  if (yamlMap == null || yamlMap['imc_def'] is! Map) {
    stderr.writeln(Exception(
        'Your `$filePath` file does not contain a `imc_def` section.'));
  }

  // yamlMap has the type YamlMap, which has several unwanted sideeffects
  final config = <String, dynamic>{};
  for (MapEntry<dynamic, dynamic> entry in yamlMap['imc_def'].entries) {
    config[entry.key] = entry.value;
  }

  if (!config.containsKey('imc')) {
    stderr
        .writeln(Exception('Your `imc_def` section does not contain a `imc`.'));
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
void main(List<String> args) async {
  var config = _getConfig();
  var localOrProductionMode =
      config.isEmpty || config['mode'] != null ? _Mode.local : _Mode.production;
  String? xmlFilePath;
  String xmlGitHash;
  String packageName;
  switch (localOrProductionMode) {
    case _Mode.production:
      xmlFilePath = config['imc'];
      xmlGitHash = config['githash'] ?? 'unknown';
      packageName = config['package'] ?? '';
      break;
    default:
      xmlFilePath = config['imc'] ?? 'xml/IMC.xml';
      xmlGitHash = config['githash'] ?? 'unknown';
      packageName = '';
  }
  if (packageName.isNotEmpty && !packageName.endsWith('/')) packageName += '/';

  if (xmlFilePath == null || xmlFilePath.isEmpty) {
    print('The XML of IMC param "imc" must not be null or empty!');
    exit(1);
  }

  late String imcXml;
  try {
    imcXml = await File(xmlFilePath).readAsString();
  } catch (e) {
    stderr.writeln(e);
    exit(1);
  }

  var document = xml.XmlDocument.parse(imcXml);

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
  var imcDigestMd5 = md5.convert(imcAsBytes);
  var imcDigestSha256 = sha256.convert(imcAsBytes);
  print('Git Hash of IMC file is $xmlGitHash');
  print('Hash MD5 of IMC file is $imcDigestMd5');
  print('Hash SHA256 of IMC file is $imcDigestSha256');

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

  sinkGen.write(_headerGen);
  sinkMessages.write(_headerGenParts);
  sinkBuilders.write(_headerGenParts);
  sinkEnums.write(_headerGenParts);
  sinkLEnums.write(_headerGenParts);
  sinkSerGen.write(_headerSerGen);

  var msgElm = document.findElements('messages').first;
  sinks[_idxMsg]
      .write("const String version = '${msgElm.getAttribute('version')}';\n");

  var headerElm = msgElm.findElements('header').first;
  var syncElm = headerElm.findElements('field').first;
  sinks[_idxMsg]
      .write('const int syncNumber = ${syncElm.getAttribute("value")};\n');

  var syncValue = syncElm.getAttribute('value');
  if (syncValue == null || syncValue.isEmpty) {
    print('The XML of IMC is missing the sync value!');
    exit(1);
  }

  var sNmbr = int.parse(syncValue);
  var rSNmbr = ((sNmbr & 0xFF) << 8 | sNmbr >> 8);
  sinks[_idxMsg].write(
      'const int syncNumberReversed = 0x${rSNmbr.toRadixString(16).toUpperCase()};\n');

  sinks[_idxMsg].write("const String gitHashString = '$xmlGitHash';\n");
  sinks[_idxMsg].write("const String md5Sum = '$imcDigestMd5';\n");
  sinks[_idxMsg].write("const String sha256Sum = '$imcDigestSha256';\n");

  sinks[_idxMsg].write('\n');

  sinks[_idxMsg].write(
      '/// WARNING!!! This is for advance usage only. If set not null, CHANGES the used sync number\n');
  sinks[_idxMsg].write('int? fakeSyncNumber;\n');
  sinks[_idxMsg].write(
      'int? get fakeSyncNumberReversed => fakeSyncNumber?.reverseAsSyncNumber();\n');

  sinks[_idxMsg].write('\n');

  sinks[_idxMsg].write('/// WARNING!!! This is for advance usage only. '
      'Uses these sync number for deserialization\n');
  sinks[_idxMsg].write('List<int>? alternativeSyncNumbers;\n');
  sinks[_idxMsg].write('List<int>? get alternativeSyncNumbersReversed =>\n'
      'alternativeSyncNumbers?.reverseAsSyncNumber();\n');

  sinks[_idxMsg].write('\n');

  sinks[_idxMsg].write('''/// The base IMCMessage
///
abstract class ImcMessage extends Message {
  int? _sync;

  @override
  int get sync => fakeSyncNumber ?? syncNumber;
  set sync(int sync) => _sync = sync;

  /// To JSON object
  core.Map<String, dynamic> toJson([bool includeHeader = true]);
}
''');

  sinks[_idxMsg].write('\n');

  // Writting message-groups
  msgElm.findElements('message-groups').forEach((mg) => mg
      .findElements('message-group')
      .forEach((g) => _writeMessageGroup(g, sinks[_idxMsg])));

  sinks[_idxSerGen]
      .write('''\n/// Signature for a function that creates a builder.''');
  sinks[_idxSerGen].write('''\n///''');
  sinks[_idxSerGen].write('''\n/// Used by [messagesSerializers].''');
  sinks[_idxSerGen].write(
      '''\ntypedef ImcSerializerBuilder = imc.ImcSerializer Function();''');

  sinks[_idxSerGen].write(
      '''\nfinal messagesSerializers = <String, ImcSerializerBuilder>{''');
  msgElm.findElements('message').forEach((m) => sinks[_idxSerGen].write(
      "\n  '${m.getAttribute('abbrev')}': () => ${m.getAttribute('abbrev')}Serializer(),"));
  sinks[_idxSerGen].write('''\n};\n''');

  sinks[_idxSerGen].write(
      '''\nfinal messagesIdsSerializers = <int, ImcSerializerBuilder>{''');
  msgElm.findElements('message').forEach((m) => sinks[_idxSerGen].write(
      "\n  ${m.getAttribute("id")}: () => ${m.getAttribute('abbrev')}Serializer(),"));
  sinks[_idxSerGen].write('''\n};\n''');

  // Writting messages
  msgElm.findElements('message').forEach((m) => _writeMessageCode(m, sinks));

  // Writting global Enum like
  msgElm.findElements('enumerations').forEach((e) => e
      .findElements('def')
      .forEach((m) => _writeGlobalEnumLike(m, 'Enumerated', sinks[_idxEnums])));
  msgElm.findElements('bitfields').forEach((e) => e
      .findElements('def')
      .forEach((m) => _writeGlobalEnumLike(m, 'Bitfield', sinks[_idxEnums])));

  _writeMsgList(msgElm, sinks[_idxGen]);

  // Generating the imc_def for easy import and use
  if (localOrProductionMode == _Mode.production) {
    var fxSerDef = await File('lib/src/${packageName}imc_def.dart')
        .create(recursive: true);
    print('Generating ${fxSerDef.path}');
    var sinkDef = fxSerDef.openWrite();

    sinkDef.write(_header);
    sinkDef.write('''

library imc_def;

export 'package:imc_def/imc_def_base.dart';
export 'imc_def_gen.dart';
export 'imc_serializers_gen.dart';
''');

    await sinkDef.close();
  }

  // Close the IOSink to free system resources.
  await sinkGen.close();
  await sinkMessages.close();
  await sinkBuilders.close();
  await sinkEnums.close();
  await sinkLEnums.close();
  await sinkSerGen.close();
}
