// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// IMC Code Generator
// **************************************************************************

part of 'imc_def_gen.dart';

class BooleanEnum extends EnumType {
  static const falseVal = const BooleanEnum._(0);
  static const trueVal = const BooleanEnum._(1);

  static get values => [falseVal, trueVal];

  const BooleanEnum._(int value) : super(value);

  bool getBool() => value == 1 ? true : false;
}

class ControlledModeEnum extends EnumType {
  static const relinquish_handoff_ctl = const ControlledModeEnum._(0);
  static const request_ctl = const ControlledModeEnum._(1);
  static const override_ctl = const ControlledModeEnum._(2);

  static get values => [relinquish_handoff_ctl, request_ctl, override_ctl];

  const ControlledModeEnum._(int value) : super(value);
}

class SpeedUnitsEnum extends EnumType {
  static const meters_ps = const SpeedUnitsEnum._(0);
  static const rpm = const SpeedUnitsEnum._(1);
  static const percentage = const SpeedUnitsEnum._(2);

  static get values => [meters_ps, rpm, percentage];

  const SpeedUnitsEnum._(int value) : super(value);
}

class SystemTypeEnum extends EnumType {
  static const ccu = const SystemTypeEnum._(0);
  static const humansensor = const SystemTypeEnum._(1);
  static const uuv = const SystemTypeEnum._(2);
  static const usv = const SystemTypeEnum._(3);
  static const uav = const SystemTypeEnum._(4);
  static const ugv = const SystemTypeEnum._(5);
  static const staticsensor = const SystemTypeEnum._(6);
  static const mobilesensor = const SystemTypeEnum._(7);
  static const wsn = const SystemTypeEnum._(8);

  static get values => [ccu, humansensor, uuv, usv, 
      uav, ugv, staticsensor, mobilesensor, wsn];

  const SystemTypeEnum._(int value) : super(value);
}

class ZUnitsEnum extends EnumType {
  static const none = const ZUnitsEnum._(0);
  static const depth = const ZUnitsEnum._(1);
  static const altitude = const ZUnitsEnum._(2);
  static const height = const ZUnitsEnum._(3);

  static get values => [none, depth, altitude, height];

  const ZUnitsEnum._(int value) : super(value);
}

class RSSIUnitsEnum extends EnumType {
  static const db = const RSSIUnitsEnum._(0);
  static const percentage = const RSSIUnitsEnum._(1);

  static get values => [db, percentage];

  const RSSIUnitsEnum._(int value) : super(value);
}

class UAVTypeEnum extends EnumType {
  static const fixedwing = const UAVTypeEnum._(0);
  static const copter = const UAVTypeEnum._(1);
  static const vtol = const UAVTypeEnum._(2);

  static get values => [fixedwing, copter, vtol];

  const UAVTypeEnum._(int value) : super(value);
}

class CLoopsMaskBitfield extends BitfieldType {
  static const none = const CLoopsMaskBitfield._(0x00000000);
  static const path = const CLoopsMaskBitfield._(0x00000001);
  static const teleoperation = const CLoopsMaskBitfield._(0x00000002);
  static const altitude = const CLoopsMaskBitfield._(0x00000004);
  static const depth = const CLoopsMaskBitfield._(0x00000008);
  static const roll = const CLoopsMaskBitfield._(0x00000010);
  static const pitch = const CLoopsMaskBitfield._(0x00000020);
  static const yaw = const CLoopsMaskBitfield._(0x00000040);
  static const speed = const CLoopsMaskBitfield._(0x00000080);
  static const yaw_rate = const CLoopsMaskBitfield._(0x00000100);
  static const vertical_rate = const CLoopsMaskBitfield._(0x00000200);
  static const torque = const CLoopsMaskBitfield._(0x00000400);
  static const force = const CLoopsMaskBitfield._(0x00000800);
  static const velocity = const CLoopsMaskBitfield._(0x00001000);
  static const throttle = const CLoopsMaskBitfield._(0x00002000);
  static const externalVal = const CLoopsMaskBitfield._(0x40000000);
  static const no_override = const CLoopsMaskBitfield._(0x80000000);
  static const all = const CLoopsMaskBitfield._(0xFFFFFFFF);

  static get values => [none, path, teleoperation, altitude, 
      depth, roll, pitch, yaw, speed, 
      yaw_rate, vertical_rate, torque, force, velocity, 
      throttle, externalVal, no_override, all];

  const CLoopsMaskBitfield._(int value) : super(value);

  static CLoopsMaskBitfield fromBits(
          List<CLoopsMaskBitfield> bits) =>
      bits.reduce((b1, b2) => CLoopsMaskBitfield._(b1.value | b2.value));
}

class OpLimitsMaskBitfield extends BitfieldType {
  static const max_depth = const OpLimitsMaskBitfield._(0x01);
  static const min_alt = const OpLimitsMaskBitfield._(0x02);
  static const max_alt = const OpLimitsMaskBitfield._(0x04);
  static const min_speed = const OpLimitsMaskBitfield._(0x08);
  static const max_speed = const OpLimitsMaskBitfield._(0x10);
  static const max_vrate = const OpLimitsMaskBitfield._(0x20);
  static const area = const OpLimitsMaskBitfield._(0x40);

  static get values => [max_depth, min_alt, max_alt, min_speed, 
      max_speed, max_vrate, area];

  const OpLimitsMaskBitfield._(int value) : super(value);

  static OpLimitsMaskBitfield fromBits(
          List<OpLimitsMaskBitfield> bits) =>
      bits.reduce((b1, b2) => OpLimitsMaskBitfield._(b1.value | b2.value));
}

