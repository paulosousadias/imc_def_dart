// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// IMC Code Generator
// **************************************************************************

part of 'imc_def_gen.dart';

/// State of entity.
class EntityStateEnumState extends EnumType {
  static const esta_boot = EntityStateEnumState(0);
  static const esta_normal = EntityStateEnumState(1);
  static const esta_fault = EntityStateEnumState(2);
  static const esta_error = EntityStateEnumState(3);
  static const esta_failure = EntityStateEnumState(4);

  static List<EntityStateEnumState> get values => <EntityStateEnumState>[
        esta_boot,
        esta_normal,
        esta_fault,
        esta_error,
        esta_failure,
      ];

  static core.Map<EntityStateEnumState, String> get names =>
      <EntityStateEnumState, String>{
        esta_boot: '''Bootstrapping''',
        esta_normal: '''Normal Operation''',
        esta_fault: '''Fault''',
        esta_error: '''Error''',
        esta_failure: '''Failure''',
      };

  const EntityStateEnumState(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Complementary entity state flags.
class EntityStateBitfieldFlags extends BitfieldType {
  static const efla_human_intervention = EntityStateBitfieldFlags(0x01);

  static List<EntityStateBitfieldFlags> get values =>
      <EntityStateBitfieldFlags>[efla_human_intervention];

  static core.Map<EntityStateBitfieldFlags, String> get names =>
      <EntityStateBitfieldFlags, String>{
        efla_human_intervention: '''Human Intervention Required'''
      };

  const EntityStateBitfieldFlags(int value) : super(value);

  @override
  String toPrettyString() {
    var ret;
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

  static EntityStateBitfieldFlags fromBits(
          List<EntityStateBitfieldFlags> bits) =>
      (bits.length < 2)
          ? EntityStateBitfieldFlags(bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce(
              (b1, b2) => EntityStateBitfieldFlags(b1.value | b2.value));
}

/// Operation to perform.
class EntityListEnumOp extends EnumType {
  static const op_report = EntityListEnumOp(0);
  static const op_query = EntityListEnumOp(1);

  static List<EntityListEnumOp> get values => <EntityListEnumOp>[
        op_report,
        op_query,
      ];

  static core.Map<EntityListEnumOp, String> get names =>
      <EntityListEnumOp, String>{
        op_report: '''Report''',
        op_query: '''Query''',
      };

  const EntityListEnumOp(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class RestartSystemEnumType extends EnumType {
  /// Request a DUNE restart
  static const rstype_dune = RestartSystemEnumType(1);

  /// Request a system restart.
  static const rstype_system = RestartSystemEnumType(2);

  static List<RestartSystemEnumType> get values => <RestartSystemEnumType>[
        rstype_dune,
        rstype_system,
      ];

  static core.Map<RestartSystemEnumType, String> get names =>
      <RestartSystemEnumType, String>{
        rstype_dune: '''Dune''',
        rstype_system: '''System''',
      };

  const RestartSystemEnumType(int value) : super(value);

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
  static const dcal_start = DevCalibrationControlEnumOp(0);

  /// Stop calibration procedure.
  static const dcal_stop = DevCalibrationControlEnumOp(1);

  /// Perform next step of the calibration procedure.
  static const dcal_step_next = DevCalibrationControlEnumOp(2);

  /// Perform previous step of the calibration procedure.
  static const dcal_step_previous = DevCalibrationControlEnumOp(3);

  static List<DevCalibrationControlEnumOp> get values =>
      <DevCalibrationControlEnumOp>[
        dcal_start,
        dcal_stop,
        dcal_step_next,
        dcal_step_previous,
      ];

  static core.Map<DevCalibrationControlEnumOp, String> get names =>
      <DevCalibrationControlEnumOp, String>{
        dcal_start: '''Start''',
        dcal_stop: '''Stop''',
        dcal_step_next: '''Perform Next Calibration Step''',
        dcal_step_previous: '''Perform Previous Calibration Step''',
      };

  const DevCalibrationControlEnumOp(int value) : super(value);

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
  static const dcs_previous_not_supported =
      DevCalibrationStateBitfieldFlags(0x01);

  /// Jumping to the next calibration step is not supported.
  static const dcs_next_not_supported = DevCalibrationStateBitfieldFlags(0x02);

  /// The calibration procedure was suspended and must be resumed or
  /// cancelled with a DeviceCalibrationControl message.
  static const dcs_waiting_control = DevCalibrationStateBitfieldFlags(0x04);

  /// Calibration was interrupted due to an error and must be
  /// restarted or cancelled with a DeviceCalibrationControl
  /// message.
  static const dcs_error = DevCalibrationStateBitfieldFlags(0x08);

  /// The calibration procedure was completed.
  static const dcs_completed = DevCalibrationStateBitfieldFlags(0x10);

  static List<DevCalibrationStateBitfieldFlags> get values =>
      <DevCalibrationStateBitfieldFlags>[
        dcs_previous_not_supported,
        dcs_next_not_supported,
        dcs_waiting_control,
        dcs_error,
        dcs_completed,
      ];

  static core.Map<DevCalibrationStateBitfieldFlags, String> get names =>
      <DevCalibrationStateBitfieldFlags, String>{
        dcs_previous_not_supported: '''Previous Step Not Supported''',
        dcs_next_not_supported: '''Next Step Not Supported''',
        dcs_waiting_control: '''Waiting Device Calibration Control''',
        dcs_error: '''Calibration Error''',
        dcs_completed: '''Calibration Procedure Completed''',
      };

  const DevCalibrationStateBitfieldFlags(int value) : super(value);

  @override
  String toPrettyString() {
    var ret;
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
  static const eas_inactive = EntityActivationStateEnumState(0);

  /// Entity is active.
  static const eas_active = EntityActivationStateEnumState(1);

  /// Activation is in progress.
  static const eas_act_ip = EntityActivationStateEnumState(2);

  /// Activation is completed.
  static const eas_act_done = EntityActivationStateEnumState(3);

  /// The activation procedure failed and the field 'error' contains the error message.
  static const eas_act_fail = EntityActivationStateEnumState(4);

  /// Deactivation is in progress.
  static const eas_deact_ip = EntityActivationStateEnumState(5);

  /// Deactivation is in progress.
  static const eas_deact_done = EntityActivationStateEnumState(6);

  /// The deactivation procedure failed and the field 'error' contains the error message.
  static const eas_deact_fail = EntityActivationStateEnumState(7);

  static List<EntityActivationStateEnumState> get values =>
      <EntityActivationStateEnumState>[
        eas_inactive,
        eas_active,
        eas_act_ip,
        eas_act_done,
        eas_act_fail,
        eas_deact_ip,
        eas_deact_done,
        eas_deact_fail,
      ];

  static core.Map<EntityActivationStateEnumState, String> get names =>
      <EntityActivationStateEnumState, String>{
        eas_inactive: '''Entity is Inactive''',
        eas_active: '''Entity is Active''',
        eas_act_ip: '''Activation in Progress''',
        eas_act_done: '''Activation Completed''',
        eas_act_fail: '''Activation Failed''',
        eas_deact_ip: '''Deactivation In Progress''',
        eas_deact_done: '''Deactivation Completed''',
        eas_deact_fail: '''Deactivation Failed''',
      };

  const EntityActivationStateEnumState(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Action on the vehicle operation limits
class VehicleOperationalLimitsEnumOp extends EnumType {
  static const op_request = VehicleOperationalLimitsEnumOp(0);
  static const op_set = VehicleOperationalLimitsEnumOp(1);
  static const op_report = VehicleOperationalLimitsEnumOp(2);

  static List<VehicleOperationalLimitsEnumOp> get values =>
      <VehicleOperationalLimitsEnumOp>[
        op_request,
        op_set,
        op_report,
      ];

  static core.Map<VehicleOperationalLimitsEnumOp, String> get names =>
      <VehicleOperationalLimitsEnumOp, String>{
        op_request: '''Request''',
        op_set: '''Set''',
        op_report: '''Report''',
      };

  const VehicleOperationalLimitsEnumOp(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Indicates whether leaks have been detected or not.
class LeakSimulationEnumOp extends EnumType {
  static const lsim_off = LeakSimulationEnumOp(0);
  static const lsim_on = LeakSimulationEnumOp(1);

  static List<LeakSimulationEnumOp> get values => <LeakSimulationEnumOp>[
        lsim_off,
        lsim_on,
      ];

  static core.Map<LeakSimulationEnumOp, String> get names =>
      <LeakSimulationEnumOp, String>{
        lsim_off: '''Leaks Off''',
        lsim_on: '''Leaks On''',
      };

  const LeakSimulationEnumOp(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Type of request.
class UASimulationEnumType extends EnumType {
  static const uas_data = UASimulationEnumType(0);
  static const uas_ping = UASimulationEnumType(1);
  static const uas_ping_reply = UASimulationEnumType(2);

  static List<UASimulationEnumType> get values => <UASimulationEnumType>[
        uas_data,
        uas_ping,
        uas_ping_reply,
      ];

  static core.Map<UASimulationEnumType, String> get names =>
      <UASimulationEnumType, String>{
        uas_data: '''Data Transmission''',
        uas_ping: '''Ping''',
        uas_ping_reply: '''Ping Reply''',
      };

  const UASimulationEnumType(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Action on the vehicle simulation parameters for the formation control
class DynamicsSimParamEnumOp extends EnumType {
  static const op_request = DynamicsSimParamEnumOp(0);
  static const op_set = DynamicsSimParamEnumOp(1);
  static const op_report = DynamicsSimParamEnumOp(2);

  static List<DynamicsSimParamEnumOp> get values => <DynamicsSimParamEnumOp>[
        op_request,
        op_set,
        op_report,
      ];

  static core.Map<DynamicsSimParamEnumOp, String> get names =>
      <DynamicsSimParamEnumOp, String>{
        op_request: '''Request''',
        op_set: '''Set''',
        op_report: '''Report''',
      };

  const DynamicsSimParamEnumOp(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Operation to perform.
class CacheControlEnumOp extends EnumType {
  static const cop_store = CacheControlEnumOp(0);
  static const cop_load = CacheControlEnumOp(1);
  static const cop_clear = CacheControlEnumOp(2);
  static const cop_copy = CacheControlEnumOp(3);
  static const cop_copy_complete = CacheControlEnumOp(4);

  static List<CacheControlEnumOp> get values => <CacheControlEnumOp>[
        cop_store,
        cop_load,
        cop_clear,
        cop_copy,
        cop_copy_complete,
      ];

  static core.Map<CacheControlEnumOp, String> get names =>
      <CacheControlEnumOp, String>{
        cop_store: '''Store''',
        cop_load: '''Load''',
        cop_clear: '''Clear''',
        cop_copy: '''Copy Snapshot''',
        cop_copy_complete: '''Snapshot Copy Complete''',
      };

  const CacheControlEnumOp(int value) : super(value);

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
  static const cop_request_start = LoggingControlEnumOp(0);

  /// The logging manager will send a message with this operation
  /// everytime a log is successfully started. The field 'name'
  /// contains the complete name of the log.
  static const cop_started = LoggingControlEnumOp(1);

  /// Request the logging manager to stop logging messages. The
  /// logging manager will reply with a STOPPED operation and
  /// logging will be suspended until a message with operation
  /// START is received. If logging is already stoppped the
  /// logging manager will ignore this operation and will not
  /// reply with a STOPPED operation. The field 'name' with this
  /// operation type has no meaning.
  static const cop_request_stop = LoggingControlEnumOp(2);

  /// The logging manager will send a message with this operation
  /// when logging is successfully stopped. The field 'name'
  /// contains the complete name of the log that was closed.
  static const cop_stopped = LoggingControlEnumOp(3);

  /// This operation instructs the logging manager to send a
  /// message with operation CURRENT_NAME containing the complete
  /// name of the current log in the field 'name'. The field
  /// 'name' with this operation type has no meaning.
  static const cop_request_current_name = LoggingControlEnumOp(4);

  /// The logging manager will send a message with this operation
  /// when asked via the REQUEST_CURRENT_NAME operation. The field
  /// 'name' contains the complete name of the log.
  static const cop_current_name = LoggingControlEnumOp(5);

  static List<LoggingControlEnumOp> get values => <LoggingControlEnumOp>[
        cop_request_start,
        cop_started,
        cop_request_stop,
        cop_stopped,
        cop_request_current_name,
        cop_current_name,
      ];

  static core.Map<LoggingControlEnumOp, String> get names =>
      <LoggingControlEnumOp, String>{
        cop_request_start: '''Request Start of Logging''',
        cop_started: '''Logging Started''',
        cop_request_stop: '''Request Logging Stop''',
        cop_stopped: '''Logging Stopped''',
        cop_request_current_name: '''Request Current Log Name''',
        cop_current_name: '''Current Log Name''',
      };

  const LoggingControlEnumOp(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Type of message.
class LogBookEntryEnumType extends EnumType {
  static const lbet_info = LogBookEntryEnumType(0);
  static const lbet_warning = LogBookEntryEnumType(1);
  static const lbet_error = LogBookEntryEnumType(2);
  static const lbet_critical = LogBookEntryEnumType(3);
  static const lbet_debug = LogBookEntryEnumType(4);

  static List<LogBookEntryEnumType> get values => <LogBookEntryEnumType>[
        lbet_info,
        lbet_warning,
        lbet_error,
        lbet_critical,
        lbet_debug,
      ];

  static core.Map<LogBookEntryEnumType, String> get names =>
      <LogBookEntryEnumType, String>{
        lbet_info: '''Information''',
        lbet_warning: '''Warning''',
        lbet_error: '''Error''',
        lbet_critical: '''Critical''',
        lbet_debug: '''Debug''',
      };

  const LogBookEntryEnumType(int value) : super(value);

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
  static const lbc_get = LogBookControlEnumCommand(0);

  /// Clear log book entries.
  static const lbc_clear = LogBookControlEnumCommand(1);

  /// Retrieve log book entries corresponding to errors.
  static const lbc_get_err = LogBookControlEnumCommand(2);

  /// Reply to a GET command. Message argument is a MessageList
  /// instance containing LogBookEntry messages.
  static const lbc_reply = LogBookControlEnumCommand(3);

  static List<LogBookControlEnumCommand> get values =>
      <LogBookControlEnumCommand>[
        lbc_get,
        lbc_clear,
        lbc_get_err,
        lbc_reply,
      ];

  static core.Map<LogBookControlEnumCommand, String> get names =>
      <LogBookControlEnumCommand, String>{
        lbc_get: '''Get''',
        lbc_clear: '''Clear''',
        lbc_get_err: '''Get Errors''',
        lbc_reply: '''Reply''',
      };

  const LogBookControlEnumCommand(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Operation to perform.
class ReplayControlEnumOp extends EnumType {
  static const rop_start = ReplayControlEnumOp(0);
  static const rop_stop = ReplayControlEnumOp(1);
  static const rop_pause = ReplayControlEnumOp(2);
  static const rop_resume = ReplayControlEnumOp(3);

  static List<ReplayControlEnumOp> get values => <ReplayControlEnumOp>[
        rop_start,
        rop_stop,
        rop_pause,
        rop_resume,
      ];

  static core.Map<ReplayControlEnumOp, String> get names =>
      <ReplayControlEnumOp, String>{
        rop_start: '''Start''',
        rop_stop: '''Stop''',
        rop_pause: '''Pause''',
        rop_resume: '''Resume''',
      };

  const ReplayControlEnumOp(int value) : super(value);

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
  static const cop_sync_exec = ClockControlEnumOp(0);

  /// Request autonomous clock synchronization.
  static const cop_sync_request = ClockControlEnumOp(1);

  /// Synchronization start notification.
  static const cop_sync_started = ClockControlEnumOp(2);

  /// Synchronization completion notification.
  static const cop_sync_done = ClockControlEnumOp(3);

  /// Set timezone.
  static const cop_set_tz = ClockControlEnumOp(4);

  /// Notification due to timezone modification.
  static const cop_set_tz_done = ClockControlEnumOp(5);

  static List<ClockControlEnumOp> get values => <ClockControlEnumOp>[
        cop_sync_exec,
        cop_sync_request,
        cop_sync_started,
        cop_sync_done,
        cop_set_tz,
        cop_set_tz_done,
      ];

  static core.Map<ClockControlEnumOp, String> get names =>
      <ClockControlEnumOp, String>{
        cop_sync_exec: '''Execute Sync.''',
        cop_sync_request: '''Request Sync.''',
        cop_sync_started: '''Sync. Started''',
        cop_sync_done: '''Sync. done''',
        cop_set_tz: '''Set Timezone ''',
        cop_set_tz_done: '''Timezone Setup''',
      };

  const ClockControlEnumOp(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class HistoricSonarDataEnumEncoding extends EnumType {
  static const enc_one_byte_per_pixel = HistoricSonarDataEnumEncoding(0);
  static const enc_png = HistoricSonarDataEnumEncoding(1);
  static const enc_jpeg = HistoricSonarDataEnumEncoding(2);

  static List<HistoricSonarDataEnumEncoding> get values =>
      <HistoricSonarDataEnumEncoding>[
        enc_one_byte_per_pixel,
        enc_png,
        enc_jpeg,
      ];

  static core.Map<HistoricSonarDataEnumEncoding, String> get names =>
      <HistoricSonarDataEnumEncoding, String>{
        enc_one_byte_per_pixel: '''One Byte Per Pixel''',
        enc_png: '''PNG compressed image''',
        enc_jpeg: '''JPEG compressed image''',
      };

  const HistoricSonarDataEnumEncoding(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Type of event.
class HistoricEventEnumType extends EnumType {
  static const evtype_info = HistoricEventEnumType(0);
  static const evtype_error = HistoricEventEnumType(1);

  static List<HistoricEventEnumType> get values => <HistoricEventEnumType>[
        evtype_info,
        evtype_error,
      ];

  static core.Map<HistoricEventEnumType, String> get names =>
      <HistoricEventEnumType, String>{
        evtype_info: '''Information''',
        evtype_error: '''Error''',
      };

  const HistoricEventEnumType(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Water parameter used to calculate the vertical profile.
class VerticalProfileEnumParameter extends EnumType {
  static const prof_temperature = VerticalProfileEnumParameter(0);
  static const prof_salinity = VerticalProfileEnumParameter(1);
  static const prof_conductivity = VerticalProfileEnumParameter(2);
  static const prof_ph = VerticalProfileEnumParameter(3);
  static const prof_redox = VerticalProfileEnumParameter(4);
  static const prof_chlorophyll = VerticalProfileEnumParameter(5);
  static const prof_turbidity = VerticalProfileEnumParameter(6);

  static List<VerticalProfileEnumParameter> get values =>
      <VerticalProfileEnumParameter>[
        prof_temperature,
        prof_salinity,
        prof_conductivity,
        prof_ph,
        prof_redox,
        prof_chlorophyll,
        prof_turbidity,
      ];

  static core.Map<VerticalProfileEnumParameter, String> get names =>
      <VerticalProfileEnumParameter, String>{
        prof_temperature: '''Temperature''',
        prof_salinity: '''Salinity''',
        prof_conductivity: '''Conductivity''',
        prof_ph: '''pH''',
        prof_redox: '''Redox''',
        prof_chlorophyll: '''Chlorophyll''',
        prof_turbidity: '''Turbidity''',
      };

  const VerticalProfileEnumParameter(int value) : super(value);

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
  static const srv_type_external = AnnounceServiceBitfieldServiceType(0x01);
  static const srv_type_local = AnnounceServiceBitfieldServiceType(0x02);

  static List<AnnounceServiceBitfieldServiceType> get values =>
      <AnnounceServiceBitfieldServiceType>[
        srv_type_external,
        srv_type_local,
      ];

  static core.Map<AnnounceServiceBitfieldServiceType, String> get names =>
      <AnnounceServiceBitfieldServiceType, String>{
        srv_type_external: '''External''',
        srv_type_local: '''Local''',
      };

  const AnnounceServiceBitfieldServiceType(int value) : super(value);

  @override
  String toPrettyString() {
    var ret;
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

  static AnnounceServiceBitfieldServiceType fromBits(
          List<AnnounceServiceBitfieldServiceType> bits) =>
      (bits.length < 2)
          ? AnnounceServiceBitfieldServiceType(bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce((b1, b2) =>
              AnnounceServiceBitfieldServiceType(b1.value | b2.value));
}

/// Current state of an SMS transaction.
class SmsStateEnumState extends EnumType {
  static const sms_accepted = SmsStateEnumState(0);
  static const sms_rejected = SmsStateEnumState(1);
  static const sms_interrupted = SmsStateEnumState(2);
  static const sms_completed = SmsStateEnumState(3);
  static const sms_idle = SmsStateEnumState(4);
  static const sms_transmitting = SmsStateEnumState(5);
  static const sms_receiving = SmsStateEnumState(6);

  static List<SmsStateEnumState> get values => <SmsStateEnumState>[
        sms_accepted,
        sms_rejected,
        sms_interrupted,
        sms_completed,
        sms_idle,
        sms_transmitting,
        sms_receiving,
      ];

  static core.Map<SmsStateEnumState, String> get names =>
      <SmsStateEnumState, String>{
        sms_accepted: '''Accepted''',
        sms_rejected: '''Rejected''',
        sms_interrupted: '''Interrupted''',
        sms_completed: '''Completed''',
        sms_idle: '''Idle''',
        sms_transmitting: '''Transmitting''',
        sms_receiving: '''Receiving''',
      };

  const SmsStateEnumState(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class IridiumTxStatusEnumStatus extends EnumType {
  static const txstatus_ok = IridiumTxStatusEnumStatus(1);
  static const txstatus_error = IridiumTxStatusEnumStatus(2);
  static const txstatus_queued = IridiumTxStatusEnumStatus(3);
  static const txstatus_transmit = IridiumTxStatusEnumStatus(4);
  static const txstatus_expired = IridiumTxStatusEnumStatus(5);
  static const txstatus_empty = IridiumTxStatusEnumStatus(6);

  static List<IridiumTxStatusEnumStatus> get values =>
      <IridiumTxStatusEnumStatus>[
        txstatus_ok,
        txstatus_error,
        txstatus_queued,
        txstatus_transmit,
        txstatus_expired,
        txstatus_empty,
      ];

  static core.Map<IridiumTxStatusEnumStatus, String> get names =>
      <IridiumTxStatusEnumStatus, String>{
        txstatus_ok: '''Successfull transmission''',
        txstatus_error: '''Error while trying to transmit message''',
        txstatus_queued: '''Message has been queued for transmission''',
        txstatus_transmit: '''Message is currently being transmitted''',
        txstatus_expired:
            '''Message's TTL has expired. Transmition cancelled.''',
        txstatus_empty: '''No more messages to be transmitted or received.''',
      };

  const IridiumTxStatusEnumStatus(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Actions on the group list.
class SystemGroupEnumAction extends EnumType {
  static const op_dis = SystemGroupEnumAction(0);
  static const op_set = SystemGroupEnumAction(1);
  static const op_req = SystemGroupEnumAction(2);
  static const op_chg = SystemGroupEnumAction(3);
  static const op_rep = SystemGroupEnumAction(4);
  static const op_frc = SystemGroupEnumAction(5);

  static List<SystemGroupEnumAction> get values => <SystemGroupEnumAction>[
        op_dis,
        op_set,
        op_req,
        op_chg,
        op_rep,
        op_frc,
      ];

  static core.Map<SystemGroupEnumAction, String> get names =>
      <SystemGroupEnumAction, String>{
        op_dis: '''Disband''',
        op_set: '''Set''',
        op_req: '''Request''',
        op_chg: '''Change''',
        op_rep: '''Report''',
        op_frc: '''Force''',
      };

  const SystemGroupEnumAction(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class HistoricDataQueryEnumType extends EnumType {
  /// Request data from the Data Store
  static const hrtype_query = HistoricDataQueryEnumType(1);

  /// Data Store response with Data (using field 'data')
  static const hrtype_reply = HistoricDataQueryEnumType(2);

  /// Clear 'data' from the Data Store
  static const hrtype_clear = HistoricDataQueryEnumType(3);

  static List<HistoricDataQueryEnumType> get values =>
      <HistoricDataQueryEnumType>[
        hrtype_query,
        hrtype_reply,
        hrtype_clear,
      ];

  static core.Map<HistoricDataQueryEnumType, String> get names =>
      <HistoricDataQueryEnumType, String>{
        hrtype_query: '''Query''',
        hrtype_reply: '''Reply''',
        hrtype_clear: '''Clear''',
      };

  const HistoricDataQueryEnumType(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class CommSystemsQueryBitfieldType extends BitfieldType {
  /// Query systems about communication capability
  static const ciq_query = CommSystemsQueryBitfieldType(0x01);

  /// Reply systems about communication capability
  static const ciq_reply = CommSystemsQueryBitfieldType(0x02);

  static List<CommSystemsQueryBitfieldType> get values =>
      <CommSystemsQueryBitfieldType>[
        ciq_query,
        ciq_reply,
      ];

  static core.Map<CommSystemsQueryBitfieldType, String> get names =>
      <CommSystemsQueryBitfieldType, String>{
        ciq_query: '''Query Systems''',
        ciq_reply: '''Reply''',
      };

  const CommSystemsQueryBitfieldType(int value) : super(value);

  @override
  String toPrettyString() {
    var ret;
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
  static const ciq_acoustic = CommSystemsQueryBitfieldCommInterface(0x01);

  /// Use satellite communications
  static const ciq_satellite = CommSystemsQueryBitfieldCommInterface(0x02);

  /// Use Global System for Mobile Communications
  static const ciq_gsm = CommSystemsQueryBitfieldCommInterface(0x04);

  /// Use mobile networks
  static const ciq_mobile = CommSystemsQueryBitfieldCommInterface(0x08);

  /// Use Radio telemetry
  static const ciq_radio = CommSystemsQueryBitfieldCommInterface(0x10);

  static List<CommSystemsQueryBitfieldCommInterface> get values =>
      <CommSystemsQueryBitfieldCommInterface>[
        ciq_acoustic,
        ciq_satellite,
        ciq_gsm,
        ciq_mobile,
        ciq_radio,
      ];

  static core.Map<CommSystemsQueryBitfieldCommInterface, String> get names =>
      <CommSystemsQueryBitfieldCommInterface, String>{
        ciq_acoustic: '''Acoustic''',
        ciq_satellite: '''Satellite''',
        ciq_gsm: '''GSM''',
        ciq_mobile: '''Mobile''',
        ciq_radio: '''Radio''',
      };

  const CommSystemsQueryBitfieldCommInterface(int value) : super(value);

  @override
  String toPrettyString() {
    var ret;
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
  static const ciq_unknown = CommSystemsQueryEnumModel(0x00);

  /// Radio Model 3DR
  static const ciq_m3dr = CommSystemsQueryEnumModel(0x01);

  /// Radio Model RDFXXXx point to point
  static const ciq_rdfxxxxptp = CommSystemsQueryEnumModel(0x02);

  static List<CommSystemsQueryEnumModel> get values =>
      <CommSystemsQueryEnumModel>[
        ciq_unknown,
        ciq_m3dr,
        ciq_rdfxxxxptp,
      ];

  static core.Map<CommSystemsQueryEnumModel, String> get names =>
      <CommSystemsQueryEnumModel, String>{
        ciq_unknown: '''unknown''',
        ciq_m3dr: '''3DR''',
        ciq_rdfxxxxptp: '''RDFXXXxPtP''',
      };

  const CommSystemsQueryEnumModel(int value) : super(value);

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
  static const tm_tx = TelemetryMsgEnumType(0x01);

  /// Received telemetry data.
  static const tm_rx = TelemetryMsgEnumType(0x02);

  /// Status of transmitted data.
  static const tm_txstatus = TelemetryMsgEnumType(0x03);

  static List<TelemetryMsgEnumType> get values => <TelemetryMsgEnumType>[
        tm_tx,
        tm_rx,
        tm_txstatus,
      ];

  static core.Map<TelemetryMsgEnumType, String> get names =>
      <TelemetryMsgEnumType, String>{
        tm_tx: '''Tx''',
        tm_rx: '''Rx''',
        tm_txstatus: '''TxStatus''',
      };

  const TelemetryMsgEnumType(int value) : super(value);

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
  static const tm_code_unk = TelemetryMsgEnumCode(0x00);

  /// Concise representation of entire system state message.
  /// Payload message is a MessageList.
  static const tm_code_report = TelemetryMsgEnumCode(0x01);

  /// Payload message is INLINEMSG
  static const tm_code_imc = TelemetryMsgEnumCode(0x02);

  /// Payload message is in raw
  static const tm_code_raw = TelemetryMsgEnumCode(0x03);

  static List<TelemetryMsgEnumCode> get values => <TelemetryMsgEnumCode>[
        tm_code_unk,
        tm_code_report,
        tm_code_imc,
        tm_code_raw,
      ];

  static core.Map<TelemetryMsgEnumCode, String> get names =>
      <TelemetryMsgEnumCode, String>{
        tm_code_unk: '''Code unknown''',
        tm_code_report: '''Code Report''',
        tm_code_imc: '''Code IMC''',
        tm_code_raw: '''Code raw''',
      };

  const TelemetryMsgEnumCode(int value) : super(value);

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
  static const tm_nak = TelemetryMsgBitfieldAcknowledge(0x00);

  /// Message transmitted with acknowledged reception response
  static const tm_ak = TelemetryMsgBitfieldAcknowledge(0x01);

  static List<TelemetryMsgBitfieldAcknowledge> get values =>
      <TelemetryMsgBitfieldAcknowledge>[
        tm_nak,
        tm_ak,
      ];

  static core.Map<TelemetryMsgBitfieldAcknowledge, String> get names =>
      <TelemetryMsgBitfieldAcknowledge, String>{
        tm_nak: '''Not acknowledge''',
        tm_ak: '''acknowledge''',
      };

  const TelemetryMsgBitfieldAcknowledge(int value) : super(value);

  @override
  String toPrettyString() {
    var ret;
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

  static TelemetryMsgBitfieldAcknowledge fromBits(
          List<TelemetryMsgBitfieldAcknowledge> bits) =>
      (bits.length < 2)
          ? TelemetryMsgBitfieldAcknowledge(bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce(
              (b1, b2) => TelemetryMsgBitfieldAcknowledge(b1.value | b2.value));
}

/// State of the transmitted message.
class TelemetryMsgEnumStatus extends EnumType {
  static const tm_none = TelemetryMsgEnumStatus(0x00);
  static const tm_done = TelemetryMsgEnumStatus(1);
  static const tm_failed = TelemetryMsgEnumStatus(2);
  static const tm_queued = TelemetryMsgEnumStatus(3);
  static const tm_transmit = TelemetryMsgEnumStatus(4);
  static const tm_expired = TelemetryMsgEnumStatus(5);
  static const tm_empty = TelemetryMsgEnumStatus(6);
  static const tm_inv_addr = TelemetryMsgEnumStatus(7);
  static const tm_inv_size = TelemetryMsgEnumStatus(8);

  static List<TelemetryMsgEnumStatus> get values => <TelemetryMsgEnumStatus>[
        tm_none,
        tm_done,
        tm_failed,
        tm_queued,
        tm_transmit,
        tm_expired,
        tm_empty,
        tm_inv_addr,
        tm_inv_size,
      ];

  static core.Map<TelemetryMsgEnumStatus, String> get names =>
      <TelemetryMsgEnumStatus, String>{
        tm_none: '''Does not apply''',
        tm_done: '''Successfull transmission''',
        tm_failed: '''Error while trying to transmit message''',
        tm_queued: '''Message has been queued for transmission''',
        tm_transmit: '''Message is currently being transmitted''',
        tm_expired: '''Message's TTL has expired. Transmition cancelled''',
        tm_empty: '''No more messages to be transmitted or received''',
        tm_inv_addr: '''Invalid address''',
        tm_inv_size: '''Invalid transmission size''',
      };

  const TelemetryMsgEnumStatus(int value) : super(value);

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
  static const op_set_cfg = LblConfigEnumOp(0);

  /// Request the vehicle to send its current beacons configuration.
  static const op_get_cfg = LblConfigEnumOp(1);
  static const op_cur_cfg = LblConfigEnumOp(2);

  static List<LblConfigEnumOp> get values => <LblConfigEnumOp>[
        op_set_cfg,
        op_get_cfg,
        op_cur_cfg,
      ];

  static core.Map<LblConfigEnumOp, String> get names =>
      <LblConfigEnumOp, String>{
        op_set_cfg: '''Set LBL Configuration''',
        op_get_cfg: '''Retrieve LBL Configuration''',
        op_cur_cfg: '''Reply to a GET command''',
      };

  const LblConfigEnumOp(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class SimAcousticMessageBitfieldFlags extends BitfieldType {
  static const sam_ack = SimAcousticMessageBitfieldFlags(0x01);
  static const sam_delayed = SimAcousticMessageBitfieldFlags(0x02);
  static const sam_reply = SimAcousticMessageBitfieldFlags(0x03);

  static List<SimAcousticMessageBitfieldFlags> get values =>
      <SimAcousticMessageBitfieldFlags>[
        sam_ack,
        sam_delayed,
        sam_reply,
      ];

  static core.Map<SimAcousticMessageBitfieldFlags, String> get names =>
      <SimAcousticMessageBitfieldFlags, String>{
        sam_ack: '''Acknowledgement''',
        sam_delayed: '''Delayed''',
        sam_reply: '''Reply''',
      };

  const SimAcousticMessageBitfieldFlags(int value) : super(value);

  @override
  String toPrettyString() {
    var ret;
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
  static const aop_abort = AcousticOperationEnumOp(0);

  /// The latest abort request to the system specified in the
  /// field 'system' is in progress.
  static const aop_abort_ip = AcousticOperationEnumOp(1);

  /// The latest abort operation expired without acknowledgment
  /// from the system specified in the field 'system'.
  static const aop_abort_timeout = AcousticOperationEnumOp(2);

  /// The latest abort operation was acknowledged by the system
  /// specified in the field 'system'.
  static const aop_abort_acked = AcousticOperationEnumOp(3);

  /// Request a range through the acoustic channel to the system
  /// specified in the field 'system'.
  static const aop_range = AcousticOperationEnumOp(4);

  /// The latest range request to the system specified in the
  /// field 'system' is in progress.
  static const aop_range_ip = AcousticOperationEnumOp(5);

  /// The latest range request operation expired without reply
  /// from the system specified in the field 'system'.
  static const aop_range_timeout = AcousticOperationEnumOp(6);

  /// The latest range request operation to the system specified
  /// in the field 'system' was successful and the range is
  /// specified in the field 'range'.
  static const aop_range_recved = AcousticOperationEnumOp(7);

  /// The acoustic modem is busy and cannot execute the requested
  /// operation.
  static const aop_busy = AcousticOperationEnumOp(8);

  /// The latest requested operation is not supported.
  static const aop_unsupported = AcousticOperationEnumOp(9);

  /// The transducer was not detected.
  static const aop_no_txd = AcousticOperationEnumOp(10);

  /// Request message over acoustic channel. The message to send
  /// is specified by the 'msg' field.
  static const aop_msg = AcousticOperationEnumOp(11);

  /// Message send request has been queued.
  static const aop_msg_queued = AcousticOperationEnumOp(12);

  /// Message send request is in progress.
  static const aop_msg_ip = AcousticOperationEnumOp(13);

  /// Message send request has been fulfilled.
  static const aop_msg_done = AcousticOperationEnumOp(14);

  /// Message send request could not be fulfilled.
  static const aop_msg_failure = AcousticOperationEnumOp(15);

  /// Request message over acoustic channel. The message to send
  /// is specified by the 'msg' field.
  static const aop_msg_short = AcousticOperationEnumOp(16);

  /// Request sending updated position to remote system so it can be ranged.
  static const aop_reverse_range = AcousticOperationEnumOp(17);

  static List<AcousticOperationEnumOp> get values => <AcousticOperationEnumOp>[
        aop_abort,
        aop_abort_ip,
        aop_abort_timeout,
        aop_abort_acked,
        aop_range,
        aop_range_ip,
        aop_range_timeout,
        aop_range_recved,
        aop_busy,
        aop_unsupported,
        aop_no_txd,
        aop_msg,
        aop_msg_queued,
        aop_msg_ip,
        aop_msg_done,
        aop_msg_failure,
        aop_msg_short,
        aop_reverse_range,
      ];

  static core.Map<AcousticOperationEnumOp, String> get names =>
      <AcousticOperationEnumOp, String>{
        aop_abort: '''Abort''',
        aop_abort_ip: '''Abort in Progress''',
        aop_abort_timeout: '''Abort Timeout''',
        aop_abort_acked: '''Abort Acknowledged''',
        aop_range: '''Range Request''',
        aop_range_ip: '''Range in Progress''',
        aop_range_timeout: '''Range Timeout''',
        aop_range_recved: '''Range Received''',
        aop_busy: '''Modem is Busy''',
        aop_unsupported: '''Unsupported operation''',
        aop_no_txd: '''Transducer Not Detected''',
        aop_msg: '''Send Message''',
        aop_msg_queued: '''Message Send -- Queued''',
        aop_msg_ip: '''Message Send -- In progress''',
        aop_msg_done: '''Message Send -- Done''',
        aop_msg_failure: '''Message Send -- Failure''',
        aop_msg_short: '''Send Short Message''',
        aop_reverse_range: '''Initiate Reverse Range''',
      };

  const AcousticOperationEnumOp(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class AcousticRequestEnumType extends EnumType {
  static const type_abort = AcousticRequestEnumType(0);
  static const type_range = AcousticRequestEnumType(1);
  static const type_reverse_range = AcousticRequestEnumType(2);
  static const type_msg = AcousticRequestEnumType(3);
  static const type_raw = AcousticRequestEnumType(4);

  static List<AcousticRequestEnumType> get values => <AcousticRequestEnumType>[
        type_abort,
        type_range,
        type_reverse_range,
        type_msg,
        type_raw,
      ];

  static core.Map<AcousticRequestEnumType, String> get names =>
      <AcousticRequestEnumType, String>{
        type_abort: '''Abort''',
        type_range: '''Range''',
        type_reverse_range: '''Reverse Range''',
        type_msg: '''Message''',
        type_raw: '''Raw''',
      };

  const AcousticRequestEnumType(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class AcousticStatusEnumType extends EnumType {
  static const type_abort = AcousticStatusEnumType(0);
  static const type_range = AcousticStatusEnumType(1);
  static const type_reverse_range = AcousticStatusEnumType(2);
  static const type_msg = AcousticStatusEnumType(3);
  static const type_raw = AcousticStatusEnumType(4);

  static List<AcousticStatusEnumType> get values => <AcousticStatusEnumType>[
        type_abort,
        type_range,
        type_reverse_range,
        type_msg,
        type_raw,
      ];

  static core.Map<AcousticStatusEnumType, String> get names =>
      <AcousticStatusEnumType, String>{
        type_abort: '''Abort''',
        type_range: '''Range''',
        type_reverse_range: '''Reverse Range''',
        type_msg: '''Message''',
        type_raw: '''Raw''',
      };

  const AcousticStatusEnumType(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class AcousticStatusEnumStatus extends EnumType {
  static const status_queued = AcousticStatusEnumStatus(0);
  static const status_in_progress = AcousticStatusEnumStatus(1);
  static const status_sent = AcousticStatusEnumStatus(2);
  static const status_range_received = AcousticStatusEnumStatus(3);
  static const status_delivered = AcousticStatusEnumStatus(4);
  static const status_busy = AcousticStatusEnumStatus(100);
  static const status_input_failure = AcousticStatusEnumStatus(101);
  static const status_error = AcousticStatusEnumStatus(102);
  static const status_unsupported = AcousticStatusEnumStatus(666);

  static List<AcousticStatusEnumStatus> get values =>
      <AcousticStatusEnumStatus>[
        status_queued,
        status_in_progress,
        status_sent,
        status_range_received,
        status_delivered,
        status_busy,
        status_input_failure,
        status_error,
        status_unsupported,
      ];

  static core.Map<AcousticStatusEnumStatus, String> get names =>
      <AcousticStatusEnumStatus, String>{
        status_queued: '''Queued''',
        status_in_progress: '''In Progress''',
        status_sent: '''Sent''',
        status_range_received: '''Range Received''',
        status_delivered: '''Delivered''',
        status_busy: '''Busy''',
        status_input_failure: '''Input Error''',
        status_error: '''Error trying to send acoustic text''',
        status_unsupported: '''Message Type is not defined or is unsupported''',
      };

  const AcousticStatusEnumStatus(int value) : super(value);

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
  static const gfv_valid_date = GpsFixBitfieldValidity(0x0001);

  /// Field 'utc_time' is valid.
  static const gfv_valid_time = GpsFixBitfieldValidity(0x0002);

  /// Fields 'lat', 'lon', 'altitude' and 'satellites' are valid.
  static const gfv_valid_pos = GpsFixBitfieldValidity(0x0004);

  /// Field 'cog' is valid.
  static const gfv_valid_cog = GpsFixBitfieldValidity(0x0008);

  /// Field 'sog' is valid.
  static const gfv_valid_sog = GpsFixBitfieldValidity(0x0010);

  /// Field 'hacc' is valid.
  static const gfv_valid_hacc = GpsFixBitfieldValidity(0x0020);

  /// Field 'vacc' is valid.
  static const gfv_valid_vacc = GpsFixBitfieldValidity(0x0040);

  /// Field 'hdop' is valid.
  static const gfv_valid_hdop = GpsFixBitfieldValidity(0x0080);

  /// Field 'vdop' is valid.
  static const gfv_valid_vdop = GpsFixBitfieldValidity(0x0100);

  static List<GpsFixBitfieldValidity> get values => <GpsFixBitfieldValidity>[
        gfv_valid_date,
        gfv_valid_time,
        gfv_valid_pos,
        gfv_valid_cog,
        gfv_valid_sog,
        gfv_valid_hacc,
        gfv_valid_vacc,
        gfv_valid_hdop,
        gfv_valid_vdop,
      ];

  static core.Map<GpsFixBitfieldValidity, String> get names =>
      <GpsFixBitfieldValidity, String>{
        gfv_valid_date: '''Valid Date''',
        gfv_valid_time: '''Valid Time''',
        gfv_valid_pos: '''Valid Position''',
        gfv_valid_cog: '''Valid Course Over Ground''',
        gfv_valid_sog: '''Valid Speed Over Ground''',
        gfv_valid_hacc: '''Valid Horizontal Accuracy Estimate''',
        gfv_valid_vacc: '''Valid Vertical Accuracy Estimate''',
        gfv_valid_hdop: '''Valid Horizontal Dilution of Precision''',
        gfv_valid_vdop: '''Valid Vertical Dilution of Precision''',
      };

  const GpsFixBitfieldValidity(int value) : super(value);

  @override
  String toPrettyString() {
    var ret;
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

  static GpsFixBitfieldValidity fromBits(List<GpsFixBitfieldValidity> bits) =>
      (bits.length < 2)
          ? GpsFixBitfieldValidity(bits.isEmpty ? 0 : bits[0].value)
          : bits
              .reduce((b1, b2) => GpsFixBitfieldValidity(b1.value | b2.value));
}

/// Type of fix.
class GpsFixEnumType extends EnumType {
  /// Stand alone solution.
  static const gft_standalone = GpsFixEnumType(0x00);

  /// Differential solution.
  static const gft_differential = GpsFixEnumType(0x01);

  /// Dead reckoning solution.
  static const gft_dead_reckoning = GpsFixEnumType(0x02);

  /// Manual solution.
  static const gft_manual_input = GpsFixEnumType(0x03);

  /// Simulated solution.
  static const gft_simulation = GpsFixEnumType(0x04);

  static List<GpsFixEnumType> get values => <GpsFixEnumType>[
        gft_standalone,
        gft_differential,
        gft_dead_reckoning,
        gft_manual_input,
        gft_simulation,
      ];

  static core.Map<GpsFixEnumType, String> get names => <GpsFixEnumType, String>{
        gft_standalone: '''Stand Alone''',
        gft_differential: '''Differential''',
        gft_dead_reckoning: '''Dead Reckoning''',
        gft_manual_input: '''Manual Input''',
        gft_simulation: '''Simulation''',
      };

  const GpsFixEnumType(int value) : super(value);

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
  static const val_vel_x = GroundVelocityBitfieldValidity(0x01);
  static const val_vel_y = GroundVelocityBitfieldValidity(0x02);
  static const val_vel_z = GroundVelocityBitfieldValidity(0x04);

  static List<GroundVelocityBitfieldValidity> get values =>
      <GroundVelocityBitfieldValidity>[
        val_vel_x,
        val_vel_y,
        val_vel_z,
      ];

  static core.Map<GroundVelocityBitfieldValidity, String> get names =>
      <GroundVelocityBitfieldValidity, String>{
        val_vel_x: '''X component is valid''',
        val_vel_y: '''Y component is valid''',
        val_vel_z: '''Z component is valid''',
      };

  const GroundVelocityBitfieldValidity(int value) : super(value);

  @override
  String toPrettyString() {
    var ret;
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
  static const val_vel_x = WaterVelocityBitfieldValidity(0x01);
  static const val_vel_y = WaterVelocityBitfieldValidity(0x02);
  static const val_vel_z = WaterVelocityBitfieldValidity(0x04);

  static List<WaterVelocityBitfieldValidity> get values =>
      <WaterVelocityBitfieldValidity>[
        val_vel_x,
        val_vel_y,
        val_vel_z,
      ];

  static core.Map<WaterVelocityBitfieldValidity, String> get names =>
      <WaterVelocityBitfieldValidity, String>{
        val_vel_x: '''X component is valid''',
        val_vel_y: '''Y component is valid''',
        val_vel_z: '''Z component is valid''',
      };

  const WaterVelocityBitfieldValidity(int value) : super(value);

  @override
  String toPrettyString() {
    var ret;
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
  static const dv_invalid = DistanceEnumValidity(0);

  /// Measurement is valid.
  static const dv_valid = DistanceEnumValidity(1);

  static List<DistanceEnumValidity> get values => <DistanceEnumValidity>[
        dv_invalid,
        dv_valid,
      ];

  static core.Map<DistanceEnumValidity, String> get names =>
      <DistanceEnumValidity, String>{
        dv_invalid: '''Invalid''',
        dv_valid: '''Valid''',
      };

  const DistanceEnumValidity(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Type of sonar.
class SonarDataEnumType extends EnumType {
  static const st_sidescan = SonarDataEnumType(0);
  static const st_echosounder = SonarDataEnumType(1);
  static const st_multibeam = SonarDataEnumType(2);

  static List<SonarDataEnumType> get values => <SonarDataEnumType>[
        st_sidescan,
        st_echosounder,
        st_multibeam,
      ];

  static core.Map<SonarDataEnumType, String> get names =>
      <SonarDataEnumType, String>{
        st_sidescan: '''Sidescan''',
        st_echosounder: '''Echo Sounder''',
        st_multibeam: '''Multibeam''',
      };

  const SonarDataEnumType(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Activate or deactivate hardware pulse detection.
class PulseDetectionControlEnumOp extends EnumType {
  static const pop_off = PulseDetectionControlEnumOp(0);
  static const pop_on = PulseDetectionControlEnumOp(1);

  static List<PulseDetectionControlEnumOp> get values =>
      <PulseDetectionControlEnumOp>[
        pop_off,
        pop_on,
      ];

  static core.Map<PulseDetectionControlEnumOp, String> get names =>
      <PulseDetectionControlEnumOp, String>{
        pop_off: '''Pulse Detection OFF''',
        pop_on: '''Pulse Detection ON''',
      };

  const PulseDetectionControlEnumOp(int value) : super(value);

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
  static const ds_sane = DataSanityEnumSane(0);

  /// Data is not sane.
  static const ds_not_sane = DataSanityEnumSane(1);

  static List<DataSanityEnumSane> get values => <DataSanityEnumSane>[
        ds_sane,
        ds_not_sane,
      ];

  static core.Map<DataSanityEnumSane, String> get names =>
      <DataSanityEnumSane, String>{
        ds_sane: '''Sane''',
        ds_not_sane: '''Not Sane''',
      };

  const DataSanityEnumSane(int value) : super(value);

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
  static const rfv_valid_time = GpsFixRtkBitfieldValidity(0x0001);

  /// Fields 'base_lat', 'base_lon' and 'base_height' are valid.
  static const rfv_valid_base = GpsFixRtkBitfieldValidity(0x0002);

  /// Fields 'n', 'e', 'd' are valid.
  static const rfv_valid_pos = GpsFixRtkBitfieldValidity(0x0004);

  /// Fields 'v_n', 'v_e', 'v_d' are valid.
  static const rfv_valid_vel = GpsFixRtkBitfieldValidity(0x0008);

  static List<GpsFixRtkBitfieldValidity> get values =>
      <GpsFixRtkBitfieldValidity>[
        rfv_valid_time,
        rfv_valid_base,
        rfv_valid_pos,
        rfv_valid_vel,
      ];

  static core.Map<GpsFixRtkBitfieldValidity, String> get names =>
      <GpsFixRtkBitfieldValidity, String>{
        rfv_valid_time: '''Valid Time''',
        rfv_valid_base: '''Valid Base LLH''',
        rfv_valid_pos: '''Valid Position''',
        rfv_valid_vel: '''Valid Velocity''',
      };

  const GpsFixRtkBitfieldValidity(int value) : super(value);

  @override
  String toPrettyString() {
    var ret;
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
  static const rtk_none = GpsFixRtkEnumType(0x00);

  /// No solution, but receiving observations.
  static const rtk_obs = GpsFixRtkEnumType(0x01);

  /// Floating point solution of IAR.
  static const rtk_float = GpsFixRtkEnumType(0x02);

  /// Fixed (single) solution of IAR.
  static const rtk_fixed = GpsFixRtkEnumType(0x03);

  static List<GpsFixRtkEnumType> get values => <GpsFixRtkEnumType>[
        rtk_none,
        rtk_obs,
        rtk_float,
        rtk_fixed,
      ];

  static core.Map<GpsFixRtkEnumType, String> get names =>
      <GpsFixRtkEnumType, String>{
        rtk_none: '''None''',
        rtk_obs: '''Obs''',
        rtk_float: '''Float''',
        rtk_fixed: '''Fixed''',
      };

  const GpsFixRtkEnumType(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// The type of external navigation data
class ExternalNavDataEnumType extends EnumType {
  static const extnav_full = ExternalNavDataEnumType(0);
  static const extnav_ahrs = ExternalNavDataEnumType(1);
  static const extnav_posref = ExternalNavDataEnumType(2);

  static List<ExternalNavDataEnumType> get values => <ExternalNavDataEnumType>[
        extnav_full,
        extnav_ahrs,
        extnav_posref,
      ];

  static core.Map<ExternalNavDataEnumType, String> get names =>
      <ExternalNavDataEnumType, String>{
        extnav_full: '''Full State''',
        extnav_ahrs: '''Attitude Heading Reference System Only''',
        extnav_posref: '''Position Reference System only''',
      };

  const ExternalNavDataEnumType(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// The zoom action to perform.
class CameraZoomEnumAction extends EnumType {
  static const action_zoom_reset = CameraZoomEnumAction(0);
  static const action_zoom_in = CameraZoomEnumAction(1);
  static const action_zoom_out = CameraZoomEnumAction(2);
  static const action_zoom_stop = CameraZoomEnumAction(3);

  static List<CameraZoomEnumAction> get values => <CameraZoomEnumAction>[
        action_zoom_reset,
        action_zoom_in,
        action_zoom_out,
        action_zoom_stop,
      ];

  static core.Map<CameraZoomEnumAction, String> get names =>
      <CameraZoomEnumAction, String>{
        action_zoom_reset: '''Reset Zoom''',
        action_zoom_in: '''Zoom In''',
        action_zoom_out: '''Zoom Out''',
        action_zoom_stop: '''Stop Zooming''',
      };

  const CameraZoomEnumAction(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Operation to perform.
class RemoteActionsRequestEnumOp extends EnumType {
  static const op_report = RemoteActionsRequestEnumOp(0);
  static const op_query = RemoteActionsRequestEnumOp(1);

  static List<RemoteActionsRequestEnumOp> get values =>
      <RemoteActionsRequestEnumOp>[
        op_report,
        op_query,
      ];

  static core.Map<RemoteActionsRequestEnumOp, String> get names =>
      <RemoteActionsRequestEnumOp, String>{
        op_report: '''Report''',
        op_query: '''Query''',
      };

  const RemoteActionsRequestEnumOp(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// The LCD action to perform
class LcdControlEnumOp extends EnumType {
  static const op_turn_off = LcdControlEnumOp(0);
  static const op_turn_on = LcdControlEnumOp(1);
  static const op_clear = LcdControlEnumOp(2);
  static const op_write0 = LcdControlEnumOp(3);
  static const op_write1 = LcdControlEnumOp(4);

  static List<LcdControlEnumOp> get values => <LcdControlEnumOp>[
        op_turn_off,
        op_turn_on,
        op_clear,
        op_write0,
        op_write1,
      ];

  static core.Map<LcdControlEnumOp, String> get names =>
      <LcdControlEnumOp, String>{
        op_turn_off: '''Turn off display''',
        op_turn_on: '''Turn on display''',
        op_clear: '''Clear display''',
        op_write0: '''Write Line #0''',
        op_write1: '''Write Line #1''',
      };

  const LcdControlEnumOp(int value) : super(value);

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
  static const pop_pwr_down = PowerOperationEnumOp(0);

  /// The latest power down request is in progress and the time
  /// remaining until power down is given in field 'time_remain'.
  static const pop_pwr_down_ip = PowerOperationEnumOp(1);

  /// The latest power down request was aborted.
  static const pop_pwr_down_aborted = PowerOperationEnumOp(2);

  /// Request the destination entity of this message to power down
  /// it's devices at the time given in the field 'sched_time'. If
  /// the destination entity is the special entity '0' the whole
  /// system will power down.
  static const pop_sched_pwr_down = PowerOperationEnumOp(3);

  /// Request the destination entity of this message to power up
  /// it's devices.
  static const pop_pwr_up = PowerOperationEnumOp(4);

  /// The latest power up request is in progress.
  static const pop_pwr_up_ip = PowerOperationEnumOp(5);

  /// Request the destination entity of this message to power up
  /// it's devices at the time given in the field 'sched_time'. If
  /// the destination entity is the special entity '0' the whole
  /// system will power up.
  static const pop_sched_pwr_up = PowerOperationEnumOp(6);

  static List<PowerOperationEnumOp> get values => <PowerOperationEnumOp>[
        pop_pwr_down,
        pop_pwr_down_ip,
        pop_pwr_down_aborted,
        pop_sched_pwr_down,
        pop_pwr_up,
        pop_pwr_up_ip,
        pop_sched_pwr_up,
      ];

  static core.Map<PowerOperationEnumOp, String> get names =>
      <PowerOperationEnumOp, String>{
        pop_pwr_down: '''Power Down''',
        pop_pwr_down_ip: '''Power Down in Progress''',
        pop_pwr_down_aborted: '''Power Down Aborted''',
        pop_sched_pwr_down: '''Schedule Power Down''',
        pop_pwr_up: '''Power Up''',
        pop_pwr_up_ip: '''Power Up in Progress''',
        pop_sched_pwr_up: '''Schedule Power Up''',
      };

  const PowerOperationEnumOp(int value) : super(value);

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
  static const pcc_op_turn_off = PowerChannelControlEnumOp(0);

  /// Turn on power channel specified in field 'id'.
  static const pcc_op_turn_on = PowerChannelControlEnumOp(1);

  /// Toggle power channel specified in field 'id'.
  static const pcc_op_toggle = PowerChannelControlEnumOp(2);

  /// Turn on power channel specified in field 'id' in
  /// 'sched_time' seconds.
  static const pcc_op_sched_on = PowerChannelControlEnumOp(3);

  /// Turn off power channel specified in field 'id' in
  /// 'sched_time' seconds.
  static const pcc_op_sched_off = PowerChannelControlEnumOp(4);

  /// Reset all scheduled operations for the channel specified in
  /// field 'id'.
  static const pcc_op_sched_reset = PowerChannelControlEnumOp(5);

  /// Save the current state of the channel 'id' to persistent
  /// storage.
  static const pcc_op_save = PowerChannelControlEnumOp(6);

  /// Restart power channel specified in field 'id'.
  static const pcc_op_restart = PowerChannelControlEnumOp(7);

  static List<PowerChannelControlEnumOp> get values =>
      <PowerChannelControlEnumOp>[
        pcc_op_turn_off,
        pcc_op_turn_on,
        pcc_op_toggle,
        pcc_op_sched_on,
        pcc_op_sched_off,
        pcc_op_sched_reset,
        pcc_op_save,
        pcc_op_restart,
      ];

  static core.Map<PowerChannelControlEnumOp, String> get names =>
      <PowerChannelControlEnumOp, String>{
        pcc_op_turn_off: '''Turn Off''',
        pcc_op_turn_on: '''Turn On''',
        pcc_op_toggle: '''Toggle''',
        pcc_op_sched_on: '''Schedule Turn On''',
        pcc_op_sched_off: '''Schedule Turn Off''',
        pcc_op_sched_reset: '''Reset Schedules''',
        pcc_op_save: '''Save Current State''',
        pcc_op_restart: '''Restart''',
      };

  const PowerChannelControlEnumOp(int value) : super(value);

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
  static const pcs_off = PowerChannelStateEnumState(0);

  /// Power channel is on.
  static const pcs_on = PowerChannelStateEnumState(1);

  static List<PowerChannelStateEnumState> get values =>
      <PowerChannelStateEnumState>[
        pcs_off,
        pcs_on,
      ];

  static core.Map<PowerChannelStateEnumState, String> get names =>
      <PowerChannelStateEnumState, String>{
        pcs_off: '''Off''',
        pcs_on: '''On''',
      };

  const PowerChannelStateEnumState(int value) : super(value);

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
  static const rr_above_threshold = GpsFixRejectionEnumReason(0);

  /// Invalid measurement.
  static const rr_invalid = GpsFixRejectionEnumReason(1);

  /// Above maximum horizontal dilution of precision.
  static const rr_above_max_hdop = GpsFixRejectionEnumReason(2);

  /// Above maximum horizontal accuracy index.
  static const rr_above_max_hacc = GpsFixRejectionEnumReason(3);

  /// Lost one of the validity bits between consecutive GPS fixes.
  static const rr_lost_val_bit = GpsFixRejectionEnumReason(4);

  static List<GpsFixRejectionEnumReason> get values =>
      <GpsFixRejectionEnumReason>[
        rr_above_threshold,
        rr_invalid,
        rr_above_max_hdop,
        rr_above_max_hacc,
        rr_lost_val_bit,
      ];

  static core.Map<GpsFixRejectionEnumReason, String> get names =>
      <GpsFixRejectionEnumReason, String>{
        rr_above_threshold: '''Above Threshold''',
        rr_invalid: '''Invalid Fix''',
        rr_above_max_hdop: '''Above Maximum HDOP''',
        rr_above_max_hacc: '''Above Maximum HACC''',
        rr_lost_val_bit: '''Lost Validity Bit''',
      };

  const GpsFixRejectionEnumReason(int value) : super(value);

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
  static const rr_accepted = LblRangeAcceptanceEnumAcceptance(0);

  /// New LBL Range is above a computed threshold.
  static const rr_above_threshold = LblRangeAcceptanceEnumAcceptance(1);

  /// Singular point.
  static const rr_singular = LblRangeAcceptanceEnumAcceptance(2);

  /// The filter lacks information to properly use the received LBL range.
  static const rr_no_info = LblRangeAcceptanceEnumAcceptance(3);

  /// Vehicle is using only GPS fix when it is at surface.
  static const rr_at_surface = LblRangeAcceptanceEnumAcceptance(4);

  static List<LblRangeAcceptanceEnumAcceptance> get values =>
      <LblRangeAcceptanceEnumAcceptance>[
        rr_accepted,
        rr_above_threshold,
        rr_singular,
        rr_no_info,
        rr_at_surface,
      ];

  static core.Map<LblRangeAcceptanceEnumAcceptance, String> get names =>
      <LblRangeAcceptanceEnumAcceptance, String>{
        rr_accepted: '''Accepted''',
        rr_above_threshold: '''Rejected - Above Threshold''',
        rr_singular: '''Rejected - Singular Point''',
        rr_no_info: '''Rejected - Not Enough Information''',
        rr_at_surface: '''Rejected - Vehicle At Surface''',
      };

  const LblRangeAcceptanceEnumAcceptance(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// This field represents the type of the rejected velocity.
class DvlRejectionBitfieldType extends BitfieldType {
  static const type_gv = DvlRejectionBitfieldType(0x01);
  static const type_wv = DvlRejectionBitfieldType(0x02);

  static List<DvlRejectionBitfieldType> get values =>
      <DvlRejectionBitfieldType>[
        type_gv,
        type_wv,
      ];

  static core.Map<DvlRejectionBitfieldType, String> get names =>
      <DvlRejectionBitfieldType, String>{
        type_gv: '''Ground velocity''',
        type_wv: '''Water velocity''',
      };

  const DvlRejectionBitfieldType(int value) : super(value);

  @override
  String toPrettyString() {
    var ret;
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
  static const rr_innov_threshold_x = DvlRejectionEnumReason(0);

  /// The current DVL y-axis measurement is discarded
  /// because the absolute difference between the
  /// value and the previous accepted DVL measurement
  /// with a given time window is above a configurable
  /// threshold.
  static const rr_innov_threshold_y = DvlRejectionEnumReason(1);

  /// The current DVL x-axis measurement is discarded
  /// because the the absolute value is above a
  /// configurable threshold.
  static const rr_abs_threshold_x = DvlRejectionEnumReason(2);

  /// The current DVL y-axis measurement is discarded
  /// because the the absolute value is above a
  /// configurable threshold.
  static const rr_abs_threshold_y = DvlRejectionEnumReason(3);

  static List<DvlRejectionEnumReason> get values => <DvlRejectionEnumReason>[
        rr_innov_threshold_x,
        rr_innov_threshold_y,
        rr_abs_threshold_x,
        rr_abs_threshold_y,
      ];

  static core.Map<DvlRejectionEnumReason, String> get names =>
      <DvlRejectionEnumReason, String>{
        rr_innov_threshold_x: '''Innovation Threshold - X''',
        rr_innov_threshold_y: '''Innovation Threshold - Y''',
        rr_abs_threshold_x: '''Absolute Threshold - X''',
        rr_abs_threshold_y: '''Absolute Threshold - Y''',
      };

  const DvlRejectionEnumReason(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Alignment State.
class AlignmentStateEnumState extends EnumType {
  static const as_not_aligned = AlignmentStateEnumState(0);
  static const as_aligned = AlignmentStateEnumState(1);
  static const as_not_supported = AlignmentStateEnumState(2);
  static const as_aligning = AlignmentStateEnumState(3);
  static const as_wrong_medium = AlignmentStateEnumState(4);

  static List<AlignmentStateEnumState> get values => <AlignmentStateEnumState>[
        as_not_aligned,
        as_aligned,
        as_not_supported,
        as_aligning,
        as_wrong_medium,
      ];

  static core.Map<AlignmentStateEnumState, String> get names =>
      <AlignmentStateEnumState, String>{
        as_not_aligned: '''Not Aligned''',
        as_aligned: '''Aligned''',
        as_not_supported: '''Not Supported''',
        as_aligning: '''Aligning''',
        as_wrong_medium: '''Wrong Medium''',
      };

  const AlignmentStateEnumState(int value) : super(value);

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
  static const fl_start = DesiredPathBitfieldFlags(0x01);

  /// If start point is not given, ignore also the previous path's
  /// endpoint and take the start point to be the current vehicle
  /// location.
  static const fl_direct = DesiredPathBitfieldFlags(0x02);

  /// Ignore altitude/depth setting and let them be controlled
  /// independently.
  static const fl_no_z = DesiredPathBitfieldFlags(0x04);

  /// Perform 3D-tracking, i.e., consider the path formed in the
  /// XYZ plane taking into account both the 'start_z' and 'end_z'
  /// values.
  static const fl_3dtrack = DesiredPathBitfieldFlags(0x08);

  /// Indicates that loitering, if defined, should be done
  /// counter-clockwise. Clockwise loitering will apply
  /// otherwise.
  static const fl_cclockw = DesiredPathBitfieldFlags(0x10);

  /// Indicates that loitering, if defined, should be done from
  /// the current vehicle position. The end_lat and end_lon
  /// fields will be ignored.
  static const fl_loiter_curr = DesiredPathBitfieldFlags(0x20);

  /// Indicates that takeoff should be done before going to the end position.
  static const fl_takeoff = DesiredPathBitfieldFlags(0x40);

  /// Indicates that the system should land at the end position.
  static const fl_land = DesiredPathBitfieldFlags(0x80);

  static List<DesiredPathBitfieldFlags> get values =>
      <DesiredPathBitfieldFlags>[
        fl_start,
        fl_direct,
        fl_no_z,
        fl_3dtrack,
        fl_cclockw,
        fl_loiter_curr,
        fl_takeoff,
        fl_land,
      ];

  static core.Map<DesiredPathBitfieldFlags, String> get names =>
      <DesiredPathBitfieldFlags, String>{
        fl_start: '''Start Point''',
        fl_direct: '''Direct''',
        fl_no_z: '''No Altitude/Depth control''',
        fl_3dtrack: '''3D Tracking''',
        fl_cclockw: '''Counter-Clockwise loiter''',
        fl_loiter_curr: '''Loiter from current position''',
        fl_takeoff: '''Takeoff''',
        fl_land: '''Land''',
      };

  const DesiredPathBitfieldFlags(int value) : super(value);

  @override
  String toPrettyString() {
    var ret;
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
  static const fl_x = DesiredControlBitfieldFlags(0x01);

  /// If enabled then field Y has a meaningful value.
  static const fl_y = DesiredControlBitfieldFlags(0x02);

  /// If enabled then field Z has a meaningful value.
  static const fl_z = DesiredControlBitfieldFlags(0x04);

  /// If enabled then field K has a meaningful value.
  static const fl_k = DesiredControlBitfieldFlags(0x08);

  /// If enabled then field M has a meaningful value.
  static const fl_m = DesiredControlBitfieldFlags(0x10);

  /// If enabled then field N has a meaningful value.
  static const fl_n = DesiredControlBitfieldFlags(0x20);

  static List<DesiredControlBitfieldFlags> get values =>
      <DesiredControlBitfieldFlags>[
        fl_x,
        fl_y,
        fl_z,
        fl_k,
        fl_m,
        fl_n,
      ];

  static core.Map<DesiredControlBitfieldFlags, String> get names =>
      <DesiredControlBitfieldFlags, String>{
        fl_x: '''Value of X is meaningful''',
        fl_y: '''Value of Y is meaningful''',
        fl_z: '''Value of Z is meaningful''',
        fl_k: '''Value of K is meaningful''',
        fl_m: '''Value of M is meaningful''',
        fl_n: '''Value of N is meaningful''',
      };

  const DesiredControlBitfieldFlags(int value) : super(value);

  @override
  String toPrettyString() {
    var ret;
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
  static const fl_surge = DesiredVelocityBitfieldFlags(0x01);

  /// If enabled then field u has a meaningful value.
  static const fl_sway = DesiredVelocityBitfieldFlags(0x02);

  /// If enabled then field w has a meaningful value.
  static const fl_heave = DesiredVelocityBitfieldFlags(0x04);

  /// If enabled then field p has a meaningful value.
  static const fl_roll = DesiredVelocityBitfieldFlags(0x08);

  /// If enabled then field q has a meaningful value.
  static const fl_pitch = DesiredVelocityBitfieldFlags(0x10);

  /// If enabled then field r has a meaningful value.
  static const fl_yaw = DesiredVelocityBitfieldFlags(0x20);

  static List<DesiredVelocityBitfieldFlags> get values =>
      <DesiredVelocityBitfieldFlags>[
        fl_surge,
        fl_sway,
        fl_heave,
        fl_roll,
        fl_pitch,
        fl_yaw,
      ];

  static core.Map<DesiredVelocityBitfieldFlags, String> get names =>
      <DesiredVelocityBitfieldFlags, String>{
        fl_surge: '''Value of u is meaningful''',
        fl_sway: '''Value of v is meaningful''',
        fl_heave: '''Value of w is meaningful''',
        fl_roll: '''Value of p is meaningful''',
        fl_pitch: '''Value of q is meaningful''',
        fl_yaw: '''Value of r is meaningful''',
      };

  const DesiredVelocityBitfieldFlags(int value) : super(value);

  @override
  String toPrettyString() {
    var ret;
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
  static const fl_near = PathControlStateBitfieldFlags(0x01);

  /// Set if loitering.
  static const fl_loitering = PathControlStateBitfieldFlags(0x02);

  /// Altitude/depth being controlled independently.
  static const fl_no_z = PathControlStateBitfieldFlags(0x04);

  /// 3D-tracking is active.
  static const fl_3dtrack = PathControlStateBitfieldFlags(0x08);

  /// Indicates that loitering, if active, is being done
  /// counter-clockwise. Otherwise, clockwise loitering should be
  /// assumed.
  static const fl_cclockw = PathControlStateBitfieldFlags(0x10);

  static List<PathControlStateBitfieldFlags> get values =>
      <PathControlStateBitfieldFlags>[
        fl_near,
        fl_loitering,
        fl_no_z,
        fl_3dtrack,
        fl_cclockw,
      ];

  static core.Map<PathControlStateBitfieldFlags, String> get names =>
      <PathControlStateBitfieldFlags, String>{
        fl_near: '''Near Endpoint''',
        fl_loitering: '''Loitering''',
        fl_no_z: '''No Altitude/Depth control''',
        fl_3dtrack: '''3D Tracking''',
        fl_cclockw: '''Counter-Clockwise loiter''',
      };

  const PathControlStateBitfieldFlags(int value) : super(value);

  @override
  String toPrettyString() {
    var ret;
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
  static const op_stop = BrakeEnumOp(0);

  /// Start braking procedures.
  static const op_start = BrakeEnumOp(1);

  /// Revert Actuation.
  static const op_revert = BrakeEnumOp(2);

  static List<BrakeEnumOp> get values => <BrakeEnumOp>[
        op_stop,
        op_start,
        op_revert,
      ];

  static core.Map<BrakeEnumOp, String> get names => <BrakeEnumOp, String>{
        op_stop: '''Stop Braking''',
        op_start: '''Start Braking''',
        op_revert: '''Revert Actuation''',
      };

  const BrakeEnumOp(int value) : super(value);

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
  static const fl_x = DesiredLinearStateBitfieldFlags(0x0001);

  /// If enabled then field y has a meaningful value.
  static const fl_y = DesiredLinearStateBitfieldFlags(0x0002);

  /// If enabled then field z has a meaningful value.
  static const fl_z = DesiredLinearStateBitfieldFlags(0x0004);

  /// If enabled then field vx has a meaningful value.
  static const fl_vx = DesiredLinearStateBitfieldFlags(0x0008);

  /// If enabled then field vy has a meaningful value.
  static const fl_vy = DesiredLinearStateBitfieldFlags(0x0010);

  /// If enabled then field vz has a meaningful value.
  static const fl_vz = DesiredLinearStateBitfieldFlags(0x0020);

  /// If enabled then field ax has a meaningful value.
  static const fl_ax = DesiredLinearStateBitfieldFlags(0x0040);

  /// If enabled then field ay has a meaningful value.
  static const fl_ay = DesiredLinearStateBitfieldFlags(0x0080);

  /// If enabled then field az has a meaningful value.
  static const fl_az = DesiredLinearStateBitfieldFlags(0x0100);

  static List<DesiredLinearStateBitfieldFlags> get values =>
      <DesiredLinearStateBitfieldFlags>[
        fl_x,
        fl_y,
        fl_z,
        fl_vx,
        fl_vy,
        fl_vz,
        fl_ax,
        fl_ay,
        fl_az,
      ];

  static core.Map<DesiredLinearStateBitfieldFlags, String> get names =>
      <DesiredLinearStateBitfieldFlags, String>{
        fl_x: '''Value of x is meaningful''',
        fl_y: '''Value of y is meaningful''',
        fl_z: '''Value of z is meaningful''',
        fl_vx: '''Value of vx is meaningful''',
        fl_vy: '''Value of vy is meaningful''',
        fl_vz: '''Value of vz is meaningful''',
        fl_ax: '''Value of ax is meaningful''',
        fl_ay: '''Value of ay is meaningful''',
        fl_az: '''Value of az is meaningful''',
      };

  const DesiredLinearStateBitfieldFlags(int value) : super(value);

  @override
  String toPrettyString() {
    var ret;
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
  static const flg_curr_pos = PopUpBitfieldFlags(0x01);

  /// If this flag is set, duration field is used to hold position at surface
  /// for that amount of time.
  static const flg_wait_at_surface = PopUpBitfieldFlags(0x02);

  /// This flag will only make sense if WAIT_AT_SURFACE is also set.
  /// While holding position at surface the vehicle will assume a
  /// station keeping behavior.
  static const flg_station_keep = PopUpBitfieldFlags(0x04);

  static List<PopUpBitfieldFlags> get values => <PopUpBitfieldFlags>[
        flg_curr_pos,
        flg_wait_at_surface,
        flg_station_keep,
      ];

  static core.Map<PopUpBitfieldFlags, String> get names =>
      <PopUpBitfieldFlags, String>{
        flg_curr_pos: '''Start from current position''',
        flg_wait_at_surface: '''Wait at surface''',
        flg_station_keep: '''Station keeping''',
      };

  const PopUpBitfieldFlags(int value) : super(value);

  @override
  String toPrettyString() {
    var ret;
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

  static PopUpBitfieldFlags fromBits(List<PopUpBitfieldFlags> bits) =>
      (bits.length < 2)
          ? PopUpBitfieldFlags(bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce((b1, b2) => PopUpBitfieldFlags(b1.value | b2.value));
}

/// Loiter maneuver type.
class LoiterEnumType extends EnumType {
  static const lt_default = LoiterEnumType(0);
  static const lt_circular = LoiterEnumType(1);
  static const lt_racetrack = LoiterEnumType(2);
  static const lt_eight = LoiterEnumType(3);
  static const lt_hover = LoiterEnumType(4);

  static List<LoiterEnumType> get values => <LoiterEnumType>[
        lt_default,
        lt_circular,
        lt_racetrack,
        lt_eight,
        lt_hover,
      ];

  static core.Map<LoiterEnumType, String> get names => <LoiterEnumType, String>{
        lt_default: '''Default''',
        lt_circular: '''Circular''',
        lt_racetrack: '''Race track''',
        lt_eight: '''Figure 8''',
        lt_hover: '''Hover''',
      };

  const LoiterEnumType(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Desired direction.
class LoiterEnumDirection extends EnumType {
  static const ld_vdep = LoiterEnumDirection(0);
  static const ld_clockw = LoiterEnumDirection(1);
  static const ld_cclockw = LoiterEnumDirection(2);
  static const ld_iwindcurr = LoiterEnumDirection(3);

  static List<LoiterEnumDirection> get values => <LoiterEnumDirection>[
        ld_vdep,
        ld_clockw,
        ld_cclockw,
        ld_iwindcurr,
      ];

  static core.Map<LoiterEnumDirection, String> get names =>
      <LoiterEnumDirection, String>{
        ld_vdep: '''Vehicle Dependent''',
        ld_clockw: '''Clockwise''',
        ld_cclockw: '''Counter Clockwise''',
        ld_iwindcurr: '''Into the wind/current''',
      };

  const LoiterEnumDirection(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Maneuver flags.
class RowsBitfieldFlags extends BitfieldType {
  static const flg_square_curve = RowsBitfieldFlags(0x0001);
  static const flg_curve_right = RowsBitfieldFlags(0x0002);

  static List<RowsBitfieldFlags> get values => <RowsBitfieldFlags>[
        flg_square_curve,
        flg_curve_right,
      ];

  static core.Map<RowsBitfieldFlags, String> get names =>
      <RowsBitfieldFlags, String>{
        flg_square_curve: '''Square Curve''',
        flg_curve_right: '''First Curve Right''',
      };

  const RowsBitfieldFlags(int value) : super(value);

  @override
  String toPrettyString() {
    var ret;
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
  static const flg_curr_pos = ElevatorBitfieldFlags(0x01);

  static List<ElevatorBitfieldFlags> get values =>
      <ElevatorBitfieldFlags>[flg_curr_pos];

  static core.Map<ElevatorBitfieldFlags, String> get names =>
      <ElevatorBitfieldFlags, String>{
        flg_curr_pos: '''Start from current position'''
      };

  const ElevatorBitfieldFlags(int value) : super(value);

  @override
  String toPrettyString() {
    var ret;
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

  static ElevatorBitfieldFlags fromBits(List<ElevatorBitfieldFlags> bits) =>
      (bits.length < 2)
          ? ElevatorBitfieldFlags(bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce((b1, b2) => ElevatorBitfieldFlags(b1.value | b2.value));
}

/// Code indicating maneuver state.
class ManeuverControlStateEnumState extends EnumType {
  /// Maneuver in progress.
  static const mcs_executing = ManeuverControlStateEnumState(0);

  /// Maneuver completed.
  static const mcs_done = ManeuverControlStateEnumState(1);

  /// Maneuver error.
  static const mcs_error = ManeuverControlStateEnumState(2);

  /// Maneuver stopped.
  static const mcs_stopped = ManeuverControlStateEnumState(3);

  static List<ManeuverControlStateEnumState> get values =>
      <ManeuverControlStateEnumState>[
        mcs_executing,
        mcs_done,
        mcs_error,
        mcs_stopped,
      ];

  static core.Map<ManeuverControlStateEnumState, String> get names =>
      <ManeuverControlStateEnumState, String>{
        mcs_executing: '''Maneuver in progress''',
        mcs_done: '''Maneuver completed''',
        mcs_error: '''Maneuver error''',
        mcs_stopped: '''Maneuver stopped''',
      };

  const ManeuverControlStateEnumState(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Direction of the maneuver.
class CompassCalibrationEnumDirection extends EnumType {
  static const ld_vdep = CompassCalibrationEnumDirection(0);
  static const ld_clockw = CompassCalibrationEnumDirection(1);
  static const ld_cclockw = CompassCalibrationEnumDirection(2);
  static const ld_iwindcurr = CompassCalibrationEnumDirection(3);

  static List<CompassCalibrationEnumDirection> get values =>
      <CompassCalibrationEnumDirection>[
        ld_vdep,
        ld_clockw,
        ld_cclockw,
        ld_iwindcurr,
      ];

  static core.Map<CompassCalibrationEnumDirection, String> get names =>
      <CompassCalibrationEnumDirection, String>{
        ld_vdep: '''Vehicle Dependent''',
        ld_clockw: '''Clockwise''',
        ld_cclockw: '''Counter Clockwise''',
        ld_iwindcurr: '''Into the wind/current''',
      };

  const CompassCalibrationEnumDirection(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Formation reference frame
class FormationParametersEnumReferenceFrame extends EnumType {
  static const op_earth_fixed = FormationParametersEnumReferenceFrame(0);
  static const op_path_fixed = FormationParametersEnumReferenceFrame(1);
  static const op_path_curved = FormationParametersEnumReferenceFrame(2);

  static List<FormationParametersEnumReferenceFrame> get values =>
      <FormationParametersEnumReferenceFrame>[
        op_earth_fixed,
        op_path_fixed,
        op_path_curved,
      ];

  static core.Map<FormationParametersEnumReferenceFrame, String> get names =>
      <FormationParametersEnumReferenceFrame, String>{
        op_earth_fixed: '''Earth Fixed''',
        op_path_fixed: '''Path Fixed''',
        op_path_curved: '''Path Curved''',
      };

  const FormationParametersEnumReferenceFrame(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class ReferenceBitfieldFlags extends BitfieldType {
  static const flag_location = ReferenceBitfieldFlags(0x01);
  static const flag_speed = ReferenceBitfieldFlags(0x02);
  static const flag_z = ReferenceBitfieldFlags(0x04);
  static const flag_radius = ReferenceBitfieldFlags(0x08);
  static const flag_start_point = ReferenceBitfieldFlags(0x10);
  static const flag_direct = ReferenceBitfieldFlags(0x20);
  static const flag_mandone = ReferenceBitfieldFlags(0x80);

  static List<ReferenceBitfieldFlags> get values => <ReferenceBitfieldFlags>[
        flag_location,
        flag_speed,
        flag_z,
        flag_radius,
        flag_start_point,
        flag_direct,
        flag_mandone,
      ];

  static core.Map<ReferenceBitfieldFlags, String> get names =>
      <ReferenceBitfieldFlags, String>{
        flag_location: '''Use Location Reference''',
        flag_speed: '''Use Speed Reference''',
        flag_z: '''Use Z Reference''',
        flag_radius: '''Use Radius Reference''',
        flag_start_point:
            '''Use this Reference as Start Position for PathControler''',
        flag_direct:
            '''Use Current Position as Start Position for PathControler''',
        flag_mandone: '''Flag Maneuver Completion''',
      };

  const ReferenceBitfieldFlags(int value) : super(value);

  @override
  String toPrettyString() {
    var ret;
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

  static ReferenceBitfieldFlags fromBits(List<ReferenceBitfieldFlags> bits) =>
      (bits.length < 2)
          ? ReferenceBitfieldFlags(bits.isEmpty ? 0 : bits[0].value)
          : bits
              .reduce((b1, b2) => ReferenceBitfieldFlags(b1.value | b2.value));
}

class FollowRefStateEnumState extends EnumType {
  static const fr_wait = FollowRefStateEnumState(1);
  static const fr_goto = FollowRefStateEnumState(2);
  static const fr_loiter = FollowRefStateEnumState(3);
  static const fr_hover = FollowRefStateEnumState(4);
  static const fr_elevator = FollowRefStateEnumState(5);
  static const fr_timeout = FollowRefStateEnumState(6);

  static List<FollowRefStateEnumState> get values => <FollowRefStateEnumState>[
        fr_wait,
        fr_goto,
        fr_loiter,
        fr_hover,
        fr_elevator,
        fr_timeout,
      ];

  static core.Map<FollowRefStateEnumState, String> get names =>
      <FollowRefStateEnumState, String>{
        fr_wait: '''Waiting for first reference''',
        fr_goto: '''Going towards received reference''',
        fr_loiter: '''Loitering after arriving at the reference''',
        fr_hover: '''Hovering after arriving at the reference''',
        fr_elevator: '''Moving in z after arriving at the target cylinder''',
        fr_timeout: '''Controlling system timed out''',
      };

  const FollowRefStateEnumState(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class FollowRefStateBitfieldProximity extends BitfieldType {
  static const prox_far = FollowRefStateBitfieldProximity(0x01);
  static const prox_xy_near = FollowRefStateBitfieldProximity(0x02);
  static const prox_z_near = FollowRefStateBitfieldProximity(0x04);
  static const prox_xy_unreachable = FollowRefStateBitfieldProximity(0x08);
  static const prox_z_unreachable = FollowRefStateBitfieldProximity(0x10);

  static List<FollowRefStateBitfieldProximity> get values =>
      <FollowRefStateBitfieldProximity>[
        prox_far,
        prox_xy_near,
        prox_z_near,
        prox_xy_unreachable,
        prox_z_unreachable,
      ];

  static core.Map<FollowRefStateBitfieldProximity, String> get names =>
      <FollowRefStateBitfieldProximity, String>{
        prox_far: '''Far from the destination''',
        prox_xy_near: '''Near in the horizontal plane''',
        prox_z_near: '''Near in the vertical plane''',
        prox_xy_unreachable: '''Unreachable in the horizontal plane''',
        prox_z_unreachable: '''Unreachable in the vertical plane''',
      };

  const FollowRefStateBitfieldProximity(int value) : super(value);

  @override
  String toPrettyString() {
    var ret;
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

  static FollowRefStateBitfieldProximity fromBits(
          List<FollowRefStateBitfieldProximity> bits) =>
      (bits.length < 2)
          ? FollowRefStateBitfieldProximity(bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce(
              (b1, b2) => FollowRefStateBitfieldProximity(b1.value | b2.value));
}

/// Direction to which the vehicle should attempt to unstuck.
class DislodgeEnumDirection extends EnumType {
  static const dir_auto = DislodgeEnumDirection(0);
  static const dir_forward = DislodgeEnumDirection(1);
  static const dir_backward = DislodgeEnumDirection(2);

  static List<DislodgeEnumDirection> get values => <DislodgeEnumDirection>[
        dir_auto,
        dir_forward,
        dir_backward,
      ];

  static core.Map<DislodgeEnumDirection, String> get names =>
      <DislodgeEnumDirection, String>{
        dir_auto: '''Let the vehicle decide''',
        dir_forward: '''Attempt to move forward''',
        dir_backward: '''Attempt to move backward''',
      };

  const DislodgeEnumDirection(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Indicates if the message is a request, or a reply to a previous request.
class FormationEnumType extends EnumType {
  static const fc_request = FormationEnumType(0);
  static const fc_report = FormationEnumType(1);

  static List<FormationEnumType> get values => <FormationEnumType>[
        fc_request,
        fc_report,
      ];

  static core.Map<FormationEnumType, String> get names =>
      <FormationEnumType, String>{
        fc_request: '''Request''',
        fc_report: '''Report''',
      };

  const FormationEnumType(int value) : super(value);

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
  static const op_start = FormationEnumOp(0);

  /// Stop the formation maneuver.
  static const op_stop = FormationEnumOp(1);

  /// Stop the formation maneuver.
  static const op_ready = FormationEnumOp(2);

  /// Stop the formation maneuver.
  static const op_executing = FormationEnumOp(3);

  /// Stop the formation maneuver.
  static const op_failure = FormationEnumOp(4);

  static List<FormationEnumOp> get values => <FormationEnumOp>[
        op_start,
        op_stop,
        op_ready,
        op_executing,
        op_failure,
      ];

  static core.Map<FormationEnumOp, String> get names =>
      <FormationEnumOp, String>{
        op_start: '''Start''',
        op_stop: '''Stop''',
        op_ready: '''Ready''',
        op_executing: '''Executing''',
        op_failure: '''Failure''',
      };

  const FormationEnumOp(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Formation reference frame
class FormationEnumReferenceFrame extends EnumType {
  static const op_earth_fixed = FormationEnumReferenceFrame(0);
  static const op_path_fixed = FormationEnumReferenceFrame(1);
  static const op_path_curved = FormationEnumReferenceFrame(2);

  static List<FormationEnumReferenceFrame> get values =>
      <FormationEnumReferenceFrame>[
        op_earth_fixed,
        op_path_fixed,
        op_path_curved,
      ];

  static core.Map<FormationEnumReferenceFrame, String> get names =>
      <FormationEnumReferenceFrame, String>{
        op_earth_fixed: '''Earth Fixed''',
        op_path_fixed: '''Path Fixed''',
        op_path_curved: '''Path Curved''',
      };

  const FormationEnumReferenceFrame(int value) : super(value);

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
  static const dbeh_resume = ScheduledGotoEnumDelayed(0);

  /// If the vehicle fails to arrive at the specified time, it will stop the current maneuver and
  /// advance to the next one (independently of how far it is from destination).
  static const dbeh_skip = ScheduledGotoEnumDelayed(1);

  /// If the vehicle fails to arrive at the specified time, it will stop the execution of this
  /// maneuver with a FAILED result (the entire plan will be stopped).
  static const dbeh_fail = ScheduledGotoEnumDelayed(2);

  static List<ScheduledGotoEnumDelayed> get values =>
      <ScheduledGotoEnumDelayed>[
        dbeh_resume,
        dbeh_skip,
        dbeh_fail,
      ];

  static core.Map<ScheduledGotoEnumDelayed, String> get names =>
      <ScheduledGotoEnumDelayed, String>{
        dbeh_resume: '''Resume''',
        dbeh_skip: '''Skip''',
        dbeh_fail: '''Fail''',
      };

  const ScheduledGotoEnumDelayed(int value) : super(value);

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
  static const flg_square_curve = RowsCoverageBitfieldFlags(0x01);

  /// Shall the vehicle turn towards the right after the first transect (alternatively it will turn left).
  static const flg_curve_right = RowsCoverageBitfieldFlags(0x02);

  static List<RowsCoverageBitfieldFlags> get values =>
      <RowsCoverageBitfieldFlags>[
        flg_square_curve,
        flg_curve_right,
      ];

  static core.Map<RowsCoverageBitfieldFlags, String> get names =>
      <RowsCoverageBitfieldFlags, String>{
        flg_square_curve: '''Square Curve''',
        flg_curve_right: '''First Curve Right''',
      };

  const RowsCoverageBitfieldFlags(int value) : super(value);

  @override
  String toPrettyString() {
    var ret;
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

  static RowsCoverageBitfieldFlags fromBits(
          List<RowsCoverageBitfieldFlags> bits) =>
      (bits.length < 2)
          ? RowsCoverageBitfieldFlags(bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce(
              (b1, b2) => RowsCoverageBitfieldFlags(b1.value | b2.value));
}

class AutonomousSectionBitfieldLimits extends BitfieldType {
  static const enforce_depth = AutonomousSectionBitfieldLimits(0x01);
  static const enforce_altitude = AutonomousSectionBitfieldLimits(0x02);
  static const enforce_timeout = AutonomousSectionBitfieldLimits(0x04);
  static const enforce_area2d = AutonomousSectionBitfieldLimits(0x08);

  static List<AutonomousSectionBitfieldLimits> get values =>
      <AutonomousSectionBitfieldLimits>[
        enforce_depth,
        enforce_altitude,
        enforce_timeout,
        enforce_area2d,
      ];

  static core.Map<AutonomousSectionBitfieldLimits, String> get names =>
      <AutonomousSectionBitfieldLimits, String>{
        enforce_depth: '''Maximum Depth Limit''',
        enforce_altitude: '''Minimum Altitude Limit''',
        enforce_timeout: '''Time Limit''',
        enforce_area2d: '''Polygonal Area Limits''',
      };

  const AutonomousSectionBitfieldLimits(int value) : super(value);

  @override
  String toPrettyString() {
    var ret;
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
  static const flg_keep_safe = StationKeepingExtendedBitfieldFlags(0x01);

  static List<StationKeepingExtendedBitfieldFlags> get values =>
      <StationKeepingExtendedBitfieldFlags>[flg_keep_safe];

  static core.Map<StationKeepingExtendedBitfieldFlags, String> get names =>
      <StationKeepingExtendedBitfieldFlags, String>{
        flg_keep_safe: '''Keep safe behaviour'''
      };

  const StationKeepingExtendedBitfieldFlags(int value) : super(value);

  @override
  String toPrettyString() {
    var ret;
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
  static const md_clockw_first = MagnetometerEnumDirection(0);
  static const md_cclockw_first = MagnetometerEnumDirection(1);

  static List<MagnetometerEnumDirection> get values =>
      <MagnetometerEnumDirection>[
        md_clockw_first,
        md_cclockw_first,
      ];

  static core.Map<MagnetometerEnumDirection, String> get names =>
      <MagnetometerEnumDirection, String>{
        md_clockw_first: '''Clockwise First''',
        md_cclockw_first: '''Counter Clockwise First''',
      };

  const MagnetometerEnumDirection(int value) : super(value);

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
  static const vs_service = VehicleStateEnumOpMode(0);

  /// Ongoing vehicle calibration.
  static const vs_calibration = VehicleStateEnumOpMode(1);

  /// Errors are set.
  static const vs_error = VehicleStateEnumOpMode(2);

  /// A maneuver is executing.
  static const vs_maneuver = VehicleStateEnumOpMode(3);

  /// External control is active.
  static const vs_external = VehicleStateEnumOpMode(4);

  /// Booting system.
  static const vs_boot = VehicleStateEnumOpMode(5);

  static List<VehicleStateEnumOpMode> get values => <VehicleStateEnumOpMode>[
        vs_service,
        vs_calibration,
        vs_error,
        vs_maneuver,
        vs_external,
        vs_boot,
      ];

  static core.Map<VehicleStateEnumOpMode, String> get names =>
      <VehicleStateEnumOpMode, String>{
        vs_service: '''Service''',
        vs_calibration: '''Calibration''',
        vs_error: '''Error''',
        vs_maneuver: '''Maneuver''',
        vs_external: '''External Control''',
        vs_boot: '''Boot''',
      };

  const VehicleStateEnumOpMode(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class VehicleStateBitfieldFlags extends BitfieldType {
  static const vflg_maneuver_done = VehicleStateBitfieldFlags(0x01);

  static List<VehicleStateBitfieldFlags> get values =>
      <VehicleStateBitfieldFlags>[vflg_maneuver_done];

  static core.Map<VehicleStateBitfieldFlags, String> get names =>
      <VehicleStateBitfieldFlags, String>{
        vflg_maneuver_done: '''Maneuver Done'''
      };

  const VehicleStateBitfieldFlags(int value) : super(value);

  @override
  String toPrettyString() {
    var ret;
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

  static VehicleStateBitfieldFlags fromBits(
          List<VehicleStateBitfieldFlags> bits) =>
      (bits.length < 2)
          ? VehicleStateBitfieldFlags(bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce(
              (b1, b2) => VehicleStateBitfieldFlags(b1.value | b2.value));
}

class VehicleCommandEnumType extends EnumType {
  static const vc_request = VehicleCommandEnumType(0);
  static const vc_success = VehicleCommandEnumType(1);
  static const vc_in_progress = VehicleCommandEnumType(2);
  static const vc_failure = VehicleCommandEnumType(3);

  static List<VehicleCommandEnumType> get values => <VehicleCommandEnumType>[
        vc_request,
        vc_success,
        vc_in_progress,
        vc_failure,
      ];

  static core.Map<VehicleCommandEnumType, String> get names =>
      <VehicleCommandEnumType, String>{
        vc_request: '''Request''',
        vc_success: '''Reply -- Success''',
        vc_in_progress: '''Reply -- In Progress''',
        vc_failure: '''Reply -- Failure''',
      };

  const VehicleCommandEnumType(int value) : super(value);

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
  static const vc_exec_maneuver = VehicleCommandEnumCommand(0);

  /// Stop 'maneuver' being executed.
  static const vc_stop_maneuver = VehicleCommandEnumCommand(1);

  /// Start calibrating vehicle.
  static const vc_start_calibration = VehicleCommandEnumCommand(2);

  /// Stop calibrating vehicle.
  static const vc_stop_calibration = VehicleCommandEnumCommand(3);

  static List<VehicleCommandEnumCommand> get values =>
      <VehicleCommandEnumCommand>[
        vc_exec_maneuver,
        vc_stop_maneuver,
        vc_start_calibration,
        vc_stop_calibration,
      ];

  static core.Map<VehicleCommandEnumCommand, String> get names =>
      <VehicleCommandEnumCommand, String>{
        vc_exec_maneuver: '''Execute Maneuver''',
        vc_stop_maneuver: '''Stop Maneuver''',
        vc_start_calibration: '''Start Calibration''',
        vc_stop_calibration: '''Stop Calibration''',
      };

  const VehicleCommandEnumCommand(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Command.
class MonitorEntityStateEnumCommand extends EnumType {
  static const mes_reset = MonitorEntityStateEnumCommand(0);
  static const mes_enable = MonitorEntityStateEnumCommand(1);
  static const mes_disable = MonitorEntityStateEnumCommand(2);
  static const mes_enable_exclusive = MonitorEntityStateEnumCommand(3);
  static const mes_status = MonitorEntityStateEnumCommand(4);

  static List<MonitorEntityStateEnumCommand> get values =>
      <MonitorEntityStateEnumCommand>[
        mes_reset,
        mes_enable,
        mes_disable,
        mes_enable_exclusive,
        mes_status,
      ];

  static core.Map<MonitorEntityStateEnumCommand, String> get names =>
      <MonitorEntityStateEnumCommand, String>{
        mes_reset: '''Reset to defaults''',
        mes_enable: '''Enable Monitoring''',
        mes_disable: '''Disable Monitoring''',
        mes_enable_exclusive:
            '''Enable Monitoring (exclusive - disables all others)''',
        mes_status: '''Status Report''',
      };

  const MonitorEntityStateEnumCommand(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class ControlLoopsEnumEnable extends EnumType {
  static const cl_disable = ControlLoopsEnumEnable(0);
  static const cl_enable = ControlLoopsEnumEnable(1);

  static List<ControlLoopsEnumEnable> get values => <ControlLoopsEnumEnable>[
        cl_disable,
        cl_enable,
      ];

  static core.Map<ControlLoopsEnumEnable, String> get names =>
      <ControlLoopsEnumEnable, String>{
        cl_disable: '''Disable''',
        cl_enable: '''Enable''',
      };

  const ControlLoopsEnumEnable(int value) : super(value);

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
  static const vm_ground = VehicleMediumEnumMedium(0);

  /// Vehicle is airborne
  static const vm_air = VehicleMediumEnumMedium(1);

  /// Vehicle is at water surface
  static const vm_water = VehicleMediumEnumMedium(2);

  /// Vehicle is underwater
  static const vm_underwater = VehicleMediumEnumMedium(3);

  /// Vehicle medium is unknown
  static const vm_unknown = VehicleMediumEnumMedium(4);

  static List<VehicleMediumEnumMedium> get values => <VehicleMediumEnumMedium>[
        vm_ground,
        vm_air,
        vm_water,
        vm_underwater,
        vm_unknown,
      ];

  static core.Map<VehicleMediumEnumMedium, String> get names =>
      <VehicleMediumEnumMedium, String>{
        vm_ground: '''Ground''',
        vm_air: '''Air''',
        vm_water: '''Water''',
        vm_underwater: '''Underwater''',
        vm_unknown: '''Unknown''',
      };

  const VehicleMediumEnumMedium(int value) : super(value);

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
  static const cd_x = CollisionBitfieldType(0x01);

  /// Collision detected in the y-axis
  static const cd_y = CollisionBitfieldType(0x02);

  /// Collision detected in the z-axis
  static const cd_z = CollisionBitfieldType(0x04);

  /// Sudden impact detected
  static const cd_impact = CollisionBitfieldType(0x08);

  static List<CollisionBitfieldType> get values => <CollisionBitfieldType>[
        cd_x,
        cd_y,
        cd_z,
        cd_impact,
      ];

  static core.Map<CollisionBitfieldType, String> get names =>
      <CollisionBitfieldType, String>{
        cd_x: '''X-axis''',
        cd_y: '''Y-axis''',
        cd_z: '''Z-axis''',
        cd_impact: '''Impact''',
      };

  const CollisionBitfieldType(int value) : super(value);

  @override
  String toPrettyString() {
    var ret;
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

  static CollisionBitfieldType fromBits(List<CollisionBitfieldType> bits) =>
      (bits.length < 2)
          ? CollisionBitfieldType(bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce((b1, b2) => CollisionBitfieldType(b1.value | b2.value));
}

/// Position mismatch monitoring flag.
class FormStateEnumPosSimMon extends EnumType {
  static const pos_ok = FormStateEnumPosSimMon(0);
  static const pos_wrn = FormStateEnumPosSimMon(1);
  static const pos_lim = FormStateEnumPosSimMon(2);

  static List<FormStateEnumPosSimMon> get values => <FormStateEnumPosSimMon>[
        pos_ok,
        pos_wrn,
        pos_lim,
      ];

  static core.Map<FormStateEnumPosSimMon, String> get names =>
      <FormStateEnumPosSimMon, String>{
        pos_ok: '''Ok''',
        pos_wrn: '''Warning threshold''',
        pos_lim: '''Limit threshold''',
      };

  const FormStateEnumPosSimMon(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Communications monitoring flag.
class FormStateEnumCommMon extends EnumType {
  static const comms_ok = FormStateEnumCommMon(0);
  static const comms_timeout = FormStateEnumCommMon(1);

  static List<FormStateEnumCommMon> get values => <FormStateEnumCommMon>[
        comms_ok,
        comms_timeout,
      ];

  static core.Map<FormStateEnumCommMon, String> get names =>
      <FormStateEnumCommMon, String>{
        comms_ok: '''Ok''',
        comms_timeout: '''Timeout''',
      };

  const FormStateEnumCommMon(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Convergence monitoring flag.
class FormStateEnumConvergMon extends EnumType {
  static const conv_ok = FormStateEnumConvergMon(0);
  static const conv_timeout = FormStateEnumConvergMon(1);

  static List<FormStateEnumConvergMon> get values => <FormStateEnumConvergMon>[
        conv_ok,
        conv_timeout,
      ];

  static core.Map<FormStateEnumConvergMon, String> get names =>
      <FormStateEnumConvergMon, String>{
        conv_ok: '''Ok''',
        conv_timeout: '''Timeout''',
      };

  const FormStateEnumConvergMon(int value) : super(value);

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
  static const al_manual = AutopilotModeEnumAutonomy(0);

  /// Autopilot has some control
  static const al_assisted = AutopilotModeEnumAutonomy(1);

  /// Autopilot has full control
  static const al_auto = AutopilotModeEnumAutonomy(2);

  static List<AutopilotModeEnumAutonomy> get values =>
      <AutopilotModeEnumAutonomy>[
        al_manual,
        al_assisted,
        al_auto,
      ];

  static core.Map<AutopilotModeEnumAutonomy, String> get names =>
      <AutopilotModeEnumAutonomy, String>{
        al_manual: '''Manual''',
        al_assisted: '''Assisted''',
        al_auto: '''Auto''',
      };

  const AutopilotModeEnumAutonomy(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Indicates if the message is a request, or a reply to a previous request.
class FormationStateEnumType extends EnumType {
  static const fc_request = FormationStateEnumType(0);
  static const fc_report = FormationStateEnumType(1);

  static List<FormationStateEnumType> get values => <FormationStateEnumType>[
        fc_request,
        fc_report,
      ];

  static core.Map<FormationStateEnumType, String> get names =>
      <FormationStateEnumType, String>{
        fc_request: '''Request''',
        fc_report: '''Report''',
      };

  const FormationStateEnumType(int value) : super(value);

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
  static const op_start = FormationStateEnumOp(0);

  /// Stop the formation maneuver.
  static const op_stop = FormationStateEnumOp(1);

  static List<FormationStateEnumOp> get values => <FormationStateEnumOp>[
        op_start,
        op_stop,
      ];

  static core.Map<FormationStateEnumOp, String> get names =>
      <FormationStateEnumOp, String>{
        op_start: '''Start''',
        op_stop: '''Stop''',
      };

  const FormationStateEnumOp(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Position mismatch monitoring flag.
class FormationStateEnumPosSimMon extends EnumType {
  static const pos_ok = FormationStateEnumPosSimMon(0);
  static const pos_wrn = FormationStateEnumPosSimMon(1);
  static const pos_lim = FormationStateEnumPosSimMon(2);

  static List<FormationStateEnumPosSimMon> get values =>
      <FormationStateEnumPosSimMon>[
        pos_ok,
        pos_wrn,
        pos_lim,
      ];

  static core.Map<FormationStateEnumPosSimMon, String> get names =>
      <FormationStateEnumPosSimMon, String>{
        pos_ok: '''Ok''',
        pos_wrn: '''Warning threshold''',
        pos_lim: '''Limit threshold''',
      };

  const FormationStateEnumPosSimMon(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Communications monitoring flag.
class FormationStateEnumCommMon extends EnumType {
  static const comms_ok = FormationStateEnumCommMon(0);
  static const comms_timeout = FormationStateEnumCommMon(1);

  static List<FormationStateEnumCommMon> get values =>
      <FormationStateEnumCommMon>[
        comms_ok,
        comms_timeout,
      ];

  static core.Map<FormationStateEnumCommMon, String> get names =>
      <FormationStateEnumCommMon, String>{
        comms_ok: '''Ok''',
        comms_timeout: '''Timeout''',
      };

  const FormationStateEnumCommMon(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Convergence monitoring flag.
class FormationStateEnumConvergMon extends EnumType {
  static const conv_ok = FormationStateEnumConvergMon(0);
  static const conv_timeout = FormationStateEnumConvergMon(1);

  static List<FormationStateEnumConvergMon> get values =>
      <FormationStateEnumConvergMon>[
        conv_ok,
        conv_timeout,
      ];

  static core.Map<FormationStateEnumConvergMon, String> get names =>
      <FormationStateEnumConvergMon, String>{
        conv_ok: '''Ok''',
        conv_timeout: '''Timeout''',
      };

  const FormationStateEnumConvergMon(int value) : super(value);

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
  static const op_request_start = ReportControlEnumOp(0);

  /// The destination system will reply a message with this operation
  /// everytime a report is successfully started. The periodicity of
  /// reports is indicated in the field 'period' while the communication
  /// interface to be used is described in field 'interface'. If applicable,
  /// the destination address is defined in field 'dst'.
  static const op_started = ReportControlEnumOp(1);

  /// Request a system to stop dispatching reports through a given
  /// communication interface described in 'interface'. The destination
  /// system will reply with a STOPPED command. If applicable, the
  /// destination address is defined in field 'dst'.
  static const op_request_stop = ReportControlEnumOp(2);

  /// The destination system will reply a message with this operation
  /// everytime a scheduled report is successfully stopped in a defined
  /// communication interface. If applicable, the destination address
  /// is defined in field 'dst'.
  static const op_stopped = ReportControlEnumOp(3);

  /// Request a system to issue a single report in a defined communication
  /// interface. The destination system will reply with a REPORT_ISSUED command.
  /// If applicable, the destination address is defined in field 'dst'.
  static const op_request_report = ReportControlEnumOp(4);

  /// The destination system will reply a single report request with
  /// this operation.If applicable, the destination address is defined
  /// in field 'dst'.
  static const op_report_sent = ReportControlEnumOp(5);

  static List<ReportControlEnumOp> get values => <ReportControlEnumOp>[
        op_request_start,
        op_started,
        op_request_stop,
        op_stopped,
        op_request_report,
        op_report_sent,
      ];

  static core.Map<ReportControlEnumOp, String> get names =>
      <ReportControlEnumOp, String>{
        op_request_start: '''Request Start of Reports''',
        op_started: '''Report Started''',
        op_request_stop: '''Request Stop of Reports''',
        op_stopped: '''Report Stopped''',
        op_request_report: '''Request Single Reports''',
        op_report_sent: '''Single Report Sent''',
      };

  const ReportControlEnumOp(int value) : super(value);

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
  static const ci_acoustic = ReportControlBitfieldCommInterface(0x01);

  /// Use satellite communications
  static const ci_satellite = ReportControlBitfieldCommInterface(0x02);

  /// Use Global System for Mobile Communications
  static const ci_gsm = ReportControlBitfieldCommInterface(0x04);

  /// Use mobile networks
  static const ci_mobile = ReportControlBitfieldCommInterface(0x08);

  /// Use Radio telemetry
  static const ci_radio = ReportControlBitfieldCommInterface(0x10);

  static List<ReportControlBitfieldCommInterface> get values =>
      <ReportControlBitfieldCommInterface>[
        ci_acoustic,
        ci_satellite,
        ci_gsm,
        ci_mobile,
        ci_radio,
      ];

  static core.Map<ReportControlBitfieldCommInterface, String> get names =>
      <ReportControlBitfieldCommInterface, String>{
        ci_acoustic: '''Acoustic''',
        ci_satellite: '''Satellite''',
        ci_gsm: '''GSM''',
        ci_mobile: '''Mobile''',
        ci_radio: '''Radio''',
      };

  const ReportControlBitfieldCommInterface(int value) : super(value);

  @override
  String toPrettyString() {
    var ret;
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

  static ReportControlBitfieldCommInterface fromBits(
          List<ReportControlBitfieldCommInterface> bits) =>
      (bits.length < 2)
          ? ReportControlBitfieldCommInterface(bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce((b1, b2) =>
              ReportControlBitfieldCommInterface(b1.value | b2.value));
}

/// Communication mean to be used to transfer these data.
class TransmissionRequestEnumCommMean extends EnumType {
  static const cmean_wifi = TransmissionRequestEnumCommMean(0);
  static const cmean_acoustic = TransmissionRequestEnumCommMean(1);
  static const cmean_satellite = TransmissionRequestEnumCommMean(2);
  static const cmean_gsm = TransmissionRequestEnumCommMean(3);
  static const cmean_any = TransmissionRequestEnumCommMean(4);
  static const cmean_all = TransmissionRequestEnumCommMean(5);

  static List<TransmissionRequestEnumCommMean> get values =>
      <TransmissionRequestEnumCommMean>[
        cmean_wifi,
        cmean_acoustic,
        cmean_satellite,
        cmean_gsm,
        cmean_any,
        cmean_all,
      ];

  static core.Map<TransmissionRequestEnumCommMean, String> get names =>
      <TransmissionRequestEnumCommMean, String>{
        cmean_wifi: '''WiFi''',
        cmean_acoustic: '''Acoustic''',
        cmean_satellite: '''Satellite''',
        cmean_gsm: '''GSM''',
        cmean_any: '''Any''',
        cmean_all: '''All''',
      };

  const TransmissionRequestEnumCommMean(int value) : super(value);

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
  static const dmode_inlinemsg = TransmissionRequestEnumDataMode(0);
  static const dmode_text = TransmissionRequestEnumDataMode(1);
  static const dmode_raw = TransmissionRequestEnumDataMode(2);
  static const dmode_abort = TransmissionRequestEnumDataMode(3);
  static const dmode_range = TransmissionRequestEnumDataMode(4);
  static const dmode_reverse_range = TransmissionRequestEnumDataMode(5);

  static List<TransmissionRequestEnumDataMode> get values =>
      <TransmissionRequestEnumDataMode>[
        dmode_inlinemsg,
        dmode_text,
        dmode_raw,
        dmode_abort,
        dmode_range,
        dmode_reverse_range,
      ];

  static core.Map<TransmissionRequestEnumDataMode, String> get names =>
      <TransmissionRequestEnumDataMode, String>{
        dmode_inlinemsg: '''Inline Message''',
        dmode_text: '''Text''',
        dmode_raw: '''Raw Data''',
        dmode_abort: '''Abort''',
        dmode_range: '''Range''',
        dmode_reverse_range: '''Reverse Range''',
      };

  const TransmissionRequestEnumDataMode(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class TransmissionStatusEnumStatus extends EnumType {
  static const tstat_in_progress = TransmissionStatusEnumStatus(0);
  static const tstat_sent = TransmissionStatusEnumStatus(1);
  static const tstat_delivered = TransmissionStatusEnumStatus(51);
  static const tstat_maybe_delivered = TransmissionStatusEnumStatus(52);
  static const tstat_range_received = TransmissionStatusEnumStatus(60);
  static const tstat_input_failure = TransmissionStatusEnumStatus(101);
  static const tstat_temporary_failure = TransmissionStatusEnumStatus(102);
  static const tstat_permanent_failure = TransmissionStatusEnumStatus(103);

  static List<TransmissionStatusEnumStatus> get values =>
      <TransmissionStatusEnumStatus>[
        tstat_in_progress,
        tstat_sent,
        tstat_delivered,
        tstat_maybe_delivered,
        tstat_range_received,
        tstat_input_failure,
        tstat_temporary_failure,
        tstat_permanent_failure,
      ];

  static core.Map<TransmissionStatusEnumStatus, String> get names =>
      <TransmissionStatusEnumStatus, String>{
        tstat_in_progress: '''In progress''',
        tstat_sent: '''Sent''',
        tstat_delivered: '''Delivered''',
        tstat_maybe_delivered: '''Delivery is unknown''',
        tstat_range_received: '''Range received''',
        tstat_input_failure: '''Input Error''',
        tstat_temporary_failure: '''Temporary Error''',
        tstat_permanent_failure: '''Permanent Failure''',
      };

  const TransmissionStatusEnumStatus(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class SmsStatusEnumStatus extends EnumType {
  static const smsstat_queued = SmsStatusEnumStatus(0);
  static const smsstat_sent = SmsStatusEnumStatus(1);
  static const smsstat_input_failure = SmsStatusEnumStatus(101);
  static const smsstat_error = SmsStatusEnumStatus(102);

  static List<SmsStatusEnumStatus> get values => <SmsStatusEnumStatus>[
        smsstat_queued,
        smsstat_sent,
        smsstat_input_failure,
        smsstat_error,
      ];

  static core.Map<SmsStatusEnumStatus, String> get names =>
      <SmsStatusEnumStatus, String>{
        smsstat_queued: '''Queued''',
        smsstat_sent: '''Sent''',
        smsstat_input_failure: '''Input Error''',
        smsstat_error: '''Error trying to send sms''',
      };

  const SmsStatusEnumStatus(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class VtolStateEnumState extends EnumType {
  /// Vehicle is not configured as VTOL.
  static const vtol_state_undefined = VtolStateEnumState(0);

  /// Vehicle is in transition from multicopter to fixed-wing.
  static const vtol_state_transition_to_fw = VtolStateEnumState(1);

  /// Vehicle is in transition from fixed-wing to multicopter.
  static const vtol_state_transition_to_mc = VtolStateEnumState(2);

  /// Vehicle is in multicopter state.
  static const vtol_state_mc = VtolStateEnumState(3);

  /// Vehicle is in fixed-wing state.
  static const vtol_state_fw = VtolStateEnumState(4);

  static List<VtolStateEnumState> get values => <VtolStateEnumState>[
        vtol_state_undefined,
        vtol_state_transition_to_fw,
        vtol_state_transition_to_mc,
        vtol_state_mc,
        vtol_state_fw,
      ];

  static core.Map<VtolStateEnumState, String> get names =>
      <VtolStateEnumState, String>{
        vtol_state_undefined: '''Undefined''',
        vtol_state_transition_to_fw: '''Transition to Fixed-Wing''',
        vtol_state_transition_to_mc: '''Transition to MultiCopter''',
        vtol_state_mc: '''MutiCopter''',
        vtol_state_fw: '''Fixed-Wing''',
      };

  const VtolStateEnumState(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class ArmingStateEnumState extends EnumType {
  static const motors_armed = ArmingStateEnumState(0);
  static const motors_disarmed = ArmingStateEnumState(1);

  static List<ArmingStateEnumState> get values => <ArmingStateEnumState>[
        motors_armed,
        motors_disarmed,
      ];

  static core.Map<ArmingStateEnumState, String> get names =>
      <ArmingStateEnumState, String>{
        motors_armed: '''Armed''',
        motors_disarmed: '''Disarmed''',
      };

  const ArmingStateEnumState(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class TCPStatusEnumStatus extends EnumType {
  static const tcpstat_queued = TCPStatusEnumStatus(0);
  static const tcpstat_sent = TCPStatusEnumStatus(1);
  static const tcpstat_input_failure = TCPStatusEnumStatus(100);
  static const tcpstat_host_unknown = TCPStatusEnumStatus(101);
  static const tcpstat_cant_connect = TCPStatusEnumStatus(102);
  static const tcpstat_error = TCPStatusEnumStatus(103);

  static List<TCPStatusEnumStatus> get values => <TCPStatusEnumStatus>[
        tcpstat_queued,
        tcpstat_sent,
        tcpstat_input_failure,
        tcpstat_host_unknown,
        tcpstat_cant_connect,
        tcpstat_error,
      ];

  static core.Map<TCPStatusEnumStatus, String> get names =>
      <TCPStatusEnumStatus, String>{
        tcpstat_queued: '''Queued''',
        tcpstat_sent: '''Sent''',
        tcpstat_input_failure: '''Input Error''',
        tcpstat_host_unknown: '''Host Unknown''',
        tcpstat_cant_connect: '''Can't Connect''',
        tcpstat_error: '''Error trying to send sms''',
      };

  const TCPStatusEnumStatus(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class EmergencyControlEnumCommand extends EnumType {
  static const ectl_enable = EmergencyControlEnumCommand(0);
  static const ectl_disable = EmergencyControlEnumCommand(1);
  static const ectl_start = EmergencyControlEnumCommand(2);
  static const ectl_stop = EmergencyControlEnumCommand(3);
  static const ectl_query = EmergencyControlEnumCommand(4);
  static const ectl_set_plan = EmergencyControlEnumCommand(5);

  static List<EmergencyControlEnumCommand> get values =>
      <EmergencyControlEnumCommand>[
        ectl_enable,
        ectl_disable,
        ectl_start,
        ectl_stop,
        ectl_query,
        ectl_set_plan,
      ];

  static core.Map<EmergencyControlEnumCommand, String> get names =>
      <EmergencyControlEnumCommand, String>{
        ectl_enable: '''Enable''',
        ectl_disable: '''Disable''',
        ectl_start: '''Start''',
        ectl_stop: '''Stop''',
        ectl_query: '''Query''',
        ectl_set_plan: '''Set Plan''',
      };

  const EmergencyControlEnumCommand(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class EmergencyControlStateEnumState extends EnumType {
  static const ecs_not_configured = EmergencyControlStateEnumState(0);
  static const ecs_disabled = EmergencyControlStateEnumState(1);
  static const ecs_enabled = EmergencyControlStateEnumState(2);
  static const ecs_armed = EmergencyControlStateEnumState(3);
  static const ecs_active = EmergencyControlStateEnumState(4);
  static const ecs_stopping = EmergencyControlStateEnumState(5);

  static List<EmergencyControlStateEnumState> get values =>
      <EmergencyControlStateEnumState>[
        ecs_not_configured,
        ecs_disabled,
        ecs_enabled,
        ecs_armed,
        ecs_active,
        ecs_stopping,
      ];

  static core.Map<EmergencyControlStateEnumState, String> get names =>
      <EmergencyControlStateEnumState, String>{
        ecs_not_configured: '''Not Configured''',
        ecs_disabled: '''Disabled''',
        ecs_enabled: '''Enabled''',
        ecs_armed: '''Armed''',
        ecs_active: '''Active''',
        ecs_stopping: '''Stopping''',
      };

  const EmergencyControlStateEnumState(int value) : super(value);

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
  static const dbt_request = PlanDBEnumType(0);
  static const dbt_success = PlanDBEnumType(1);
  static const dbt_failure = PlanDBEnumType(2);
  static const dbt_in_progress = PlanDBEnumType(3);

  static List<PlanDBEnumType> get values => <PlanDBEnumType>[
        dbt_request,
        dbt_success,
        dbt_failure,
        dbt_in_progress,
      ];

  static core.Map<PlanDBEnumType, String> get names => <PlanDBEnumType, String>{
        dbt_request: '''Request''',
        dbt_success: '''Reply -- Success''',
        dbt_failure: '''Reply -- Failure''',
        dbt_in_progress: '''Reply -- In Progress''',
      };

  const PlanDBEnumType(int value) : super(value);

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
  static const dbop_set = PlanDBEnumOp(0);

  /// Delete a plan from the DB. The 'plan_id' field identifies
  /// the plan to delete.
  static const dbop_del = PlanDBEnumOp(1);

  /// Get a plan stored in the DB.The 'plan_id' field identifies
  /// the plan. Successful replies will yield a
  /// 'PlanSpecification' message in the 'arg' field.
  static const dbop_get = PlanDBEnumOp(2);

  /// Get DB state for a stored plan. The 'plan_id' field
  /// identifies the plan. Successful replies will yield a
  /// 'PlanDBInformation' message in the 'arg' field.
  static const dbop_get_info = PlanDBEnumOp(3);

  /// Clear the entire DB.
  static const dbop_clear = PlanDBEnumOp(4);

  /// Get state of the entire DB. Successful replies will yield a
  /// 'PlanDBState' message in the 'arg' field but without
  /// individual plan information (in the 'plans_info' field of
  /// 'PlanDBState').
  static const dbop_get_state = PlanDBEnumOp(5);

  /// Get detailed state of the entire DB. Successful replies
  /// will yield a 'PlanDBState' message in the 'arg' field with
  /// individual plan information (in the 'plans_info' field of
  /// 'PlanDBState').
  static const dbop_get_dstate = PlanDBEnumOp(6);

  /// PlanDB replies of this type are sent automatically during
  /// bootstrap.
  static const dbop_boot = PlanDBEnumOp(7);

  static List<PlanDBEnumOp> get values => <PlanDBEnumOp>[
        dbop_set,
        dbop_del,
        dbop_get,
        dbop_get_info,
        dbop_clear,
        dbop_get_state,
        dbop_get_dstate,
        dbop_boot,
      ];

  static core.Map<PlanDBEnumOp, String> get names => <PlanDBEnumOp, String>{
        dbop_set: '''Set Plan''',
        dbop_del: '''Delete Plan''',
        dbop_get: '''Get Plan''',
        dbop_get_info: '''Get Plan Info''',
        dbop_clear: '''Clear Database''',
        dbop_get_state: '''Get Database State (Simple)''',
        dbop_get_dstate: '''Get Database State (Detailed)''',
        dbop_boot: '''Boot Notification''',
      };

  const PlanDBEnumOp(int value) : super(value);

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
  static const pc_request = PlanControlEnumType(0);
  static const pc_success = PlanControlEnumType(1);
  static const pc_failure = PlanControlEnumType(2);
  static const pc_in_progress = PlanControlEnumType(3);

  static List<PlanControlEnumType> get values => <PlanControlEnumType>[
        pc_request,
        pc_success,
        pc_failure,
        pc_in_progress,
      ];

  static core.Map<PlanControlEnumType, String> get names =>
      <PlanControlEnumType, String>{
        pc_request: '''Request''',
        pc_success: '''Reply -- Success''',
        pc_failure: '''Reply -- Failure''',
        pc_in_progress: '''Reply -- In Progress''',
      };

  const PlanControlEnumType(int value) : super(value);

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
  static const pc_start = PlanControlEnumOp(0);

  /// Stop current plan being executed if any.
  static const pc_stop = PlanControlEnumOp(1);

  /// Load Plan. If a :ref:`PlanSpecification` is given with the
  /// request in the *data* field, then that plan is used and
  /// stored in the Plan DB. Otherwise, the plan is loaded from
  /// the Plan DB.
  static const pc_load = PlanControlEnumOp(2);

  /// Get loaded plan. For a successful reply, the *data* field
  /// will contain the :ref:`PlanSpecification` message that
  /// corresponds to the currently loaded plan.
  static const pc_get = PlanControlEnumOp(3);

  static List<PlanControlEnumOp> get values => <PlanControlEnumOp>[
        pc_start,
        pc_stop,
        pc_load,
        pc_get,
      ];

  static core.Map<PlanControlEnumOp, String> get names =>
      <PlanControlEnumOp, String>{
        pc_start: '''Start Plan''',
        pc_stop: '''Stop Plan''',
        pc_load: '''Load Plan''',
        pc_get: '''Get Plan''',
      };

  const PlanControlEnumOp(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class PlanControlBitfieldFlags extends BitfieldType {
  /// Perform vehicle calibration.
  static const flg_calibrate = PlanControlBitfieldFlags(0x0001);

  /// Execute current plan while ignoring some errors that might be active.
  static const flg_ignore_errors = PlanControlBitfieldFlags(0x0002);

  static List<PlanControlBitfieldFlags> get values =>
      <PlanControlBitfieldFlags>[
        flg_calibrate,
        flg_ignore_errors,
      ];

  static core.Map<PlanControlBitfieldFlags, String> get names =>
      <PlanControlBitfieldFlags, String>{
        flg_calibrate: '''Calibrate Vehicle''',
        flg_ignore_errors: '''Ignore Errors''',
      };

  const PlanControlBitfieldFlags(int value) : super(value);

  @override
  String toPrettyString() {
    var ret;
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
  static const pcs_blocked = PlanControlStateEnumState(0);

  /// Ready to start plan execution.
  static const pcs_ready = PlanControlStateEnumState(1);

  /// Initializing plan for execution.
  static const pcs_initializing = PlanControlStateEnumState(2);

  /// Executing plan.
  static const pcs_executing = PlanControlStateEnumState(3);

  static List<PlanControlStateEnumState> get values =>
      <PlanControlStateEnumState>[
        pcs_blocked,
        pcs_ready,
        pcs_initializing,
        pcs_executing,
      ];

  static core.Map<PlanControlStateEnumState, String> get names =>
      <PlanControlStateEnumState, String>{
        pcs_blocked: '''Blocked''',
        pcs_ready: '''Ready''',
        pcs_initializing: '''Initializing''',
        pcs_executing: '''Executing''',
      };

  const PlanControlStateEnumState(int value) : super(value);

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
  static const lpo_none = PlanControlStateEnumLastOutcome(0);

  /// Last plan execution was successful.
  static const lpo_success = PlanControlStateEnumLastOutcome(1);

  /// Last plan execution was a failure.
  static const lpo_failure = PlanControlStateEnumLastOutcome(2);

  static List<PlanControlStateEnumLastOutcome> get values =>
      <PlanControlStateEnumLastOutcome>[
        lpo_none,
        lpo_success,
        lpo_failure,
      ];

  static core.Map<PlanControlStateEnumLastOutcome, String> get names =>
      <PlanControlStateEnumLastOutcome, String>{
        lpo_none: '''None''',
        lpo_success: '''Success''',
        lpo_failure: '''Failure''',
      };

  const PlanControlStateEnumLastOutcome(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class PlanVariableEnumType extends EnumType {
  static const pvt_boolean = PlanVariableEnumType(0);
  static const pvt_number = PlanVariableEnumType(1);
  static const pvt_text = PlanVariableEnumType(2);
  static const pvt_message = PlanVariableEnumType(3);

  static List<PlanVariableEnumType> get values => <PlanVariableEnumType>[
        pvt_boolean,
        pvt_number,
        pvt_text,
        pvt_message,
      ];

  static core.Map<PlanVariableEnumType, String> get names =>
      <PlanVariableEnumType, String>{
        pvt_boolean: '''Boolean''',
        pvt_number: '''Number''',
        pvt_text: '''Text''',
        pvt_message: '''Message''',
      };

  const PlanVariableEnumType(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class PlanVariableEnumAccess extends EnumType {
  static const pva_input = PlanVariableEnumAccess(0);
  static const pva_output = PlanVariableEnumAccess(1);
  static const pva_local = PlanVariableEnumAccess(2);

  static List<PlanVariableEnumAccess> get values => <PlanVariableEnumAccess>[
        pva_input,
        pva_output,
        pva_local,
      ];

  static core.Map<PlanVariableEnumAccess, String> get names =>
      <PlanVariableEnumAccess, String>{
        pva_input: '''Input''',
        pva_output: '''Output''',
        pva_local: '''Local''',
      };

  const PlanVariableEnumAccess(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class PlanGenerationEnumCmd extends EnumType {
  /// Generate the plan and store it in the PlanDB.
  static const cmd_generate = PlanGenerationEnumCmd(0);

  /// Generate (storing it in the PlanDB) and execute it immediately.
  static const cmd_execute = PlanGenerationEnumCmd(1);

  static List<PlanGenerationEnumCmd> get values => <PlanGenerationEnumCmd>[
        cmd_generate,
        cmd_execute,
      ];

  static core.Map<PlanGenerationEnumCmd, String> get names =>
      <PlanGenerationEnumCmd, String>{
        cmd_generate: '''Generate''',
        cmd_execute: '''Execute''',
      };

  const PlanGenerationEnumCmd(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class PlanGenerationEnumOp extends EnumType {
  /// Request the execution of this command.
  static const op_request = PlanGenerationEnumOp(0);

  /// Some error has occurred while executing the command. The
  /// error can be found in the 'params' tuplelist (under the
  /// key 'error').
  static const op_error = PlanGenerationEnumOp(1);

  /// The requested command was executed successfully.
  static const op_success = PlanGenerationEnumOp(2);

  static List<PlanGenerationEnumOp> get values => <PlanGenerationEnumOp>[
        op_request,
        op_error,
        op_success,
      ];

  static core.Map<PlanGenerationEnumOp, String> get names =>
      <PlanGenerationEnumOp, String>{
        op_request: '''Request''',
        op_error: '''Error''',
        op_success: '''Success''',
      };

  const PlanGenerationEnumOp(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Action on the formation leader state variables
class LeaderStateEnumOp extends EnumType {
  static const op_request = LeaderStateEnumOp(0);
  static const op_set = LeaderStateEnumOp(1);
  static const op_report = LeaderStateEnumOp(2);

  static List<LeaderStateEnumOp> get values => <LeaderStateEnumOp>[
        op_request,
        op_set,
        op_report,
      ];

  static core.Map<LeaderStateEnumOp, String> get names =>
      <LeaderStateEnumOp, String>{
        op_request: '''Request''',
        op_set: '''Set''',
        op_report: '''Report''',
      };

  const LeaderStateEnumOp(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Type of plan statistics, if they are launched before, during or after the plan execution.
class PlanStatisticsEnumType extends EnumType {
  static const tp_preplan = PlanStatisticsEnumType(0);
  static const tp_inplan = PlanStatisticsEnumType(1);
  static const tp_postplan = PlanStatisticsEnumType(2);

  static List<PlanStatisticsEnumType> get values => <PlanStatisticsEnumType>[
        tp_preplan,
        tp_inplan,
        tp_postplan,
      ];

  static core.Map<PlanStatisticsEnumType, String> get names =>
      <PlanStatisticsEnumType, String>{
        tp_preplan: '''Before Plan''',
        tp_inplan: '''During Plan''',
        tp_postplan: '''After Plan''',
      };

  const PlanStatisticsEnumType(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class PlanStatisticsBitfieldProperties extends BitfieldType {
  /// Basic plan, meaning it is Linear, Finite and Noncyclic.
  static const prp_basic = PlanStatisticsBitfieldProperties(0x00);

  /// Plan is nonlinear.
  static const prp_nonlinear = PlanStatisticsBitfieldProperties(0x01);

  /// Plan is infinite in duration.
  static const prp_infinite = PlanStatisticsBitfieldProperties(0x02);

  /// Plan is cyclical.
  static const prp_cyclical = PlanStatisticsBitfieldProperties(0x04);

  /// All properties checked.
  static const prp_all = PlanStatisticsBitfieldProperties(0x07);

  static List<PlanStatisticsBitfieldProperties> get values =>
      <PlanStatisticsBitfieldProperties>[
        prp_basic,
        prp_nonlinear,
        prp_infinite,
        prp_cyclical,
        prp_all,
      ];

  static core.Map<PlanStatisticsBitfieldProperties, String> get names =>
      <PlanStatisticsBitfieldProperties, String>{
        prp_basic: '''Basic Plan''',
        prp_nonlinear: '''Nonlinear''',
        prp_infinite: '''Infinite''',
        prp_cyclical: '''Cyclical''',
        prp_all: '''All''',
      };

  const PlanStatisticsBitfieldProperties(int value) : super(value);

  @override
  String toPrettyString() {
    var ret;
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

  static PlanStatisticsBitfieldProperties fromBits(
          List<PlanStatisticsBitfieldProperties> bits) =>
      (bits.length < 2)
          ? PlanStatisticsBitfieldProperties(bits.isEmpty ? 0 : bits[0].value)
          : bits.reduce((b1, b2) =>
              PlanStatisticsBitfieldProperties(b1.value | b2.value));
}

/// How the position was received/calculated
class ReportedStateEnumSType extends EnumType {
  static const stype_wi_fi = ReportedStateEnumSType(0);
  static const stype_tracker = ReportedStateEnumSType(1);
  static const stype_sms = ReportedStateEnumSType(2);
  static const stype_acoustic_modem = ReportedStateEnumSType(3);
  static const stype_unknown = ReportedStateEnumSType(254);

  static List<ReportedStateEnumSType> get values => <ReportedStateEnumSType>[
        stype_wi_fi,
        stype_tracker,
        stype_sms,
        stype_acoustic_modem,
        stype_unknown,
      ];

  static core.Map<ReportedStateEnumSType, String> get names =>
      <ReportedStateEnumSType, String>{
        stype_wi_fi: '''Wi-Fi''',
        stype_tracker: '''Tracker''',
        stype_sms: '''SMS''',
        stype_acoustic_modem: '''Acoustic Modem''',
        stype_unknown: '''Unknown source''',
      };

  const ReportedStateEnumSType(int value) : super(value);

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
  static const ftype_poi = MapFeatureEnumFeatureType(0);

  /// These features should be represented as a filled polygon (no label)
  static const ftype_filledpoly = MapFeatureEnumFeatureType(1);

  /// These features should be represented as a countoured closed polygon (no fill and no label)
  static const ftype_contouredpoly = MapFeatureEnumFeatureType(2);

  /// These features should be represented as an open polygon (no label)
  static const ftype_line = MapFeatureEnumFeatureType(3);

  /// A transponder location in the map
  static const ftype_transponder = MapFeatureEnumFeatureType(4);

  /// Intended vehicle's starting location
  static const ftype_startloc = MapFeatureEnumFeatureType(5);

  /// The offsets reference for this map
  static const ftype_homeref = MapFeatureEnumFeatureType(6);

  static List<MapFeatureEnumFeatureType> get values =>
      <MapFeatureEnumFeatureType>[
        ftype_poi,
        ftype_filledpoly,
        ftype_contouredpoly,
        ftype_line,
        ftype_transponder,
        ftype_startloc,
        ftype_homeref,
      ];

  static core.Map<MapFeatureEnumFeatureType, String> get names =>
      <MapFeatureEnumFeatureType, String>{
        ftype_poi: '''Point of Interest''',
        ftype_filledpoly: '''Filled Polygon''',
        ftype_contouredpoly: '''Countoured Polygon''',
        ftype_line: '''Line''',
        ftype_transponder: '''Transponder''',
        ftype_startloc: '''Start Location''',
        ftype_homeref: '''Home Reference''',
      };

  const MapFeatureEnumFeatureType(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class CcuEventEnumType extends EnumType {
  static const evt_log_entry = CcuEventEnumType(1);
  static const evt_plan_added = CcuEventEnumType(2);
  static const evt_plan_removed = CcuEventEnumType(3);
  static const evt_plan_changed = CcuEventEnumType(4);
  static const evt_map_feature_added = CcuEventEnumType(5);
  static const evt_map_feature_removed = CcuEventEnumType(6);
  static const evt_map_feature_changed = CcuEventEnumType(7);
  static const evt_teleoperation_started = CcuEventEnumType(8);
  static const evt_teleoperation_ended = CcuEventEnumType(9);

  static List<CcuEventEnumType> get values => <CcuEventEnumType>[
        evt_log_entry,
        evt_plan_added,
        evt_plan_removed,
        evt_plan_changed,
        evt_map_feature_added,
        evt_map_feature_removed,
        evt_map_feature_changed,
        evt_teleoperation_started,
        evt_teleoperation_ended,
      ];

  static core.Map<CcuEventEnumType, String> get names =>
      <CcuEventEnumType, String>{
        evt_log_entry: '''Log Book Entry Added''',
        evt_plan_added: '''Plan Added''',
        evt_plan_removed: '''Plan Removed''',
        evt_plan_changed: '''Plan Changed''',
        evt_map_feature_added: '''Map feature added''',
        evt_map_feature_removed: '''Map feature removed''',
        evt_map_feature_changed: '''Map feature changed''',
        evt_teleoperation_started:
            '''The sender is now teleoperating the vehicle''',
        evt_teleoperation_ended:
            '''The sender stopped teleoperating the vehicle''',
      };

  const CcuEventEnumType(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class TrexCommandEnumCommand extends EnumType {
  static const op_disable = TrexCommandEnumCommand(0);
  static const op_enable = TrexCommandEnumCommand(1);
  static const op_post_goal = TrexCommandEnumCommand(2);
  static const op_recall_goal = TrexCommandEnumCommand(3);
  static const op_request_plan = TrexCommandEnumCommand(4);
  static const op_report_plan = TrexCommandEnumCommand(5);

  static List<TrexCommandEnumCommand> get values => <TrexCommandEnumCommand>[
        op_disable,
        op_enable,
        op_post_goal,
        op_recall_goal,
        op_request_plan,
        op_report_plan,
      ];

  static core.Map<TrexCommandEnumCommand, String> get names =>
      <TrexCommandEnumCommand, String>{
        op_disable: '''Disable TREX''',
        op_enable: '''Enable TREX''',
        op_post_goal: '''Post Goal''',
        op_recall_goal: '''Recall Goal''',
        op_request_plan: '''Request current plan''',
        op_report_plan: '''Report current plan''',
      };

  const TrexCommandEnumCommand(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class TrexOperationEnumOp extends EnumType {
  static const op_post_token = TrexOperationEnumOp(1);
  static const op_post_goal = TrexOperationEnumOp(2);
  static const op_recall_goal = TrexOperationEnumOp(3);
  static const op_request_plan = TrexOperationEnumOp(4);
  static const op_report_plan = TrexOperationEnumOp(5);

  static List<TrexOperationEnumOp> get values => <TrexOperationEnumOp>[
        op_post_token,
        op_post_goal,
        op_recall_goal,
        op_request_plan,
        op_report_plan,
      ];

  static core.Map<TrexOperationEnumOp, String> get names =>
      <TrexOperationEnumOp, String>{
        op_post_token: '''Post Token''',
        op_post_goal: '''Post Goal''',
        op_recall_goal: '''Recall Goal''',
        op_request_plan: '''Request current plan''',
        op_report_plan: '''Report current plan''',
      };

  const TrexOperationEnumOp(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class TrexAttributeEnumAttrType extends EnumType {
  static const type_bool = TrexAttributeEnumAttrType(1);
  static const type_int = TrexAttributeEnumAttrType(2);
  static const type_float = TrexAttributeEnumAttrType(3);
  static const type_string = TrexAttributeEnumAttrType(4);
  static const type_enum = TrexAttributeEnumAttrType(5);

  static List<TrexAttributeEnumAttrType> get values =>
      <TrexAttributeEnumAttrType>[
        type_bool,
        type_int,
        type_float,
        type_string,
        type_enum,
      ];

  static core.Map<TrexAttributeEnumAttrType, String> get names =>
      <TrexAttributeEnumAttrType, String>{
        type_bool: '''Boolean Domain''',
        type_int: '''Integer Domain''',
        type_float: '''Float Domain''',
        type_string: '''String Domain''',
        type_enum: '''Enumerated Domain''',
      };

  const TrexAttributeEnumAttrType(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class SessionStatusEnumStatus extends EnumType {
  static const status_established = SessionStatusEnumStatus(1);
  static const status_closed = SessionStatusEnumStatus(2);

  static List<SessionStatusEnumStatus> get values => <SessionStatusEnumStatus>[
        status_established,
        status_closed,
      ];

  static core.Map<SessionStatusEnumStatus, String> get names =>
      <SessionStatusEnumStatus, String>{
        status_established: '''Established''',
        status_closed: '''Closed''',
      };

  const SessionStatusEnumStatus(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Event type.
class IoEventEnumType extends EnumType {
  static const iov_type_input = IoEventEnumType(1);
  static const iov_type_input_error = IoEventEnumType(2);

  static List<IoEventEnumType> get values => <IoEventEnumType>[
        iov_type_input,
        iov_type_input_error,
      ];

  static core.Map<IoEventEnumType, String> get names =>
      <IoEventEnumType, String>{
        iov_type_input: '''Input Available''',
        iov_type_input_error: '''Input Error''',
      };

  const IoEventEnumType(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class UamTxFrameBitfieldFlags extends BitfieldType {
  static const utf_ack = UamTxFrameBitfieldFlags(0x01);
  static const utf_delayed = UamTxFrameBitfieldFlags(0x02);

  static List<UamTxFrameBitfieldFlags> get values => <UamTxFrameBitfieldFlags>[
        utf_ack,
        utf_delayed,
      ];

  static core.Map<UamTxFrameBitfieldFlags, String> get names =>
      <UamTxFrameBitfieldFlags, String>{
        utf_ack: '''Acknowledgement''',
        utf_delayed: '''Delayed''',
      };

  const UamTxFrameBitfieldFlags(int value) : super(value);

  @override
  String toPrettyString() {
    var ret;
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

  static UamTxFrameBitfieldFlags fromBits(List<UamTxFrameBitfieldFlags> bits) =>
      (bits.length < 2)
          ? UamTxFrameBitfieldFlags(bits.isEmpty ? 0 : bits[0].value)
          : bits
              .reduce((b1, b2) => UamTxFrameBitfieldFlags(b1.value | b2.value));
}

class UamRxFrameBitfieldFlags extends BitfieldType {
  static const urf_promiscuous = UamRxFrameBitfieldFlags(0x01);
  static const urf_delayed = UamRxFrameBitfieldFlags(0x02);

  static List<UamRxFrameBitfieldFlags> get values => <UamRxFrameBitfieldFlags>[
        urf_promiscuous,
        urf_delayed,
      ];

  static core.Map<UamRxFrameBitfieldFlags, String> get names =>
      <UamRxFrameBitfieldFlags, String>{
        urf_promiscuous: '''Promiscuous''',
        urf_delayed: '''Delayed''',
      };

  const UamRxFrameBitfieldFlags(int value) : super(value);

  @override
  String toPrettyString() {
    var ret;
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

  static UamRxFrameBitfieldFlags fromBits(List<UamRxFrameBitfieldFlags> bits) =>
      (bits.length < 2)
          ? UamRxFrameBitfieldFlags(bits.isEmpty ? 0 : bits[0].value)
          : bits
              .reduce((b1, b2) => UamRxFrameBitfieldFlags(b1.value | b2.value));
}

class UamTxStatusEnumValue extends EnumType {
  static const uts_done = UamTxStatusEnumValue(0);
  static const uts_failed = UamTxStatusEnumValue(1);
  static const uts_canceled = UamTxStatusEnumValue(2);
  static const uts_busy = UamTxStatusEnumValue(3);
  static const uts_inv_addr = UamTxStatusEnumValue(4);
  static const uts_ip = UamTxStatusEnumValue(5);
  static const uts_unsupported = UamTxStatusEnumValue(6);
  static const uts_inv_size = UamTxStatusEnumValue(7);
  static const uts_sent = UamTxStatusEnumValue(8);
  static const uts_delivered = UamTxStatusEnumValue(9);

  static List<UamTxStatusEnumValue> get values => <UamTxStatusEnumValue>[
        uts_done,
        uts_failed,
        uts_canceled,
        uts_busy,
        uts_inv_addr,
        uts_ip,
        uts_unsupported,
        uts_inv_size,
        uts_sent,
        uts_delivered,
      ];

  static core.Map<UamTxStatusEnumValue, String> get names =>
      <UamTxStatusEnumValue, String>{
        uts_done: '''Transmission Completed''',
        uts_failed: '''Transmission Failed''',
        uts_canceled: '''Transmission Canceled''',
        uts_busy: '''Modem is busy''',
        uts_inv_addr: '''Invalid address''',
        uts_ip: '''In Progress''',
        uts_unsupported: '''Unsupported operation''',
        uts_inv_size: '''Invalid transmission size''',
        uts_sent: '''Message has been sent''',
        uts_delivered: '''Message has been acknowledged by the destination''',
      };

  const UamTxStatusEnumValue(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Action on the vehicle formation control parameters.
class FormCtrlParamEnumAction extends EnumType {
  static const op_req = FormCtrlParamEnumAction(0);
  static const op_set = FormCtrlParamEnumAction(1);
  static const op_rep = FormCtrlParamEnumAction(2);

  static List<FormCtrlParamEnumAction> get values => <FormCtrlParamEnumAction>[
        op_req,
        op_set,
        op_rep,
      ];

  static core.Map<FormCtrlParamEnumAction, String> get names =>
      <FormCtrlParamEnumAction, String>{
        op_req: '''Request''',
        op_set: '''Set''',
        op_rep: '''Report''',
      };

  const FormCtrlParamEnumAction(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Action on the vehicle formation control parameters.
class FormationControlParamsEnumAction extends EnumType {
  static const op_req = FormationControlParamsEnumAction(0);
  static const op_set = FormationControlParamsEnumAction(1);
  static const op_rep = FormationControlParamsEnumAction(2);

  static List<FormationControlParamsEnumAction> get values =>
      <FormationControlParamsEnumAction>[
        op_req,
        op_set,
        op_rep,
      ];

  static core.Map<FormationControlParamsEnumAction, String> get names =>
      <FormationControlParamsEnumAction, String>{
        op_req: '''Request''',
        op_set: '''Set''',
        op_rep: '''Report''',
      };

  const FormationControlParamsEnumAction(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Indicates if the message is a request, or a reply to a previous request.
class FormationEvaluationEnumType extends EnumType {
  static const fc_request = FormationEvaluationEnumType(0);
  static const fc_report = FormationEvaluationEnumType(1);

  static List<FormationEvaluationEnumType> get values =>
      <FormationEvaluationEnumType>[
        fc_request,
        fc_report,
      ];

  static core.Map<FormationEvaluationEnumType, String> get names =>
      <FormationEvaluationEnumType, String>{
        fc_request: '''Request''',
        fc_report: '''Report''',
      };

  const FormationEvaluationEnumType(int value) : super(value);

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
  static const op_start = FormationEvaluationEnumOp(0);

  /// Stop the formation maneuver.
  static const op_stop = FormationEvaluationEnumOp(1);

  /// Stop the formation maneuver.
  static const op_ready = FormationEvaluationEnumOp(2);

  /// Stop the formation maneuver.
  static const op_executing = FormationEvaluationEnumOp(3);

  /// Stop the formation maneuver.
  static const op_failure = FormationEvaluationEnumOp(4);

  static List<FormationEvaluationEnumOp> get values =>
      <FormationEvaluationEnumOp>[
        op_start,
        op_stop,
        op_ready,
        op_executing,
        op_failure,
      ];

  static core.Map<FormationEvaluationEnumOp, String> get names =>
      <FormationEvaluationEnumOp, String>{
        op_start: '''Start''',
        op_stop: '''Stop''',
        op_ready: '''Ready''',
        op_executing: '''Executing''',
        op_failure: '''Failure''',
      };

  const FormationEvaluationEnumOp(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class SoiCommandEnumType extends EnumType {
  static const soitype_request = SoiCommandEnumType(1);
  static const soitype_success = SoiCommandEnumType(2);
  static const soitype_error = SoiCommandEnumType(3);

  static List<SoiCommandEnumType> get values => <SoiCommandEnumType>[
        soitype_request,
        soitype_success,
        soitype_error,
      ];

  static core.Map<SoiCommandEnumType, String> get names =>
      <SoiCommandEnumType, String>{
        soitype_request: '''Request''',
        soitype_success: '''Success''',
        soitype_error: '''Error''',
      };

  const SoiCommandEnumType(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class SoiCommandEnumCommand extends EnumType {
  static const soicmd_exec = SoiCommandEnumCommand(1);
  static const soicmd_stop = SoiCommandEnumCommand(2);
  static const soicmd_set_params = SoiCommandEnumCommand(3);
  static const soicmd_get_params = SoiCommandEnumCommand(4);
  static const soicmd_get_plan = SoiCommandEnumCommand(5);
  static const soicmd_resume = SoiCommandEnumCommand(6);

  static List<SoiCommandEnumCommand> get values => <SoiCommandEnumCommand>[
        soicmd_exec,
        soicmd_stop,
        soicmd_set_params,
        soicmd_get_params,
        soicmd_get_plan,
        soicmd_resume,
      ];

  static core.Map<SoiCommandEnumCommand, String> get names =>
      <SoiCommandEnumCommand, String>{
        soicmd_exec: '''Execute Plan''',
        soicmd_stop: '''Stop Execution''',
        soicmd_set_params: '''Set Parameters''',
        soicmd_get_params: '''Get Parameters''',
        soicmd_get_plan: '''Get Plan''',
        soicmd_resume: '''Resume Execution''',
      };

  const SoiCommandEnumCommand(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

class SoiStateEnumState extends EnumType {
  static const soistate_exec = SoiStateEnumState(1);
  static const soistate_idle = SoiStateEnumState(2);
  static const soistate_inactive = SoiStateEnumState(3);

  static List<SoiStateEnumState> get values => <SoiStateEnumState>[
        soistate_exec,
        soistate_idle,
        soistate_inactive,
      ];

  static core.Map<SoiStateEnumState, String> get names =>
      <SoiStateEnumState, String>{
        soistate_exec: '''Executing''',
        soistate_idle: '''Idle''',
        soistate_inactive: '''Inactive''',
      };

  const SoiStateEnumState(int value) : super(value);

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
  static const op_set_cfg = UsblConfigEnumOp(0);

  /// Request the vehicle to send its current beacons configuration.
  static const op_get_cfg = UsblConfigEnumOp(1);
  static const op_cur_cfg = UsblConfigEnumOp(2);

  static List<UsblConfigEnumOp> get values => <UsblConfigEnumOp>[
        op_set_cfg,
        op_get_cfg,
        op_cur_cfg,
      ];

  static core.Map<UsblConfigEnumOp, String> get names =>
      <UsblConfigEnumOp, String>{
        op_set_cfg: '''Set LBL Configuration''',
        op_get_cfg: '''Retrieve LBL Configuration''',
        op_cur_cfg: '''Reply to a GET command''',
      };

  const UsblConfigEnumOp(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Type of measurement.
class DissolvedOrganicMatterEnumType extends EnumType {
  static const dt_colored = DissolvedOrganicMatterEnumType(0);
  static const dt_fluorescent = DissolvedOrganicMatterEnumType(1);

  static List<DissolvedOrganicMatterEnumType> get values =>
      <DissolvedOrganicMatterEnumType>[
        dt_colored,
        dt_fluorescent,
      ];

  static core.Map<DissolvedOrganicMatterEnumType, String> get names =>
      <DissolvedOrganicMatterEnumType, String>{
        dt_colored: '''Colored''',
        dt_fluorescent: '''Fluorescent''',
      };

  const DissolvedOrganicMatterEnumType(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Severity of status.
class ApmStatusEnumSeverity extends EnumType {
  static const apm_emergency = ApmStatusEnumSeverity(0);
  static const apm_alert = ApmStatusEnumSeverity(1);
  static const apm_critical = ApmStatusEnumSeverity(2);
  static const apm_error = ApmStatusEnumSeverity(3);
  static const apm_warning = ApmStatusEnumSeverity(4);
  static const apm_notice = ApmStatusEnumSeverity(5);
  static const apm_info = ApmStatusEnumSeverity(6);
  static const apm_debug = ApmStatusEnumSeverity(7);

  static List<ApmStatusEnumSeverity> get values => <ApmStatusEnumSeverity>[
        apm_emergency,
        apm_alert,
        apm_critical,
        apm_error,
        apm_warning,
        apm_notice,
        apm_info,
        apm_debug,
      ];

  static core.Map<ApmStatusEnumSeverity, String> get names =>
      <ApmStatusEnumSeverity, String>{
        apm_emergency: '''Emergency''',
        apm_alert: '''Alert''',
        apm_critical: '''Critical''',
        apm_error: '''Error''',
        apm_warning: '''Warning''',
        apm_notice: '''Notice''',
        apm_info: '''Info''',
        apm_debug: '''Debug''',
      };

  const ApmStatusEnumSeverity(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Gain value of readings.
class SadcReadingsEnumGain extends EnumType {
  static const gain_x1 = SadcReadingsEnumGain(0);
  static const gain_x10 = SadcReadingsEnumGain(1);
  static const gain_x100 = SadcReadingsEnumGain(2);

  static List<SadcReadingsEnumGain> get values => <SadcReadingsEnumGain>[
        gain_x1,
        gain_x10,
        gain_x100,
      ];

  static core.Map<SadcReadingsEnumGain, String> get names =>
      <SadcReadingsEnumGain, String>{
        gain_x1: '''x1''',
        gain_x10: '''x10''',
        gain_x100: '''x100''',
      };

  const SadcReadingsEnumGain(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}

/// Action on the vehicle home
class HomePositionEnumOp extends EnumType {
  static const op_set = HomePositionEnumOp(1);
  static const op_report = HomePositionEnumOp(2);

  static List<HomePositionEnumOp> get values => <HomePositionEnumOp>[
        op_set,
        op_report,
      ];

  static core.Map<HomePositionEnumOp, String> get names =>
      <HomePositionEnumOp, String>{
        op_set: '''Set''',
        op_report: '''Report''',
      };

  const HomePositionEnumOp(int value) : super(value);

  @override
  String toPrettyString() {
    var ret = names[this];
    if (ret != null) return ret;
    return super.toPrettyString();
  }
}
