// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// IMC Code Generator
// **************************************************************************

part of 'imc_def_gen.dart';

class BooleanEnum extends EnumType {
  static const boolFalse = BooleanEnum(0);
  static const boolTrue = BooleanEnum(1);

  static List<BooleanEnum> get values => <BooleanEnum>[
        boolFalse,
        boolTrue,
      ];

  static core.Map<BooleanEnum, String> get names => <BooleanEnum, String>{
        boolFalse: '''False''',
        boolTrue: '''True''',
      };

  const BooleanEnum(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }

  bool getBool() => value == 1 ? true : false;
}

class ControlledModeEnum extends EnumType {
  static const ctlmdRelinquishHandoffCtl = ControlledModeEnum(0);
  static const ctlmdRequestCtl = ControlledModeEnum(1);
  static const ctlmdOverrideCtl = ControlledModeEnum(2);

  static List<ControlledModeEnum> get values => <ControlledModeEnum>[
        ctlmdRelinquishHandoffCtl,
        ctlmdRequestCtl,
        ctlmdOverrideCtl,
      ];

  static core.Map<ControlledModeEnum, String> get names =>
      <ControlledModeEnum, String>{
        ctlmdRelinquishHandoffCtl: '''Relinquish / Handoff Control''',
        ctlmdRequestCtl: '''Request Control''',
        ctlmdOverrideCtl: '''Override Control''',
      };

