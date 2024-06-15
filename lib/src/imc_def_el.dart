// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// IMC Code Generator
// **************************************************************************

part of 'imc_def_gen.dart';

/// State of entity.
class EntityStateEnumState extends EnumType {
  static const estaBoot = EntityStateEnumState(0);
  static const estaNormal = EntityStateEnumState(1);
  static const estaFault = EntityStateEnumState(2);
  static const estaError = EntityStateEnumState(3);
  static const estaFailure = EntityStateEnumState(4);

  static List<EntityStateEnumState> get values => <EntityStateEnumState>[
        estaBoot,
        estaNormal,
        estaFault,
        estaError,
        estaFailure,
      ];

  static core.Map<EntityStateEnumState, String> get names =>
      <EntityStateEnumState, String>{
        estaBoot: '''Bootstrapping''',
        estaNormal: '''Normal Operation''',
        estaFault: '''Fault''',
        estaError: '''Error''',
        estaFailure: '''Failure''',
      };

  const EntityStateEnumState(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Complementary entity state flags.
class EntityStateBitfieldFlags extends BitfieldType {
  static const eflaHumanIntervention = EntityStateBitfieldFlags(0x01);

  static List<EntityStateBitfieldFlags> get values =>
      <EntityStateBitfieldFlags>[eflaHumanIntervention];

  static core.Map<EntityStateBitfieldFlags, String> get names =>
      <EntityStateBitfieldFlags, String>{
        eflaHumanIntervention: '''Human Intervention Required'''
      };

  const EntityStateBitfieldFlags(super.value);

  @override
  String toPrettyString() {
    String? ret;
    if (value == 0) return '';

    var valNot = value;
    for (var item in values) {
      if (hasBits(<EntityStateBitfieldFlags>[item])) {
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

  static EntityStateBitfieldFlags empty() => EntityStateBitfieldFlags(0);

  static EntityStateBitfieldFlags fromBits(
          List<EntityStateBitfieldFlags> bits) =>
      (bits.length < 2)
          ? EntityStateBitfieldFlags(bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce(
              (b1, b2) => EntityStateBitfieldFlags(b1.value | b2.value));
}

/// Operation to perform.
class EntityListEnumOp extends EnumType {
  static const opReport = EntityListEnumOp(0);
  static const opQuery = EntityListEnumOp(1);

  static List<EntityListEnumOp> get values => <EntityListEnumOp>[
        opReport,
        opQuery,
      ];

  static core.Map<EntityListEnumOp, String> get names =>
      <EntityListEnumOp, String>{
        opReport: '''Report''',
        opQuery: '''Query''',
      };

  const EntityListEnumOp(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class RestartSystemEnumType extends EnumType {
  /// Request a DUNE restart
  static const rstypeDune = RestartSystemEnumType(1);

  /// Request a system restart.
  static const rstypeSystem = RestartSystemEnumType(2);

  static List<RestartSystemEnumType> get values => <RestartSystemEnumType>[
        rstypeDune,
        rstypeSystem,
      ];

  static core.Map<RestartSystemEnumType, String> get names =>
      <RestartSystemEnumType, String>{
        rstypeDune: '''Dune''',
        rstypeSystem: '''System''',
      };

  const RestartSystemEnumType(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Operation to perform.
class DevCalibrationControlEnumOp extends EnumType {
  /// Start calibration procedure.
  static const dcalStart = DevCalibrationControlEnumOp(0);

  /// Stop calibration procedure.
  static const dcalStop = DevCalibrationControlEnumOp(1);

  /// Perform next step of the calibration procedure.
  static const dcalStepNext = DevCalibrationControlEnumOp(2);

  /// Perform previous step of the calibration procedure.
  static const dcalStepPrevious = DevCalibrationControlEnumOp(3);

  static List<DevCalibrationControlEnumOp> get values =>
      <DevCalibrationControlEnumOp>[
        dcalStart,
        dcalStop,
        dcalStepNext,
        dcalStepPrevious,
      ];

  static core.Map<DevCalibrationControlEnumOp, String> get names =>
      <DevCalibrationControlEnumOp, String>{
        dcalStart: '''Start''',
        dcalStop: '''Stop''',
        dcalStepNext: '''Perform Next Calibration Step''',
        dcalStepPrevious: '''Perform Previous Calibration Step''',
      };

  const DevCalibrationControlEnumOp(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Additional flags.
class DevCalibrationStateBitfieldFlags extends BitfieldType {
  /// Jumping to the previous calibration step is not supported.
  static const dcsPreviousNotSupported = DevCalibrationStateBitfieldFlags(0x01);

  /// Jumping to the next calibration step is not supported.
  static const dcsNextNotSupported = DevCalibrationStateBitfieldFlags(0x02);

  /// The calibration procedure was suspended and must be resumed or
  /// cancelled with a DeviceCalibrationControl message.
  static const dcsWaitingControl = DevCalibrationStateBitfieldFlags(0x04);

  /// Calibration was interrupted due to an error and must be
  /// restarted or cancelled with a DeviceCalibrationControl
  /// message.
  static const dcsError = DevCalibrationStateBitfieldFlags(0x08);

  /// The calibration procedure was completed.
  static const dcsCompleted = DevCalibrationStateBitfieldFlags(0x10);

  static List<DevCalibrationStateBitfieldFlags> get values =>
      <DevCalibrationStateBitfieldFlags>[
        dcsPreviousNotSupported,
        dcsNextNotSupported,
        dcsWaitingControl,
        dcsError,
        dcsCompleted,
      ];

  static core.Map<DevCalibrationStateBitfieldFlags, String> get names =>
      <DevCalibrationStateBitfieldFlags, String>{
        dcsPreviousNotSupported: '''Previous Step Not Supported''',
        dcsNextNotSupported: '''Next Step Not Supported''',
        dcsWaitingControl: '''Waiting Device Calibration Control''',
        dcsError: '''Calibration Error''',
        dcsCompleted: '''Calibration Procedure Completed''',
      };

  const DevCalibrationStateBitfieldFlags(super.value);

  @override
  String toPrettyString() {
    String? ret;
    if (value == 0) return '';

    var valNot = value;
    for (var item in values) {
      if (hasBits(<DevCalibrationStateBitfieldFlags>[item])) {
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

  static DevCalibrationStateBitfieldFlags empty() =>
      DevCalibrationStateBitfieldFlags(0);

  static DevCalibrationStateBitfieldFlags fromBits(
          List<DevCalibrationStateBitfieldFlags> bits) =>
      (bits.length < 2)
          ? DevCalibrationStateBitfieldFlags(bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce((b1, b2) =>
              DevCalibrationStateBitfieldFlags(b1.value | b2.value));
}

/// Current state.
class EntityActivationStateEnumState extends EnumType {
  /// Entity is inactive.
  static const easInactive = EntityActivationStateEnumState(0);

  /// Entity is active.
  static const easActive = EntityActivationStateEnumState(1);

  /// Activation is in progress.
  static const easActIp = EntityActivationStateEnumState(2);

  /// Activation is completed.
  static const easActDone = EntityActivationStateEnumState(3);

  /// The activation procedure failed and the field 'error' contains the error message.
  static const easActFail = EntityActivationStateEnumState(4);

  /// Deactivation is in progress.
  static const easDeactIp = EntityActivationStateEnumState(5);

  /// Deactivation is in progress.
  static const easDeactDone = EntityActivationStateEnumState(6);

  /// The deactivation procedure failed and the field 'error' contains the error message.
  static const easDeactFail = EntityActivationStateEnumState(7);

  static List<EntityActivationStateEnumState> get values =>
      <EntityActivationStateEnumState>[
        easInactive,
        easActive,
        easActIp,
        easActDone,
        easActFail,
        easDeactIp,
        easDeactDone,
        easDeactFail,
      ];

  static core.Map<EntityActivationStateEnumState, String> get names =>
      <EntityActivationStateEnumState, String>{
        easInactive: '''Entity is Inactive''',
        easActive: '''Entity is Active''',
        easActIp: '''Activation in Progress''',
        easActDone: '''Activation Completed''',
        easActFail: '''Activation Failed''',
        easDeactIp: '''Deactivation In Progress''',
        easDeactDone: '''Deactivation Completed''',
        easDeactFail: '''Deactivation Failed''',
      };

  const EntityActivationStateEnumState(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Action on the vehicle operation limits
class VehicleOperationalLimitsEnumOp extends EnumType {
  static const opRequest = VehicleOperationalLimitsEnumOp(0);
  static const opSet = VehicleOperationalLimitsEnumOp(1);
  static const opReport = VehicleOperationalLimitsEnumOp(2);

  static List<VehicleOperationalLimitsEnumOp> get values =>
      <VehicleOperationalLimitsEnumOp>[
        opRequest,
        opSet,
        opReport,
      ];

  static core.Map<VehicleOperationalLimitsEnumOp, String> get names =>
      <VehicleOperationalLimitsEnumOp, String>{
        opRequest: '''Request''',
        opSet: '''Set''',
        opReport: '''Report''',
      };

  const VehicleOperationalLimitsEnumOp(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Indicates whether leaks have been detected or not.
class LeakSimulationEnumOp extends EnumType {
  static const lsimOff = LeakSimulationEnumOp(0);
  static const lsimOn = LeakSimulationEnumOp(1);

  static List<LeakSimulationEnumOp> get values => <LeakSimulationEnumOp>[
        lsimOff,
        lsimOn,
      ];

  static core.Map<LeakSimulationEnumOp, String> get names =>
      <LeakSimulationEnumOp, String>{
        lsimOff: '''Leaks Off''',
        lsimOn: '''Leaks On''',
      };

  const LeakSimulationEnumOp(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Type of request.
class UASimulationEnumType extends EnumType {
  static const uasData = UASimulationEnumType(0);
  static const uasPing = UASimulationEnumType(1);
  static const uasPingReply = UASimulationEnumType(2);

  static List<UASimulationEnumType> get values => <UASimulationEnumType>[
        uasData,
        uasPing,
        uasPingReply,
      ];

  static core.Map<UASimulationEnumType, String> get names =>
      <UASimulationEnumType, String>{
        uasData: '''Data Transmission''',
        uasPing: '''Ping''',
        uasPingReply: '''Ping Reply''',
      };

  const UASimulationEnumType(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Action on the vehicle simulation parameters for the formation control
class DynamicsSimParamEnumOp extends EnumType {
  static const opRequest = DynamicsSimParamEnumOp(0);
  static const opSet = DynamicsSimParamEnumOp(1);
  static const opReport = DynamicsSimParamEnumOp(2);

  static List<DynamicsSimParamEnumOp> get values => <DynamicsSimParamEnumOp>[
        opRequest,
        opSet,
        opReport,
      ];

  static core.Map<DynamicsSimParamEnumOp, String> get names =>
      <DynamicsSimParamEnumOp, String>{
        opRequest: '''Request''',
        opSet: '''Set''',
        opReport: '''Report''',
      };

  const DynamicsSimParamEnumOp(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Operation to perform.
class CacheControlEnumOp extends EnumType {
  static const copStore = CacheControlEnumOp(0);
  static const copLoad = CacheControlEnumOp(1);
  static const copClear = CacheControlEnumOp(2);
  static const copCopy = CacheControlEnumOp(3);
  static const copCopyComplete = CacheControlEnumOp(4);

  static List<CacheControlEnumOp> get values => <CacheControlEnumOp>[
        copStore,
        copLoad,
        copClear,
        copCopy,
        copCopyComplete,
      ];

  static core.Map<CacheControlEnumOp, String> get names =>
      <CacheControlEnumOp, String>{
        copStore: '''Store''',
        copLoad: '''Load''',
        copClear: '''Clear''',
        copCopy: '''Copy Snapshot''',
        copCopyComplete: '''Snapshot Copy Complete''',
      };

  const CacheControlEnumOp(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Operation to perform.
class LoggingControlEnumOp extends EnumType {
  /// Request the logging manager to start logging. The logging
  /// manager will reply with a STARTED operation. If logging is
  /// already in progress the current log will be closed and a new
  /// one will be opened (therefore the logging manager will send
  /// two messages - STOPPED and STARTED). The field 'name'
  /// represents the label that will be appended to the log path.
  static const copRequestStart = LoggingControlEnumOp(0);

  /// The logging manager will send a message with this operation
  /// everytime a log is successfully started. The field 'name'
  /// contains the complete name of the log.
  static const copStarted = LoggingControlEnumOp(1);

  /// Request the logging manager to stop logging messages. The
  /// logging manager will reply with a STOPPED operation and
  /// logging will be suspended until a message with operation
  /// START is received. If logging is already stoppped the
  /// logging manager will ignore this operation and will not
  /// reply with a STOPPED operation. The field 'name' with this
  /// operation type has no meaning.
  static const copRequestStop = LoggingControlEnumOp(2);

  /// The logging manager will send a message with this operation
  /// when logging is successfully stopped. The field 'name'
  /// contains the complete name of the log that was closed.
  static const copStopped = LoggingControlEnumOp(3);

  /// This operation instructs the logging manager to send a
  /// message with operation CURRENT_NAME containing the complete
  /// name of the current log in the field 'name'. The field
  /// 'name' with this operation type has no meaning.
  static const copRequestCurrentName = LoggingControlEnumOp(4);

  /// The logging manager will send a message with this operation
  /// when asked via the REQUEST_CURRENT_NAME operation. The field
  /// 'name' contains the complete name of the log.
  static const copCurrentName = LoggingControlEnumOp(5);

  static List<LoggingControlEnumOp> get values => <LoggingControlEnumOp>[
        copRequestStart,
        copStarted,
        copRequestStop,
        copStopped,
        copRequestCurrentName,
        copCurrentName,
      ];

  static core.Map<LoggingControlEnumOp, String> get names =>
      <LoggingControlEnumOp, String>{
        copRequestStart: '''Request Start of Logging''',
        copStarted: '''Logging Started''',
        copRequestStop: '''Request Logging Stop''',
        copStopped: '''Logging Stopped''',
        copRequestCurrentName: '''Request Current Log Name''',
        copCurrentName: '''Current Log Name''',
      };

  const LoggingControlEnumOp(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Type of message.
class LogBookEntryEnumType extends EnumType {
  static const lbetInfo = LogBookEntryEnumType(0);
  static const lbetWarning = LogBookEntryEnumType(1);
  static const lbetError = LogBookEntryEnumType(2);
  static const lbetCritical = LogBookEntryEnumType(3);
  static const lbetDebug = LogBookEntryEnumType(4);

  static List<LogBookEntryEnumType> get values => <LogBookEntryEnumType>[
        lbetInfo,
        lbetWarning,
        lbetError,
        lbetCritical,
        lbetDebug,
      ];

  static core.Map<LogBookEntryEnumType, String> get names =>
      <LogBookEntryEnumType, String>{
        lbetInfo: '''Information''',
        lbetWarning: '''Warning''',
        lbetError: '''Error''',
        lbetCritical: '''Critical''',
        lbetDebug: '''Debug''',
      };

  const LogBookEntryEnumType(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Command to perform.
class LogBookControlEnumCommand extends EnumType {
  /// Retrieve log book entries.
  static const lbcGet = LogBookControlEnumCommand(0);

  /// Clear log book entries.
  static const lbcClear = LogBookControlEnumCommand(1);

  /// Retrieve log book entries corresponding to errors.
  static const lbcGetErr = LogBookControlEnumCommand(2);

  /// Reply to a GET command. Message argument is a MessageList
  /// instance containing LogBookEntry messages.
  static const lbcReply = LogBookControlEnumCommand(3);

  static List<LogBookControlEnumCommand> get values =>
      <LogBookControlEnumCommand>[
        lbcGet,
        lbcClear,
        lbcGetErr,
        lbcReply,
      ];

  static core.Map<LogBookControlEnumCommand, String> get names =>
      <LogBookControlEnumCommand, String>{
        lbcGet: '''Get''',
        lbcClear: '''Clear''',
        lbcGetErr: '''Get Errors''',
        lbcReply: '''Reply''',
      };

  const LogBookControlEnumCommand(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Operation to perform.
class ReplayControlEnumOp extends EnumType {
  static const ropStart = ReplayControlEnumOp(0);
  static const ropStop = ReplayControlEnumOp(1);
  static const ropPause = ReplayControlEnumOp(2);
  static const ropResume = ReplayControlEnumOp(3);

  static List<ReplayControlEnumOp> get values => <ReplayControlEnumOp>[
        ropStart,
        ropStop,
        ropPause,
        ropResume,
      ];

  static core.Map<ReplayControlEnumOp, String> get names =>
      <ReplayControlEnumOp, String>{
        ropStart: '''Start''',
        ropStop: '''Stop''',
        ropPause: '''Pause''',
        ropResume: '''Resume''',
      };

  const ReplayControlEnumOp(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Operation to perform.
class ClockControlEnumOp extends EnumType {
  /// Synchronize clock according to given clock value.
  static const copSyncExec = ClockControlEnumOp(0);

  /// Request autonomous clock synchronization.
  static const copSyncRequest = ClockControlEnumOp(1);

  /// Synchronization start notification.
  static const copSyncStarted = ClockControlEnumOp(2);

  /// Synchronization completion notification.
  static const copSyncDone = ClockControlEnumOp(3);

  /// Set timezone.
  static const copSetTz = ClockControlEnumOp(4);

  /// Notification due to timezone modification.
  static const copSetTzDone = ClockControlEnumOp(5);

  static List<ClockControlEnumOp> get values => <ClockControlEnumOp>[
        copSyncExec,
        copSyncRequest,
        copSyncStarted,
        copSyncDone,
        copSetTz,
        copSetTzDone,
      ];

  static core.Map<ClockControlEnumOp, String> get names =>
      <ClockControlEnumOp, String>{
        copSyncExec: '''Execute Sync.''',
        copSyncRequest: '''Request Sync.''',
        copSyncStarted: '''Sync. Started''',
        copSyncDone: '''Sync. done''',
        copSetTz: '''Set Timezone ''',
        copSetTzDone: '''Timezone Setup''',
      };

  const ClockControlEnumOp(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class HistoricSonarDataEnumEncoding extends EnumType {
  static const encOneBytePerPixel = HistoricSonarDataEnumEncoding(0);
  static const encPng = HistoricSonarDataEnumEncoding(1);
  static const encJpeg = HistoricSonarDataEnumEncoding(2);

  static List<HistoricSonarDataEnumEncoding> get values =>
      <HistoricSonarDataEnumEncoding>[
        encOneBytePerPixel,
        encPng,
        encJpeg,
      ];

  static core.Map<HistoricSonarDataEnumEncoding, String> get names =>
      <HistoricSonarDataEnumEncoding, String>{
        encOneBytePerPixel: '''One Byte Per Pixel''',
        encPng: '''PNG compressed image''',
        encJpeg: '''JPEG compressed image''',
      };

  const HistoricSonarDataEnumEncoding(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Type of event.
class HistoricEventEnumType extends EnumType {
  static const evtypeInfo = HistoricEventEnumType(0);
  static const evtypeError = HistoricEventEnumType(1);

  static List<HistoricEventEnumType> get values => <HistoricEventEnumType>[
        evtypeInfo,
        evtypeError,
      ];

  static core.Map<HistoricEventEnumType, String> get names =>
      <HistoricEventEnumType, String>{
        evtypeInfo: '''Information''',
        evtypeError: '''Error''',
      };

  const HistoricEventEnumType(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Water parameter used to calculate the vertical profile.
class VerticalProfileEnumParameter extends EnumType {
  static const profTemperature = VerticalProfileEnumParameter(0);
  static const profSalinity = VerticalProfileEnumParameter(1);
  static const profConductivity = VerticalProfileEnumParameter(2);
  static const profPh = VerticalProfileEnumParameter(3);
  static const profRedox = VerticalProfileEnumParameter(4);
  static const profChlorophyll = VerticalProfileEnumParameter(5);
  static const profTurbidity = VerticalProfileEnumParameter(6);

  static List<VerticalProfileEnumParameter> get values =>
      <VerticalProfileEnumParameter>[
        profTemperature,
        profSalinity,
        profConductivity,
        profPh,
        profRedox,
        profChlorophyll,
        profTurbidity,
      ];

  static core.Map<VerticalProfileEnumParameter, String> get names =>
      <VerticalProfileEnumParameter, String>{
        profTemperature: '''Temperature''',
        profSalinity: '''Salinity''',
        profConductivity: '''Conductivity''',
        profPh: '''pH''',
        profRedox: '''Redox''',
        profChlorophyll: '''Chlorophyll''',
        profTurbidity: '''Turbidity''',
      };

  const VerticalProfileEnumParameter(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Informs about the availability of the service on internal and
/// external networks.
class AnnounceServiceBitfieldServiceType extends BitfieldType {
  static const srvTypeExternal = AnnounceServiceBitfieldServiceType(0x01);
  static const srvTypeLocal = AnnounceServiceBitfieldServiceType(0x02);

  static List<AnnounceServiceBitfieldServiceType> get values =>
      <AnnounceServiceBitfieldServiceType>[
        srvTypeExternal,
        srvTypeLocal,
      ];

  static core.Map<AnnounceServiceBitfieldServiceType, String> get names =>
      <AnnounceServiceBitfieldServiceType, String>{
        srvTypeExternal: '''External''',
        srvTypeLocal: '''Local''',
      };

  const AnnounceServiceBitfieldServiceType(super.value);

  @override
  String toPrettyString() {
    String? ret;
    if (value == 0) return '';

    var valNot = value;
    for (var item in values) {
      if (hasBits(<AnnounceServiceBitfieldServiceType>[item])) {
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

  static AnnounceServiceBitfieldServiceType empty() =>
      AnnounceServiceBitfieldServiceType(0);

  static AnnounceServiceBitfieldServiceType fromBits(
          List<AnnounceServiceBitfieldServiceType> bits) =>
      (bits.length < 2)
          ? AnnounceServiceBitfieldServiceType(bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce((b1, b2) =>
              AnnounceServiceBitfieldServiceType(b1.value | b2.value));
}

/// Current state of an SMS transaction.
class SmsStateEnumState extends EnumType {
  static const smsAccepted = SmsStateEnumState(0);
  static const smsRejected = SmsStateEnumState(1);
  static const smsInterrupted = SmsStateEnumState(2);
  static const smsCompleted = SmsStateEnumState(3);
  static const smsIdle = SmsStateEnumState(4);
  static const smsTransmitting = SmsStateEnumState(5);
  static const smsReceiving = SmsStateEnumState(6);

  static List<SmsStateEnumState> get values => <SmsStateEnumState>[
        smsAccepted,
        smsRejected,
        smsInterrupted,
        smsCompleted,
        smsIdle,
        smsTransmitting,
        smsReceiving,
      ];

  static core.Map<SmsStateEnumState, String> get names =>
      <SmsStateEnumState, String>{
        smsAccepted: '''Accepted''',
        smsRejected: '''Rejected''',
        smsInterrupted: '''Interrupted''',
        smsCompleted: '''Completed''',
        smsIdle: '''Idle''',
        smsTransmitting: '''Transmitting''',
        smsReceiving: '''Receiving''',
      };

  const SmsStateEnumState(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class IridiumTxStatusEnumStatus extends EnumType {
  static const txstatusOk = IridiumTxStatusEnumStatus(1);
  static const txstatusError = IridiumTxStatusEnumStatus(2);
  static const txstatusQueued = IridiumTxStatusEnumStatus(3);
  static const txstatusTransmit = IridiumTxStatusEnumStatus(4);
  static const txstatusExpired = IridiumTxStatusEnumStatus(5);
  static const txstatusEmpty = IridiumTxStatusEnumStatus(6);

  static List<IridiumTxStatusEnumStatus> get values =>
      <IridiumTxStatusEnumStatus>[
        txstatusOk,
        txstatusError,
        txstatusQueued,
        txstatusTransmit,
        txstatusExpired,
        txstatusEmpty,
      ];

  static core.Map<IridiumTxStatusEnumStatus, String> get names =>
      <IridiumTxStatusEnumStatus, String>{
        txstatusOk: '''Successfull transmission''',
        txstatusError: '''Error while trying to transmit message''',
        txstatusQueued: '''Message has been queued for transmission''',
        txstatusTransmit: '''Message is currently being transmitted''',
        txstatusExpired:
            '''Message's TTL has expired. Transmition cancelled.''',
        txstatusEmpty: '''No more messages to be transmitted or received.''',
      };

  const IridiumTxStatusEnumStatus(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Actions on the group list.
class SystemGroupEnumAction extends EnumType {
  static const opDis = SystemGroupEnumAction(0);
  static const opSet = SystemGroupEnumAction(1);
  static const opReq = SystemGroupEnumAction(2);
  static const opChg = SystemGroupEnumAction(3);
  static const opRep = SystemGroupEnumAction(4);
  static const opFrc = SystemGroupEnumAction(5);

  static List<SystemGroupEnumAction> get values => <SystemGroupEnumAction>[
        opDis,
        opSet,
        opReq,
        opChg,
        opRep,
        opFrc,
      ];

  static core.Map<SystemGroupEnumAction, String> get names =>
      <SystemGroupEnumAction, String>{
        opDis: '''Disband''',
        opSet: '''Set''',
        opReq: '''Request''',
        opChg: '''Change''',
        opRep: '''Report''',
        opFrc: '''Force''',
      };

  const SystemGroupEnumAction(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class HistoricDataQueryEnumType extends EnumType {
  /// Request data from the Data Store
  static const hrtypeQuery = HistoricDataQueryEnumType(1);

  /// Data Store response with Data (using field 'data')
  static const hrtypeReply = HistoricDataQueryEnumType(2);

  /// Clear 'data' from the Data Store
  static const hrtypeClear = HistoricDataQueryEnumType(3);

  static List<HistoricDataQueryEnumType> get values =>
      <HistoricDataQueryEnumType>[
        hrtypeQuery,
        hrtypeReply,
        hrtypeClear,
      ];

  static core.Map<HistoricDataQueryEnumType, String> get names =>
      <HistoricDataQueryEnumType, String>{
        hrtypeQuery: '''Query''',
        hrtypeReply: '''Reply''',
        hrtypeClear: '''Clear''',
      };

  const HistoricDataQueryEnumType(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class CommSystemsQueryBitfieldType extends BitfieldType {
  /// Query systems about communication capability
  static const ciqQuery = CommSystemsQueryBitfieldType(0x01);

  /// Reply systems about communication capability
  static const ciqReply = CommSystemsQueryBitfieldType(0x02);

  static List<CommSystemsQueryBitfieldType> get values =>
      <CommSystemsQueryBitfieldType>[
        ciqQuery,
        ciqReply,
      ];

  static core.Map<CommSystemsQueryBitfieldType, String> get names =>
      <CommSystemsQueryBitfieldType, String>{
        ciqQuery: '''Query Systems''',
        ciqReply: '''Reply''',
      };

  const CommSystemsQueryBitfieldType(super.value);

  @override
  String toPrettyString() {
    String? ret;
    if (value == 0) return '';

    var valNot = value;
    for (var item in values) {
      if (hasBits(<CommSystemsQueryBitfieldType>[item])) {
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

  static CommSystemsQueryBitfieldType empty() =>
      CommSystemsQueryBitfieldType(0);

  static CommSystemsQueryBitfieldType fromBits(
          List<CommSystemsQueryBitfieldType> bits) =>
      (bits.length < 2)
          ? CommSystemsQueryBitfieldType(bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce(
              (b1, b2) => CommSystemsQueryBitfieldType(b1.value | b2.value));
}

/// Communication interface to be used for reports.
class CommSystemsQueryBitfieldCommInterface extends BitfieldType {
  /// Use acoustic communications
  static const ciqAcoustic = CommSystemsQueryBitfieldCommInterface(0x01);

  /// Use satellite communications
  static const ciqSatellite = CommSystemsQueryBitfieldCommInterface(0x02);

  /// Use Global System for Mobile Communications
  static const ciqGsm = CommSystemsQueryBitfieldCommInterface(0x04);

  /// Use mobile networks
  static const ciqMobile = CommSystemsQueryBitfieldCommInterface(0x08);

  /// Use Radio telemetry
  static const ciqRadio = CommSystemsQueryBitfieldCommInterface(0x10);

  static List<CommSystemsQueryBitfieldCommInterface> get values =>
      <CommSystemsQueryBitfieldCommInterface>[
        ciqAcoustic,
        ciqSatellite,
        ciqGsm,
        ciqMobile,
        ciqRadio,
      ];

  static core.Map<CommSystemsQueryBitfieldCommInterface, String> get names =>
      <CommSystemsQueryBitfieldCommInterface, String>{
        ciqAcoustic: '''Acoustic''',
        ciqSatellite: '''Satellite''',
        ciqGsm: '''GSM''',
        ciqMobile: '''Mobile''',
        ciqRadio: '''Radio''',
      };

  const CommSystemsQueryBitfieldCommInterface(super.value);

  @override
  String toPrettyString() {
    String? ret;
    if (value == 0) return '';

    var valNot = value;
    for (var item in values) {
      if (hasBits(<CommSystemsQueryBitfieldCommInterface>[item])) {
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

  static CommSystemsQueryBitfieldCommInterface empty() =>
      CommSystemsQueryBitfieldCommInterface(0);

  static CommSystemsQueryBitfieldCommInterface fromBits(
          List<CommSystemsQueryBitfieldCommInterface> bits) =>
      (bits.length < 2)
          ? CommSystemsQueryBitfieldCommInterface(
              bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce((b1, b2) =>
              CommSystemsQueryBitfieldCommInterface(b1.value | b2.value));
}

class CommSystemsQueryEnumModel extends EnumType {
  /// Model is not defined
  static const ciqUnknown = CommSystemsQueryEnumModel(0x00);

  /// Radio Model 3DR
  static const ciqM3dr = CommSystemsQueryEnumModel(0x01);

  /// Radio Model RDFXXXx point to point
  static const ciqRdfxxxxptp = CommSystemsQueryEnumModel(0x02);

  static List<CommSystemsQueryEnumModel> get values =>
      <CommSystemsQueryEnumModel>[
        ciqUnknown,
        ciqM3dr,
        ciqRdfxxxxptp,
      ];

  static core.Map<CommSystemsQueryEnumModel, String> get names =>
      <CommSystemsQueryEnumModel, String>{
        ciqUnknown: '''unknown''',
        ciqM3dr: '''3DR''',
        ciqRdfxxxxptp: '''RDFXXXxPtP''',
      };

  const CommSystemsQueryEnumModel(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Type of telemetry transmissions.
class TelemetryMsgEnumType extends EnumType {
  /// Send telemetry data.
  static const tmTx = TelemetryMsgEnumType(0x01);

  /// Received telemetry data.
  static const tmRx = TelemetryMsgEnumType(0x02);

  /// Status of transmitted data.
  static const tmTxstatus = TelemetryMsgEnumType(0x03);

  static List<TelemetryMsgEnumType> get values => <TelemetryMsgEnumType>[
        tmTx,
        tmRx,
        tmTxstatus,
      ];

  static core.Map<TelemetryMsgEnumType, String> get names =>
      <TelemetryMsgEnumType, String>{
        tmTx: '''Tx''',
        tmRx: '''Rx''',
        tmTxstatus: '''TxStatus''',
      };

  const TelemetryMsgEnumType(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Type of telemetry transmissions.
class TelemetryMsgEnumCode extends EnumType {
  /// Unknown code type
  static const tmCodeUnk = TelemetryMsgEnumCode(0x00);

  /// Concise representation of entire system state message.
  /// Payload message is a MessageList.
  static const tmCodeReport = TelemetryMsgEnumCode(0x01);

  /// Payload message is INLINEMSG
  static const tmCodeImc = TelemetryMsgEnumCode(0x02);

  /// Payload message is in raw
  static const tmCodeRaw = TelemetryMsgEnumCode(0x03);

  static List<TelemetryMsgEnumCode> get values => <TelemetryMsgEnumCode>[
        tmCodeUnk,
        tmCodeReport,
        tmCodeImc,
        tmCodeRaw,
      ];

  static core.Map<TelemetryMsgEnumCode, String> get names =>
      <TelemetryMsgEnumCode, String>{
        tmCodeUnk: '''Code unknown''',
        tmCodeReport: '''Code Report''',
        tmCodeImc: '''Code IMC''',
        tmCodeRaw: '''Code raw''',
      };

  const TelemetryMsgEnumCode(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Type of telemetry transmissions.
class TelemetryMsgBitfieldAcknowledge extends BitfieldType {
  /// Message transmitted without acknowledged reception response
  static const tmNak = TelemetryMsgBitfieldAcknowledge(0x00);

  /// Message transmitted with acknowledged reception response
  static const tmAk = TelemetryMsgBitfieldAcknowledge(0x01);

  static List<TelemetryMsgBitfieldAcknowledge> get values =>
      <TelemetryMsgBitfieldAcknowledge>[
        tmNak,
        tmAk,
      ];

  static core.Map<TelemetryMsgBitfieldAcknowledge, String> get names =>
      <TelemetryMsgBitfieldAcknowledge, String>{
        tmNak: '''Not acknowledge''',
        tmAk: '''acknowledge''',
      };

  const TelemetryMsgBitfieldAcknowledge(super.value);

  @override
  String toPrettyString() {
    String? ret;
    if (value == 0) return '';

    var valNot = value;
    for (var item in values) {
      if (hasBits(<TelemetryMsgBitfieldAcknowledge>[item])) {
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

  static TelemetryMsgBitfieldAcknowledge empty() =>
      TelemetryMsgBitfieldAcknowledge(0);

  static TelemetryMsgBitfieldAcknowledge fromBits(
          List<TelemetryMsgBitfieldAcknowledge> bits) =>
      (bits.length < 2)
          ? TelemetryMsgBitfieldAcknowledge(bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce(
              (b1, b2) => TelemetryMsgBitfieldAcknowledge(b1.value | b2.value));
}

/// State of the transmitted message.
class TelemetryMsgEnumStatus extends EnumType {
  static const tmNone = TelemetryMsgEnumStatus(0x00);
  static const tmDone = TelemetryMsgEnumStatus(1);
  static const tmFailed = TelemetryMsgEnumStatus(2);
  static const tmQueued = TelemetryMsgEnumStatus(3);
  static const tmTransmit = TelemetryMsgEnumStatus(4);
  static const tmExpired = TelemetryMsgEnumStatus(5);
  static const tmEmpty = TelemetryMsgEnumStatus(6);
  static const tmInvAddr = TelemetryMsgEnumStatus(7);
  static const tmInvSize = TelemetryMsgEnumStatus(8);

  static List<TelemetryMsgEnumStatus> get values => <TelemetryMsgEnumStatus>[
        tmNone,
        tmDone,
        tmFailed,
        tmQueued,
        tmTransmit,
        tmExpired,
        tmEmpty,
        tmInvAddr,
        tmInvSize,
      ];

  static core.Map<TelemetryMsgEnumStatus, String> get names =>
      <TelemetryMsgEnumStatus, String>{
        tmNone: '''Does not apply''',
        tmDone: '''Successfull transmission''',
        tmFailed: '''Error while trying to transmit message''',
        tmQueued: '''Message has been queued for transmission''',
        tmTransmit: '''Message is currently being transmitted''',
        tmExpired: '''Message's TTL has expired. Transmition cancelled''',
        tmEmpty: '''No more messages to be transmitted or received''',
        tmInvAddr: '''Invalid address''',
        tmInvSize: '''Invalid transmission size''',
      };

  const TelemetryMsgEnumStatus(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Used to define the type of the operation this message holds.
class LblConfigEnumOp extends EnumType {
  /// Set the beacons configuration aboard the vehicle.
  static const opSetCfg = LblConfigEnumOp(0);

  /// Request the vehicle to send its current beacons configuration.
  static const opGetCfg = LblConfigEnumOp(1);
  static const opCurCfg = LblConfigEnumOp(2);

  static List<LblConfigEnumOp> get values => <LblConfigEnumOp>[
        opSetCfg,
        opGetCfg,
        opCurCfg,
      ];

  static core.Map<LblConfigEnumOp, String> get names =>
      <LblConfigEnumOp, String>{
        opSetCfg: '''Set LBL Configuration''',
        opGetCfg: '''Retrieve LBL Configuration''',
        opCurCfg: '''Reply to a GET command''',
      };

  const LblConfigEnumOp(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class SimAcousticMessageBitfieldFlags extends BitfieldType {
  static const samAck = SimAcousticMessageBitfieldFlags(0x01);
  static const samDelayed = SimAcousticMessageBitfieldFlags(0x02);
  static const samReply = SimAcousticMessageBitfieldFlags(0x03);

  static List<SimAcousticMessageBitfieldFlags> get values =>
      <SimAcousticMessageBitfieldFlags>[
        samAck,
        samDelayed,
        samReply,
      ];

  static core.Map<SimAcousticMessageBitfieldFlags, String> get names =>
      <SimAcousticMessageBitfieldFlags, String>{
        samAck: '''Acknowledgement''',
        samDelayed: '''Delayed''',
        samReply: '''Reply''',
      };

  const SimAcousticMessageBitfieldFlags(super.value);

  @override
  String toPrettyString() {
    String? ret;
    if (value == 0) return '';

    var valNot = value;
    for (var item in values) {
      if (hasBits(<SimAcousticMessageBitfieldFlags>[item])) {
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

  static SimAcousticMessageBitfieldFlags empty() =>
      SimAcousticMessageBitfieldFlags(0);

  static SimAcousticMessageBitfieldFlags fromBits(
          List<SimAcousticMessageBitfieldFlags> bits) =>
      (bits.length < 2)
          ? SimAcousticMessageBitfieldFlags(bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce(
              (b1, b2) => SimAcousticMessageBitfieldFlags(b1.value | b2.value));
}

/// Operation type.
class AcousticOperationEnumOp extends EnumType {
  /// Send an abort through the acoustic channel to the system
  /// specified in the field 'system'.
  static const aopAbort = AcousticOperationEnumOp(0);

  /// The latest abort request to the system specified in the
  /// field 'system' is in progress.
  static const aopAbortIp = AcousticOperationEnumOp(1);

  /// The latest abort operation expired without acknowledgment
  /// from the system specified in the field 'system'.
  static const aopAbortTimeout = AcousticOperationEnumOp(2);

  /// The latest abort operation was acknowledged by the system
  /// specified in the field 'system'.
  static const aopAbortAcked = AcousticOperationEnumOp(3);

  /// Request a range through the acoustic channel to the system
  /// specified in the field 'system'.
  static const aopRange = AcousticOperationEnumOp(4);

  /// The latest range request to the system specified in the
  /// field 'system' is in progress.
  static const aopRangeIp = AcousticOperationEnumOp(5);

  /// The latest range request operation expired without reply
  /// from the system specified in the field 'system'.
  static const aopRangeTimeout = AcousticOperationEnumOp(6);

  /// The latest range request operation to the system specified
  /// in the field 'system' was successful and the range is
  /// specified in the field 'range'.
  static const aopRangeRecved = AcousticOperationEnumOp(7);

  /// The acoustic modem is busy and cannot execute the requested
  /// operation.
  static const aopBusy = AcousticOperationEnumOp(8);

  /// The latest requested operation is not supported.
  static const aopUnsupported = AcousticOperationEnumOp(9);

  /// The transducer was not detected.
  static const aopNoTxd = AcousticOperationEnumOp(10);

  /// Request message over acoustic channel. The message to send
  /// is specified by the 'msg' field.
  static const aopMsg = AcousticOperationEnumOp(11);

  /// Message send request has been queued.
  static const aopMsgQueued = AcousticOperationEnumOp(12);

  /// Message send request is in progress.
  static const aopMsgIp = AcousticOperationEnumOp(13);

  /// Message send request has been fulfilled.
  static const aopMsgDone = AcousticOperationEnumOp(14);

  /// Message send request could not be fulfilled.
  static const aopMsgFailure = AcousticOperationEnumOp(15);

  /// Request message over acoustic channel. The message to send
  /// is specified by the 'msg' field.
  static const aopMsgShort = AcousticOperationEnumOp(16);

  /// Request sending updated position to remote system so it can be ranged.
  static const aopReverseRange = AcousticOperationEnumOp(17);

  /// Send an abort through the acoustic channel to the system
  /// specified in the field 'system', ignoring safety checks such
  /// as "transducer not connected".
  static const aopForcedAbort = AcousticOperationEnumOp(18);

  static List<AcousticOperationEnumOp> get values => <AcousticOperationEnumOp>[
        aopAbort,
        aopAbortIp,
        aopAbortTimeout,
        aopAbortAcked,
        aopRange,
        aopRangeIp,
        aopRangeTimeout,
        aopRangeRecved,
        aopBusy,
        aopUnsupported,
        aopNoTxd,
        aopMsg,
        aopMsgQueued,
        aopMsgIp,
        aopMsgDone,
        aopMsgFailure,
        aopMsgShort,
        aopReverseRange,
        aopForcedAbort,
      ];

  static core.Map<AcousticOperationEnumOp, String> get names =>
      <AcousticOperationEnumOp, String>{
        aopAbort: '''Abort''',
        aopAbortIp: '''Abort in Progress''',
        aopAbortTimeout: '''Abort Timeout''',
        aopAbortAcked: '''Abort Acknowledged''',
        aopRange: '''Range Request''',
        aopRangeIp: '''Range in Progress''',
        aopRangeTimeout: '''Range Timeout''',
        aopRangeRecved: '''Range Received''',
        aopBusy: '''Modem is Busy''',
        aopUnsupported: '''Unsupported operation''',
        aopNoTxd: '''Transducer Not Detected''',
        aopMsg: '''Send Message''',
        aopMsgQueued: '''Message Send -- Queued''',
        aopMsgIp: '''Message Send -- In progress''',
        aopMsgDone: '''Message Send -- Done''',
        aopMsgFailure: '''Message Send -- Failure''',
        aopMsgShort: '''Send Short Message''',
        aopReverseRange: '''Initiate Reverse Range''',
        aopForcedAbort: '''Forced Abort''',
      };

  const AcousticOperationEnumOp(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class AcousticRequestEnumType extends EnumType {
  static const typeAbort = AcousticRequestEnumType(0);
  static const typeRange = AcousticRequestEnumType(1);
  static const typeReverseRange = AcousticRequestEnumType(2);
  static const typeMsg = AcousticRequestEnumType(3);
  static const typeRaw = AcousticRequestEnumType(4);

  static List<AcousticRequestEnumType> get values => <AcousticRequestEnumType>[
        typeAbort,
        typeRange,
        typeReverseRange,
        typeMsg,
        typeRaw,
      ];

  static core.Map<AcousticRequestEnumType, String> get names =>
      <AcousticRequestEnumType, String>{
        typeAbort: '''Abort''',
        typeRange: '''Range''',
        typeReverseRange: '''Reverse Range''',
        typeMsg: '''Message''',
        typeRaw: '''Raw''',
      };

  const AcousticRequestEnumType(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class AcousticStatusEnumType extends EnumType {
  static const typeAbort = AcousticStatusEnumType(0);
  static const typeRange = AcousticStatusEnumType(1);
  static const typeReverseRange = AcousticStatusEnumType(2);
  static const typeMsg = AcousticStatusEnumType(3);
  static const typeRaw = AcousticStatusEnumType(4);

  static List<AcousticStatusEnumType> get values => <AcousticStatusEnumType>[
        typeAbort,
        typeRange,
        typeReverseRange,
        typeMsg,
        typeRaw,
      ];

  static core.Map<AcousticStatusEnumType, String> get names =>
      <AcousticStatusEnumType, String>{
        typeAbort: '''Abort''',
        typeRange: '''Range''',
        typeReverseRange: '''Reverse Range''',
        typeMsg: '''Message''',
        typeRaw: '''Raw''',
      };

  const AcousticStatusEnumType(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class AcousticStatusEnumStatus extends EnumType {
  static const statusQueued = AcousticStatusEnumStatus(0);
  static const statusInProgress = AcousticStatusEnumStatus(1);
  static const statusSent = AcousticStatusEnumStatus(2);
  static const statusRangeReceived = AcousticStatusEnumStatus(3);
  static const statusDelivered = AcousticStatusEnumStatus(4);
  static const statusBusy = AcousticStatusEnumStatus(100);
  static const statusInputFailure = AcousticStatusEnumStatus(101);
  static const statusError = AcousticStatusEnumStatus(102);
  static const statusUnsupported = AcousticStatusEnumStatus(666);

  static List<AcousticStatusEnumStatus> get values =>
      <AcousticStatusEnumStatus>[
        statusQueued,
        statusInProgress,
        statusSent,
        statusRangeReceived,
        statusDelivered,
        statusBusy,
        statusInputFailure,
        statusError,
        statusUnsupported,
      ];

  static core.Map<AcousticStatusEnumStatus, String> get names =>
      <AcousticStatusEnumStatus, String>{
        statusQueued: '''Queued''',
        statusInProgress: '''In Progress''',
        statusSent: '''Sent''',
        statusRangeReceived: '''Range Received''',
        statusDelivered: '''Delivered''',
        statusBusy: '''Busy''',
        statusInputFailure: '''Input Error''',
        statusError: '''Error trying to send acoustic text''',
        statusUnsupported: '''Message Type is not defined or is unsupported''',
      };

  const AcousticStatusEnumStatus(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Validity of fields.
class GpsFixBitfieldValidity extends BitfieldType {
  /// Fields 'utc_year', 'utc_month' and 'utc_day' are valid.
  static const gfvValidDate = GpsFixBitfieldValidity(0x0001);

  /// Field 'utc_time' is valid.
  static const gfvValidTime = GpsFixBitfieldValidity(0x0002);

  /// Fields 'lat', 'lon', 'altitude' and 'satellites' are valid.
  static const gfvValidPos = GpsFixBitfieldValidity(0x0004);

  /// Field 'cog' is valid.
  static const gfvValidCog = GpsFixBitfieldValidity(0x0008);

  /// Field 'sog' is valid.
  static const gfvValidSog = GpsFixBitfieldValidity(0x0010);

  /// Field 'hacc' is valid.
  static const gfvValidHacc = GpsFixBitfieldValidity(0x0020);

  /// Field 'vacc' is valid.
  static const gfvValidVacc = GpsFixBitfieldValidity(0x0040);

  /// Field 'hdop' is valid.
  static const gfvValidHdop = GpsFixBitfieldValidity(0x0080);

  /// Field 'vdop' is valid.
  static const gfvValidVdop = GpsFixBitfieldValidity(0x0100);

  static List<GpsFixBitfieldValidity> get values => <GpsFixBitfieldValidity>[
        gfvValidDate,
        gfvValidTime,
        gfvValidPos,
        gfvValidCog,
        gfvValidSog,
        gfvValidHacc,
        gfvValidVacc,
        gfvValidHdop,
        gfvValidVdop,
      ];

  static core.Map<GpsFixBitfieldValidity, String> get names =>
      <GpsFixBitfieldValidity, String>{
        gfvValidDate: '''Valid Date''',
        gfvValidTime: '''Valid Time''',
        gfvValidPos: '''Valid Position''',
        gfvValidCog: '''Valid Course Over Ground''',
        gfvValidSog: '''Valid Speed Over Ground''',
        gfvValidHacc: '''Valid Horizontal Accuracy Estimate''',
        gfvValidVacc: '''Valid Vertical Accuracy Estimate''',
        gfvValidHdop: '''Valid Horizontal Dilution of Precision''',
        gfvValidVdop: '''Valid Vertical Dilution of Precision''',
      };

  const GpsFixBitfieldValidity(super.value);

  @override
  String toPrettyString() {
    String? ret;
    if (value == 0) return '';

    var valNot = value;
    for (var item in values) {
      if (hasBits(<GpsFixBitfieldValidity>[item])) {
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

  static GpsFixBitfieldValidity empty() => GpsFixBitfieldValidity(0);

  static GpsFixBitfieldValidity fromBits(List<GpsFixBitfieldValidity> bits) =>
      (bits.length < 2)
          ? GpsFixBitfieldValidity(bits.isEmpty ? 0 : bits[0].value)
          : bits
              .reduce((b1, b2) => GpsFixBitfieldValidity(b1.value | b2.value));
}

/// Type of fix.
class GpsFixEnumType extends EnumType {
  /// Stand alone solution.
  static const gftStandalone = GpsFixEnumType(0x00);

  /// Differential solution.
  static const gftDifferential = GpsFixEnumType(0x01);

  /// Dead reckoning solution.
  static const gftDeadReckoning = GpsFixEnumType(0x02);

  /// Manual solution.
  static const gftManualInput = GpsFixEnumType(0x03);

  /// Simulated solution.
  static const gftSimulation = GpsFixEnumType(0x04);

  static List<GpsFixEnumType> get values => <GpsFixEnumType>[
        gftStandalone,
        gftDifferential,
        gftDeadReckoning,
        gftManualInput,
        gftSimulation,
      ];

  static core.Map<GpsFixEnumType, String> get names => <GpsFixEnumType, String>{
        gftStandalone: '''Stand Alone''',
        gftDifferential: '''Differential''',
        gftDeadReckoning: '''Dead Reckoning''',
        gftManualInput: '''Manual Input''',
        gftSimulation: '''Simulation''',
      };

  const GpsFixEnumType(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Each bit of this field represents if a given velocity
/// component is valid.
class GroundVelocityBitfieldValidity extends BitfieldType {
  static const valVelX = GroundVelocityBitfieldValidity(0x01);
  static const valVelY = GroundVelocityBitfieldValidity(0x02);
  static const valVelZ = GroundVelocityBitfieldValidity(0x04);

  static List<GroundVelocityBitfieldValidity> get values =>
      <GroundVelocityBitfieldValidity>[
        valVelX,
        valVelY,
        valVelZ,
      ];

  static core.Map<GroundVelocityBitfieldValidity, String> get names =>
      <GroundVelocityBitfieldValidity, String>{
        valVelX: '''X component is valid''',
        valVelY: '''Y component is valid''',
        valVelZ: '''Z component is valid''',
      };

  const GroundVelocityBitfieldValidity(super.value);

  @override
  String toPrettyString() {
    String? ret;
    if (value == 0) return '';

    var valNot = value;
    for (var item in values) {
      if (hasBits(<GroundVelocityBitfieldValidity>[item])) {
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

  static GroundVelocityBitfieldValidity empty() =>
      GroundVelocityBitfieldValidity(0);

  static GroundVelocityBitfieldValidity fromBits(
          List<GroundVelocityBitfieldValidity> bits) =>
      (bits.length < 2)
          ? GroundVelocityBitfieldValidity(bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce(
              (b1, b2) => GroundVelocityBitfieldValidity(b1.value | b2.value));
}

/// Each bit of this field represents if a given velocity
/// component is valid.
class WaterVelocityBitfieldValidity extends BitfieldType {
  static const valVelX = WaterVelocityBitfieldValidity(0x01);
  static const valVelY = WaterVelocityBitfieldValidity(0x02);
  static const valVelZ = WaterVelocityBitfieldValidity(0x04);

  static List<WaterVelocityBitfieldValidity> get values =>
      <WaterVelocityBitfieldValidity>[
        valVelX,
        valVelY,
        valVelZ,
      ];

  static core.Map<WaterVelocityBitfieldValidity, String> get names =>
      <WaterVelocityBitfieldValidity, String>{
        valVelX: '''X component is valid''',
        valVelY: '''Y component is valid''',
        valVelZ: '''Z component is valid''',
      };

  const WaterVelocityBitfieldValidity(super.value);

  @override
  String toPrettyString() {
    String? ret;
    if (value == 0) return '';

    var valNot = value;
    for (var item in values) {
      if (hasBits(<WaterVelocityBitfieldValidity>[item])) {
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

  static WaterVelocityBitfieldValidity empty() =>
      WaterVelocityBitfieldValidity(0);

  static WaterVelocityBitfieldValidity fromBits(
          List<WaterVelocityBitfieldValidity> bits) =>
      (bits.length < 2)
          ? WaterVelocityBitfieldValidity(bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce(
              (b1, b2) => WaterVelocityBitfieldValidity(b1.value | b2.value));
}

/// Validity of the measurement.
class DistanceEnumValidity extends EnumType {
  /// Measurement is invalid.
  static const dvInvalid = DistanceEnumValidity(0);

  /// Measurement is valid.
  static const dvValid = DistanceEnumValidity(1);

  static List<DistanceEnumValidity> get values => <DistanceEnumValidity>[
        dvInvalid,
        dvValid,
      ];

  static core.Map<DistanceEnumValidity, String> get names =>
      <DistanceEnumValidity, String>{
        dvInvalid: '''Invalid''',
        dvValid: '''Valid''',
      };

  const DistanceEnumValidity(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Type of sonar.
class SonarDataEnumType extends EnumType {
  static const stSidescan = SonarDataEnumType(0);
  static const stEchosounder = SonarDataEnumType(1);
  static const stMultibeam = SonarDataEnumType(2);

  static List<SonarDataEnumType> get values => <SonarDataEnumType>[
        stSidescan,
        stEchosounder,
        stMultibeam,
      ];

  static core.Map<SonarDataEnumType, String> get names =>
      <SonarDataEnumType, String>{
        stSidescan: '''Sidescan''',
        stEchosounder: '''Echo Sounder''',
        stMultibeam: '''Multibeam''',
      };

  const SonarDataEnumType(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Activate or deactivate hardware pulse detection.
class PulseDetectionControlEnumOp extends EnumType {
  static const popOff = PulseDetectionControlEnumOp(0);
  static const popOn = PulseDetectionControlEnumOp(1);

  static List<PulseDetectionControlEnumOp> get values =>
      <PulseDetectionControlEnumOp>[
        popOff,
        popOn,
      ];

  static core.Map<PulseDetectionControlEnumOp, String> get names =>
      <PulseDetectionControlEnumOp, String>{
        popOff: '''Pulse Detection OFF''',
        popOn: '''Pulse Detection ON''',
      };

  const PulseDetectionControlEnumOp(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Whether the data is sane or not sane.
class DataSanityEnumSane extends EnumType {
  /// Data is sane.
  static const dsSane = DataSanityEnumSane(0);

  /// Data is not sane.
  static const dsNotSane = DataSanityEnumSane(1);

  static List<DataSanityEnumSane> get values => <DataSanityEnumSane>[
        dsSane,
        dsNotSane,
      ];

  static core.Map<DataSanityEnumSane, String> get names =>
      <DataSanityEnumSane, String>{
        dsSane: '''Sane''',
        dsNotSane: '''Not Sane''',
      };

  const DataSanityEnumSane(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Validity of fields.
class GpsFixRtkBitfieldValidity extends BitfieldType {
  /// Field 'tow' is valid.
  static const rfvValidTime = GpsFixRtkBitfieldValidity(0x0001);

  /// Fields 'base_lat', 'base_lon' and 'base_height' are valid.
  static const rfvValidBase = GpsFixRtkBitfieldValidity(0x0002);

  /// Fields 'n', 'e', 'd' are valid.
  static const rfvValidPos = GpsFixRtkBitfieldValidity(0x0004);

  /// Fields 'v_n', 'v_e', 'v_d' are valid.
  static const rfvValidVel = GpsFixRtkBitfieldValidity(0x0008);

  static List<GpsFixRtkBitfieldValidity> get values =>
      <GpsFixRtkBitfieldValidity>[
        rfvValidTime,
        rfvValidBase,
        rfvValidPos,
        rfvValidVel,
      ];

  static core.Map<GpsFixRtkBitfieldValidity, String> get names =>
      <GpsFixRtkBitfieldValidity, String>{
        rfvValidTime: '''Valid Time''',
        rfvValidBase: '''Valid Base LLH''',
        rfvValidPos: '''Valid Position''',
        rfvValidVel: '''Valid Velocity''',
      };

  const GpsFixRtkBitfieldValidity(super.value);

  @override
  String toPrettyString() {
    String? ret;
    if (value == 0) return '';

    var valNot = value;
    for (var item in values) {
      if (hasBits(<GpsFixRtkBitfieldValidity>[item])) {
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

  static GpsFixRtkBitfieldValidity empty() => GpsFixRtkBitfieldValidity(0);

  static GpsFixRtkBitfieldValidity fromBits(
          List<GpsFixRtkBitfieldValidity> bits) =>
      (bits.length < 2)
          ? GpsFixRtkBitfieldValidity(bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce(
              (b1, b2) => GpsFixRtkBitfieldValidity(b1.value | b2.value));
}

/// Type of fix.
class GpsFixRtkEnumType extends EnumType {
  /// No solution, but RTK task is running.
  static const rtkNone = GpsFixRtkEnumType(0x00);

  /// No solution, but receiving observations.
  static const rtkObs = GpsFixRtkEnumType(0x01);

  /// Floating point solution of IAR.
  static const rtkFloat = GpsFixRtkEnumType(0x02);

  /// Fixed (single) solution of IAR.
  static const rtkFixed = GpsFixRtkEnumType(0x03);

  static List<GpsFixRtkEnumType> get values => <GpsFixRtkEnumType>[
        rtkNone,
        rtkObs,
        rtkFloat,
        rtkFixed,
      ];

  static core.Map<GpsFixRtkEnumType, String> get names =>
      <GpsFixRtkEnumType, String>{
        rtkNone: '''None''',
        rtkObs: '''Obs''',
        rtkFloat: '''Float''',
        rtkFixed: '''Fixed''',
      };

  const GpsFixRtkEnumType(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// The type of external navigation data
class ExternalNavDataEnumType extends EnumType {
  static const extnavFull = ExternalNavDataEnumType(0);
  static const extnavAhrs = ExternalNavDataEnumType(1);
  static const extnavPosref = ExternalNavDataEnumType(2);

  static List<ExternalNavDataEnumType> get values => <ExternalNavDataEnumType>[
        extnavFull,
        extnavAhrs,
        extnavPosref,
      ];

  static core.Map<ExternalNavDataEnumType, String> get names =>
      <ExternalNavDataEnumType, String>{
        extnavFull: '''Full State''',
        extnavAhrs: '''Attitude Heading Reference System Only''',
        extnavPosref: '''Position Reference System only''',
      };

  const ExternalNavDataEnumType(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// The zoom action to perform.
class CameraZoomEnumAction extends EnumType {
  static const actionZoomReset = CameraZoomEnumAction(0);
  static const actionZoomIn = CameraZoomEnumAction(1);
  static const actionZoomOut = CameraZoomEnumAction(2);
  static const actionZoomStop = CameraZoomEnumAction(3);

  static List<CameraZoomEnumAction> get values => <CameraZoomEnumAction>[
        actionZoomReset,
        actionZoomIn,
        actionZoomOut,
        actionZoomStop,
      ];

  static core.Map<CameraZoomEnumAction, String> get names =>
      <CameraZoomEnumAction, String>{
        actionZoomReset: '''Reset Zoom''',
        actionZoomIn: '''Zoom In''',
        actionZoomOut: '''Zoom Out''',
        actionZoomStop: '''Stop Zooming''',
      };

  const CameraZoomEnumAction(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Operation to perform.
class RemoteActionsRequestEnumOp extends EnumType {
  static const opReport = RemoteActionsRequestEnumOp(0);
  static const opQuery = RemoteActionsRequestEnumOp(1);

  static List<RemoteActionsRequestEnumOp> get values =>
      <RemoteActionsRequestEnumOp>[
        opReport,
        opQuery,
      ];

  static core.Map<RemoteActionsRequestEnumOp, String> get names =>
      <RemoteActionsRequestEnumOp, String>{
        opReport: '''Report''',
        opQuery: '''Query''',
      };

  const RemoteActionsRequestEnumOp(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// The LCD action to perform
class LcdControlEnumOp extends EnumType {
  static const opTurnOff = LcdControlEnumOp(0);
  static const opTurnOn = LcdControlEnumOp(1);
  static const opClear = LcdControlEnumOp(2);
  static const opWrite0 = LcdControlEnumOp(3);
  static const opWrite1 = LcdControlEnumOp(4);

  static List<LcdControlEnumOp> get values => <LcdControlEnumOp>[
        opTurnOff,
        opTurnOn,
        opClear,
        opWrite0,
        opWrite1,
      ];

  static core.Map<LcdControlEnumOp, String> get names =>
      <LcdControlEnumOp, String>{
        opTurnOff: '''Turn off display''',
        opTurnOn: '''Turn on display''',
        opClear: '''Clear display''',
        opWrite0: '''Write Line #0''',
        opWrite1: '''Write Line #1''',
      };

  const LcdControlEnumOp(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Operation type.
class PowerOperationEnumOp extends EnumType {
  /// Request the destination entity of this message to power down
  /// it's devices immediately. If the destination entity is the
  /// special entity '0' the whole system will power down.
  static const popPwrDown = PowerOperationEnumOp(0);

  /// The latest power down request is in progress and the time
  /// remaining until power down is given in field 'time_remain'.
  static const popPwrDownIp = PowerOperationEnumOp(1);

  /// The latest power down request was aborted.
  static const popPwrDownAborted = PowerOperationEnumOp(2);

  /// Request the destination entity of this message to power down
  /// it's devices at the time given in the field 'sched_time'. If
  /// the destination entity is the special entity '0' the whole
  /// system will power down.
  static const popSchedPwrDown = PowerOperationEnumOp(3);

  /// Request the destination entity of this message to power up
  /// it's devices.
  static const popPwrUp = PowerOperationEnumOp(4);

  /// The latest power up request is in progress.
  static const popPwrUpIp = PowerOperationEnumOp(5);

  /// Request the destination entity of this message to power up
  /// it's devices at the time given in the field 'sched_time'. If
  /// the destination entity is the special entity '0' the whole
  /// system will power up.
  static const popSchedPwrUp = PowerOperationEnumOp(6);

  static List<PowerOperationEnumOp> get values => <PowerOperationEnumOp>[
        popPwrDown,
        popPwrDownIp,
        popPwrDownAborted,
        popSchedPwrDown,
        popPwrUp,
        popPwrUpIp,
        popSchedPwrUp,
      ];

  static core.Map<PowerOperationEnumOp, String> get names =>
      <PowerOperationEnumOp, String>{
        popPwrDown: '''Power Down''',
        popPwrDownIp: '''Power Down in Progress''',
        popPwrDownAborted: '''Power Down Aborted''',
        popSchedPwrDown: '''Schedule Power Down''',
        popPwrUp: '''Power Up''',
        popPwrUpIp: '''Power Up in Progress''',
        popSchedPwrUp: '''Schedule Power Up''',
      };

  const PowerOperationEnumOp(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Operation to perform.
class PowerChannelControlEnumOp extends EnumType {
  /// Turn off power channel specified in field 'id'.
  static const pccOpTurnOff = PowerChannelControlEnumOp(0);

  /// Turn on power channel specified in field 'id'.
  static const pccOpTurnOn = PowerChannelControlEnumOp(1);

  /// Toggle power channel specified in field 'id'.
  static const pccOpToggle = PowerChannelControlEnumOp(2);

  /// Turn on power channel specified in field 'id' in
  /// 'sched_time' seconds.
  static const pccOpSchedOn = PowerChannelControlEnumOp(3);

  /// Turn off power channel specified in field 'id' in
  /// 'sched_time' seconds.
  static const pccOpSchedOff = PowerChannelControlEnumOp(4);

  /// Reset all scheduled operations for the channel specified in
  /// field 'id'.
  static const pccOpSchedReset = PowerChannelControlEnumOp(5);

  /// Save the current state of the channel 'id' to persistent
  /// storage.
  static const pccOpSave = PowerChannelControlEnumOp(6);

  /// Restart power channel specified in field 'id'.
  static const pccOpRestart = PowerChannelControlEnumOp(7);

  static List<PowerChannelControlEnumOp> get values =>
      <PowerChannelControlEnumOp>[
        pccOpTurnOff,
        pccOpTurnOn,
        pccOpToggle,
        pccOpSchedOn,
        pccOpSchedOff,
        pccOpSchedReset,
        pccOpSave,
        pccOpRestart,
      ];

  static core.Map<PowerChannelControlEnumOp, String> get names =>
      <PowerChannelControlEnumOp, String>{
        pccOpTurnOff: '''Turn Off''',
        pccOpTurnOn: '''Turn On''',
        pccOpToggle: '''Toggle''',
        pccOpSchedOn: '''Schedule Turn On''',
        pccOpSchedOff: '''Schedule Turn Off''',
        pccOpSchedReset: '''Reset Schedules''',
        pccOpSave: '''Save Current State''',
        pccOpRestart: '''Restart''',
      };

  const PowerChannelControlEnumOp(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// State of the Power Channel.
class PowerChannelStateEnumState extends EnumType {
  /// Power channel is off.
  static const pcsOff = PowerChannelStateEnumState(0);

  /// Power channel is on.
  static const pcsOn = PowerChannelStateEnumState(1);

  static List<PowerChannelStateEnumState> get values =>
      <PowerChannelStateEnumState>[
        pcsOff,
        pcsOn,
      ];

  static core.Map<PowerChannelStateEnumState, String> get names =>
      <PowerChannelStateEnumState, String>{
        pcsOff: '''Off''',
        pcsOn: '''On''',
      };

  const PowerChannelStateEnumState(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Reason for rejection.
class GpsFixRejectionEnumReason extends EnumType {
  /// New GPS Fix position is above a computed threshold.
  static const rrAboveThreshold = GpsFixRejectionEnumReason(0);

  /// Invalid measurement.
  static const rrInvalid = GpsFixRejectionEnumReason(1);

  /// Above maximum horizontal dilution of precision.
  static const rrAboveMaxHdop = GpsFixRejectionEnumReason(2);

  /// Above maximum horizontal accuracy index.
  static const rrAboveMaxHacc = GpsFixRejectionEnumReason(3);

  /// Lost one of the validity bits between consecutive GPS fixes.
  static const rrLostValBit = GpsFixRejectionEnumReason(4);

  static List<GpsFixRejectionEnumReason> get values =>
      <GpsFixRejectionEnumReason>[
        rrAboveThreshold,
        rrInvalid,
        rrAboveMaxHdop,
        rrAboveMaxHacc,
        rrLostValBit,
      ];

  static core.Map<GpsFixRejectionEnumReason, String> get names =>
      <GpsFixRejectionEnumReason, String>{
        rrAboveThreshold: '''Above Threshold''',
        rrInvalid: '''Invalid Fix''',
        rrAboveMaxHdop: '''Above Maximum HDOP''',
        rrAboveMaxHacc: '''Above Maximum HACC''',
        rrLostValBit: '''Lost Validity Bit''',
      };

  const GpsFixRejectionEnumReason(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Reason for acceptance/rejection.
class LblRangeAcceptanceEnumAcceptance extends EnumType {
  /// This LBL range is accepted by the navigation filter.
  static const rrAccepted = LblRangeAcceptanceEnumAcceptance(0);

  /// New LBL Range is above a computed threshold.
  static const rrAboveThreshold = LblRangeAcceptanceEnumAcceptance(1);

  /// Singular point.
  static const rrSingular = LblRangeAcceptanceEnumAcceptance(2);

  /// The filter lacks information to properly use the received LBL range.
  static const rrNoInfo = LblRangeAcceptanceEnumAcceptance(3);

  /// Vehicle is using only GPS fix when it is at surface.
  static const rrAtSurface = LblRangeAcceptanceEnumAcceptance(4);

  static List<LblRangeAcceptanceEnumAcceptance> get values =>
      <LblRangeAcceptanceEnumAcceptance>[
        rrAccepted,
        rrAboveThreshold,
        rrSingular,
        rrNoInfo,
        rrAtSurface,
      ];

  static core.Map<LblRangeAcceptanceEnumAcceptance, String> get names =>
      <LblRangeAcceptanceEnumAcceptance, String>{
        rrAccepted: '''Accepted''',
        rrAboveThreshold: '''Rejected - Above Threshold''',
        rrSingular: '''Rejected - Singular Point''',
        rrNoInfo: '''Rejected - Not Enough Information''',
        rrAtSurface: '''Rejected - Vehicle At Surface''',
      };

  const LblRangeAcceptanceEnumAcceptance(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// This field represents the type of the rejected velocity.
class DvlRejectionBitfieldType extends BitfieldType {
  static const typeGv = DvlRejectionBitfieldType(0x01);
  static const typeWv = DvlRejectionBitfieldType(0x02);

  static List<DvlRejectionBitfieldType> get values =>
      <DvlRejectionBitfieldType>[
        typeGv,
        typeWv,
      ];

  static core.Map<DvlRejectionBitfieldType, String> get names =>
      <DvlRejectionBitfieldType, String>{
        typeGv: '''Ground velocity''',
        typeWv: '''Water velocity''',
      };

  const DvlRejectionBitfieldType(super.value);

  @override
  String toPrettyString() {
    String? ret;
    if (value == 0) return '';

    var valNot = value;
    for (var item in values) {
      if (hasBits(<DvlRejectionBitfieldType>[item])) {
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

  static DvlRejectionBitfieldType empty() => DvlRejectionBitfieldType(0);

  static DvlRejectionBitfieldType fromBits(
          List<DvlRejectionBitfieldType> bits) =>
      (bits.length < 2)
          ? DvlRejectionBitfieldType(bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce(
              (b1, b2) => DvlRejectionBitfieldType(b1.value | b2.value));
}

/// Reason for rejection. There are two types of DVL measurement
/// filters. An Innovation filter checks the innovation between
/// the current measurement and the previous measurement within a
/// certain amount of time and an Absolute filter compares the
/// measurement with an absolute threshold value. Those filters
/// are tested using horizontal speed measurements, i.e.,
/// measurements in the x-axis and in the y-axis.
class DvlRejectionEnumReason extends EnumType {
  /// The current DVL x-axis measurement is discarded
  /// because the absolute difference between the
  /// value and the previous accepted DVL measurement
  /// with a given time window is above a configurable
  /// threshold.
  static const rrInnovThresholdX = DvlRejectionEnumReason(0);

  /// The current DVL y-axis measurement is discarded
  /// because the absolute difference between the
  /// value and the previous accepted DVL measurement
  /// with a given time window is above a configurable
  /// threshold.
  static const rrInnovThresholdY = DvlRejectionEnumReason(1);

  /// The current DVL x-axis measurement is discarded
  /// because the the absolute value is above a
  /// configurable threshold.
  static const rrAbsThresholdX = DvlRejectionEnumReason(2);

  /// The current DVL y-axis measurement is discarded
  /// because the the absolute value is above a
  /// configurable threshold.
  static const rrAbsThresholdY = DvlRejectionEnumReason(3);

  static List<DvlRejectionEnumReason> get values => <DvlRejectionEnumReason>[
        rrInnovThresholdX,
        rrInnovThresholdY,
        rrAbsThresholdX,
        rrAbsThresholdY,
      ];

  static core.Map<DvlRejectionEnumReason, String> get names =>
      <DvlRejectionEnumReason, String>{
        rrInnovThresholdX: '''Innovation Threshold - X''',
        rrInnovThresholdY: '''Innovation Threshold - Y''',
        rrAbsThresholdX: '''Absolute Threshold - X''',
        rrAbsThresholdY: '''Absolute Threshold - Y''',
      };

  const DvlRejectionEnumReason(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Alignment State.
class AlignmentStateEnumState extends EnumType {
  static const asNotAligned = AlignmentStateEnumState(0);
  static const asAligned = AlignmentStateEnumState(1);
  static const asNotSupported = AlignmentStateEnumState(2);
  static const asAligning = AlignmentStateEnumState(3);
  static const asWrongMedium = AlignmentStateEnumState(4);
  static const asCoarseAlignment = AlignmentStateEnumState(5);
  static const asFineAlignment = AlignmentStateEnumState(6);
  static const asSystemReady = AlignmentStateEnumState(7);

  static List<AlignmentStateEnumState> get values => <AlignmentStateEnumState>[
        asNotAligned,
        asAligned,
        asNotSupported,
        asAligning,
        asWrongMedium,
        asCoarseAlignment,
        asFineAlignment,
        asSystemReady,
      ];

  static core.Map<AlignmentStateEnumState, String> get names =>
      <AlignmentStateEnumState, String>{
        asNotAligned: '''Not Aligned''',
        asAligned: '''Aligned''',
        asNotSupported: '''Not Supported''',
        asAligning: '''Aligning''',
        asWrongMedium: '''Wrong Medium''',
        asCoarseAlignment: '''Coarse Alignment''',
        asFineAlignment: '''Fine Alignment''',
        asSystemReady: '''System Ready''',
      };

  const AlignmentStateEnumState(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Desired Path flags.
class DesiredPathBitfieldFlags extends BitfieldType {
  /// Indicates that the start point specification is given,
  /// therefore it should be considered for tracking.
  static const flStart = DesiredPathBitfieldFlags(0x01);

  /// If start point is not given, ignore also the previous path's
  /// endpoint and take the start point to be the current vehicle
  /// location.
  static const flDirect = DesiredPathBitfieldFlags(0x02);

  /// Ignore altitude/depth setting and let them be controlled
  /// independently.
  static const flNoZ = DesiredPathBitfieldFlags(0x04);

  /// Perform 3D-tracking, i.e., consider the path formed in the
  /// XYZ plane taking into account both the 'start_z' and 'end_z'
  /// values.
  static const fl3dtrack = DesiredPathBitfieldFlags(0x08);

  /// Indicates that loitering, if defined, should be done
  /// counter-clockwise. Clockwise loitering will apply
  /// otherwise.
  static const flCclockw = DesiredPathBitfieldFlags(0x10);

  /// Indicates that loitering, if defined, should be done from
  /// the current vehicle position. The end_lat and end_lon
  /// fields will be ignored.
  static const flLoiterCurr = DesiredPathBitfieldFlags(0x20);

  /// Indicates that takeoff should be done before going to the end position.
  static const flTakeoff = DesiredPathBitfieldFlags(0x40);

  /// Indicates that the system should land at the end position.
  static const flLand = DesiredPathBitfieldFlags(0x80);

  static List<DesiredPathBitfieldFlags> get values =>
      <DesiredPathBitfieldFlags>[
        flStart,
        flDirect,
        flNoZ,
        fl3dtrack,
        flCclockw,
        flLoiterCurr,
        flTakeoff,
        flLand,
      ];

  static core.Map<DesiredPathBitfieldFlags, String> get names =>
      <DesiredPathBitfieldFlags, String>{
        flStart: '''Start Point''',
        flDirect: '''Direct''',
        flNoZ: '''No Altitude/Depth control''',
        fl3dtrack: '''3D Tracking''',
        flCclockw: '''Counter-Clockwise loiter''',
        flLoiterCurr: '''Loiter from current position''',
        flTakeoff: '''Takeoff''',
        flLand: '''Land''',
      };

  const DesiredPathBitfieldFlags(super.value);

  @override
  String toPrettyString() {
    String? ret;
    if (value == 0) return '';

    var valNot = value;
    for (var item in values) {
      if (hasBits(<DesiredPathBitfieldFlags>[item])) {
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

  static DesiredPathBitfieldFlags empty() => DesiredPathBitfieldFlags(0);

  static DesiredPathBitfieldFlags fromBits(
          List<DesiredPathBitfieldFlags> bits) =>
      (bits.length < 2)
          ? DesiredPathBitfieldFlags(bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce(
              (b1, b2) => DesiredPathBitfieldFlags(b1.value | b2.value));
}

/// Desired Control flags.
class DesiredControlBitfieldFlags extends BitfieldType {
  /// If enabled then field X has a meaningful value.
  static const flX = DesiredControlBitfieldFlags(0x01);

  /// If enabled then field Y has a meaningful value.
  static const flY = DesiredControlBitfieldFlags(0x02);

  /// If enabled then field Z has a meaningful value.
  static const flZ = DesiredControlBitfieldFlags(0x04);

  /// If enabled then field K has a meaningful value.
  static const flK = DesiredControlBitfieldFlags(0x08);

  /// If enabled then field M has a meaningful value.
  static const flM = DesiredControlBitfieldFlags(0x10);

  /// If enabled then field N has a meaningful value.
  static const flN = DesiredControlBitfieldFlags(0x20);

  static List<DesiredControlBitfieldFlags> get values =>
      <DesiredControlBitfieldFlags>[
        flX,
        flY,
        flZ,
        flK,
        flM,
        flN,
      ];

  static core.Map<DesiredControlBitfieldFlags, String> get names =>
      <DesiredControlBitfieldFlags, String>{
        flX: '''Value of X is meaningful''',
        flY: '''Value of Y is meaningful''',
        flZ: '''Value of Z is meaningful''',
        flK: '''Value of K is meaningful''',
        flM: '''Value of M is meaningful''',
        flN: '''Value of N is meaningful''',
      };

  const DesiredControlBitfieldFlags(super.value);

  @override
  String toPrettyString() {
    String? ret;
    if (value == 0) return '';

    var valNot = value;
    for (var item in values) {
      if (hasBits(<DesiredControlBitfieldFlags>[item])) {
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

  static DesiredControlBitfieldFlags empty() => DesiredControlBitfieldFlags(0);

  static DesiredControlBitfieldFlags fromBits(
          List<DesiredControlBitfieldFlags> bits) =>
      (bits.length < 2)
          ? DesiredControlBitfieldFlags(bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce(
              (b1, b2) => DesiredControlBitfieldFlags(b1.value | b2.value));
}

/// Desired Velocity flags.
class DesiredVelocityBitfieldFlags extends BitfieldType {
  /// If enabled then field u has a meaningful value.
  static const flSurge = DesiredVelocityBitfieldFlags(0x01);

  /// If enabled then field u has a meaningful value.
  static const flSway = DesiredVelocityBitfieldFlags(0x02);

  /// If enabled then field w has a meaningful value.
  static const flHeave = DesiredVelocityBitfieldFlags(0x04);

  /// If enabled then field p has a meaningful value.
  static const flRoll = DesiredVelocityBitfieldFlags(0x08);

  /// If enabled then field q has a meaningful value.
  static const flPitch = DesiredVelocityBitfieldFlags(0x10);

  /// If enabled then field r has a meaningful value.
  static const flYaw = DesiredVelocityBitfieldFlags(0x20);

  static List<DesiredVelocityBitfieldFlags> get values =>
      <DesiredVelocityBitfieldFlags>[
        flSurge,
        flSway,
        flHeave,
        flRoll,
        flPitch,
        flYaw,
      ];

  static core.Map<DesiredVelocityBitfieldFlags, String> get names =>
      <DesiredVelocityBitfieldFlags, String>{
        flSurge: '''Value of u is meaningful''',
        flSway: '''Value of v is meaningful''',
        flHeave: '''Value of w is meaningful''',
        flRoll: '''Value of p is meaningful''',
        flPitch: '''Value of q is meaningful''',
        flYaw: '''Value of r is meaningful''',
      };

  const DesiredVelocityBitfieldFlags(super.value);

  @override
  String toPrettyString() {
    String? ret;
    if (value == 0) return '';

    var valNot = value;
    for (var item in values) {
      if (hasBits(<DesiredVelocityBitfieldFlags>[item])) {
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

  static DesiredVelocityBitfieldFlags empty() =>
      DesiredVelocityBitfieldFlags(0);

  static DesiredVelocityBitfieldFlags fromBits(
          List<DesiredVelocityBitfieldFlags> bits) =>
      (bits.length < 2)
          ? DesiredVelocityBitfieldFlags(bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce(
              (b1, b2) => DesiredVelocityBitfieldFlags(b1.value | b2.value));
}

/// Path control state flags.
class PathControlStateBitfieldFlags extends BitfieldType {
  /// Set if near the target endpoint.
  static const flNear = PathControlStateBitfieldFlags(0x01);

  /// Set if loitering.
  static const flLoitering = PathControlStateBitfieldFlags(0x02);

  /// Altitude/depth being controlled independently.
  static const flNoZ = PathControlStateBitfieldFlags(0x04);

  /// 3D-tracking is active.
  static const fl3dtrack = PathControlStateBitfieldFlags(0x08);

  /// Indicates that loitering, if active, is being done
  /// counter-clockwise. Otherwise, clockwise loitering should be
  /// assumed.
  static const flCclockw = PathControlStateBitfieldFlags(0x10);

  static List<PathControlStateBitfieldFlags> get values =>
      <PathControlStateBitfieldFlags>[
        flNear,
        flLoitering,
        flNoZ,
        fl3dtrack,
        flCclockw,
      ];

  static core.Map<PathControlStateBitfieldFlags, String> get names =>
      <PathControlStateBitfieldFlags, String>{
        flNear: '''Near Endpoint''',
        flLoitering: '''Loitering''',
        flNoZ: '''No Altitude/Depth control''',
        fl3dtrack: '''3D Tracking''',
        flCclockw: '''Counter-Clockwise loiter''',
      };

  const PathControlStateBitfieldFlags(super.value);

  @override
  String toPrettyString() {
    String? ret;
    if (value == 0) return '';

    var valNot = value;
    for (var item in values) {
      if (hasBits(<PathControlStateBitfieldFlags>[item])) {
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

  static PathControlStateBitfieldFlags empty() =>
      PathControlStateBitfieldFlags(0);

  static PathControlStateBitfieldFlags fromBits(
          List<PathControlStateBitfieldFlags> bits) =>
      (bits.length < 2)
          ? PathControlStateBitfieldFlags(bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce(
              (b1, b2) => PathControlStateBitfieldFlags(b1.value | b2.value));
}

/// Brake operation.
class BrakeEnumOp extends EnumType {
  /// Stop braking procedures.
  static const opStop = BrakeEnumOp(0);

  /// Start braking procedures.
  static const opStart = BrakeEnumOp(1);

  /// Revert Actuation.
  static const opRevert = BrakeEnumOp(2);

  static List<BrakeEnumOp> get values => <BrakeEnumOp>[
        opStop,
        opStart,
        opRevert,
      ];

  static core.Map<BrakeEnumOp, String> get names => <BrakeEnumOp, String>{
        opStop: '''Stop Braking''',
        opStart: '''Start Braking''',
        opRevert: '''Revert Actuation''',
      };

  const BrakeEnumOp(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Setpoint Flags
class DesiredLinearStateBitfieldFlags extends BitfieldType {
  /// If enabled then field x has a meaningful value.
  static const flX = DesiredLinearStateBitfieldFlags(0x0001);

  /// If enabled then field y has a meaningful value.
  static const flY = DesiredLinearStateBitfieldFlags(0x0002);

  /// If enabled then field z has a meaningful value.
  static const flZ = DesiredLinearStateBitfieldFlags(0x0004);

  /// If enabled then field vx has a meaningful value.
  static const flVx = DesiredLinearStateBitfieldFlags(0x0008);

  /// If enabled then field vy has a meaningful value.
  static const flVy = DesiredLinearStateBitfieldFlags(0x0010);

  /// If enabled then field vz has a meaningful value.
  static const flVz = DesiredLinearStateBitfieldFlags(0x0020);

  /// If enabled then field ax has a meaningful value.
  static const flAx = DesiredLinearStateBitfieldFlags(0x0040);

  /// If enabled then field ay has a meaningful value.
  static const flAy = DesiredLinearStateBitfieldFlags(0x0080);

  /// If enabled then field az has a meaningful value.
  static const flAz = DesiredLinearStateBitfieldFlags(0x0100);

  static List<DesiredLinearStateBitfieldFlags> get values =>
      <DesiredLinearStateBitfieldFlags>[
        flX,
        flY,
        flZ,
        flVx,
        flVy,
        flVz,
        flAx,
        flAy,
        flAz,
      ];

  static core.Map<DesiredLinearStateBitfieldFlags, String> get names =>
      <DesiredLinearStateBitfieldFlags, String>{
        flX: '''Value of x is meaningful''',
        flY: '''Value of y is meaningful''',
        flZ: '''Value of z is meaningful''',
        flVx: '''Value of vx is meaningful''',
        flVy: '''Value of vy is meaningful''',
        flVz: '''Value of vz is meaningful''',
        flAx: '''Value of ax is meaningful''',
        flAy: '''Value of ay is meaningful''',
        flAz: '''Value of az is meaningful''',
      };

  const DesiredLinearStateBitfieldFlags(super.value);

  @override
  String toPrettyString() {
    String? ret;
    if (value == 0) return '';

    var valNot = value;
    for (var item in values) {
      if (hasBits(<DesiredLinearStateBitfieldFlags>[item])) {
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

  static DesiredLinearStateBitfieldFlags empty() =>
      DesiredLinearStateBitfieldFlags(0);

  static DesiredLinearStateBitfieldFlags fromBits(
          List<DesiredLinearStateBitfieldFlags> bits) =>
      (bits.length < 2)
          ? DesiredLinearStateBitfieldFlags(bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce(
              (b1, b2) => DesiredLinearStateBitfieldFlags(b1.value | b2.value));
}

/// Flags of the maneuver.
class PopUpBitfieldFlags extends BitfieldType {
  /// If this flag is set, lat/lon/start_z fields should be
  /// ignored and current vehicle position should be considered as
  /// starting point for ascent/descent.
  static const flgCurrPos = PopUpBitfieldFlags(0x01);

  /// If this flag is set, duration field is used to hold position at surface
  /// for that amount of time.
  static const flgWaitAtSurface = PopUpBitfieldFlags(0x02);

  /// This flag will only make sense if WAIT_AT_SURFACE is also set.
  /// While holding position at surface the vehicle will assume a
  /// station keeping behavior.
  static const flgStationKeep = PopUpBitfieldFlags(0x04);

  static List<PopUpBitfieldFlags> get values => <PopUpBitfieldFlags>[
        flgCurrPos,
        flgWaitAtSurface,
        flgStationKeep,
      ];

  static core.Map<PopUpBitfieldFlags, String> get names =>
      <PopUpBitfieldFlags, String>{
        flgCurrPos: '''Start from current position''',
        flgWaitAtSurface: '''Wait at surface''',
        flgStationKeep: '''Station keeping''',
      };

  const PopUpBitfieldFlags(super.value);

  @override
  String toPrettyString() {
    String? ret;
    if (value == 0) return '';

    var valNot = value;
    for (var item in values) {
      if (hasBits(<PopUpBitfieldFlags>[item])) {
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

  static PopUpBitfieldFlags empty() => PopUpBitfieldFlags(0);

  static PopUpBitfieldFlags fromBits(List<PopUpBitfieldFlags> bits) =>
      (bits.length < 2)
          ? PopUpBitfieldFlags(bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce((b1, b2) => PopUpBitfieldFlags(b1.value | b2.value));
}

/// Loiter maneuver type.
class LoiterEnumType extends EnumType {
  static const ltDefault = LoiterEnumType(0);
  static const ltCircular = LoiterEnumType(1);
  static const ltRacetrack = LoiterEnumType(2);
  static const ltEight = LoiterEnumType(3);
  static const ltHover = LoiterEnumType(4);

  static List<LoiterEnumType> get values => <LoiterEnumType>[
        ltDefault,
        ltCircular,
        ltRacetrack,
        ltEight,
        ltHover,
      ];

  static core.Map<LoiterEnumType, String> get names => <LoiterEnumType, String>{
        ltDefault: '''Default''',
        ltCircular: '''Circular''',
        ltRacetrack: '''Race track''',
        ltEight: '''Figure 8''',
        ltHover: '''Hover''',
      };

  const LoiterEnumType(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Desired direction.
class LoiterEnumDirection extends EnumType {
  static const ldVdep = LoiterEnumDirection(0);
  static const ldClockw = LoiterEnumDirection(1);
  static const ldCclockw = LoiterEnumDirection(2);
  static const ldIwindcurr = LoiterEnumDirection(3);

  static List<LoiterEnumDirection> get values => <LoiterEnumDirection>[
        ldVdep,
        ldClockw,
        ldCclockw,
        ldIwindcurr,
      ];

  static core.Map<LoiterEnumDirection, String> get names =>
      <LoiterEnumDirection, String>{
        ldVdep: '''Vehicle Dependent''',
        ldClockw: '''Clockwise''',
        ldCclockw: '''Counter Clockwise''',
        ldIwindcurr: '''Into the wind/current''',
      };

  const LoiterEnumDirection(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Maneuver flags.
class RowsBitfieldFlags extends BitfieldType {
  static const flgSquareCurve = RowsBitfieldFlags(0x0001);
  static const flgCurveRight = RowsBitfieldFlags(0x0002);

  static List<RowsBitfieldFlags> get values => <RowsBitfieldFlags>[
        flgSquareCurve,
        flgCurveRight,
      ];

  static core.Map<RowsBitfieldFlags, String> get names =>
      <RowsBitfieldFlags, String>{
        flgSquareCurve: '''Square Curve''',
        flgCurveRight: '''First Curve Right''',
      };

  const RowsBitfieldFlags(super.value);

  @override
  String toPrettyString() {
    String? ret;
    if (value == 0) return '';

    var valNot = value;
    for (var item in values) {
      if (hasBits(<RowsBitfieldFlags>[item])) {
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

  static RowsBitfieldFlags empty() => RowsBitfieldFlags(0);

  static RowsBitfieldFlags fromBits(List<RowsBitfieldFlags> bits) =>
      (bits.length < 2)
          ? RowsBitfieldFlags(bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce((b1, b2) => RowsBitfieldFlags(b1.value | b2.value));
}

/// Flags of the maneuver.
class ElevatorBitfieldFlags extends BitfieldType {
  /// If this flag is set, lat/lon/start_z fields should be
  /// ignored and current vehicle position should be considered as
  /// starting point for ascent/descent.
  static const flgCurrPos = ElevatorBitfieldFlags(0x01);

  static List<ElevatorBitfieldFlags> get values =>
      <ElevatorBitfieldFlags>[flgCurrPos];

  static core.Map<ElevatorBitfieldFlags, String> get names =>
      <ElevatorBitfieldFlags, String>{
        flgCurrPos: '''Start from current position'''
      };

  const ElevatorBitfieldFlags(super.value);

  @override
  String toPrettyString() {
    String? ret;
    if (value == 0) return '';

    var valNot = value;
    for (var item in values) {
      if (hasBits(<ElevatorBitfieldFlags>[item])) {
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

  static ElevatorBitfieldFlags empty() => ElevatorBitfieldFlags(0);

  static ElevatorBitfieldFlags fromBits(List<ElevatorBitfieldFlags> bits) =>
      (bits.length < 2)
          ? ElevatorBitfieldFlags(bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce((b1, b2) => ElevatorBitfieldFlags(b1.value | b2.value));
}

/// Code indicating maneuver state.
class ManeuverControlStateEnumState extends EnumType {
  /// Maneuver in progress.
  static const mcsExecuting = ManeuverControlStateEnumState(0);

  /// Maneuver completed.
  static const mcsDone = ManeuverControlStateEnumState(1);

  /// Maneuver error.
  static const mcsError = ManeuverControlStateEnumState(2);

  /// Maneuver stopped.
  static const mcsStopped = ManeuverControlStateEnumState(3);

  static List<ManeuverControlStateEnumState> get values =>
      <ManeuverControlStateEnumState>[
        mcsExecuting,
        mcsDone,
        mcsError,
        mcsStopped,
      ];

  static core.Map<ManeuverControlStateEnumState, String> get names =>
      <ManeuverControlStateEnumState, String>{
        mcsExecuting: '''Maneuver in progress''',
        mcsDone: '''Maneuver completed''',
        mcsError: '''Maneuver error''',
        mcsStopped: '''Maneuver stopped''',
      };

  const ManeuverControlStateEnumState(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Direction of the maneuver.
class CompassCalibrationEnumDirection extends EnumType {
  static const ldVdep = CompassCalibrationEnumDirection(0);
  static const ldClockw = CompassCalibrationEnumDirection(1);
  static const ldCclockw = CompassCalibrationEnumDirection(2);
  static const ldIwindcurr = CompassCalibrationEnumDirection(3);

  static List<CompassCalibrationEnumDirection> get values =>
      <CompassCalibrationEnumDirection>[
        ldVdep,
        ldClockw,
        ldCclockw,
        ldIwindcurr,
      ];

  static core.Map<CompassCalibrationEnumDirection, String> get names =>
      <CompassCalibrationEnumDirection, String>{
        ldVdep: '''Vehicle Dependent''',
        ldClockw: '''Clockwise''',
        ldCclockw: '''Counter Clockwise''',
        ldIwindcurr: '''Into the wind/current''',
      };

  const CompassCalibrationEnumDirection(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Formation reference frame
class FormationParametersEnumReferenceFrame extends EnumType {
  static const opEarthFixed = FormationParametersEnumReferenceFrame(0);
  static const opPathFixed = FormationParametersEnumReferenceFrame(1);
  static const opPathCurved = FormationParametersEnumReferenceFrame(2);

  static List<FormationParametersEnumReferenceFrame> get values =>
      <FormationParametersEnumReferenceFrame>[
        opEarthFixed,
        opPathFixed,
        opPathCurved,
      ];

  static core.Map<FormationParametersEnumReferenceFrame, String> get names =>
      <FormationParametersEnumReferenceFrame, String>{
        opEarthFixed: '''Earth Fixed''',
        opPathFixed: '''Path Fixed''',
        opPathCurved: '''Path Curved''',
      };

  const FormationParametersEnumReferenceFrame(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class ReferenceBitfieldFlags extends BitfieldType {
  static const flagLocation = ReferenceBitfieldFlags(0x01);
  static const flagSpeed = ReferenceBitfieldFlags(0x02);
  static const flagZ = ReferenceBitfieldFlags(0x04);
  static const flagRadius = ReferenceBitfieldFlags(0x08);
  static const flagStartPoint = ReferenceBitfieldFlags(0x10);
  static const flagDirect = ReferenceBitfieldFlags(0x20);
  static const flagMandone = ReferenceBitfieldFlags(0x80);

  static List<ReferenceBitfieldFlags> get values => <ReferenceBitfieldFlags>[
        flagLocation,
        flagSpeed,
        flagZ,
        flagRadius,
        flagStartPoint,
        flagDirect,
        flagMandone,
      ];

  static core.Map<ReferenceBitfieldFlags, String> get names =>
      <ReferenceBitfieldFlags, String>{
        flagLocation: '''Use Location Reference''',
        flagSpeed: '''Use Speed Reference''',
        flagZ: '''Use Z Reference''',
        flagRadius: '''Use Radius Reference''',
        flagStartPoint:
            '''Use this Reference as Start Position for PathControler''',
        flagDirect:
            '''Use Current Position as Start Position for PathControler''',
        flagMandone: '''Flag Maneuver Completion''',
      };

  const ReferenceBitfieldFlags(super.value);

  @override
  String toPrettyString() {
    String? ret;
    if (value == 0) return '';

    var valNot = value;
    for (var item in values) {
      if (hasBits(<ReferenceBitfieldFlags>[item])) {
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

  static ReferenceBitfieldFlags empty() => ReferenceBitfieldFlags(0);

  static ReferenceBitfieldFlags fromBits(List<ReferenceBitfieldFlags> bits) =>
      (bits.length < 2)
          ? ReferenceBitfieldFlags(bits.isEmpty ? 0 : bits[0].value)
          : bits
              .reduce((b1, b2) => ReferenceBitfieldFlags(b1.value | b2.value));
}

class FollowRefStateEnumState extends EnumType {
  static const frWait = FollowRefStateEnumState(1);
  static const frGoto = FollowRefStateEnumState(2);
  static const frLoiter = FollowRefStateEnumState(3);
  static const frHover = FollowRefStateEnumState(4);
  static const frElevator = FollowRefStateEnumState(5);
  static const frTimeout = FollowRefStateEnumState(6);

  static List<FollowRefStateEnumState> get values => <FollowRefStateEnumState>[
        frWait,
        frGoto,
        frLoiter,
        frHover,
        frElevator,
        frTimeout,
      ];

  static core.Map<FollowRefStateEnumState, String> get names =>
      <FollowRefStateEnumState, String>{
        frWait: '''Waiting for first reference''',
        frGoto: '''Going towards received reference''',
        frLoiter: '''Loitering after arriving at the reference''',
        frHover: '''Hovering after arriving at the reference''',
        frElevator: '''Moving in z after arriving at the target cylinder''',
        frTimeout: '''Controlling system timed out''',
      };

  const FollowRefStateEnumState(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class FollowRefStateBitfieldProximity extends BitfieldType {
  static const proxFar = FollowRefStateBitfieldProximity(0x01);
  static const proxXyNear = FollowRefStateBitfieldProximity(0x02);
  static const proxZNear = FollowRefStateBitfieldProximity(0x04);
  static const proxXyUnreachable = FollowRefStateBitfieldProximity(0x08);
  static const proxZUnreachable = FollowRefStateBitfieldProximity(0x10);

  static List<FollowRefStateBitfieldProximity> get values =>
      <FollowRefStateBitfieldProximity>[
        proxFar,
        proxXyNear,
        proxZNear,
        proxXyUnreachable,
        proxZUnreachable,
      ];

  static core.Map<FollowRefStateBitfieldProximity, String> get names =>
      <FollowRefStateBitfieldProximity, String>{
        proxFar: '''Far from the destination''',
        proxXyNear: '''Near in the horizontal plane''',
        proxZNear: '''Near in the vertical plane''',
        proxXyUnreachable: '''Unreachable in the horizontal plane''',
        proxZUnreachable: '''Unreachable in the vertical plane''',
      };

  const FollowRefStateBitfieldProximity(super.value);

  @override
  String toPrettyString() {
    String? ret;
    if (value == 0) return '';

    var valNot = value;
    for (var item in values) {
      if (hasBits(<FollowRefStateBitfieldProximity>[item])) {
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

  static FollowRefStateBitfieldProximity empty() =>
      FollowRefStateBitfieldProximity(0);

  static FollowRefStateBitfieldProximity fromBits(
          List<FollowRefStateBitfieldProximity> bits) =>
      (bits.length < 2)
          ? FollowRefStateBitfieldProximity(bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce(
              (b1, b2) => FollowRefStateBitfieldProximity(b1.value | b2.value));
}

/// Direction to which the vehicle should attempt to unstuck.
class DislodgeEnumDirection extends EnumType {
  static const dirAuto = DislodgeEnumDirection(0);
  static const dirForward = DislodgeEnumDirection(1);
  static const dirBackward = DislodgeEnumDirection(2);

  static List<DislodgeEnumDirection> get values => <DislodgeEnumDirection>[
        dirAuto,
        dirForward,
        dirBackward,
      ];

  static core.Map<DislodgeEnumDirection, String> get names =>
      <DislodgeEnumDirection, String>{
        dirAuto: '''Let the vehicle decide''',
        dirForward: '''Attempt to move forward''',
        dirBackward: '''Attempt to move backward''',
      };

  const DislodgeEnumDirection(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Indicates if the message is a request, or a reply to a previous request.
class FormationEnumType extends EnumType {
  static const fcRequest = FormationEnumType(0);
  static const fcReport = FormationEnumType(1);

  static List<FormationEnumType> get values => <FormationEnumType>[
        fcRequest,
        fcReport,
      ];

  static core.Map<FormationEnumType, String> get names =>
      <FormationEnumType, String>{
        fcRequest: '''Request''',
        fcReport: '''Report''',
      };

  const FormationEnumType(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Operation to perform.
class FormationEnumOp extends EnumType {
  /// Start the formation maneuver.
  static const opStart = FormationEnumOp(0);

  /// Stop the formation maneuver.
  static const opStop = FormationEnumOp(1);

  /// Stop the formation maneuver.
  static const opReady = FormationEnumOp(2);

  /// Stop the formation maneuver.
  static const opExecuting = FormationEnumOp(3);

  /// Stop the formation maneuver.
  static const opFailure = FormationEnumOp(4);

  static List<FormationEnumOp> get values => <FormationEnumOp>[
        opStart,
        opStop,
        opReady,
        opExecuting,
        opFailure,
      ];

  static core.Map<FormationEnumOp, String> get names =>
      <FormationEnumOp, String>{
        opStart: '''Start''',
        opStop: '''Stop''',
        opReady: '''Ready''',
        opExecuting: '''Executing''',
        opFailure: '''Failure''',
      };

  const FormationEnumOp(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Formation reference frame
class FormationEnumReferenceFrame extends EnumType {
  static const opEarthFixed = FormationEnumReferenceFrame(0);
  static const opPathFixed = FormationEnumReferenceFrame(1);
  static const opPathCurved = FormationEnumReferenceFrame(2);

  static List<FormationEnumReferenceFrame> get values =>
      <FormationEnumReferenceFrame>[
        opEarthFixed,
        opPathFixed,
        opPathCurved,
      ];

  static core.Map<FormationEnumReferenceFrame, String> get names =>
      <FormationEnumReferenceFrame, String>{
        opEarthFixed: '''Earth Fixed''',
        opPathFixed: '''Path Fixed''',
        opPathCurved: '''Path Curved''',
      };

  const FormationEnumReferenceFrame(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// What to do if the vehicle fails to arrive before or at the requested time.
class ScheduledGotoEnumDelayed extends EnumType {
  /// If the vehicle fails to arrive at the specified time, it will keep going to the destination
  /// at top speed and only then consider this maneuver completed.
  static const dbehResume = ScheduledGotoEnumDelayed(0);

  /// If the vehicle fails to arrive at the specified time, it will stop the current maneuver and
  /// advance to the next one (independently of how far it is from destination).
  static const dbehSkip = ScheduledGotoEnumDelayed(1);

  /// If the vehicle fails to arrive at the specified time, it will stop the execution of this
  /// maneuver with a FAILED result (the entire plan will be stopped).
  static const dbehFail = ScheduledGotoEnumDelayed(2);

  static List<ScheduledGotoEnumDelayed> get values =>
      <ScheduledGotoEnumDelayed>[
        dbehResume,
        dbehSkip,
        dbehFail,
      ];

  static core.Map<ScheduledGotoEnumDelayed, String> get names =>
      <ScheduledGotoEnumDelayed, String>{
        dbehResume: '''Resume''',
        dbehSkip: '''Skip''',
        dbehFail: '''Fail''',
      };

  const ScheduledGotoEnumDelayed(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Maneuver optional flags.
class RowsCoverageBitfieldFlags extends BitfieldType {
  /// Whether to move between transects using an additional perpendicular transect.
  static const flgSquareCurve = RowsCoverageBitfieldFlags(0x01);

  /// Shall the vehicle turn towards the right after the first transect (alternatively it will turn left).
  static const flgCurveRight = RowsCoverageBitfieldFlags(0x02);

  static List<RowsCoverageBitfieldFlags> get values =>
      <RowsCoverageBitfieldFlags>[
        flgSquareCurve,
        flgCurveRight,
      ];

  static core.Map<RowsCoverageBitfieldFlags, String> get names =>
      <RowsCoverageBitfieldFlags, String>{
        flgSquareCurve: '''Square Curve''',
        flgCurveRight: '''First Curve Right''',
      };

  const RowsCoverageBitfieldFlags(super.value);

  @override
  String toPrettyString() {
    String? ret;
    if (value == 0) return '';

    var valNot = value;
    for (var item in values) {
      if (hasBits(<RowsCoverageBitfieldFlags>[item])) {
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

  static RowsCoverageBitfieldFlags empty() => RowsCoverageBitfieldFlags(0);

  static RowsCoverageBitfieldFlags fromBits(
          List<RowsCoverageBitfieldFlags> bits) =>
      (bits.length < 2)
          ? RowsCoverageBitfieldFlags(bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce(
              (b1, b2) => RowsCoverageBitfieldFlags(b1.value | b2.value));
}

class AutonomousSectionBitfieldLimits extends BitfieldType {
  static const enforceDepth = AutonomousSectionBitfieldLimits(0x01);
  static const enforceAltitude = AutonomousSectionBitfieldLimits(0x02);
  static const enforceTimeout = AutonomousSectionBitfieldLimits(0x04);
  static const enforceArea2d = AutonomousSectionBitfieldLimits(0x08);

  static List<AutonomousSectionBitfieldLimits> get values =>
      <AutonomousSectionBitfieldLimits>[
        enforceDepth,
        enforceAltitude,
        enforceTimeout,
        enforceArea2d,
      ];

  static core.Map<AutonomousSectionBitfieldLimits, String> get names =>
      <AutonomousSectionBitfieldLimits, String>{
        enforceDepth: '''Maximum Depth Limit''',
        enforceAltitude: '''Minimum Altitude Limit''',
        enforceTimeout: '''Time Limit''',
        enforceArea2d: '''Polygonal Area Limits''',
      };

  const AutonomousSectionBitfieldLimits(super.value);

  @override
  String toPrettyString() {
    String? ret;
    if (value == 0) return '';

    var valNot = value;
    for (var item in values) {
      if (hasBits(<AutonomousSectionBitfieldLimits>[item])) {
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

  static AutonomousSectionBitfieldLimits empty() =>
      AutonomousSectionBitfieldLimits(0);

  static AutonomousSectionBitfieldLimits fromBits(
          List<AutonomousSectionBitfieldLimits> bits) =>
      (bits.length < 2)
          ? AutonomousSectionBitfieldLimits(bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce(
              (b1, b2) => AutonomousSectionBitfieldLimits(b1.value | b2.value));
}

/// Flags of the maneuver.
class StationKeepingExtendedBitfieldFlags extends BitfieldType {
  /// If this flag is set, the vehicle will hold position underwater, loitering at z reference.
  /// It will popup periodically to report position. When it pops up, it will stay at surface in "normal" station keeping behaviour for a certain time (popup_duration).
  static const flgKeepSafe = StationKeepingExtendedBitfieldFlags(0x01);

  static List<StationKeepingExtendedBitfieldFlags> get values =>
      <StationKeepingExtendedBitfieldFlags>[flgKeepSafe];

  static core.Map<StationKeepingExtendedBitfieldFlags, String> get names =>
      <StationKeepingExtendedBitfieldFlags, String>{
        flgKeepSafe: '''Keep safe behaviour'''
      };

  const StationKeepingExtendedBitfieldFlags(super.value);

  @override
  String toPrettyString() {
    String? ret;
    if (value == 0) return '';

    var valNot = value;
    for (var item in values) {
      if (hasBits(<StationKeepingExtendedBitfieldFlags>[item])) {
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

  static StationKeepingExtendedBitfieldFlags empty() =>
      StationKeepingExtendedBitfieldFlags(0);

  static StationKeepingExtendedBitfieldFlags fromBits(
          List<StationKeepingExtendedBitfieldFlags> bits) =>
      (bits.length < 2)
          ? StationKeepingExtendedBitfieldFlags(
              bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce((b1, b2) =>
              StationKeepingExtendedBitfieldFlags(b1.value | b2.value));
}

/// Desired direction.
class MagnetometerEnumDirection extends EnumType {
  static const mdClockwFirst = MagnetometerEnumDirection(0);
  static const mdCclockwFirst = MagnetometerEnumDirection(1);

  static List<MagnetometerEnumDirection> get values =>
      <MagnetometerEnumDirection>[
        mdClockwFirst,
        mdCclockwFirst,
      ];

  static core.Map<MagnetometerEnumDirection, String> get names =>
      <MagnetometerEnumDirection, String>{
        mdClockwFirst: '''Clockwise First''',
        mdCclockwFirst: '''Counter Clockwise First''',
      };

  const MagnetometerEnumDirection(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// The overall operation mode.
class VehicleStateEnumOpMode extends EnumType {
  /// Ready to service requests.
  static const vsService = VehicleStateEnumOpMode(0);

  /// Ongoing vehicle calibration.
  static const vsCalibration = VehicleStateEnumOpMode(1);

  /// Errors are set.
  static const vsError = VehicleStateEnumOpMode(2);

  /// A maneuver is executing.
  static const vsManeuver = VehicleStateEnumOpMode(3);

  /// External control is active.
  static const vsExternal = VehicleStateEnumOpMode(4);

  /// Booting system.
  static const vsBoot = VehicleStateEnumOpMode(5);

  static List<VehicleStateEnumOpMode> get values => <VehicleStateEnumOpMode>[
        vsService,
        vsCalibration,
        vsError,
        vsManeuver,
        vsExternal,
        vsBoot,
      ];

  static core.Map<VehicleStateEnumOpMode, String> get names =>
      <VehicleStateEnumOpMode, String>{
        vsService: '''Service''',
        vsCalibration: '''Calibration''',
        vsError: '''Error''',
        vsManeuver: '''Maneuver''',
        vsExternal: '''External Control''',
        vsBoot: '''Boot''',
      };

  const VehicleStateEnumOpMode(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class VehicleStateBitfieldFlags extends BitfieldType {
  static const vflgManeuverDone = VehicleStateBitfieldFlags(0x01);

  static List<VehicleStateBitfieldFlags> get values =>
      <VehicleStateBitfieldFlags>[vflgManeuverDone];

  static core.Map<VehicleStateBitfieldFlags, String> get names =>
      <VehicleStateBitfieldFlags, String>{
        vflgManeuverDone: '''Maneuver Done'''
      };

  const VehicleStateBitfieldFlags(super.value);

  @override
  String toPrettyString() {
    String? ret;
    if (value == 0) return '';

    var valNot = value;
    for (var item in values) {
      if (hasBits(<VehicleStateBitfieldFlags>[item])) {
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

  static VehicleStateBitfieldFlags empty() => VehicleStateBitfieldFlags(0);

  static VehicleStateBitfieldFlags fromBits(
          List<VehicleStateBitfieldFlags> bits) =>
      (bits.length < 2)
          ? VehicleStateBitfieldFlags(bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce(
              (b1, b2) => VehicleStateBitfieldFlags(b1.value | b2.value));
}

class VehicleCommandEnumType extends EnumType {
  static const vcRequest = VehicleCommandEnumType(0);
  static const vcSuccess = VehicleCommandEnumType(1);
  static const vcInProgress = VehicleCommandEnumType(2);
  static const vcFailure = VehicleCommandEnumType(3);

  static List<VehicleCommandEnumType> get values => <VehicleCommandEnumType>[
        vcRequest,
        vcSuccess,
        vcInProgress,
        vcFailure,
      ];

  static core.Map<VehicleCommandEnumType, String> get names =>
      <VehicleCommandEnumType, String>{
        vcRequest: '''Request''',
        vcSuccess: '''Reply -- Success''',
        vcInProgress: '''Reply -- In Progress''',
        vcFailure: '''Reply -- Failure''',
      };

  const VehicleCommandEnumType(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// The type of command/action to be performed
class VehicleCommandEnumCommand extends EnumType {
  /// Execute the maneuver specified in 'maneuver' field.
  static const vcExecManeuver = VehicleCommandEnumCommand(0);

  /// Stop 'maneuver' being executed.
  static const vcStopManeuver = VehicleCommandEnumCommand(1);

  /// Start calibrating vehicle.
  static const vcStartCalibration = VehicleCommandEnumCommand(2);

  /// Stop calibrating vehicle.
  static const vcStopCalibration = VehicleCommandEnumCommand(3);

  static List<VehicleCommandEnumCommand> get values =>
      <VehicleCommandEnumCommand>[
        vcExecManeuver,
        vcStopManeuver,
        vcStartCalibration,
        vcStopCalibration,
      ];

  static core.Map<VehicleCommandEnumCommand, String> get names =>
      <VehicleCommandEnumCommand, String>{
        vcExecManeuver: '''Execute Maneuver''',
        vcStopManeuver: '''Stop Maneuver''',
        vcStartCalibration: '''Start Calibration''',
        vcStopCalibration: '''Stop Calibration''',
      };

  const VehicleCommandEnumCommand(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Command.
class MonitorEntityStateEnumCommand extends EnumType {
  static const mesReset = MonitorEntityStateEnumCommand(0);
  static const mesEnable = MonitorEntityStateEnumCommand(1);
  static const mesDisable = MonitorEntityStateEnumCommand(2);
  static const mesEnableExclusive = MonitorEntityStateEnumCommand(3);
  static const mesStatus = MonitorEntityStateEnumCommand(4);

  static List<MonitorEntityStateEnumCommand> get values =>
      <MonitorEntityStateEnumCommand>[
        mesReset,
        mesEnable,
        mesDisable,
        mesEnableExclusive,
        mesStatus,
      ];

  static core.Map<MonitorEntityStateEnumCommand, String> get names =>
      <MonitorEntityStateEnumCommand, String>{
        mesReset: '''Reset to defaults''',
        mesEnable: '''Enable Monitoring''',
        mesDisable: '''Disable Monitoring''',
        mesEnableExclusive:
            '''Enable Monitoring (exclusive - disables all others)''',
        mesStatus: '''Status Report''',
      };

  const MonitorEntityStateEnumCommand(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class ControlLoopsEnumEnable extends EnumType {
  static const clDisable = ControlLoopsEnumEnable(0);
  static const clEnable = ControlLoopsEnumEnable(1);

  static List<ControlLoopsEnumEnable> get values => <ControlLoopsEnumEnable>[
        clDisable,
        clEnable,
      ];

  static core.Map<ControlLoopsEnumEnable, String> get names =>
      <ControlLoopsEnumEnable, String>{
        clDisable: '''Disable''',
        clEnable: '''Enable''',
      };

  const ControlLoopsEnumEnable(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Current medium.
class VehicleMediumEnumMedium extends EnumType {
  /// Vehicle is on the ground
  static const vmGround = VehicleMediumEnumMedium(0);

  /// Vehicle is airborne
  static const vmAir = VehicleMediumEnumMedium(1);

  /// Vehicle is at water surface
  static const vmWater = VehicleMediumEnumMedium(2);

  /// Vehicle is underwater
  static const vmUnderwater = VehicleMediumEnumMedium(3);

  /// Vehicle medium is unknown
  static const vmUnknown = VehicleMediumEnumMedium(4);

  static List<VehicleMediumEnumMedium> get values => <VehicleMediumEnumMedium>[
        vmGround,
        vmAir,
        vmWater,
        vmUnderwater,
        vmUnknown,
      ];

  static core.Map<VehicleMediumEnumMedium, String> get names =>
      <VehicleMediumEnumMedium, String>{
        vmGround: '''Ground''',
        vmAir: '''Air''',
        vmWater: '''Water''',
        vmUnderwater: '''Underwater''',
        vmUnknown: '''Unknown''',
      };

  const VehicleMediumEnumMedium(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Collision flags.
class CollisionBitfieldType extends BitfieldType {
  /// Collision detected in the x-axis
  static const cdX = CollisionBitfieldType(0x01);

  /// Collision detected in the y-axis
  static const cdY = CollisionBitfieldType(0x02);

  /// Collision detected in the z-axis
  static const cdZ = CollisionBitfieldType(0x04);

  /// Sudden impact detected
  static const cdImpact = CollisionBitfieldType(0x08);

  static List<CollisionBitfieldType> get values => <CollisionBitfieldType>[
        cdX,
        cdY,
        cdZ,
        cdImpact,
      ];

  static core.Map<CollisionBitfieldType, String> get names =>
      <CollisionBitfieldType, String>{
        cdX: '''X-axis''',
        cdY: '''Y-axis''',
        cdZ: '''Z-axis''',
        cdImpact: '''Impact''',
      };

  const CollisionBitfieldType(super.value);

  @override
  String toPrettyString() {
    String? ret;
    if (value == 0) return '';

    var valNot = value;
    for (var item in values) {
      if (hasBits(<CollisionBitfieldType>[item])) {
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

  static CollisionBitfieldType empty() => CollisionBitfieldType(0);

  static CollisionBitfieldType fromBits(List<CollisionBitfieldType> bits) =>
      (bits.length < 2)
          ? CollisionBitfieldType(bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce((b1, b2) => CollisionBitfieldType(b1.value | b2.value));
}

/// Position mismatch monitoring flag.
class FormStateEnumPosSimMon extends EnumType {
  static const posOk = FormStateEnumPosSimMon(0);
  static const posWrn = FormStateEnumPosSimMon(1);
  static const posLim = FormStateEnumPosSimMon(2);

  static List<FormStateEnumPosSimMon> get values => <FormStateEnumPosSimMon>[
        posOk,
        posWrn,
        posLim,
      ];

  static core.Map<FormStateEnumPosSimMon, String> get names =>
      <FormStateEnumPosSimMon, String>{
        posOk: '''Ok''',
        posWrn: '''Warning threshold''',
        posLim: '''Limit threshold''',
      };

  const FormStateEnumPosSimMon(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Communications monitoring flag.
class FormStateEnumCommMon extends EnumType {
  static const commsOk = FormStateEnumCommMon(0);
  static const commsTimeout = FormStateEnumCommMon(1);

  static List<FormStateEnumCommMon> get values => <FormStateEnumCommMon>[
        commsOk,
        commsTimeout,
      ];

  static core.Map<FormStateEnumCommMon, String> get names =>
      <FormStateEnumCommMon, String>{
        commsOk: '''Ok''',
        commsTimeout: '''Timeout''',
      };

  const FormStateEnumCommMon(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Convergence monitoring flag.
class FormStateEnumConvergMon extends EnumType {
  static const convOk = FormStateEnumConvergMon(0);
  static const convTimeout = FormStateEnumConvergMon(1);

  static List<FormStateEnumConvergMon> get values => <FormStateEnumConvergMon>[
        convOk,
        convTimeout,
      ];

  static core.Map<FormStateEnumConvergMon, String> get names =>
      <FormStateEnumConvergMon, String>{
        convOk: '''Ok''',
        convTimeout: '''Timeout''',
      };

  const FormStateEnumConvergMon(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Current mode autonomy level.
class AutopilotModeEnumAutonomy extends EnumType {
  /// Autopilot has no control
  static const alManual = AutopilotModeEnumAutonomy(0);

  /// Autopilot has some control
  static const alAssisted = AutopilotModeEnumAutonomy(1);

  /// Autopilot has full control
  static const alAuto = AutopilotModeEnumAutonomy(2);

  static List<AutopilotModeEnumAutonomy> get values =>
      <AutopilotModeEnumAutonomy>[
        alManual,
        alAssisted,
        alAuto,
      ];

  static core.Map<AutopilotModeEnumAutonomy, String> get names =>
      <AutopilotModeEnumAutonomy, String>{
        alManual: '''Manual''',
        alAssisted: '''Assisted''',
        alAuto: '''Auto''',
      };

  const AutopilotModeEnumAutonomy(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Indicates if the message is a request, or a reply to a previous request.
class FormationStateEnumType extends EnumType {
  static const fcRequest = FormationStateEnumType(0);
  static const fcReport = FormationStateEnumType(1);

  static List<FormationStateEnumType> get values => <FormationStateEnumType>[
        fcRequest,
        fcReport,
      ];

  static core.Map<FormationStateEnumType, String> get names =>
      <FormationStateEnumType, String>{
        fcRequest: '''Request''',
        fcReport: '''Report''',
      };

  const FormationStateEnumType(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Operation to perform.
class FormationStateEnumOp extends EnumType {
  /// Start the formation maneuver.
  static const opStart = FormationStateEnumOp(0);

  /// Stop the formation maneuver.
  static const opStop = FormationStateEnumOp(1);

  static List<FormationStateEnumOp> get values => <FormationStateEnumOp>[
        opStart,
        opStop,
      ];

  static core.Map<FormationStateEnumOp, String> get names =>
      <FormationStateEnumOp, String>{
        opStart: '''Start''',
        opStop: '''Stop''',
      };

  const FormationStateEnumOp(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Position mismatch monitoring flag.
class FormationStateEnumPosSimMon extends EnumType {
  static const posOk = FormationStateEnumPosSimMon(0);
  static const posWrn = FormationStateEnumPosSimMon(1);
  static const posLim = FormationStateEnumPosSimMon(2);

  static List<FormationStateEnumPosSimMon> get values =>
      <FormationStateEnumPosSimMon>[
        posOk,
        posWrn,
        posLim,
      ];

  static core.Map<FormationStateEnumPosSimMon, String> get names =>
      <FormationStateEnumPosSimMon, String>{
        posOk: '''Ok''',
        posWrn: '''Warning threshold''',
        posLim: '''Limit threshold''',
      };

  const FormationStateEnumPosSimMon(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Communications monitoring flag.
class FormationStateEnumCommMon extends EnumType {
  static const commsOk = FormationStateEnumCommMon(0);
  static const commsTimeout = FormationStateEnumCommMon(1);

  static List<FormationStateEnumCommMon> get values =>
      <FormationStateEnumCommMon>[
        commsOk,
        commsTimeout,
      ];

  static core.Map<FormationStateEnumCommMon, String> get names =>
      <FormationStateEnumCommMon, String>{
        commsOk: '''Ok''',
        commsTimeout: '''Timeout''',
      };

  const FormationStateEnumCommMon(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Convergence monitoring flag.
class FormationStateEnumConvergMon extends EnumType {
  static const convOk = FormationStateEnumConvergMon(0);
  static const convTimeout = FormationStateEnumConvergMon(1);

  static List<FormationStateEnumConvergMon> get values =>
      <FormationStateEnumConvergMon>[
        convOk,
        convTimeout,
      ];

  static core.Map<FormationStateEnumConvergMon, String> get names =>
      <FormationStateEnumConvergMon, String>{
        convOk: '''Ok''',
        convTimeout: '''Timeout''',
      };

  const FormationStateEnumConvergMon(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Operation to perform.
class ReportControlEnumOp extends EnumType {
  /// Request a system to periodically send reports through 'interface'.
  /// The destination system will reply with a STARTED command. Periodicity
  /// will be defined by the field 'period'. If applicable, the destination
  /// address is defined in field 'dst'.
  static const opRequestStart = ReportControlEnumOp(0);

  /// The destination system will reply a message with this operation
  /// everytime a report is successfully started. The periodicity of
  /// reports is indicated in the field 'period' while the communication
  /// interface to be used is described in field 'interface'. If applicable,
  /// the destination address is defined in field 'dst'.
  static const opStarted = ReportControlEnumOp(1);

  /// Request a system to stop dispatching reports through a given
  /// communication interface described in 'interface'. The destination
  /// system will reply with a STOPPED command. If applicable, the
  /// destination address is defined in field 'dst'.
  static const opRequestStop = ReportControlEnumOp(2);

  /// The destination system will reply a message with this operation
  /// everytime a scheduled report is successfully stopped in a defined
  /// communication interface. If applicable, the destination address
  /// is defined in field 'dst'.
  static const opStopped = ReportControlEnumOp(3);

  /// Request a system to issue a single report in a defined communication
  /// interface. The destination system will reply with a REPORT_ISSUED command.
  /// If applicable, the destination address is defined in field 'dst'.
  static const opRequestReport = ReportControlEnumOp(4);

  /// The destination system will reply a single report request with
  /// this operation.If applicable, the destination address is defined
  /// in field 'dst'.
  static const opReportSent = ReportControlEnumOp(5);

  static List<ReportControlEnumOp> get values => <ReportControlEnumOp>[
        opRequestStart,
        opStarted,
        opRequestStop,
        opStopped,
        opRequestReport,
        opReportSent,
      ];

  static core.Map<ReportControlEnumOp, String> get names =>
      <ReportControlEnumOp, String>{
        opRequestStart: '''Request Start of Reports''',
        opStarted: '''Report Started''',
        opRequestStop: '''Request Stop of Reports''',
        opStopped: '''Report Stopped''',
        opRequestReport: '''Request Single Reports''',
        opReportSent: '''Single Report Sent''',
      };

  const ReportControlEnumOp(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Communication interface to be used for reports.
class ReportControlBitfieldCommInterface extends BitfieldType {
  /// Use acoustic communications
  static const ciAcoustic = ReportControlBitfieldCommInterface(0x01);

  /// Use satellite communications
  static const ciSatellite = ReportControlBitfieldCommInterface(0x02);

  /// Use Global System for Mobile Communications
  static const ciGsm = ReportControlBitfieldCommInterface(0x04);

  /// Use mobile networks
  static const ciMobile = ReportControlBitfieldCommInterface(0x08);

  /// Use Radio telemetry
  static const ciRadio = ReportControlBitfieldCommInterface(0x10);

  static List<ReportControlBitfieldCommInterface> get values =>
      <ReportControlBitfieldCommInterface>[
        ciAcoustic,
        ciSatellite,
        ciGsm,
        ciMobile,
        ciRadio,
      ];

  static core.Map<ReportControlBitfieldCommInterface, String> get names =>
      <ReportControlBitfieldCommInterface, String>{
        ciAcoustic: '''Acoustic''',
        ciSatellite: '''Satellite''',
        ciGsm: '''GSM''',
        ciMobile: '''Mobile''',
        ciRadio: '''Radio''',
      };

  const ReportControlBitfieldCommInterface(super.value);

  @override
  String toPrettyString() {
    String? ret;
    if (value == 0) return '';

    var valNot = value;
    for (var item in values) {
      if (hasBits(<ReportControlBitfieldCommInterface>[item])) {
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

  static ReportControlBitfieldCommInterface empty() =>
      ReportControlBitfieldCommInterface(0);

  static ReportControlBitfieldCommInterface fromBits(
          List<ReportControlBitfieldCommInterface> bits) =>
      (bits.length < 2)
          ? ReportControlBitfieldCommInterface(bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce((b1, b2) =>
              ReportControlBitfieldCommInterface(b1.value | b2.value));
}

/// Communication mean to be used to transfer these data.
class TransmissionRequestEnumCommMean extends EnumType {
  static const cmeanWifi = TransmissionRequestEnumCommMean(0);
  static const cmeanAcoustic = TransmissionRequestEnumCommMean(1);
  static const cmeanSatellite = TransmissionRequestEnumCommMean(2);
  static const cmeanGsm = TransmissionRequestEnumCommMean(3);
  static const cmeanAny = TransmissionRequestEnumCommMean(4);
  static const cmeanAll = TransmissionRequestEnumCommMean(5);

  static List<TransmissionRequestEnumCommMean> get values =>
      <TransmissionRequestEnumCommMean>[
        cmeanWifi,
        cmeanAcoustic,
        cmeanSatellite,
        cmeanGsm,
        cmeanAny,
        cmeanAll,
      ];

  static core.Map<TransmissionRequestEnumCommMean, String> get names =>
      <TransmissionRequestEnumCommMean, String>{
        cmeanWifi: '''WiFi''',
        cmeanAcoustic: '''Acoustic''',
        cmeanSatellite: '''Satellite''',
        cmeanGsm: '''GSM''',
        cmeanAny: '''Any''',
        cmeanAll: '''All''',
      };

  const TransmissionRequestEnumCommMean(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Type of data to be transmitted.
/// Abort and Range mode can only be used with comm_mean=ACOUSTIC
class TransmissionRequestEnumDataMode extends EnumType {
  static const dmodeInlinemsg = TransmissionRequestEnumDataMode(0);
  static const dmodeText = TransmissionRequestEnumDataMode(1);
  static const dmodeRaw = TransmissionRequestEnumDataMode(2);
  static const dmodeAbort = TransmissionRequestEnumDataMode(3);
  static const dmodeRange = TransmissionRequestEnumDataMode(4);
  static const dmodeReverseRange = TransmissionRequestEnumDataMode(5);

  static List<TransmissionRequestEnumDataMode> get values =>
      <TransmissionRequestEnumDataMode>[
        dmodeInlinemsg,
        dmodeText,
        dmodeRaw,
        dmodeAbort,
        dmodeRange,
        dmodeReverseRange,
      ];

  static core.Map<TransmissionRequestEnumDataMode, String> get names =>
      <TransmissionRequestEnumDataMode, String>{
        dmodeInlinemsg: '''Inline Message''',
        dmodeText: '''Text''',
        dmodeRaw: '''Raw Data''',
        dmodeAbort: '''Abort''',
        dmodeRange: '''Range''',
        dmodeReverseRange: '''Reverse Range''',
      };

  const TransmissionRequestEnumDataMode(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class TransmissionStatusEnumStatus extends EnumType {
  static const tstatInProgress = TransmissionStatusEnumStatus(0);
  static const tstatSent = TransmissionStatusEnumStatus(1);
  static const tstatDelivered = TransmissionStatusEnumStatus(51);
  static const tstatMaybeDelivered = TransmissionStatusEnumStatus(52);
  static const tstatRangeReceived = TransmissionStatusEnumStatus(60);
  static const tstatInputFailure = TransmissionStatusEnumStatus(101);
  static const tstatTemporaryFailure = TransmissionStatusEnumStatus(102);
  static const tstatPermanentFailure = TransmissionStatusEnumStatus(103);

  static List<TransmissionStatusEnumStatus> get values =>
      <TransmissionStatusEnumStatus>[
        tstatInProgress,
        tstatSent,
        tstatDelivered,
        tstatMaybeDelivered,
        tstatRangeReceived,
        tstatInputFailure,
        tstatTemporaryFailure,
        tstatPermanentFailure,
      ];

  static core.Map<TransmissionStatusEnumStatus, String> get names =>
      <TransmissionStatusEnumStatus, String>{
        tstatInProgress: '''In progress''',
        tstatSent: '''Sent''',
        tstatDelivered: '''Delivered''',
        tstatMaybeDelivered: '''Delivery is unknown''',
        tstatRangeReceived: '''Range received''',
        tstatInputFailure: '''Input Error''',
        tstatTemporaryFailure: '''Temporary Error''',
        tstatPermanentFailure: '''Permanent Failure''',
      };

  const TransmissionStatusEnumStatus(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class SmsStatusEnumStatus extends EnumType {
  static const smsstatQueued = SmsStatusEnumStatus(0);
  static const smsstatSent = SmsStatusEnumStatus(1);
  static const smsstatInputFailure = SmsStatusEnumStatus(101);
  static const smsstatError = SmsStatusEnumStatus(102);

  static List<SmsStatusEnumStatus> get values => <SmsStatusEnumStatus>[
        smsstatQueued,
        smsstatSent,
        smsstatInputFailure,
        smsstatError,
      ];

  static core.Map<SmsStatusEnumStatus, String> get names =>
      <SmsStatusEnumStatus, String>{
        smsstatQueued: '''Queued''',
        smsstatSent: '''Sent''',
        smsstatInputFailure: '''Input Error''',
        smsstatError: '''Error trying to send sms''',
      };

  const SmsStatusEnumStatus(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class VtolStateEnumState extends EnumType {
  /// Vehicle is not configured as VTOL.
  static const vtolStateUndefined = VtolStateEnumState(0);

  /// Vehicle is in transition from multicopter to fixed-wing.
  static const vtolStateTransitionToFw = VtolStateEnumState(1);

  /// Vehicle is in transition from fixed-wing to multicopter.
  static const vtolStateTransitionToMc = VtolStateEnumState(2);

  /// Vehicle is in multicopter state.
  static const vtolStateMc = VtolStateEnumState(3);

  /// Vehicle is in fixed-wing state.
  static const vtolStateFw = VtolStateEnumState(4);

  static List<VtolStateEnumState> get values => <VtolStateEnumState>[
        vtolStateUndefined,
        vtolStateTransitionToFw,
        vtolStateTransitionToMc,
        vtolStateMc,
        vtolStateFw,
      ];

  static core.Map<VtolStateEnumState, String> get names =>
      <VtolStateEnumState, String>{
        vtolStateUndefined: '''Undefined''',
        vtolStateTransitionToFw: '''Transition to Fixed-Wing''',
        vtolStateTransitionToMc: '''Transition to MultiCopter''',
        vtolStateMc: '''MutiCopter''',
        vtolStateFw: '''Fixed-Wing''',
      };

  const VtolStateEnumState(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class ArmingStateEnumState extends EnumType {
  static const motorsArmed = ArmingStateEnumState(0);
  static const motorsDisarmed = ArmingStateEnumState(1);

  static List<ArmingStateEnumState> get values => <ArmingStateEnumState>[
        motorsArmed,
        motorsDisarmed,
      ];

  static core.Map<ArmingStateEnumState, String> get names =>
      <ArmingStateEnumState, String>{
        motorsArmed: '''Armed''',
        motorsDisarmed: '''Disarmed''',
      };

  const ArmingStateEnumState(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class TCPStatusEnumStatus extends EnumType {
  static const tcpstatQueued = TCPStatusEnumStatus(0);
  static const tcpstatSent = TCPStatusEnumStatus(1);
  static const tcpstatInputFailure = TCPStatusEnumStatus(100);
  static const tcpstatHostUnknown = TCPStatusEnumStatus(101);
  static const tcpstatCantConnect = TCPStatusEnumStatus(102);
  static const tcpstatError = TCPStatusEnumStatus(103);

  static List<TCPStatusEnumStatus> get values => <TCPStatusEnumStatus>[
        tcpstatQueued,
        tcpstatSent,
        tcpstatInputFailure,
        tcpstatHostUnknown,
        tcpstatCantConnect,
        tcpstatError,
      ];

  static core.Map<TCPStatusEnumStatus, String> get names =>
      <TCPStatusEnumStatus, String>{
        tcpstatQueued: '''Queued''',
        tcpstatSent: '''Sent''',
        tcpstatInputFailure: '''Input Error''',
        tcpstatHostUnknown: '''Host Unknown''',
        tcpstatCantConnect: '''Can't Connect''',
        tcpstatError: '''Error trying to send sms''',
      };

  const TCPStatusEnumStatus(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class AssetReportEnumMedium extends EnumType {
  static const rmWifi = AssetReportEnumMedium(1);
  static const rmSatellite = AssetReportEnumMedium(2);
  static const rmAcoustic = AssetReportEnumMedium(3);
  static const rmSms = AssetReportEnumMedium(4);

  static List<AssetReportEnumMedium> get values => <AssetReportEnumMedium>[
        rmWifi,
        rmSatellite,
        rmAcoustic,
        rmSms,
      ];

  static core.Map<AssetReportEnumMedium, String> get names =>
      <AssetReportEnumMedium, String>{
        rmWifi: '''WiFi''',
        rmSatellite: '''Satellite''',
        rmAcoustic: '''Acoustic''',
        rmSms: '''SMS''',
      };

  const AssetReportEnumMedium(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class EmergencyControlEnumCommand extends EnumType {
  static const ectlEnable = EmergencyControlEnumCommand(0);
  static const ectlDisable = EmergencyControlEnumCommand(1);
  static const ectlStart = EmergencyControlEnumCommand(2);
  static const ectlStop = EmergencyControlEnumCommand(3);
  static const ectlQuery = EmergencyControlEnumCommand(4);
  static const ectlSetPlan = EmergencyControlEnumCommand(5);

  static List<EmergencyControlEnumCommand> get values =>
      <EmergencyControlEnumCommand>[
        ectlEnable,
        ectlDisable,
        ectlStart,
        ectlStop,
        ectlQuery,
        ectlSetPlan,
      ];

  static core.Map<EmergencyControlEnumCommand, String> get names =>
      <EmergencyControlEnumCommand, String>{
        ectlEnable: '''Enable''',
        ectlDisable: '''Disable''',
        ectlStart: '''Start''',
        ectlStop: '''Stop''',
        ectlQuery: '''Query''',
        ectlSetPlan: '''Set Plan''',
      };

  const EmergencyControlEnumCommand(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class EmergencyControlStateEnumState extends EnumType {
  static const ecsNotConfigured = EmergencyControlStateEnumState(0);
  static const ecsDisabled = EmergencyControlStateEnumState(1);
  static const ecsEnabled = EmergencyControlStateEnumState(2);
  static const ecsArmed = EmergencyControlStateEnumState(3);
  static const ecsActive = EmergencyControlStateEnumState(4);
  static const ecsStopping = EmergencyControlStateEnumState(5);

  static List<EmergencyControlStateEnumState> get values =>
      <EmergencyControlStateEnumState>[
        ecsNotConfigured,
        ecsDisabled,
        ecsEnabled,
        ecsArmed,
        ecsActive,
        ecsStopping,
      ];

  static core.Map<EmergencyControlStateEnumState, String> get names =>
      <EmergencyControlStateEnumState, String>{
        ecsNotConfigured: '''Not Configured''',
        ecsDisabled: '''Disabled''',
        ecsEnabled: '''Enabled''',
        ecsArmed: '''Armed''',
        ecsActive: '''Active''',
        ecsStopping: '''Stopping''',
      };

  const EmergencyControlStateEnumState(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Indicates if the message is a request, or a reply to a
/// previous request.
class PlanDBEnumType extends EnumType {
  static const dbtRequest = PlanDBEnumType(0);
  static const dbtSuccess = PlanDBEnumType(1);
  static const dbtFailure = PlanDBEnumType(2);
  static const dbtInProgress = PlanDBEnumType(3);

  static List<PlanDBEnumType> get values => <PlanDBEnumType>[
        dbtRequest,
        dbtSuccess,
        dbtFailure,
        dbtInProgress,
      ];

  static core.Map<PlanDBEnumType, String> get names => <PlanDBEnumType, String>{
        dbtRequest: '''Request''',
        dbtSuccess: '''Reply -- Success''',
        dbtFailure: '''Reply -- Failure''',
        dbtInProgress: '''Reply -- In Progress''',
      };

  const PlanDBEnumType(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Indicates the operation affecting the DB.
///
/// The operation may relate to a single plan or the entire plan DB.
/// For each request,  a plan DB may reply with any number of 'in progress'
/// replies followed by a success or a failure reply.
///
/// The 'op', 'request_id' and 'plan_id' fields of a request will be echoed
/// in one or more responses to that request.
/// The operation at stake also determines a certain type of the 'arg' field,
/// and whether or not the 'plan_id' field needs to be set.
class PlanDBEnumOp extends EnumType {
  /// Set a plan in the DB. The 'plan_id' field identifies the
  /// plan, and a pre-existing plan with the same identifier, if
  /// any will be overwritten. For requests, the 'arg' field must
  /// contain a 'PlanSpecification' message.
  static const dbopSet = PlanDBEnumOp(0);

  /// Delete a plan from the DB. The 'plan_id' field identifies
  /// the plan to delete.
  static const dbopDel = PlanDBEnumOp(1);

  /// Get a plan stored in the DB.The 'plan_id' field identifies
  /// the plan. Successful replies will yield a
  /// 'PlanSpecification' message in the 'arg' field.
  static const dbopGet = PlanDBEnumOp(2);

  /// Get DB state for a stored plan. The 'plan_id' field
  /// identifies the plan. Successful replies will yield a
  /// 'PlanDBInformation' message in the 'arg' field.
  static const dbopGetInfo = PlanDBEnumOp(3);

  /// Clear the entire DB.
  static const dbopClear = PlanDBEnumOp(4);

  /// Get state of the entire DB. Successful replies will yield a
  /// 'PlanDBState' message in the 'arg' field but without
  /// individual plan information (in the 'plans_info' field of
  /// 'PlanDBState').
  static const dbopGetState = PlanDBEnumOp(5);

  /// Get detailed state of the entire DB. Successful replies
  /// will yield a 'PlanDBState' message in the 'arg' field with
  /// individual plan information (in the 'plans_info' field of
  /// 'PlanDBState').
  static const dbopGetDstate = PlanDBEnumOp(6);

  /// PlanDB replies of this type are sent automatically during
  /// bootstrap.
  static const dbopBoot = PlanDBEnumOp(7);

  static List<PlanDBEnumOp> get values => <PlanDBEnumOp>[
        dbopSet,
        dbopDel,
        dbopGet,
        dbopGetInfo,
        dbopClear,
        dbopGetState,
        dbopGetDstate,
        dbopBoot,
      ];

  static core.Map<PlanDBEnumOp, String> get names => <PlanDBEnumOp, String>{
        dbopSet: '''Set Plan''',
        dbopDel: '''Delete Plan''',
        dbopGet: '''Get Plan''',
        dbopGetInfo: '''Get Plan Info''',
        dbopClear: '''Clear Database''',
        dbopGetState: '''Get Database State (Simple)''',
        dbopGetDstate: '''Get Database State (Detailed)''',
        dbopBoot: '''Boot Notification''',
      };

  const PlanDBEnumOp(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Indicates if the message is a request or a reply to a
/// previous request. The *op*, *request_id* and *plan_id* fields
/// of a request will be echoed in one or more responses to that
/// request.
class PlanControlEnumType extends EnumType {
  static const pcRequest = PlanControlEnumType(0);
  static const pcSuccess = PlanControlEnumType(1);
  static const pcFailure = PlanControlEnumType(2);
  static const pcInProgress = PlanControlEnumType(3);

  static List<PlanControlEnumType> get values => <PlanControlEnumType>[
        pcRequest,
        pcSuccess,
        pcFailure,
        pcInProgress,
      ];

  static core.Map<PlanControlEnumType, String> get names =>
      <PlanControlEnumType, String>{
        pcRequest: '''Request''',
        pcSuccess: '''Reply -- Success''',
        pcFailure: '''Reply -- Failure''',
        pcInProgress: '''Reply -- In Progress''',
      };

  const PlanControlEnumType(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Plan control operation.
class PlanControlEnumOp extends EnumType {
  /// Start plan identified by *plan_id* field.  The command will
  /// try to load the corresponding plan if none is loaded, and in
  /// that case will follow the same discipline as the *LOAD*
  /// command.
  ///
  /// If the message in *arg* is a :ref:`Maneuver`, a single-maneuver plan
  /// will be generated and executed.
  ///
  /// This will override any current plan being executed.
  static const pcStart = PlanControlEnumOp(0);

  /// Stop current plan being executed if any.
  static const pcStop = PlanControlEnumOp(1);

  /// Load Plan. If a :ref:`PlanSpecification` is given with the
  /// request in the *data* field, then that plan is used and
  /// stored in the Plan DB. Otherwise, the plan is loaded from
  /// the Plan DB.
  static const pcLoad = PlanControlEnumOp(2);

  /// Get loaded plan. For a successful reply, the *data* field
  /// will contain the :ref:`PlanSpecification` message that
  /// corresponds to the currently loaded plan.
  static const pcGet = PlanControlEnumOp(3);

  static List<PlanControlEnumOp> get values => <PlanControlEnumOp>[
        pcStart,
        pcStop,
        pcLoad,
        pcGet,
      ];

  static core.Map<PlanControlEnumOp, String> get names =>
      <PlanControlEnumOp, String>{
        pcStart: '''Start Plan''',
        pcStop: '''Stop Plan''',
        pcLoad: '''Load Plan''',
        pcGet: '''Get Plan''',
      };

  const PlanControlEnumOp(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class PlanControlBitfieldFlags extends BitfieldType {
  /// Perform vehicle calibration.
  static const flgCalibrate = PlanControlBitfieldFlags(0x0001);

  /// Execute current plan while ignoring some errors that might be active.
  static const flgIgnoreErrors = PlanControlBitfieldFlags(0x0002);

  static List<PlanControlBitfieldFlags> get values =>
      <PlanControlBitfieldFlags>[
        flgCalibrate,
        flgIgnoreErrors,
      ];

  static core.Map<PlanControlBitfieldFlags, String> get names =>
      <PlanControlBitfieldFlags, String>{
        flgCalibrate: '''Calibrate Vehicle''',
        flgIgnoreErrors: '''Ignore Errors''',
      };

  const PlanControlBitfieldFlags(super.value);

  @override
  String toPrettyString() {
    String? ret;
    if (value == 0) return '';

    var valNot = value;
    for (var item in values) {
      if (hasBits(<PlanControlBitfieldFlags>[item])) {
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

  static PlanControlBitfieldFlags empty() => PlanControlBitfieldFlags(0);

  static PlanControlBitfieldFlags fromBits(
          List<PlanControlBitfieldFlags> bits) =>
      (bits.length < 2)
          ? PlanControlBitfieldFlags(bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce(
              (b1, b2) => PlanControlBitfieldFlags(b1.value | b2.value));
}

/// Describes overall state.
class PlanControlStateEnumState extends EnumType {
  /// Plan execution is blocked e.g., due to a vehicle error,
  /// or if no plan is loaded.
  static const pcsBlocked = PlanControlStateEnumState(0);

  /// Ready to start plan execution.
  static const pcsReady = PlanControlStateEnumState(1);

  /// Initializing plan for execution.
  static const pcsInitializing = PlanControlStateEnumState(2);

  /// Executing plan.
  static const pcsExecuting = PlanControlStateEnumState(3);

  static List<PlanControlStateEnumState> get values =>
      <PlanControlStateEnumState>[
        pcsBlocked,
        pcsReady,
        pcsInitializing,
        pcsExecuting,
      ];

  static core.Map<PlanControlStateEnumState, String> get names =>
      <PlanControlStateEnumState, String>{
        pcsBlocked: '''Blocked''',
        pcsReady: '''Ready''',
        pcsInitializing: '''Initializing''',
        pcsExecuting: '''Executing''',
      };

  const PlanControlStateEnumState(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Outcome of the last executed plan.
class PlanControlStateEnumLastOutcome extends EnumType {
  /// Unknown or not filled.
  static const lpoNone = PlanControlStateEnumLastOutcome(0);

  /// Last plan execution was successful.
  static const lpoSuccess = PlanControlStateEnumLastOutcome(1);

  /// Last plan execution was a failure.
  static const lpoFailure = PlanControlStateEnumLastOutcome(2);

  static List<PlanControlStateEnumLastOutcome> get values =>
      <PlanControlStateEnumLastOutcome>[
        lpoNone,
        lpoSuccess,
        lpoFailure,
      ];

  static core.Map<PlanControlStateEnumLastOutcome, String> get names =>
      <PlanControlStateEnumLastOutcome, String>{
        lpoNone: '''None''',
        lpoSuccess: '''Success''',
        lpoFailure: '''Failure''',
      };

  const PlanControlStateEnumLastOutcome(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class PlanVariableEnumType extends EnumType {
  static const pvtBoolean = PlanVariableEnumType(0);
  static const pvtNumber = PlanVariableEnumType(1);
  static const pvtText = PlanVariableEnumType(2);
  static const pvtMessage = PlanVariableEnumType(3);

  static List<PlanVariableEnumType> get values => <PlanVariableEnumType>[
        pvtBoolean,
        pvtNumber,
        pvtText,
        pvtMessage,
      ];

  static core.Map<PlanVariableEnumType, String> get names =>
      <PlanVariableEnumType, String>{
        pvtBoolean: '''Boolean''',
        pvtNumber: '''Number''',
        pvtText: '''Text''',
        pvtMessage: '''Message''',
      };

  const PlanVariableEnumType(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class PlanVariableEnumAccess extends EnumType {
  static const pvaInput = PlanVariableEnumAccess(0);
  static const pvaOutput = PlanVariableEnumAccess(1);
  static const pvaLocal = PlanVariableEnumAccess(2);

  static List<PlanVariableEnumAccess> get values => <PlanVariableEnumAccess>[
        pvaInput,
        pvaOutput,
        pvaLocal,
      ];

  static core.Map<PlanVariableEnumAccess, String> get names =>
      <PlanVariableEnumAccess, String>{
        pvaInput: '''Input''',
        pvaOutput: '''Output''',
        pvaLocal: '''Local''',
      };

  const PlanVariableEnumAccess(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class PlanGenerationEnumCmd extends EnumType {
  /// Generate the plan and store it in the PlanDB.
  static const cmdGenerate = PlanGenerationEnumCmd(0);

  /// Generate (storing it in the PlanDB) and execute it immediately.
  static const cmdExecute = PlanGenerationEnumCmd(1);

  static List<PlanGenerationEnumCmd> get values => <PlanGenerationEnumCmd>[
        cmdGenerate,
        cmdExecute,
      ];

  static core.Map<PlanGenerationEnumCmd, String> get names =>
      <PlanGenerationEnumCmd, String>{
        cmdGenerate: '''Generate''',
        cmdExecute: '''Execute''',
      };

  const PlanGenerationEnumCmd(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class PlanGenerationEnumOp extends EnumType {
  /// Request the execution of this command.
  static const opRequest = PlanGenerationEnumOp(0);

  /// Some error has occurred while executing the command. The
  /// error can be found in the 'params' tuplelist (under the
  /// key 'error').
  static const opError = PlanGenerationEnumOp(1);

  /// The requested command was executed successfully.
  static const opSuccess = PlanGenerationEnumOp(2);

  static List<PlanGenerationEnumOp> get values => <PlanGenerationEnumOp>[
        opRequest,
        opError,
        opSuccess,
      ];

  static core.Map<PlanGenerationEnumOp, String> get names =>
      <PlanGenerationEnumOp, String>{
        opRequest: '''Request''',
        opError: '''Error''',
        opSuccess: '''Success''',
      };

  const PlanGenerationEnumOp(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Action on the formation leader state variables
class LeaderStateEnumOp extends EnumType {
  static const opRequest = LeaderStateEnumOp(0);
  static const opSet = LeaderStateEnumOp(1);
  static const opReport = LeaderStateEnumOp(2);

  static List<LeaderStateEnumOp> get values => <LeaderStateEnumOp>[
        opRequest,
        opSet,
        opReport,
      ];

  static core.Map<LeaderStateEnumOp, String> get names =>
      <LeaderStateEnumOp, String>{
        opRequest: '''Request''',
        opSet: '''Set''',
        opReport: '''Report''',
      };

  const LeaderStateEnumOp(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Type of plan statistics, if they are launched before, during or after the plan execution.
class PlanStatisticsEnumType extends EnumType {
  static const tpPreplan = PlanStatisticsEnumType(0);
  static const tpInplan = PlanStatisticsEnumType(1);
  static const tpPostplan = PlanStatisticsEnumType(2);

  static List<PlanStatisticsEnumType> get values => <PlanStatisticsEnumType>[
        tpPreplan,
        tpInplan,
        tpPostplan,
      ];

  static core.Map<PlanStatisticsEnumType, String> get names =>
      <PlanStatisticsEnumType, String>{
        tpPreplan: '''Before Plan''',
        tpInplan: '''During Plan''',
        tpPostplan: '''After Plan''',
      };

  const PlanStatisticsEnumType(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class PlanStatisticsBitfieldProperties extends BitfieldType {
  /// Basic plan, meaning it is Linear, Finite and Noncyclic.
  static const prpBasic = PlanStatisticsBitfieldProperties(0x00);

  /// Plan is nonlinear.
  static const prpNonlinear = PlanStatisticsBitfieldProperties(0x01);

  /// Plan is infinite in duration.
  static const prpInfinite = PlanStatisticsBitfieldProperties(0x02);

  /// Plan is cyclical.
  static const prpCyclical = PlanStatisticsBitfieldProperties(0x04);

  /// All properties checked.
  static const prpAll = PlanStatisticsBitfieldProperties(0x07);

  static List<PlanStatisticsBitfieldProperties> get values =>
      <PlanStatisticsBitfieldProperties>[
        prpBasic,
        prpNonlinear,
        prpInfinite,
        prpCyclical,
        prpAll,
      ];

  static core.Map<PlanStatisticsBitfieldProperties, String> get names =>
      <PlanStatisticsBitfieldProperties, String>{
        prpBasic: '''Basic Plan''',
        prpNonlinear: '''Nonlinear''',
        prpInfinite: '''Infinite''',
        prpCyclical: '''Cyclical''',
        prpAll: '''All''',
      };

  const PlanStatisticsBitfieldProperties(super.value);

  @override
  String toPrettyString() {
    String? ret;
    if (value == 0) return '';

    var valNot = value;
    for (var item in values) {
      if (hasBits(<PlanStatisticsBitfieldProperties>[item])) {
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

  static PlanStatisticsBitfieldProperties empty() =>
      PlanStatisticsBitfieldProperties(0);

  static PlanStatisticsBitfieldProperties fromBits(
          List<PlanStatisticsBitfieldProperties> bits) =>
      (bits.length < 2)
          ? PlanStatisticsBitfieldProperties(bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce((b1, b2) =>
              PlanStatisticsBitfieldProperties(b1.value | b2.value));
}

/// How the position was received/calculated
class ReportedStateEnumSType extends EnumType {
  static const stypeWiFi = ReportedStateEnumSType(0);
  static const stypeTracker = ReportedStateEnumSType(1);
  static const stypeSms = ReportedStateEnumSType(2);
  static const stypeAcousticModem = ReportedStateEnumSType(3);
  static const stypeUnknown = ReportedStateEnumSType(254);

  static List<ReportedStateEnumSType> get values => <ReportedStateEnumSType>[
        stypeWiFi,
        stypeTracker,
        stypeSms,
        stypeAcousticModem,
        stypeUnknown,
      ];

  static core.Map<ReportedStateEnumSType, String> get names =>
      <ReportedStateEnumSType, String>{
        stypeWiFi: '''Wi-Fi''',
        stypeTracker: '''Tracker''',
        stypeSms: '''SMS''',
        stypeAcousticModem: '''Acoustic Modem''',
        stypeUnknown: '''Unknown source''',
      };

  const ReportedStateEnumSType(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// The type of feature
class MapFeatureEnumFeatureType extends EnumType {
  /// These features should appear as a point with a label in the map
  static const ftypePoi = MapFeatureEnumFeatureType(0);

  /// These features should be represented as a filled polygon (no label)
  static const ftypeFilledpoly = MapFeatureEnumFeatureType(1);

  /// These features should be represented as a countoured closed polygon (no fill and no label)
  static const ftypeContouredpoly = MapFeatureEnumFeatureType(2);

  /// These features should be represented as an open polygon (no label)
  static const ftypeLine = MapFeatureEnumFeatureType(3);

  /// A transponder location in the map
  static const ftypeTransponder = MapFeatureEnumFeatureType(4);

  /// Intended vehicle's starting location
  static const ftypeStartloc = MapFeatureEnumFeatureType(5);

  /// The offsets reference for this map
  static const ftypeHomeref = MapFeatureEnumFeatureType(6);

  static List<MapFeatureEnumFeatureType> get values =>
      <MapFeatureEnumFeatureType>[
        ftypePoi,
        ftypeFilledpoly,
        ftypeContouredpoly,
        ftypeLine,
        ftypeTransponder,
        ftypeStartloc,
        ftypeHomeref,
      ];

  static core.Map<MapFeatureEnumFeatureType, String> get names =>
      <MapFeatureEnumFeatureType, String>{
        ftypePoi: '''Point of Interest''',
        ftypeFilledpoly: '''Filled Polygon''',
        ftypeContouredpoly: '''Countoured Polygon''',
        ftypeLine: '''Line''',
        ftypeTransponder: '''Transponder''',
        ftypeStartloc: '''Start Location''',
        ftypeHomeref: '''Home Reference''',
      };

  const MapFeatureEnumFeatureType(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class CcuEventEnumType extends EnumType {
  static const evtLogEntry = CcuEventEnumType(1);
  static const evtPlanAdded = CcuEventEnumType(2);
  static const evtPlanRemoved = CcuEventEnumType(3);
  static const evtPlanChanged = CcuEventEnumType(4);
  static const evtMapFeatureAdded = CcuEventEnumType(5);
  static const evtMapFeatureRemoved = CcuEventEnumType(6);
  static const evtMapFeatureChanged = CcuEventEnumType(7);
  static const evtTeleoperationStarted = CcuEventEnumType(8);
  static const evtTeleoperationEnded = CcuEventEnumType(9);

  static List<CcuEventEnumType> get values => <CcuEventEnumType>[
        evtLogEntry,
        evtPlanAdded,
        evtPlanRemoved,
        evtPlanChanged,
        evtMapFeatureAdded,
        evtMapFeatureRemoved,
        evtMapFeatureChanged,
        evtTeleoperationStarted,
        evtTeleoperationEnded,
      ];

  static core.Map<CcuEventEnumType, String> get names =>
      <CcuEventEnumType, String>{
        evtLogEntry: '''Log Book Entry Added''',
        evtPlanAdded: '''Plan Added''',
        evtPlanRemoved: '''Plan Removed''',
        evtPlanChanged: '''Plan Changed''',
        evtMapFeatureAdded: '''Map feature added''',
        evtMapFeatureRemoved: '''Map feature removed''',
        evtMapFeatureChanged: '''Map feature changed''',
        evtTeleoperationStarted:
            '''The sender is now teleoperating the vehicle''',
        evtTeleoperationEnded:
            '''The sender stopped teleoperating the vehicle''',
      };

  const CcuEventEnumType(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class TrexCommandEnumCommand extends EnumType {
  static const opDisable = TrexCommandEnumCommand(0);
  static const opEnable = TrexCommandEnumCommand(1);
  static const opPostGoal = TrexCommandEnumCommand(2);
  static const opRecallGoal = TrexCommandEnumCommand(3);
  static const opRequestPlan = TrexCommandEnumCommand(4);
  static const opReportPlan = TrexCommandEnumCommand(5);

  static List<TrexCommandEnumCommand> get values => <TrexCommandEnumCommand>[
        opDisable,
        opEnable,
        opPostGoal,
        opRecallGoal,
        opRequestPlan,
        opReportPlan,
      ];

  static core.Map<TrexCommandEnumCommand, String> get names =>
      <TrexCommandEnumCommand, String>{
        opDisable: '''Disable TREX''',
        opEnable: '''Enable TREX''',
        opPostGoal: '''Post Goal''',
        opRecallGoal: '''Recall Goal''',
        opRequestPlan: '''Request current plan''',
        opReportPlan: '''Report current plan''',
      };

  const TrexCommandEnumCommand(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class TrexOperationEnumOp extends EnumType {
  static const opPostToken = TrexOperationEnumOp(1);
  static const opPostGoal = TrexOperationEnumOp(2);
  static const opRecallGoal = TrexOperationEnumOp(3);
  static const opRequestPlan = TrexOperationEnumOp(4);
  static const opReportPlan = TrexOperationEnumOp(5);

  static List<TrexOperationEnumOp> get values => <TrexOperationEnumOp>[
        opPostToken,
        opPostGoal,
        opRecallGoal,
        opRequestPlan,
        opReportPlan,
      ];

  static core.Map<TrexOperationEnumOp, String> get names =>
      <TrexOperationEnumOp, String>{
        opPostToken: '''Post Token''',
        opPostGoal: '''Post Goal''',
        opRecallGoal: '''Recall Goal''',
        opRequestPlan: '''Request current plan''',
        opReportPlan: '''Report current plan''',
      };

  const TrexOperationEnumOp(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class TrexAttributeEnumAttrType extends EnumType {
  static const typeBool = TrexAttributeEnumAttrType(1);
  static const typeInt = TrexAttributeEnumAttrType(2);
  static const typeFloat = TrexAttributeEnumAttrType(3);
  static const typeString = TrexAttributeEnumAttrType(4);
  static const typeEnum = TrexAttributeEnumAttrType(5);

  static List<TrexAttributeEnumAttrType> get values =>
      <TrexAttributeEnumAttrType>[
        typeBool,
        typeInt,
        typeFloat,
        typeString,
        typeEnum,
      ];

  static core.Map<TrexAttributeEnumAttrType, String> get names =>
      <TrexAttributeEnumAttrType, String>{
        typeBool: '''Boolean Domain''',
        typeInt: '''Integer Domain''',
        typeFloat: '''Float Domain''',
        typeString: '''String Domain''',
        typeEnum: '''Enumerated Domain''',
      };

  const TrexAttributeEnumAttrType(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class SessionStatusEnumStatus extends EnumType {
  static const statusEstablished = SessionStatusEnumStatus(1);
  static const statusClosed = SessionStatusEnumStatus(2);

  static List<SessionStatusEnumStatus> get values => <SessionStatusEnumStatus>[
        statusEstablished,
        statusClosed,
      ];

  static core.Map<SessionStatusEnumStatus, String> get names =>
      <SessionStatusEnumStatus, String>{
        statusEstablished: '''Established''',
        statusClosed: '''Closed''',
      };

  const SessionStatusEnumStatus(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Event type.
class IoEventEnumType extends EnumType {
  static const iovTypeInput = IoEventEnumType(1);
  static const iovTypeInputError = IoEventEnumType(2);

  static List<IoEventEnumType> get values => <IoEventEnumType>[
        iovTypeInput,
        iovTypeInputError,
      ];

  static core.Map<IoEventEnumType, String> get names =>
      <IoEventEnumType, String>{
        iovTypeInput: '''Input Available''',
        iovTypeInputError: '''Input Error''',
      };

  const IoEventEnumType(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Transmission flags.
class UamTxFrameBitfieldFlags extends BitfieldType {
  /// On modems that support it, this flag shall be used to request an
  /// acknowledgment of reception from the receiving node.
  static const utfAck = UamTxFrameBitfieldFlags(0x01);

  /// On modems that support it, this flag shall be used to delay the
  /// frame transmission until the modem needs to transmit control
  /// data (e.g., acknowledgment of reception, etc).
  static const utfDelayed = UamTxFrameBitfieldFlags(0x02);

  /// Ignore safety checks such as "transducer not connected".
  static const utfForced = UamTxFrameBitfieldFlags(0x04);

  static List<UamTxFrameBitfieldFlags> get values => <UamTxFrameBitfieldFlags>[
        utfAck,
        utfDelayed,
        utfForced,
      ];

  static core.Map<UamTxFrameBitfieldFlags, String> get names =>
      <UamTxFrameBitfieldFlags, String>{
        utfAck: '''Acknowledgement''',
        utfDelayed: '''Delayed''',
        utfForced: '''Forced''',
      };

  const UamTxFrameBitfieldFlags(super.value);

  @override
  String toPrettyString() {
    String? ret;
    if (value == 0) return '';

    var valNot = value;
    for (var item in values) {
      if (hasBits(<UamTxFrameBitfieldFlags>[item])) {
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

  static UamTxFrameBitfieldFlags empty() => UamTxFrameBitfieldFlags(0);

  static UamTxFrameBitfieldFlags fromBits(List<UamTxFrameBitfieldFlags> bits) =>
      (bits.length < 2)
          ? UamTxFrameBitfieldFlags(bits.isEmpty ? 0 : bits[0].value)
          : bits
              .reduce((b1, b2) => UamTxFrameBitfieldFlags(b1.value | b2.value));
}

/// Reception flags.
class UamRxFrameBitfieldFlags extends BitfieldType {
  /// The data frame was transmitted to an acoustic modem other than
  /// the one the acoustic modem driver is controlling.
  static const urfPromiscuous = UamRxFrameBitfieldFlags(0x01);

  /// The data frame was transmitted using the DELAYED flag.
  static const urfDelayed = UamRxFrameBitfieldFlags(0x02);

  static List<UamRxFrameBitfieldFlags> get values => <UamRxFrameBitfieldFlags>[
        urfPromiscuous,
        urfDelayed,
      ];

  static core.Map<UamRxFrameBitfieldFlags, String> get names =>
      <UamRxFrameBitfieldFlags, String>{
        urfPromiscuous: '''Promiscuous''',
        urfDelayed: '''Delayed''',
      };

  const UamRxFrameBitfieldFlags(super.value);

  @override
  String toPrettyString() {
    String? ret;
    if (value == 0) return '';

    var valNot = value;
    for (var item in values) {
      if (hasBits(<UamRxFrameBitfieldFlags>[item])) {
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

  static UamRxFrameBitfieldFlags empty() => UamRxFrameBitfieldFlags(0);

  static UamRxFrameBitfieldFlags fromBits(List<UamRxFrameBitfieldFlags> bits) =>
      (bits.length < 2)
          ? UamRxFrameBitfieldFlags(bits.isEmpty ? 0 : bits[0].value)
          : bits
              .reduce((b1, b2) => UamRxFrameBitfieldFlags(b1.value | b2.value));
}

/// Frame transmission status.
class UamTxStatusEnumValue extends EnumType {
  /// The frame transmission was completed.
  static const utsDone = UamTxStatusEnumValue(0);

  /// The frame transmission failed. The reason for the failure is given in
  /// the field 'error'.
  static const utsFailed = UamTxStatusEnumValue(1);

  /// The frame transmission was canceled.
  static const utsCanceled = UamTxStatusEnumValue(2);

  /// The acoustic modem driver is busy and could not honor the
  /// frame transmission request at the moment.
  static const utsBusy = UamTxStatusEnumValue(3);

  /// The canonical name of the destination node could not be
  /// resolved.
  static const utsInvAddr = UamTxStatusEnumValue(4);

  /// The frame transmission is in progress.
  static const utsIp = UamTxStatusEnumValue(5);

  /// The frame transmission request is not valid for this acoustic
  /// modem driver.
  static const utsUnsupported = UamTxStatusEnumValue(6);

  /// The frame transmission request exceeds the MTU of the acoustic
  /// modem.
  static const utsInvSize = UamTxStatusEnumValue(7);

  /// The message has been sent out.
  static const utsSent = UamTxStatusEnumValue(8);

  /// Message has been acknowledged by the destination.
  static const utsDelivered = UamTxStatusEnumValue(9);

  static List<UamTxStatusEnumValue> get values => <UamTxStatusEnumValue>[
        utsDone,
        utsFailed,
        utsCanceled,
        utsBusy,
        utsInvAddr,
        utsIp,
        utsUnsupported,
        utsInvSize,
        utsSent,
        utsDelivered,
      ];

  static core.Map<UamTxStatusEnumValue, String> get names =>
      <UamTxStatusEnumValue, String>{
        utsDone: '''Transmission Completed''',
        utsFailed: '''Transmission Failed''',
        utsCanceled: '''Transmission Canceled''',
        utsBusy: '''Modem is busy''',
        utsInvAddr: '''Invalid address''',
        utsIp: '''In Progress''',
        utsUnsupported: '''Unsupported operation''',
        utsInvSize: '''Invalid transmission size''',
        utsSent: '''Message has been sent''',
        utsDelivered: '''Message has been acknowledged by the destination''',
      };

  const UamTxStatusEnumValue(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Action on the vehicle formation control parameters.
class FormCtrlParamEnumAction extends EnumType {
  static const opReq = FormCtrlParamEnumAction(0);
  static const opSet = FormCtrlParamEnumAction(1);
  static const opRep = FormCtrlParamEnumAction(2);

  static List<FormCtrlParamEnumAction> get values => <FormCtrlParamEnumAction>[
        opReq,
        opSet,
        opRep,
      ];

  static core.Map<FormCtrlParamEnumAction, String> get names =>
      <FormCtrlParamEnumAction, String>{
        opReq: '''Request''',
        opSet: '''Set''',
        opRep: '''Report''',
      };

  const FormCtrlParamEnumAction(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Action on the vehicle formation control parameters.
class FormationControlParamsEnumAction extends EnumType {
  static const opReq = FormationControlParamsEnumAction(0);
  static const opSet = FormationControlParamsEnumAction(1);
  static const opRep = FormationControlParamsEnumAction(2);

  static List<FormationControlParamsEnumAction> get values =>
      <FormationControlParamsEnumAction>[
        opReq,
        opSet,
        opRep,
      ];

  static core.Map<FormationControlParamsEnumAction, String> get names =>
      <FormationControlParamsEnumAction, String>{
        opReq: '''Request''',
        opSet: '''Set''',
        opRep: '''Report''',
      };

  const FormationControlParamsEnumAction(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Indicates if the message is a request, or a reply to a previous request.
class FormationEvaluationEnumType extends EnumType {
  static const fcRequest = FormationEvaluationEnumType(0);
  static const fcReport = FormationEvaluationEnumType(1);

  static List<FormationEvaluationEnumType> get values =>
      <FormationEvaluationEnumType>[
        fcRequest,
        fcReport,
      ];

  static core.Map<FormationEvaluationEnumType, String> get names =>
      <FormationEvaluationEnumType, String>{
        fcRequest: '''Request''',
        fcReport: '''Report''',
      };

  const FormationEvaluationEnumType(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Operation to perform.
class FormationEvaluationEnumOp extends EnumType {
  /// Start the formation maneuver.
  static const opStart = FormationEvaluationEnumOp(0);

  /// Stop the formation maneuver.
  static const opStop = FormationEvaluationEnumOp(1);

  /// Stop the formation maneuver.
  static const opReady = FormationEvaluationEnumOp(2);

  /// Stop the formation maneuver.
  static const opExecuting = FormationEvaluationEnumOp(3);

  /// Stop the formation maneuver.
  static const opFailure = FormationEvaluationEnumOp(4);

  static List<FormationEvaluationEnumOp> get values =>
      <FormationEvaluationEnumOp>[
        opStart,
        opStop,
        opReady,
        opExecuting,
        opFailure,
      ];

  static core.Map<FormationEvaluationEnumOp, String> get names =>
      <FormationEvaluationEnumOp, String>{
        opStart: '''Start''',
        opStop: '''Stop''',
        opReady: '''Ready''',
        opExecuting: '''Executing''',
        opFailure: '''Failure''',
      };

  const FormationEvaluationEnumOp(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class SoiCommandEnumType extends EnumType {
  static const soitypeRequest = SoiCommandEnumType(1);
  static const soitypeSuccess = SoiCommandEnumType(2);
  static const soitypeError = SoiCommandEnumType(3);

  static List<SoiCommandEnumType> get values => <SoiCommandEnumType>[
        soitypeRequest,
        soitypeSuccess,
        soitypeError,
      ];

  static core.Map<SoiCommandEnumType, String> get names =>
      <SoiCommandEnumType, String>{
        soitypeRequest: '''Request''',
        soitypeSuccess: '''Success''',
        soitypeError: '''Error''',
      };

  const SoiCommandEnumType(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class SoiCommandEnumCommand extends EnumType {
  static const soicmdExec = SoiCommandEnumCommand(1);
  static const soicmdStop = SoiCommandEnumCommand(2);
  static const soicmdSetParams = SoiCommandEnumCommand(3);
  static const soicmdGetParams = SoiCommandEnumCommand(4);
  static const soicmdGetPlan = SoiCommandEnumCommand(5);
  static const soicmdResume = SoiCommandEnumCommand(6);

  static List<SoiCommandEnumCommand> get values => <SoiCommandEnumCommand>[
        soicmdExec,
        soicmdStop,
        soicmdSetParams,
        soicmdGetParams,
        soicmdGetPlan,
        soicmdResume,
      ];

  static core.Map<SoiCommandEnumCommand, String> get names =>
      <SoiCommandEnumCommand, String>{
        soicmdExec: '''Execute Plan''',
        soicmdStop: '''Stop Execution''',
        soicmdSetParams: '''Set Parameters''',
        soicmdGetParams: '''Get Parameters''',
        soicmdGetPlan: '''Get Plan''',
        soicmdResume: '''Resume Execution''',
      };

  const SoiCommandEnumCommand(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class SoiStateEnumState extends EnumType {
  static const soistateExec = SoiStateEnumState(1);
  static const soistateIdle = SoiStateEnumState(2);
  static const soistateInactive = SoiStateEnumState(3);

  static List<SoiStateEnumState> get values => <SoiStateEnumState>[
        soistateExec,
        soistateIdle,
        soistateInactive,
      ];

  static core.Map<SoiStateEnumState, String> get names =>
      <SoiStateEnumState, String>{
        soistateExec: '''Executing''',
        soistateIdle: '''Idle''',
        soistateInactive: '''Inactive''',
      };

  const SoiStateEnumState(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Used to define the type of the operation this message holds.
class UsblConfigEnumOp extends EnumType {
  /// Set the beacons configuration aboard the vehicle.
  static const opSetCfg = UsblConfigEnumOp(0);

  /// Request the vehicle to send its current beacons configuration.
  static const opGetCfg = UsblConfigEnumOp(1);
  static const opCurCfg = UsblConfigEnumOp(2);

  static List<UsblConfigEnumOp> get values => <UsblConfigEnumOp>[
        opSetCfg,
        opGetCfg,
        opCurCfg,
      ];

  static core.Map<UsblConfigEnumOp, String> get names =>
      <UsblConfigEnumOp, String>{
        opSetCfg: '''Set LBL Configuration''',
        opGetCfg: '''Retrieve LBL Configuration''',
        opCurCfg: '''Reply to a GET command''',
      };

  const UsblConfigEnumOp(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Type of measurement.
class DissolvedOrganicMatterEnumType extends EnumType {
  static const dtColored = DissolvedOrganicMatterEnumType(0);
  static const dtFluorescent = DissolvedOrganicMatterEnumType(1);

  static List<DissolvedOrganicMatterEnumType> get values =>
      <DissolvedOrganicMatterEnumType>[
        dtColored,
        dtFluorescent,
      ];

  static core.Map<DissolvedOrganicMatterEnumType, String> get names =>
      <DissolvedOrganicMatterEnumType, String>{
        dtColored: '''Colored''',
        dtFluorescent: '''Fluorescent''',
      };

  const DissolvedOrganicMatterEnumType(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Severity of status.
class ApmStatusEnumSeverity extends EnumType {
  static const apmEmergency = ApmStatusEnumSeverity(0);
  static const apmAlert = ApmStatusEnumSeverity(1);
  static const apmCritical = ApmStatusEnumSeverity(2);
  static const apmError = ApmStatusEnumSeverity(3);
  static const apmWarning = ApmStatusEnumSeverity(4);
  static const apmNotice = ApmStatusEnumSeverity(5);
  static const apmInfo = ApmStatusEnumSeverity(6);
  static const apmDebug = ApmStatusEnumSeverity(7);

  static List<ApmStatusEnumSeverity> get values => <ApmStatusEnumSeverity>[
        apmEmergency,
        apmAlert,
        apmCritical,
        apmError,
        apmWarning,
        apmNotice,
        apmInfo,
        apmDebug,
      ];

  static core.Map<ApmStatusEnumSeverity, String> get names =>
      <ApmStatusEnumSeverity, String>{
        apmEmergency: '''Emergency''',
        apmAlert: '''Alert''',
        apmCritical: '''Critical''',
        apmError: '''Error''',
        apmWarning: '''Warning''',
        apmNotice: '''Notice''',
        apmInfo: '''Info''',
        apmDebug: '''Debug''',
      };

  const ApmStatusEnumSeverity(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Gain value of readings.
class SadcReadingsEnumGain extends EnumType {
  static const gainX1 = SadcReadingsEnumGain(0);
  static const gainX10 = SadcReadingsEnumGain(1);
  static const gainX100 = SadcReadingsEnumGain(2);

  static List<SadcReadingsEnumGain> get values => <SadcReadingsEnumGain>[
        gainX1,
        gainX10,
        gainX100,
      ];

  static core.Map<SadcReadingsEnumGain, String> get names =>
      <SadcReadingsEnumGain, String>{
        gainX1: '''x1''',
        gainX10: '''x10''',
        gainX100: '''x100''',
      };

  const SadcReadingsEnumGain(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Action on the vehicle home
class HomePositionEnumOp extends EnumType {
  static const opSet = HomePositionEnumOp(1);
  static const opReport = HomePositionEnumOp(2);

  static List<HomePositionEnumOp> get values => <HomePositionEnumOp>[
        opSet,
        opReport,
      ];

  static core.Map<HomePositionEnumOp, String> get names =>
      <HomePositionEnumOp, String>{
        opSet: '''Set''',
        opReport: '''Report''',
      };

  const HomePositionEnumOp(super.value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Coordinate system of the velocity measurement.
class CurrentProfileBitfieldCoordSys extends BitfieldType {
  static const utfXyz = CurrentProfileBitfieldCoordSys(0x01);
  static const utfNed = CurrentProfileBitfieldCoordSys(0x02);
  static const utfBeams = CurrentProfileBitfieldCoordSys(0x04);

  static List<CurrentProfileBitfieldCoordSys> get values =>
      <CurrentProfileBitfieldCoordSys>[
        utfXyz,
        utfNed,
        utfBeams,
      ];

  static core.Map<CurrentProfileBitfieldCoordSys, String> get names =>
      <CurrentProfileBitfieldCoordSys, String>{
        utfXyz: '''xyz''',
        utfNed: '''ned''',
        utfBeams: '''beams''',
      };

  const CurrentProfileBitfieldCoordSys(super.value);

  @override
  String toPrettyString() {
    String? ret;
    if (value == 0) return '';

    var valNot = value;
    for (var item in values) {
      if (hasBits(<CurrentProfileBitfieldCoordSys>[item])) {
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

  static CurrentProfileBitfieldCoordSys empty() =>
      CurrentProfileBitfieldCoordSys(0);

  static CurrentProfileBitfieldCoordSys fromBits(
          List<CurrentProfileBitfieldCoordSys> bits) =>
      (bits.length < 2)
          ? CurrentProfileBitfieldCoordSys(bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce(
              (b1, b2) => CurrentProfileBitfieldCoordSys(b1.value | b2.value));
}

/// The restricted communication means.
class CommRestrictionBitfieldRestriction extends BitfieldType {
  static const meanSatellite = CommRestrictionBitfieldRestriction(0x01);
  static const meanAcoustic = CommRestrictionBitfieldRestriction(0x02);
  static const meanWifi = CommRestrictionBitfieldRestriction(0x04);
  static const meanGsm = CommRestrictionBitfieldRestriction(0x08);

  static List<CommRestrictionBitfieldRestriction> get values =>
      <CommRestrictionBitfieldRestriction>[
        meanSatellite,
        meanAcoustic,
        meanWifi,
        meanGsm,
      ];

  static core.Map<CommRestrictionBitfieldRestriction, String> get names =>
      <CommRestrictionBitfieldRestriction, String>{
        meanSatellite: '''Satellite''',
        meanAcoustic: '''Acoustic''',
        meanWifi: '''WiFi''',
        meanGsm: '''GSM''',
      };

  const CommRestrictionBitfieldRestriction(super.value);

  @override
  String toPrettyString() {
    String? ret;
    if (value == 0) return '';

    var valNot = value;
    for (var item in values) {
      if (hasBits(<CommRestrictionBitfieldRestriction>[item])) {
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

  static CommRestrictionBitfieldRestriction empty() =>
      CommRestrictionBitfieldRestriction(0);

  static CommRestrictionBitfieldRestriction fromBits(
          List<CommRestrictionBitfieldRestriction> bits) =>
      (bits.length < 2)
          ? CommRestrictionBitfieldRestriction(bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce((b1, b2) =>
              CommRestrictionBitfieldRestriction(b1.value | b2.value));
}
