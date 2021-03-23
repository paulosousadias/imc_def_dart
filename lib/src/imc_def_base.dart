// Copyright (c) 2019-21, Paulo Sousa Dias. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:built_value/built_value.dart';

part 'imc_def_enums.dart';

/// This contains internal IMC field info
class ImcField {
  final String name;
  final String abbrev;
  final ImcType type;
  final String description;
  final double min;
  final double max;
  final String units;

  const ImcField(this.name, this.abbrev, this.type,
      {this.description = '',
      this.min = double.nan,
      this.max = double.nan,
      this.units = ''});
}

/// This is the base class for IMC messages
abstract class Message {
  int get sync;
  int get msgId;
  DateTime get timestamp;
  int get src;
  int get srcEnt;
  int get dst;
  int get dstEnt;
  String get abbrev;
}

/// Is a mixin in the messages to get and set header fields
abstract class ImcBuilderHeaderPart {
  DateTime get timestamp;
  set timestamp(DateTime timestamp);

  int get src;
  set src(int src);

  int get srcEnt;
  set srcEnt(int srcEnt);

  int get dst;
  set dst(int dst);

  int get dstEnt;
  set dstEnt(int dstEnt);

  void copyFromHeader(ImcBuilderHeaderPart other) {
    if (other == null) return;

    timestamp = other.timestamp;
    src = other.src;
    srcEnt = other.srcEnt;
    dst = other.dst;
    dstEnt = other.dstEnt;
  }
}

/// This is to be used as interface for the builders
abstract class BuilderWithInstanciator<V extends Built<V, B>,
    B extends Builder<V, B>> extends Builder<V, B> {
  /// Instanciates a new builder
  B newInstance([ImcBuilderHeaderPart headerFrom]);

  void copyFromHeader(ImcBuilderHeaderPart other);
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
