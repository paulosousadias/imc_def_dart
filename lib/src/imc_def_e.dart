// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// IMC Code Generator
// **************************************************************************


part of 'imc_def_gen.dart';

class BooleanEnum extends EnumType {
  static const falseVal = const BooleanEnum(0);
  static const trueVal = const BooleanEnum(1);

  static get values => [falseVal, trueVal];

  const BooleanEnum(int value) : super(value);

  bool getBool() => value == 1 ? true : false;
}

class ControlledModeEnum extends EnumType {
  static const relinquish_handoff_ctl = const ControlledModeEnum(0);
  static const request_ctl = const ControlledModeEnum(1);
  static const override_ctl = const ControlledModeEnum(2);

  static get values => [relinquish_handoff_ctl, request_ctl, override_ctl];

  const ControlledModeEnum(int value) : super(value);
}

class SpeedUnitsEnum extends EnumType {
  static const meters_ps = const SpeedUnitsEnum(0);
  static const rpm = const SpeedUnitsEnum(1);
  static const percentage = const SpeedUnitsEnum(2);

  static get values => [meters_ps, rpm, percentage];

  const SpeedUnitsEnum(int value) : super(value);
}

class SystemTypeEnum extends EnumType {
  static const ccu = const SystemTypeEnum(0);
  static const humansensor = const SystemTypeEnum(1);
  static const uuv = const SystemTypeEnum(2);
  static const usv = const SystemTypeEnum(3);
  static const uav = const SystemTypeEnum(4);
  static const ugv = const SystemTypeEnum(5);
  static const staticsensor = const SystemTypeEnum(6);
  static const mobilesensor = const SystemTypeEnum(7);
  static const wsn = const SystemTypeEnum(8);

  static get values => [ccu, humansensor, uuv, usv, 
      uav, ugv, staticsensor, mobilesensor, wsn];

  const SystemTypeEnum(int value) : super(value);
}

class ZUnitsEnum extends EnumType {
  static const none = const ZUnitsEnum(0);
  static const depth = const ZUnitsEnum(1);
  static const altitude = const ZUnitsEnum(2);
  static const height = const ZUnitsEnum(3);

  static get values => [none, depth, altitude, height];

  const ZUnitsEnum(int value) : super(value);
}

class RSSIUnitsEnum extends EnumType {
  static const db = const RSSIUnitsEnum(0);
  static const percentage = const RSSIUnitsEnum(1);

  static get values => [db, percentage];

  const RSSIUnitsEnum(int value) : super(value);
}

class UAVTypeEnum extends EnumType {
  static const fixedwing = const UAVTypeEnum(0);
  static const copter = const UAVTypeEnum(1);
  static const vtol = const UAVTypeEnum(2);

  static get values => [fixedwing, copter, vtol];

  const UAVTypeEnum(int value) : super(value);
}

class CLoopsMaskBitfield extends BitfieldType {
  static const none = const CLoopsMaskBitfield(0x00000000);
  static const path = const CLoopsMaskBitfield(0x00000001);
  static const teleoperation = const CLoopsMaskBitfield(0x00000002);
  static const altitude = const CLoopsMaskBitfield(0x00000004);
  static const depth = const CLoopsMaskBitfield(0x00000008);
  static const roll = const CLoopsMaskBitfield(0x00000010);
  static const pitch = const CLoopsMaskBitfield(0x00000020);
  static const yaw = const CLoopsMaskBitfield(0x00000040);
  static const speed = const CLoopsMaskBitfield(0x00000080);
  static const yaw_rate = const CLoopsMaskBitfield(0x00000100);
  static const vertical_rate = const CLoopsMaskBitfield(0x00000200);
  static const torque = const CLoopsMaskBitfield(0x00000400);
  static const force = const CLoopsMaskBitfield(0x00000800);
  static const velocity = const CLoopsMaskBitfield(0x00001000);
  static const throttle = const CLoopsMaskBitfield(0x00002000);
  static const externalVal = const CLoopsMaskBitfield(0x40000000);
  static const no_override = const CLoopsMaskBitfield(0x80000000);
  static const all = const CLoopsMaskBitfield(0xFFFFFFFF);

  static get values => [none, path, teleoperation, altitude, 
      depth, roll, pitch, yaw, speed, 
      yaw_rate, vertical_rate, torque, force, velocity, 
      throttle, externalVal, no_override, all];

  const CLoopsMaskBitfield(int value) : super(value);

  static CLoopsMaskBitfield fromBits(
          List<CLoopsMaskBitfield> bits) =>
      bits.reduce((b1, b2) => CLoopsMaskBitfield(b1.value | b2.value));
}

class OpLimitsMaskBitfield extends BitfieldType {
  static const max_depth = const OpLimitsMaskBitfield(0x01);
  static const min_alt = const OpLimitsMaskBitfield(0x02);
  static const max_alt = const OpLimitsMaskBitfield(0x04);
  static const min_speed = const OpLimitsMaskBitfield(0x08);
  static const max_speed = const OpLimitsMaskBitfield(0x10);
  static const max_vrate = const OpLimitsMaskBitfield(0x20);
  static const area = const OpLimitsMaskBitfield(0x40);

  static get values => [max_depth, min_alt, max_alt, min_speed, 
      max_speed, max_vrate, area];

  const OpLimitsMaskBitfield(int value) : super(value);

  static OpLimitsMaskBitfield fromBits(
          List<OpLimitsMaskBitfield> bits) =>
      bits.reduce((b1, b2) => OpLimitsMaskBitfield(b1.value | b2.value));
}

