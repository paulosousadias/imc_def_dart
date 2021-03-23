// Copyright (c) 2019-21, Paulo Sousa Dias. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

part of 'imc_def_base.dart';

/// This represents constants for systems IDs
class ImcId {
  static const announce = 0x0000;
  static const broadcast = 0xFFF0;
  static const nullId = 0xFFFF;

  ImcId._();
}

/// This represents constants for Entities IDs
class ImcEntityId {
  static const nullId = 0xFF;

  ImcEntityId._();
}

/// This is the base for Enums types
abstract class EnumType {
  static const type = 'Enumeration';

  final int value;

  const EnumType(this.value);

  @override
  String toString() => 'E$value';

  /// Output this as a pretty string. Override for propper text.
  String toPrettyString() => toString();

  @override
  bool operator ==(Object other) =>
      runtimeType == other.runtimeType && hashCode == other.hashCode;

  @override
  int get hashCode => value;
}

/// This is the base for Bitfield types
abstract class BitfieldType {
  static const type = 'Bitfield';

  final int value;

  const BitfieldType(this.value);

  @override
  String toString() => 'B0x${value.toRadixString(16)} ($value)';

  /// Output this as a pretty string. Override for propper text.
  String toPrettyString() => toString();

  @override
  bool operator ==(Object other) =>
      runtimeType == other.runtimeType && hashCode == other.hashCode;

  /// Tests that all 1 bts from all the elements of the elements in [bits].
  bool hasBits<B extends BitfieldType>(List<B> bits) {
    if (bits == null) return false;
    var testVal = 0;
    for (var item in bits) {
      if (runtimeType == item.runtimeType) {
        testVal |= item.value;
      }
    }
    return value & testVal == testVal;
  }

  @override
  int get hashCode => value;
}

/// This contains internal IMC types for fields
class ImcType extends EnumType {
  static const typeUInt8 = ImcType._(0, 'uint8_t', size: 1);
  static const typeUInt16 = ImcType._(1, 'uint16_t', size: 2);
  static const typeUint32 = ImcType._(2, 'uint32_t', size: 4);
  static const typeInt8 = ImcType._(3, 'int8_t', size: 1);
  static const typeInt16 = ImcType._(4, 'int16_t', size: 2);
  static const typeInt32 = ImcType._(5, 'int32_t', size: 4);
  static const typeInt64 = ImcType._(6, 'int64_t', size: 8);
  static const typeFp32 = ImcType._(7, 'fp32_t', size: 4);
  static const typeFp64 = ImcType._(8, 'fp64_t', size: 8);
  static const typeRawdata = ImcType._(9, 'rawdata', size: -1);
  static const typePlaintext = ImcType._(10, 'plaintext', size: -1);
  static const typeMessage = ImcType._(11, 'message', size: -1);
  static const typeMessageList = ImcType._(12, 'message-list', size: -1);

  static List<ImcType> get values => <ImcType>[
        typeUInt8,
        typeUInt16,
        typeUint32,
        typeInt8,
        typeInt16,
        typeInt32,
        typeInt64,
        typeFp32,
        typeFp64,
        typeRawdata,
        typePlaintext,
        typeMessage,
        typeMessageList,
      ];

  final String name;
  final int size;

  const ImcType._(int value, this.name, {this.size = -1}) : super(value);

  String getTypeName() => name;
  int getSizeInBytes() => size;
  bool isSizeKnown() => size != -1;
  @override
  String toString() => name;

  static const types = {
    'uint8_t': typeUInt8,
    'uint16_t': typeUInt16,
    'uint32_t': typeUint32,
    'int8_t': typeInt8,
    'int16_t': typeInt16,
    'int32_t': typeInt32,
    'int64_t': typeInt64,
    'fp32_t': typeFp32,
    'fp64_t': typeFp64,
    'rawdata': typeRawdata,
    'plaintext': typePlaintext,
    'message': typeMessage,
    'message-list': typeMessageList,
  };

  static ImcType getType(String typeName) => types[typeName];
}

/// This contains internal IMC flags for messages
class Flags extends EnumType {
  static const periodic = Flags._(0);
  static const deprecated = Flags._(1);

  static List<Flags> get values => <Flags>[periodic, deprecated];

  const Flags._(int value) : super(value);
}