  const ControlledModeEnum(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class SpeedUnitsEnum extends EnumType {
  static const sunitsMetersPs = SpeedUnitsEnum(0);
  static const sunitsRpm = SpeedUnitsEnum(1);
  static const sunitsPercentage = SpeedUnitsEnum(2);

  static List<SpeedUnitsEnum> get values => <SpeedUnitsEnum>[
        sunitsMetersPs,
        sunitsRpm,
        sunitsPercentage,
      ];

  static core.Map<SpeedUnitsEnum, String> get names => <SpeedUnitsEnum, String>{
        sunitsMetersPs: '''Meters per second''',
        sunitsRpm: '''RPM''',
        sunitsPercentage: '''Percentage''',
      };

  const SpeedUnitsEnum(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class SystemTypeEnum extends EnumType {
  static const systemtypeCcu = SystemTypeEnum(0);
  static const systemtypeHumansensor = SystemTypeEnum(1);
  static const systemtypeUuv = SystemTypeEnum(2);
  static const systemtypeUsv = SystemTypeEnum(3);
  static const systemtypeUav = SystemTypeEnum(4);
  static const systemtypeUgv = SystemTypeEnum(5);
  static const systemtypeStaticsensor = SystemTypeEnum(6);
  static const systemtypeMobilesensor = SystemTypeEnum(7);
  static const systemtypeWsn = SystemTypeEnum(8);

  static List<SystemTypeEnum> get values => <SystemTypeEnum>[
        systemtypeCcu,
        systemtypeHumansensor,
        systemtypeUuv,
        systemtypeUsv,
        systemtypeUav,
        systemtypeUgv,
        systemtypeStaticsensor,
        systemtypeMobilesensor,
        systemtypeWsn,
      ];

  static core.Map<SystemTypeEnum, String> get names => <SystemTypeEnum, String>{
        systemtypeCcu: '''CCU''',
        systemtypeHumansensor: '''Human-portable Sensor''',
        systemtypeUuv: '''UUV''',
        systemtypeUsv: '''USV''',
        systemtypeUav: '''UAV''',
        systemtypeUgv: '''UGV''',
        systemtypeStaticsensor: '''Static sensor''',
        systemtypeMobilesensor: '''Mobile sensor''',
        systemtypeWsn: '''Wireless Sensor Network''',
      };

  const SystemTypeEnum(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class ZUnitsEnum extends EnumType {
  static const zNone = ZUnitsEnum(0);
  static const zDepth = ZUnitsEnum(1);
  static const zAltitude = ZUnitsEnum(2);
  static const zHeight = ZUnitsEnum(3);

  static List<ZUnitsEnum> get values => <ZUnitsEnum>[
        zNone,
        zDepth,
        zAltitude,
        zHeight,
      ];

  static core.Map<ZUnitsEnum, String> get names => <ZUnitsEnum, String>{
        zNone: '''None''',
        zDepth: '''Depth''',
        zAltitude: '''Altitude''',
        zHeight: '''Height''',
      };

  const ZUnitsEnum(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class RSSIUnitsEnum extends EnumType {
  static const rssiunitsDb = RSSIUnitsEnum(0);
  static const rssiunitsPercentage = RSSIUnitsEnum(1);

  static List<RSSIUnitsEnum> get values => <RSSIUnitsEnum>[
        rssiunitsDb,
        rssiunitsPercentage,
      ];

  static core.Map<RSSIUnitsEnum, String> get names => <RSSIUnitsEnum, String>{
        rssiunitsDb: '''Decibel''',
        rssiunitsPercentage: '''Percentage''',
      };

  const RSSIUnitsEnum(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class UAVTypeEnum extends EnumType {
  static const uavtypeFixedwing = UAVTypeEnum(0);
  static const uavtypeCopter = UAVTypeEnum(1);
  static const uavtypeVtol = UAVTypeEnum(2);

  static List<UAVTypeEnum> get values => <UAVTypeEnum>[
        uavtypeFixedwing,
        uavtypeCopter,
        uavtypeVtol,
      ];

  static core.Map<UAVTypeEnum, String> get names => <UAVTypeEnum, String>{
        uavtypeFixedwing: '''Fixed-Wing''',
        uavtypeCopter: '''Copter''',
        uavtypeVtol: '''Vtol''',
      };

  const UAVTypeEnum(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class CLoopsMaskBitfield extends BitfieldType {
  static const clNone = CLoopsMaskBitfield(0x00000000);
  static const clPath = CLoopsMaskBitfield(0x00000001);
  static const clTeleoperation = CLoopsMaskBitfield(0x00000002);
  static const clAltitude = CLoopsMaskBitfield(0x00000004);
  static const clDepth = CLoopsMaskBitfield(0x00000008);
  static const clRoll = CLoopsMaskBitfield(0x00000010);
  static const clPitch = CLoopsMaskBitfield(0x00000020);
  static const clYaw = CLoopsMaskBitfield(0x00000040);
  static const clSpeed = CLoopsMaskBitfield(0x00000080);
  static const clYawRate = CLoopsMaskBitfield(0x00000100);
  static const clVerticalRate = CLoopsMaskBitfield(0x00000200);
  static const clTorque = CLoopsMaskBitfield(0x00000400);
  static const clForce = CLoopsMaskBitfield(0x00000800);
  static const clVelocity = CLoopsMaskBitfield(0x00001000);
  static const clThrottle = CLoopsMaskBitfield(0x00002000);
  static const clExternal = CLoopsMaskBitfield(0x40000000);
  static const clNoOverride = CLoopsMaskBitfield(0x80000000);
  static const clAll = CLoopsMaskBitfield(0xFFFFFFFF);

  static List<CLoopsMaskBitfield> get values => <CLoopsMaskBitfield>[
        clNone,
        clPath,
        clTeleoperation,
        clAltitude,
        clDepth,
        clRoll,
        clPitch,
        clYaw,
        clSpeed,
        clYawRate,
        clVerticalRate,
        clTorque,
        clForce,
        clVelocity,
        clThrottle,
        clExternal,
        clNoOverride,
        clAll,
      ];

  static core.Map<CLoopsMaskBitfield, String> get names =>
      <CLoopsMaskBitfield, String>{
        clNone: '''None''',
        clPath: '''Path Control''',
        clTeleoperation: '''Teleoperation Control''',
        clAltitude: '''Altitude Control''',
        clDepth: '''Depth Control''',
        clRoll: '''Roll Control''',
        clPitch: '''Pitch Control''',
        clYaw: '''Yaw Control''',
        clSpeed: '''Speed Control''',
        clYawRate: '''Yaw Rate Control''',
        clVerticalRate: '''Vertical Rate Control''',
        clTorque: '''Torque Control''',
        clForce: '''Force Control''',
        clVelocity: '''Velocity Control''',
        clThrottle: '''Throttle Control''',
        clExternal: '''Unspecified External Control''',
        clNoOverride: '''Non-overridable control''',
        clAll: '''All''',
      };

  const CLoopsMaskBitfield(int value) : super(value);

  @override
  String toPrettyString() {
    String? ret;
    if (value == 0) return '';

    var valNot = value;
    for (var item in values) {
      if (hasBits(<CLoopsMaskBitfield>[item])) {
        ret ??= '';
        ret += '${ret.isNotEmpty ? '|' : ''}${names[item]}';
        valNot &= ~item.value;
      }
    }
    if (valNot != 0) {
      ret ??= '';
      ret += '${ret.isNotEmpty ? '|' : ''}?';
    }
    return ret ?? super.toPrettyString();
  }

  static CLoopsMaskBitfield empty() => CLoopsMaskBitfield(0);

  static CLoopsMaskBitfield fromBits(List<CLoopsMaskBitfield> bits) =>
      (bits.length < 2)
          ? CLoopsMaskBitfield(bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce((b1, b2) => CLoopsMaskBitfield(b1.value | b2.value));
}

class OpLimitsMaskBitfield extends BitfieldType {
  static const oplMaxDepth = OpLimitsMaskBitfield(0x01);
  static const oplMinAlt = OpLimitsMaskBitfield(0x02);
  static const oplMaxAlt = OpLimitsMaskBitfield(0x04);
  static const oplMinSpeed = OpLimitsMaskBitfield(0x08);
  static const oplMaxSpeed = OpLimitsMaskBitfield(0x10);
  static const oplMaxVrate = OpLimitsMaskBitfield(0x20);
  static const oplArea = OpLimitsMaskBitfield(0x40);

  static List<OpLimitsMaskBitfield> get values => <OpLimitsMaskBitfield>[
        oplMaxDepth,
        oplMinAlt,
        oplMaxAlt,
        oplMinSpeed,
        oplMaxSpeed,
        oplMaxVrate,
        oplArea,
      ];

  static core.Map<OpLimitsMaskBitfield, String> get names =>
      <OpLimitsMaskBitfield, String>{
        oplMaxDepth: '''Maximum Depth''',
        oplMinAlt: '''Minimum Altitude''',
        oplMaxAlt: '''Maximum Altitude''',
        oplMinSpeed: '''Minimum Speed''',
        oplMaxSpeed: '''Maximum Speed''',
        oplMaxVrate: '''Maximum Vertical Rate''',
        oplArea: '''Operation Area''',
      };

  const OpLimitsMaskBitfield(int value) : super(value);

  @override
  String toPrettyString() {
    String? ret;
    if (value == 0) return '';

    var valNot = value;
    for (var item in values) {
      if (hasBits(<OpLimitsMaskBitfield>[item])) {
        ret ??= '';
        ret += '${ret.isNotEmpty ? '|' : ''}${names[item]}';
        valNot &= ~item.value;
      }
    }
    if (valNot != 0) {
      ret ??= '';
      ret += '${ret.isNotEmpty ? '|' : ''}?';
    }
    return ret ?? super.toPrettyString();
  }

  static OpLimitsMaskBitfield empty() => OpLimitsMaskBitfield(0);

  static OpLimitsMaskBitfield fromBits(List<OpLimitsMaskBitfield> bits) =>
      (bits.length < 2)
          ? OpLimitsMaskBitfield(bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce((b1, b2) => OpLimitsMaskBitfield(b1.value | b2.value));
}
