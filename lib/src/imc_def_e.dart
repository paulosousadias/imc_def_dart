// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// IMC Code Generator
// **************************************************************************

part of 'imc_def_gen.dart';

class BooleanEnum extends EnumType {
  static const bool_false = BooleanEnum(0);
  static const bool_true = BooleanEnum(1);

  static List<BooleanEnum> get values => <BooleanEnum>[
        bool_false,
        bool_true,
      ];

  static core.Map<BooleanEnum, String> get names => <BooleanEnum, String>{
        bool_false: '''False''',
        bool_true: '''True''',
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
  static const ctlmd_relinquish_handoff_ctl = ControlledModeEnum(0);
  static const ctlmd_request_ctl = ControlledModeEnum(1);
  static const ctlmd_override_ctl = ControlledModeEnum(2);

  static List<ControlledModeEnum> get values => <ControlledModeEnum>[
        ctlmd_relinquish_handoff_ctl,
        ctlmd_request_ctl,
        ctlmd_override_ctl,
      ];

  static core.Map<ControlledModeEnum, String> get names =>
      <ControlledModeEnum, String>{
        ctlmd_relinquish_handoff_ctl: '''Relinquish / Handoff Control''',
        ctlmd_request_ctl: '''Request Control''',
        ctlmd_override_ctl: '''Override Control''',
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
  static const sunits_meters_ps = SpeedUnitsEnum(0);
  static const sunits_rpm = SpeedUnitsEnum(1);
  static const sunits_percentage = SpeedUnitsEnum(2);

  static List<SpeedUnitsEnum> get values => <SpeedUnitsEnum>[
        sunits_meters_ps,
        sunits_rpm,
        sunits_percentage,
      ];

  static core.Map<SpeedUnitsEnum, String> get names => <SpeedUnitsEnum, String>{
        sunits_meters_ps: '''Meters per second''',
        sunits_rpm: '''RPM''',
        sunits_percentage: '''Percentage''',
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
  static const systemtype_ccu = SystemTypeEnum(0);
  static const systemtype_humansensor = SystemTypeEnum(1);
  static const systemtype_uuv = SystemTypeEnum(2);
  static const systemtype_usv = SystemTypeEnum(3);
  static const systemtype_uav = SystemTypeEnum(4);
  static const systemtype_ugv = SystemTypeEnum(5);
  static const systemtype_staticsensor = SystemTypeEnum(6);
  static const systemtype_mobilesensor = SystemTypeEnum(7);
  static const systemtype_wsn = SystemTypeEnum(8);

  static List<SystemTypeEnum> get values => <SystemTypeEnum>[
        systemtype_ccu,
        systemtype_humansensor,
        systemtype_uuv,
        systemtype_usv,
        systemtype_uav,
        systemtype_ugv,
        systemtype_staticsensor,
        systemtype_mobilesensor,
        systemtype_wsn,
      ];

  static core.Map<SystemTypeEnum, String> get names => <SystemTypeEnum, String>{
        systemtype_ccu: '''CCU''',
        systemtype_humansensor: '''Human-portable Sensor''',
        systemtype_uuv: '''UUV''',
        systemtype_usv: '''USV''',
        systemtype_uav: '''UAV''',
        systemtype_ugv: '''UGV''',
        systemtype_staticsensor: '''Static sensor''',
        systemtype_mobilesensor: '''Mobile sensor''',
        systemtype_wsn: '''Wireless Sensor Network''',
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
  static const z_none = ZUnitsEnum(0);
  static const z_depth = ZUnitsEnum(1);
  static const z_altitude = ZUnitsEnum(2);
  static const z_height = ZUnitsEnum(3);

  static List<ZUnitsEnum> get values => <ZUnitsEnum>[
        z_none,
        z_depth,
        z_altitude,
        z_height,
      ];

  static core.Map<ZUnitsEnum, String> get names => <ZUnitsEnum, String>{
        z_none: '''None''',
        z_depth: '''Depth''',
        z_altitude: '''Altitude''',
        z_height: '''Height''',
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
  static const rssiunits_db = RSSIUnitsEnum(0);
  static const rssiunits_percentage = RSSIUnitsEnum(1);

  static List<RSSIUnitsEnum> get values => <RSSIUnitsEnum>[
        rssiunits_db,
        rssiunits_percentage,
      ];

  static core.Map<RSSIUnitsEnum, String> get names => <RSSIUnitsEnum, String>{
        rssiunits_db: '''Decibel''',
        rssiunits_percentage: '''Percentage''',
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
  static const uavtype_fixedwing = UAVTypeEnum(0);
  static const uavtype_copter = UAVTypeEnum(1);
  static const uavtype_vtol = UAVTypeEnum(2);

  static List<UAVTypeEnum> get values => <UAVTypeEnum>[
        uavtype_fixedwing,
        uavtype_copter,
        uavtype_vtol,
      ];

  static core.Map<UAVTypeEnum, String> get names => <UAVTypeEnum, String>{
        uavtype_fixedwing: '''Fixed-Wing''',
        uavtype_copter: '''Copter''',
        uavtype_vtol: '''Vtol''',
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
  static const cl_none = CLoopsMaskBitfield(0x00000000);
  static const cl_path = CLoopsMaskBitfield(0x00000001);
  static const cl_teleoperation = CLoopsMaskBitfield(0x00000002);
  static const cl_altitude = CLoopsMaskBitfield(0x00000004);
  static const cl_depth = CLoopsMaskBitfield(0x00000008);
  static const cl_roll = CLoopsMaskBitfield(0x00000010);
  static const cl_pitch = CLoopsMaskBitfield(0x00000020);
  static const cl_yaw = CLoopsMaskBitfield(0x00000040);
  static const cl_speed = CLoopsMaskBitfield(0x00000080);
  static const cl_yaw_rate = CLoopsMaskBitfield(0x00000100);
  static const cl_vertical_rate = CLoopsMaskBitfield(0x00000200);
  static const cl_torque = CLoopsMaskBitfield(0x00000400);
  static const cl_force = CLoopsMaskBitfield(0x00000800);
  static const cl_velocity = CLoopsMaskBitfield(0x00001000);
  static const cl_throttle = CLoopsMaskBitfield(0x00002000);
  static const cl_external = CLoopsMaskBitfield(0x40000000);
  static const cl_no_override = CLoopsMaskBitfield(0x80000000);
  static const cl_all = CLoopsMaskBitfield(0xFFFFFFFF);

  static List<CLoopsMaskBitfield> get values => <CLoopsMaskBitfield>[
        cl_none,
        cl_path,
        cl_teleoperation,
        cl_altitude,
        cl_depth,
        cl_roll,
        cl_pitch,
        cl_yaw,
        cl_speed,
        cl_yaw_rate,
        cl_vertical_rate,
        cl_torque,
        cl_force,
        cl_velocity,
        cl_throttle,
        cl_external,
        cl_no_override,
        cl_all,
      ];

  static core.Map<CLoopsMaskBitfield, String> get names =>
      <CLoopsMaskBitfield, String>{
        cl_none: '''None''',
        cl_path: '''Path Control''',
        cl_teleoperation: '''Teleoperation Control''',
        cl_altitude: '''Altitude Control''',
        cl_depth: '''Depth Control''',
        cl_roll: '''Roll Control''',
        cl_pitch: '''Pitch Control''',
        cl_yaw: '''Yaw Control''',
        cl_speed: '''Speed Control''',
        cl_yaw_rate: '''Yaw Rate Control''',
        cl_vertical_rate: '''Vertical Rate Control''',
        cl_torque: '''Torque Control''',
        cl_force: '''Force Control''',
        cl_velocity: '''Velocity Control''',
        cl_throttle: '''Throttle Control''',
        cl_external: '''Unspecified External Control''',
        cl_no_override: '''Non-overridable control''',
        cl_all: '''All''',
      };

  const CLoopsMaskBitfield(int value) : super(value);

  @override
  String toPrettyString() {
    var ret;
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

  static CLoopsMaskBitfield fromBits(List<CLoopsMaskBitfield> bits) =>
      (bits == null || bits.length < 2)
          ? CLoopsMaskBitfield(bits == null || bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce((b1, b2) => CLoopsMaskBitfield(b1.value | b2.value));
}

class OpLimitsMaskBitfield extends BitfieldType {
  static const opl_max_depth = OpLimitsMaskBitfield(0x01);
  static const opl_min_alt = OpLimitsMaskBitfield(0x02);
  static const opl_max_alt = OpLimitsMaskBitfield(0x04);
  static const opl_min_speed = OpLimitsMaskBitfield(0x08);
  static const opl_max_speed = OpLimitsMaskBitfield(0x10);
  static const opl_max_vrate = OpLimitsMaskBitfield(0x20);
  static const opl_area = OpLimitsMaskBitfield(0x40);

  static List<OpLimitsMaskBitfield> get values => <OpLimitsMaskBitfield>[
        opl_max_depth,
        opl_min_alt,
        opl_max_alt,
        opl_min_speed,
        opl_max_speed,
        opl_max_vrate,
        opl_area,
      ];

  static core.Map<OpLimitsMaskBitfield, String> get names =>
      <OpLimitsMaskBitfield, String>{
        opl_max_depth: '''Maximum Depth''',
        opl_min_alt: '''Minimum Altitude''',
        opl_max_alt: '''Maximum Altitude''',
        opl_min_speed: '''Minimum Speed''',
        opl_max_speed: '''Maximum Speed''',
        opl_max_vrate: '''Maximum Vertical Rate''',
        opl_area: '''Operation Area''',
      };

  const OpLimitsMaskBitfield(int value) : super(value);

  @override
  String toPrettyString() {
    var ret;
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

  static OpLimitsMaskBitfield fromBits(List<OpLimitsMaskBitfield> bits) =>
      (bits == null || bits.length < 2)
          ? OpLimitsMaskBitfield(
              bits == null || bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce((b1, b2) => OpLimitsMaskBitfield(b1.value | b2.value));
}
