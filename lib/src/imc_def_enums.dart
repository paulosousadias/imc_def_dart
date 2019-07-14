// Copyright (c) 2019, Paulo Sousa Dias. Please see the AUTHORS file for details.
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
  static const type = "Enumeration" ;

  final int value;

  const EnumType(this.value);

  @override
  String toString() => "E$value";
}

/// This is the base for Bitfield types
abstract class BitfieldType {
  static const type = "Bitfield" ;
  
  final int value;

  const BitfieldType(this.value);

  @override
  String toString() => "B0x${value.toRadixString(16)} ($value)";
}

/// This contains internal IMC types for fields
class ImcType extends EnumType {
	static const typeUInt8 = const ImcType._(0, "uint8_t", size : 1);
	static const typeUInt16 = const ImcType._(1, "uint16_t", size : 2);
	static const typeUint32 = const ImcType._(2, "uint32_t", size : 4);
	static const typeInt8 = const ImcType._(3, "int8_t", size : 1);
	static const typeInt16 = const ImcType._(4, "int16_t", size : 2);
	static const typeInt32 = const ImcType._(5, "int32_t", size : 4);
	static const typeInt64 = const ImcType._(6, "int64_t", size : 8);
	static const typeFp32 = const ImcType._(7, "fp32_t", size : 4);
	static const typeFp64 = const ImcType._(8, "fp64_t", size : 8);
	static const typeRawdata = const ImcType._(9, "rawdata", size : -1);
	static const typePlaintext = const ImcType._(10, "plaintext", size : -1);
	static const typeMessage = const ImcType._(11, "message", size : -1);
	static const typeMessageList = const ImcType._(12, "message-list", size : -1);

  static get values => [
        typeUInt8, typeUInt16, typeUint32,
        typeInt8, typeInt16, typeInt32, typeInt64,
        typeFp32, typeFp64, 
        typeRawdata, typePlaintext,
        typeMessage, typeMessageList];

  final String name;
  final int size;

  const ImcType._(int value, this.name, {this.size = -1}) : super(value);

  String getTypeName() => name;
	int getSizeInBytes() => size;
	bool isSizeKnown() => size != -1;
	String toString() => name;
	
	static const types = {
    "uint8_t" : typeUInt8,
    "uint16_t" : typeUInt16,
    "uint32_t" : typeUint32,
    "int8_t" : typeInt8,
    "int16_t" : typeInt16,
    "int32_t" : typeInt32,
    "int64_t" : typeInt64,
    "fp32_t" : typeFp32,
    "fp64_t" : typeFp64,
    "rawdata" : typeRawdata, 
    "plaintext" : typePlaintext, 
    "message" : typeMessage, 
    "message-list" : typeMessageList, 
    };	
	
  static ImcType getType(String typeName) => types[typeName] ?? null;
}

/// This contains internal IMC flags for messages
class Flags extends EnumType {
  static const periodic = const Flags._(0);
  static const deprecated = const Flags._(1);

  static get values => [periodic, deprecated];

  const Flags._(int value) : super(value);
}

