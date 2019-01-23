// Copyright (c) 2019, Paulo Sousa Dias. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a Apache License v2.0 
// license that can be found in the LICENSE file.

import 'package:built_value/built_value.dart';

part 'imc_def_enums.dart';
part 'imc_def_e.dart';
part 'imc_def_el.dart';
part 'imc_def_m.dart';
part 'imc_def_i.dart';

// abstract class ImcMessage implements Built<ImcMessage, ImcMessageBuilder> {
//   // final int _sync = 0xFE54;
//   // DateTime _timestamp = DateTime.now();
//   // int _src = 0xFFFF;
//   // int _srcEnt = 0xFF;
//   // int _dst = 0xFFFF;
//   // int _dstEnt = 0xFF;

//   ImcMessage._();
//   static Serializer<ImcMessage> get serializer => _$imcMessageSerializer;
//   factory ImcMessage([updates(ImcMessageBuilder b)]) = _$ImcMessage;

//   // int get size => serializeFields().length;
//   int get sync => 0xFE54;
//   DateTime get timestamp;
//   int get src;
//   int get srcEnt;
//   int get dst;
//   int get dstEnt;
//   int get msgId;
//   String get abbrev;

//   // String toString() => "IMCMessage $msgId";

//   // /**
//   //  * Serialize this message's payload */
//   // byte[] serializeFields;

//   // /**
//   //  * Deserialize this message's payload */
//   // public abstract void deserializeFields(ByteBuffer buf) throws IOException;

//   // /**
//   //  * Serialize this message */
//   // public byte[] serialize() {
//   // 	return SerializationUtils.serializeMessage(this);
//   // }

//   // /**
//   //  * Read a message from a byte array */
//   // public static Message deserialize(byte[] data) throws Exception {
//   // 	return SerializationUtils.deserializeMessage(data);
//   // }

//   void test() {
//     var buffer = new Uint8List(8).buffer;
//     var bdata = new ByteData.view(buffer);
//     bdata.setFloat32(0, 3.04);
//     int huh = bdata.getInt32(0);
//   }
// }

// abstract class Builder<V extends Built<V, B>, B extends Builder<V, B>> {
//   /// Replaces the value in the builder with a new one.
//   ///
//   /// The implementation of this method will be generated for you by the
//   /// built_value generator.
//   void replace(V value);

//   /// Applies updates.
//   ///
//   /// [updates] is a function that takes a builder [B].
//   void update(updates(B builder));

//   /// Builds.
//   ///
//   /// The implementation of this method will be generated for you by the
//   /// built_value generator.
//   V build();
// }

class ImcField {
  final String name;
  final String abbrev;
  final ImcType type;
  final String description;
  final double min;
  final double max;
  final String units;

  const ImcField(this.name, this.abbrev, this.type,
      {this.description = "",
      this.min = double.nan,
      this.max = double.nan,
      this.units = ""});
}

abstract class ImcMessage {
  int get sync => SYNC_NUMBER;
  int get msgId;
  // int get size => serializeFields().length;
  DateTime get timestamp;
  int get src;
  int get srcEnt;
  int get dst;
  int get dstEnt;
  String get abbrev;
}

// /// Implement this for a Built Value.
// ///
// /// Then use built_value_generator.dart code generation functionality to
// /// provide the rest of the implementation.
// ///
// /// See https://github.com/google/built_value.dart/tree/master/example
// abstract class Built<V extends Built<V, B>, B extends Builder<V, B>> {
//   /// Rebuilds the instance.
//   ///
//   /// The result is the same as this instance but with [updates] applied.
//   /// [updates] is a function that takes a builder [B].
//   ///
//   /// The implementation of this method will be generated for you by the
//   /// built_value generator.
//   V rebuild(updates(B builder));

//   /// Converts the instance to a builder [B].
//   ///
//   /// The implementation of this method will be generated for you by the
//   /// built_value generator.
//   B toBuilder();
// }

// /// Every Built Value must have a [Builder] class.
// ///
// /// Use it to set defaults, if needed, and to do validation.
// ///
// /// See <https://github.com/google/built_value.dart/tree/master/example>
// abstract class Builder<V extends Built<V, B>, B extends Builder<V, B>> {
//   /// Replaces the value in the builder with a new one.
//   ///
//   /// The implementation of this method will be generated for you by the
//   /// built_value generator.
//   void replace(V value);

//   /// Applies updates.
//   ///
//   /// [updates] is a function that takes a builder [B].
//   void update(updates(B builder));

//   /// Builds.
//   ///
//   /// The implementation of this method will be generated for you by the
//   /// built_value generator.
//   V build();
// }

// /// For use by generated code in calculating hash codes. Do not use directly.
// int $jc(int hash, int value) {
//   // Jenkins hash "combine".
//   hash = 0x1fffffff & (hash + value);
//   hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
//   return hash ^ (hash >> 6);
// }

// /// For use by generated code in calculating hash codes. Do not use directly.
// int $jf(int hash) {
//   // Jenkins hash "finish".
//   hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
//   hash = hash ^ (hash >> 11);
//   return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
// }
