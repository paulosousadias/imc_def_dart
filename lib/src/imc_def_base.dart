// Copyright (c) 2019-23, Paulo Sousa Dias. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

part 'imc_def_enums.dart';

extension ReverseSyncNumber on int {
  int reverseAsSyncNumber() {
    int i1 = (this & 0x00FF) << 8;
    int i2 = (this & 0xFF00) >> 8;
    return i1 | i2;
  }
}

extension ReverseSyncNumberOnList on List<int> {
  List<int> reverseAsSyncNumber() {
    return map((e) => e.reverseAsSyncNumber()).toList();
  }
}

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
  DateTime? get timestamp;
  int get src;
  int get srcEnt;
  int get dst;
  int get dstEnt;
  String get abbrev;
}

/// Is a mixin in the messages to get and set header fields
abstract mixin class ImcBuilderHeaderPart {
  DateTime? get timestamp;
  set timestamp(DateTime? timestamp);

  int get src;
  set src(int src);

  int get srcEnt;
  set srcEnt(int srcEnt);

  int get dst;
  set dst(int dst);

  int get dstEnt;
  set dstEnt(int dstEnt);

  void copyFromHeader(ImcBuilderHeaderPart? other) {
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
  BuilderWithInstanciator<V, B> newInstance([ImcBuilderHeaderPart? headerFrom]);

  /// Instanciates from JSON
  BuilderWithInstanciator<V, B> fromJson(Map<String, dynamic> json);

  void copyFromHeader(ImcBuilderHeaderPart other);
}

// Borrowed from https://github.com/google/built_value.dart/blob/master/built_value/lib/built_value.dart
// to avoid include the all built_value

/// Implement this for a Built Value.
///
/// Then use built_value_generator.dart code generation functionality to
/// provide the rest of the implementation.
///
/// See https://github.com/google/built_value.dart/tree/master/example
abstract class Built<V extends Built<V, B>, B extends Builder<V, B>> {
  /// Rebuilds the instance.
  ///
  /// The result is the same as this instance but with [updates] applied.
  /// [updates] is a function that takes a builder [B].
  ///
  /// The implementation of this method will be generated for you by the
  /// built_value generator.
  V rebuild(Function(B) updates);

  /// Converts the instance to a builder [B].
  ///
  /// The implementation of this method will be generated for you by the
  /// built_value generator.
  B toBuilder();
}

/// Every [Built] class has a corresponding [Builder] class.
///
/// Usually you don't need to create one by hand; it will be generated
/// for you.
///
/// See <https://github.com/google/built_value.dart/tree/master/example>
abstract class Builder<V extends Built<V, B>, B extends Builder<V, B>> {
  /// Replaces the value in the builder with a new one.
  ///
  /// The implementation of this method will be generated for you by the
  /// built_value generator.
  void replace(V value);

  /// Applies updates.
  ///
  /// [updates] is a function that takes a builder [B].
  void update(Function(B)? updates);

  /// Builds.
  ///
  /// The implementation of this method will be generated for you by the
  /// built_value generator.
  V build();
}

/// For use by generated code in calculating hash codes. Do not use directly.
int $jc(int hash, int value) {
  // Jenkins hash "combine".
  hash = 0x1fffffff & (hash + value);
  hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
  return hash ^ (hash >> 6);
}

/// For use by generated code in calculating hash codes. Do not use directly.
int $jf(int hash) {
  // Jenkins hash "finish".
  hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
  hash = hash ^ (hash >> 11);
  return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
}

/// Function that returns a [BuiltValueToStringHelper].
typedef BuiltValueToStringHelperProvider = BuiltValueToStringHelper Function(
    String className);

/// Function used by generated code to get a [BuiltValueToStringHelper].
/// Set this to change built_value class toString() output. Built-in examples
/// are [IndentingBuiltValueToStringHelper], which is the default, and
/// [FlatBuiltValueToStringHelper].
BuiltValueToStringHelperProvider newBuiltValueToStringHelper =
    (String className) => IndentingBuiltValueToStringHelper(className);

/// Interface for built_value toString() output helpers.
///
/// Note: this is an experimental feature. API may change without a major
/// version increase.
abstract class BuiltValueToStringHelper {
  /// Add a field and its value.
  void add(String field, Object? value);

  /// Returns to completed toString(). The helper may not be used after this
  /// method is called.
  @override
  String toString();
}

/// A [BuiltValueToStringHelper] that produces multi-line indented output.
class IndentingBuiltValueToStringHelper implements BuiltValueToStringHelper {
  StringBuffer? _result = StringBuffer();

  IndentingBuiltValueToStringHelper(String className) {
    _result!
      ..write(className)
      ..write(' {\n');
    _indentingBuiltValueToStringHelperIndent += 2;
  }

  @override
  void add(String field, Object? value) {
    if (value != null) {
      _result!
        ..write(' ' * _indentingBuiltValueToStringHelperIndent)
        ..write(field)
        ..write('=')
        ..write(value)
        ..write(',\n');
    }
  }

  @override
  String toString() {
    _indentingBuiltValueToStringHelperIndent -= 2;
    _result!
      ..write(' ' * _indentingBuiltValueToStringHelperIndent)
      ..write('}');
    var stringResult = _result.toString();
    _result = null;
    return stringResult;
  }
}

int _indentingBuiltValueToStringHelperIndent = 0;
