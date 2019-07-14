// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// IMC Code Generator
// **************************************************************************

part of 'imc_def_gen.dart';

/// State of entity.
class EntityStateEnumState extends EnumType {
  static const esta_boot = const EntityStateEnumState(0);
  static const esta_normal = const EntityStateEnumState(1);
  static const esta_fault = const EntityStateEnumState(2);
  static const esta_error = const EntityStateEnumState(3);
  static const esta_failure = const EntityStateEnumState(4);

  static get values => [esta_boot, esta_normal, esta_fault, esta_error, 
      esta_failure];

  const EntityStateEnumState(int value) : super(value);
}

/// Complementary entity state flags.
class EntityStateBitfieldFlags extends BitfieldType {
  static const efla_human_intervention = const EntityStateBitfieldFlags(0x01);

  static get values => [efla_human_intervention];

  const EntityStateBitfieldFlags(int value) : super(value);

  static EntityStateBitfieldFlags fromBits(
          List<EntityStateBitfieldFlags> bits) =>
      (bits == null || bits.length < 2)
          ? EntityStateBitfieldFlags(bits == null || bits.isEmpty ? 0 : bits[0])
          : bits.reduce((b1, b2) => EntityStateBitfieldFlags(b1.value | b2.value));
}

/// Operation to perform.
class EntityListEnumOp extends EnumType {
  static const op_report = const EntityListEnumOp(0);
  static const op_query = const EntityListEnumOp(1);

  static get values => [op_report, op_query];

  const EntityListEnumOp(int value) : super(value);
}

class RestartSystemEnumType extends EnumType {
  /// Request a DUNE restart
  static const rstype_dune = const RestartSystemEnumType(1);
  /// Request a system restart.
  static const rstype_system = const RestartSystemEnumType(2);

  static get values => [rstype_dune, rstype_system];

  const RestartSystemEnumType(int value) : super(value);
}

/// Operation to perform.
class DevCalibrationControlEnumOp extends EnumType {
  /// Start calibration procedure.
  static const dcal_start = const DevCalibrationControlEnumOp(0);
  /// Stop calibration procedure.
  static const dcal_stop = const DevCalibrationControlEnumOp(1);
  /// Perform next step of the calibration procedure.
  static const dcal_step_next = const DevCalibrationControlEnumOp(2);
  /// Perform previous step of the calibration procedure.
  static const dcal_step_previous = const DevCalibrationControlEnumOp(3);

  static get values => [dcal_start, dcal_stop, dcal_step_next, dcal_step_previous];

  const DevCalibrationControlEnumOp(int value) : super(value);
}

/// Additional flags.
class DevCalibrationStateBitfieldFlags extends BitfieldType {
  /// Jumping to the previous calibration step is not supported.
  static const dcs_previous_not_supported = const DevCalibrationStateBitfieldFlags(0x01);
  /// Jumping to the next calibration step is not supported.
  static const dcs_next_not_supported = const DevCalibrationStateBitfieldFlags(0x02);
  /// The calibration procedure was suspended and must be resumed or
  /// cancelled with a DeviceCalibrationControl message.
  static const dcs_waiting_control = const DevCalibrationStateBitfieldFlags(0x04);
  /// Calibration was interrupted due to an error and must be
  /// restarted or cancelled with a DeviceCalibrationControl
  /// message.
  static const dcs_error = const DevCalibrationStateBitfieldFlags(0x08);
  /// The calibration procedure was completed.
  static const dcs_completed = const DevCalibrationStateBitfieldFlags(0x10);

  static get values => [dcs_previous_not_supported, dcs_next_not_supported, dcs_waiting_control, dcs_error, 
      dcs_completed];

  const DevCalibrationStateBitfieldFlags(int value) : super(value);

  static DevCalibrationStateBitfieldFlags fromBits(
          List<DevCalibrationStateBitfieldFlags> bits) =>
      (bits == null || bits.length < 2)
          ? DevCalibrationStateBitfieldFlags(bits == null || bits.isEmpty ? 0 : bits[0])
          : bits.reduce((b1, b2) => DevCalibrationStateBitfieldFlags(b1.value | b2.value));
}

/// Current state.
class EntityActivationStateEnumState extends EnumType {
  /// Entity is inactive.
  static const eas_inactive = const EntityActivationStateEnumState(0);
  /// Entity is active.
  static const eas_active = const EntityActivationStateEnumState(1);
  /// Activation is in progress.
  static const eas_act_ip = const EntityActivationStateEnumState(2);
  /// Activation is completed.
  static const eas_act_done = const EntityActivationStateEnumState(3);
  /// The activation procedure failed and the field 'error' contains the error message.
  static const eas_act_fail = const EntityActivationStateEnumState(4);
  /// Deactivation is in progress.
  static const eas_deact_ip = const EntityActivationStateEnumState(5);
  /// Deactivation is in progress.
  static const eas_deact_done = const EntityActivationStateEnumState(6);
  /// The deactivation procedure failed and the field 'error' contains the error message.
  static const eas_deact_fail = const EntityActivationStateEnumState(7);

  static get values => [eas_inactive, eas_active, eas_act_ip, eas_act_done, 
      eas_act_fail, eas_deact_ip, eas_deact_done, eas_deact_fail];

  const EntityActivationStateEnumState(int value) : super(value);
}

/// Action on the vehicle operation limits
class VehicleOperationalLimitsEnumOp extends EnumType {
  static const op_request = const VehicleOperationalLimitsEnumOp(0);
  static const op_set = const VehicleOperationalLimitsEnumOp(1);
  static const op_report = const VehicleOperationalLimitsEnumOp(2);

  static get values => [op_request, op_set, op_report];

  const VehicleOperationalLimitsEnumOp(int value) : super(value);
}

/// Indicates whether leaks have been detected or not.
class LeakSimulationEnumOp extends EnumType {
  static const lsim_off = const LeakSimulationEnumOp(0);
  static const lsim_on = const LeakSimulationEnumOp(1);

  static get values => [lsim_off, lsim_on];

  const LeakSimulationEnumOp(int value) : super(value);
}

/// Type of request.
class UASimulationEnumType extends EnumType {
  static const uas_data = const UASimulationEnumType(0);
  static const uas_ping = const UASimulationEnumType(1);
  static const uas_ping_reply = const UASimulationEnumType(2);

  static get values => [uas_data, uas_ping, uas_ping_reply];

  const UASimulationEnumType(int value) : super(value);
}

/// Action on the vehicle simulation parameters for the formation control
class DynamicsSimParamEnumOp extends EnumType {
  static const op_request = const DynamicsSimParamEnumOp(0);
  static const op_set = const DynamicsSimParamEnumOp(1);
  static const op_report = const DynamicsSimParamEnumOp(2);

  static get values => [op_request, op_set, op_report];

  const DynamicsSimParamEnumOp(int value) : super(value);
}

/// Operation to perform.
class CacheControlEnumOp extends EnumType {
  static const cop_store = const CacheControlEnumOp(0);
  static const cop_load = const CacheControlEnumOp(1);
  static const cop_clear = const CacheControlEnumOp(2);
  static const cop_copy = const CacheControlEnumOp(3);
  static const cop_copy_complete = const CacheControlEnumOp(4);

  static get values => [cop_store, cop_load, cop_clear, cop_copy, 
      cop_copy_complete];

  const CacheControlEnumOp(int value) : super(value);
}

/// Operation to perform.
class LoggingControlEnumOp extends EnumType {
  /// Request the logging manager to start logging. The logging
  /// manager will reply with a STARTED operation. If logging is
  /// already in progress the current log will be closed and a new
  /// one will be opened (therefore the logging manager will send
  /// two messages - STOPPED and STARTED). The field 'name'
  /// represents the label that will be appended to the log path.
  static const cop_request_start = const LoggingControlEnumOp(0);
  /// The logging manager will send a message with this operation
  /// everytime a log is successfully started. The field 'name'
  /// contains the complete name of the log.
  static const cop_started = const LoggingControlEnumOp(1);
  /// Request the logging manager to stop logging messages. The
  /// logging manager will reply with a STOPPED operation and
  /// logging will be suspended until a message with operation
  /// START is received. If logging is already stoppped the
  /// logging manager will ignore this operation and will not
  /// reply with a STOPPED operation. The field 'name' with this
  /// operation type has no meaning.
  static const cop_request_stop = const LoggingControlEnumOp(2);
  /// The logging manager will send a message with this operation
  /// when logging is successfully stopped. The field 'name'
  /// contains the complete name of the log that was closed.
  static const cop_stopped = const LoggingControlEnumOp(3);
  /// This operation instructs the logging manager to send a
  /// message with operation CURRENT_NAME containing the complete
  /// name of the current log in the field 'name'. The field
  /// 'name' with this operation type has no meaning.
  static const cop_request_current_name = const LoggingControlEnumOp(4);
  /// The logging manager will send a message with this operation
  /// when asked via the REQUEST_CURRENT_NAME operation. The field
  /// 'name' contains the complete name of the log.
  static const cop_current_name = const LoggingControlEnumOp(5);

  static get values => [cop_request_start, cop_started, cop_request_stop, cop_stopped, 
      cop_request_current_name, cop_current_name];

  const LoggingControlEnumOp(int value) : super(value);
}

/// Type of message.
class LogBookEntryEnumType extends EnumType {
  static const lbet_info = const LogBookEntryEnumType(0);
  static const lbet_warning = const LogBookEntryEnumType(1);
  static const lbet_error = const LogBookEntryEnumType(2);
  static const lbet_critical = const LogBookEntryEnumType(3);
  static const lbet_debug = const LogBookEntryEnumType(4);

  static get values => [lbet_info, lbet_warning, lbet_error, lbet_critical, 
      lbet_debug];

  const LogBookEntryEnumType(int value) : super(value);
}

/// Command to perform.
class LogBookControlEnumCommand extends EnumType {
  /// Retrieve log book entries.
  static const lbc_get = const LogBookControlEnumCommand(0);
  /// Clear log book entries.
  static const lbc_clear = const LogBookControlEnumCommand(1);
  /// Retrieve log book entries corresponding to errors.
  static const lbc_get_err = const LogBookControlEnumCommand(2);
  /// Reply to a GET command. Message argument is a MessageList
  /// instance containing LogBookEntry messages.
  static const lbc_reply = const LogBookControlEnumCommand(3);

  static get values => [lbc_get, lbc_clear, lbc_get_err, lbc_reply];

  const LogBookControlEnumCommand(int value) : super(value);
}

/// Operation to perform.
class ReplayControlEnumOp extends EnumType {
  static const rop_start = const ReplayControlEnumOp(0);
  static const rop_stop = const ReplayControlEnumOp(1);
  static const rop_pause = const ReplayControlEnumOp(2);
  static const rop_resume = const ReplayControlEnumOp(3);

  static get values => [rop_start, rop_stop, rop_pause, rop_resume];

  const ReplayControlEnumOp(int value) : super(value);
}

/// Operation to perform.
class ClockControlEnumOp extends EnumType {
  /// Synchronize clock according to given clock value.
  static const cop_sync_exec = const ClockControlEnumOp(0);
  /// Request autonomous clock synchronization.
  static const cop_sync_request = const ClockControlEnumOp(1);
  /// Synchronization start notification.
  static const cop_sync_started = const ClockControlEnumOp(2);
  /// Synchronization completion notification.
  static const cop_sync_done = const ClockControlEnumOp(3);
  /// Set timezone.
  static const cop_set_tz = const ClockControlEnumOp(4);
  /// Notification due to timezone modification.
  static const cop_set_tz_done = const ClockControlEnumOp(5);

  static get values => [cop_sync_exec, cop_sync_request, cop_sync_started, cop_sync_done, 
      cop_set_tz, cop_set_tz_done];

  const ClockControlEnumOp(int value) : super(value);
}

class HistoricSonarDataEnumEncoding extends EnumType {
  static const enc_one_byte_per_pixel = const HistoricSonarDataEnumEncoding(0);
  static const enc_png = const HistoricSonarDataEnumEncoding(1);
  static const enc_jpeg = const HistoricSonarDataEnumEncoding(2);

  static get values => [enc_one_byte_per_pixel, enc_png, enc_jpeg];

  const HistoricSonarDataEnumEncoding(int value) : super(value);
}

/// Type of event.
class HistoricEventEnumType extends EnumType {
  static const evtype_info = const HistoricEventEnumType(0);
  static const evtype_error = const HistoricEventEnumType(1);

  static get values => [evtype_info, evtype_error];

  const HistoricEventEnumType(int value) : super(value);
}

/// Water parameter used to calculate the vertical profile.
class VerticalProfileEnumParameter extends EnumType {
  static const prof_temperature = const VerticalProfileEnumParameter(0);
  static const prof_salinity = const VerticalProfileEnumParameter(1);
  static const prof_conductivity = const VerticalProfileEnumParameter(2);
  static const prof_ph = const VerticalProfileEnumParameter(3);
  static const prof_redox = const VerticalProfileEnumParameter(4);
  static const prof_chlorophyll = const VerticalProfileEnumParameter(5);
  static const prof_turbidity = const VerticalProfileEnumParameter(6);

  static get values => [prof_temperature, prof_salinity, prof_conductivity, prof_ph, 
      prof_redox, prof_chlorophyll, prof_turbidity];

  const VerticalProfileEnumParameter(int value) : super(value);
}

/// Informs about the availability of the service on internal and
/// external networks.
class AnnounceServiceBitfieldServiceType extends BitfieldType {
  static const srv_type_external = const AnnounceServiceBitfieldServiceType(0x01);
  static const srv_type_local = const AnnounceServiceBitfieldServiceType(0x02);

  static get values => [srv_type_external, srv_type_local];

  const AnnounceServiceBitfieldServiceType(int value) : super(value);

  static AnnounceServiceBitfieldServiceType fromBits(
          List<AnnounceServiceBitfieldServiceType> bits) =>
      (bits == null || bits.length < 2)
          ? AnnounceServiceBitfieldServiceType(bits == null || bits.isEmpty ? 0 : bits[0])
          : bits.reduce((b1, b2) => AnnounceServiceBitfieldServiceType(b1.value | b2.value));
}

/// Current state of an SMS transaction.
class SmsStateEnumState extends EnumType {
  static const sms_accepted = const SmsStateEnumState(0);
  static const sms_rejected = const SmsStateEnumState(1);
  static const sms_interrupted = const SmsStateEnumState(2);
  static const sms_completed = const SmsStateEnumState(3);
  static const sms_idle = const SmsStateEnumState(4);
  static const sms_transmitting = const SmsStateEnumState(5);
  static const sms_receiving = const SmsStateEnumState(6);

  static get values => [sms_accepted, sms_rejected, sms_interrupted, sms_completed, 
      sms_idle, sms_transmitting, sms_receiving];

  const SmsStateEnumState(int value) : super(value);
}

class IridiumTxStatusEnumStatus extends EnumType {
  static const txstatus_ok = const IridiumTxStatusEnumStatus(1);
  static const txstatus_error = const IridiumTxStatusEnumStatus(2);
  static const txstatus_queued = const IridiumTxStatusEnumStatus(3);
  static const txstatus_transmit = const IridiumTxStatusEnumStatus(4);
  static const txstatus_expired = const IridiumTxStatusEnumStatus(5);
  static const txstatus_empty = const IridiumTxStatusEnumStatus(6);

  static get values => [txstatus_ok, txstatus_error, txstatus_queued, txstatus_transmit, 
      txstatus_expired, txstatus_empty];

  const IridiumTxStatusEnumStatus(int value) : super(value);
}

/// Actions on the group list.
class SystemGroupEnumAction extends EnumType {
  static const op_dis = const SystemGroupEnumAction(0);
  static const op_set = const SystemGroupEnumAction(1);
  static const op_req = const SystemGroupEnumAction(2);
  static const op_chg = const SystemGroupEnumAction(3);
  static const op_rep = const SystemGroupEnumAction(4);
  static const op_frc = const SystemGroupEnumAction(5);

  static get values => [op_dis, op_set, op_req, op_chg, 
      op_rep, op_frc];

  const SystemGroupEnumAction(int value) : super(value);
}

class HistoricDataQueryEnumType extends EnumType {
  /// Request data from the Data Store
  static const hrtype_query = const HistoricDataQueryEnumType(1);
  /// Data Store response with Data (using field 'data')
  static const hrtype_reply = const HistoricDataQueryEnumType(2);
  /// Clear 'data' from the Data Store
  static const hrtype_clear = const HistoricDataQueryEnumType(3);

  static get values => [hrtype_query, hrtype_reply, hrtype_clear];

  const HistoricDataQueryEnumType(int value) : super(value);
}

class CommSystemsQueryBitfieldType extends BitfieldType {
  /// Query systems about communication capability
  static const ciq_query = const CommSystemsQueryBitfieldType(0x01);
  /// Reply systems about communication capability
  static const ciq_reply = const CommSystemsQueryBitfieldType(0x02);

  static get values => [ciq_query, ciq_reply];

  const CommSystemsQueryBitfieldType(int value) : super(value);

  static CommSystemsQueryBitfieldType fromBits(
          List<CommSystemsQueryBitfieldType> bits) =>
      (bits == null || bits.length < 2)
          ? CommSystemsQueryBitfieldType(bits == null || bits.isEmpty ? 0 : bits[0])
          : bits.reduce((b1, b2) => CommSystemsQueryBitfieldType(b1.value | b2.value));
}

/// Communication interface to be used for reports.
class CommSystemsQueryBitfieldCommInterface extends BitfieldType {
  /// Use acoustic communications
  static const ciq_acoustic = const CommSystemsQueryBitfieldCommInterface(0x01);
  /// Use satellite communications
  static const ciq_satellite = const CommSystemsQueryBitfieldCommInterface(0x02);
  /// Use Global System for Mobile Communications
  static const ciq_gsm = const CommSystemsQueryBitfieldCommInterface(0x04);
  /// Use mobile networks
  static const ciq_mobile = const CommSystemsQueryBitfieldCommInterface(0x08);
  /// Use Radio telemetry
  static const ciq_radio = const CommSystemsQueryBitfieldCommInterface(0x10);

  static get values => [ciq_acoustic, ciq_satellite, ciq_gsm, ciq_mobile, 
      ciq_radio];

  const CommSystemsQueryBitfieldCommInterface(int value) : super(value);

  static CommSystemsQueryBitfieldCommInterface fromBits(
          List<CommSystemsQueryBitfieldCommInterface> bits) =>
      (bits == null || bits.length < 2)
          ? CommSystemsQueryBitfieldCommInterface(bits == null || bits.isEmpty ? 0 : bits[0])
          : bits.reduce((b1, b2) => CommSystemsQueryBitfieldCommInterface(b1.value | b2.value));
}

class CommSystemsQueryEnumModel extends EnumType {
  /// Model is not defined
  static const ciq_unknown = const CommSystemsQueryEnumModel(0x00);
  /// Radio Model 3DR
  static const ciq_m3dr = const CommSystemsQueryEnumModel(0x01);
  /// Radio Model RDFXXXx point to point
  static const ciq_rdfxxxxptp = const CommSystemsQueryEnumModel(0x02);

  static get values => [ciq_unknown, ciq_m3dr, ciq_rdfxxxxptp];

  const CommSystemsQueryEnumModel(int value) : super(value);
}

/// Type of telemetry transmissions.
class TelemetryMsgEnumType extends EnumType {
  /// Send telemetry data.
  static const tm_tx = const TelemetryMsgEnumType(0x01);
  /// Received telemetry data.
  static const tm_rx = const TelemetryMsgEnumType(0x02);
  /// Status of transmitted data.
  static const tm_txstatus = const TelemetryMsgEnumType(0x03);

  static get values => [tm_tx, tm_rx, tm_txstatus];

  const TelemetryMsgEnumType(int value) : super(value);
}

/// Type of telemetry transmissions.
class TelemetryMsgEnumCode extends EnumType {
  /// Unknown code type
  static const tm_code_unk = const TelemetryMsgEnumCode(0x00);
  /// Concise representation of entire system state message.
  /// Payload message is a MessageList.
  static const tm_code_report = const TelemetryMsgEnumCode(0x01);
  /// Payload message is INLINEMSG
  static const tm_code_imc = const TelemetryMsgEnumCode(0x02);
  /// Payload message is in raw
  static const tm_code_raw = const TelemetryMsgEnumCode(0x03);

  static get values => [tm_code_unk, tm_code_report, tm_code_imc, tm_code_raw];

  const TelemetryMsgEnumCode(int value) : super(value);
}

/// Type of telemetry transmissions.
class TelemetryMsgBitfieldAcknowledge extends BitfieldType {
  /// Message transmitted without acknowledged reception response
  static const tm_nak = const TelemetryMsgBitfieldAcknowledge(0x00);
  /// Message transmitted with acknowledged reception response
  static const tm_ak = const TelemetryMsgBitfieldAcknowledge(0x01);

  static get values => [tm_nak, tm_ak];

  const TelemetryMsgBitfieldAcknowledge(int value) : super(value);

  static TelemetryMsgBitfieldAcknowledge fromBits(
          List<TelemetryMsgBitfieldAcknowledge> bits) =>
      (bits == null || bits.length < 2)
          ? TelemetryMsgBitfieldAcknowledge(bits == null || bits.isEmpty ? 0 : bits[0])
          : bits.reduce((b1, b2) => TelemetryMsgBitfieldAcknowledge(b1.value | b2.value));
}

/// State of the transmitted message.
class TelemetryMsgEnumStatus extends EnumType {
  static const tm_none = const TelemetryMsgEnumStatus(0x00);
  static const tm_done = const TelemetryMsgEnumStatus(1);
  static const tm_failed = const TelemetryMsgEnumStatus(2);
  static const tm_queued = const TelemetryMsgEnumStatus(3);
  static const tm_transmit = const TelemetryMsgEnumStatus(4);
  static const tm_expired = const TelemetryMsgEnumStatus(5);
  static const tm_empty = const TelemetryMsgEnumStatus(6);
  static const tm_inv_addr = const TelemetryMsgEnumStatus(7);
  static const tm_inv_size = const TelemetryMsgEnumStatus(8);

  static get values => [tm_none, tm_done, tm_failed, tm_queued, 
      tm_transmit, tm_expired, tm_empty, tm_inv_addr, tm_inv_size];

  const TelemetryMsgEnumStatus(int value) : super(value);
}

/// Used to define the type of the operation this message holds.
class LblConfigEnumOp extends EnumType {
  /// Set the beacons configuration aboard the vehicle.
  static const op_set_cfg = const LblConfigEnumOp(0);
  /// Request the vehicle to send its current beacons configuration.
  static const op_get_cfg = const LblConfigEnumOp(1);
  static const op_cur_cfg = const LblConfigEnumOp(2);

  static get values => [op_set_cfg, op_get_cfg, op_cur_cfg];

  const LblConfigEnumOp(int value) : super(value);
}

/// Operation type.
class AcousticOperationEnumOp extends EnumType {
  /// Send an abort through the acoustic channel to the system
  /// specified in the field 'system'.
  static const aop_abort = const AcousticOperationEnumOp(0);
  /// The latest abort request to the system specified in the
  /// field 'system' is in progress.
  static const aop_abort_ip = const AcousticOperationEnumOp(1);
  /// The latest abort operation expired without acknowledgment
  /// from the system specified in the field 'system'.
  static const aop_abort_timeout = const AcousticOperationEnumOp(2);
  /// The latest abort operation was acknowledged by the system
  /// specified in the field 'system'.
  static const aop_abort_acked = const AcousticOperationEnumOp(3);
  /// Request a range through the acoustic channel to the system
  /// specified in the field 'system'.
  static const aop_range = const AcousticOperationEnumOp(4);
  /// The latest range request to the system specified in the
  /// field 'system' is in progress.
  static const aop_range_ip = const AcousticOperationEnumOp(5);
  /// The latest range request operation expired without reply
  /// from the system specified in the field 'system'.
  static const aop_range_timeout = const AcousticOperationEnumOp(6);
  /// The latest range request operation to the system specified
  /// in the field 'system' was successful and the range is
  /// specified in the field 'range'.
  static const aop_range_recved = const AcousticOperationEnumOp(7);
  /// The acoustic modem is busy and cannot execute the requested
  /// operation.
  static const aop_busy = const AcousticOperationEnumOp(8);
  /// The latest requested operation is not supported.
  static const aop_unsupported = const AcousticOperationEnumOp(9);
  /// The transducer was not detected.
  static const aop_no_txd = const AcousticOperationEnumOp(10);
  /// Request message over acoustic channel. The message to send
  /// is specified by the 'msg' field.
  static const aop_msg = const AcousticOperationEnumOp(11);
  /// Message send request has been queued.
  static const aop_msg_queued = const AcousticOperationEnumOp(12);
  /// Message send request is in progress.
  static const aop_msg_ip = const AcousticOperationEnumOp(13);
  /// Message send request has been fulfilled.
  static const aop_msg_done = const AcousticOperationEnumOp(14);
  /// Message send request could not be fulfilled.
  static const aop_msg_failure = const AcousticOperationEnumOp(15);
  /// Request message over acoustic channel. The message to send
  /// is specified by the 'msg' field.
  static const aop_msg_short = const AcousticOperationEnumOp(16);
  /// Request sending updated position to remote system so it can be ranged.
  static const aop_reverse_range = const AcousticOperationEnumOp(17);

  static get values => [aop_abort, aop_abort_ip, aop_abort_timeout, aop_abort_acked, 
      aop_range, aop_range_ip, aop_range_timeout, aop_range_recved, aop_busy, 
      aop_unsupported, aop_no_txd, aop_msg, aop_msg_queued, aop_msg_ip, 
      aop_msg_done, aop_msg_failure, aop_msg_short, aop_reverse_range];

  const AcousticOperationEnumOp(int value) : super(value);
}

/// Validity of fields.
class GpsFixBitfieldValidity extends BitfieldType {
  /// Fields 'utc_year', 'utc_month' and 'utc_day' are valid.
  static const gfv_valid_date = const GpsFixBitfieldValidity(0x0001);
  /// Field 'utc_time' is valid.
  static const gfv_valid_time = const GpsFixBitfieldValidity(0x0002);
  /// Fields 'lat', 'lon', 'altitude' and 'satellites' are valid.
  static const gfv_valid_pos = const GpsFixBitfieldValidity(0x0004);
  /// Field 'cog' is valid.
  static const gfv_valid_cog = const GpsFixBitfieldValidity(0x0008);
  /// Field 'sog' is valid.
  static const gfv_valid_sog = const GpsFixBitfieldValidity(0x0010);
  /// Field 'hacc' is valid.
  static const gfv_valid_hacc = const GpsFixBitfieldValidity(0x0020);
  /// Field 'vacc' is valid.
  static const gfv_valid_vacc = const GpsFixBitfieldValidity(0x0040);
  /// Field 'hdop' is valid.
  static const gfv_valid_hdop = const GpsFixBitfieldValidity(0x0080);
  /// Field 'vdop' is valid.
  static const gfv_valid_vdop = const GpsFixBitfieldValidity(0x0100);

  static get values => [gfv_valid_date, gfv_valid_time, gfv_valid_pos, gfv_valid_cog, 
      gfv_valid_sog, gfv_valid_hacc, gfv_valid_vacc, gfv_valid_hdop, gfv_valid_vdop];

  const GpsFixBitfieldValidity(int value) : super(value);

  static GpsFixBitfieldValidity fromBits(
          List<GpsFixBitfieldValidity> bits) =>
      (bits == null || bits.length < 2)
          ? GpsFixBitfieldValidity(bits == null || bits.isEmpty ? 0 : bits[0])
          : bits.reduce((b1, b2) => GpsFixBitfieldValidity(b1.value | b2.value));
}

/// Type of fix.
class GpsFixEnumType extends EnumType {
  /// Stand alone solution.
  static const gft_standalone = const GpsFixEnumType(0x00);
  /// Differential solution.
  static const gft_differential = const GpsFixEnumType(0x01);
  /// Dead reckoning solution.
  static const gft_dead_reckoning = const GpsFixEnumType(0x02);
  /// Manual solution.
  static const gft_manual_input = const GpsFixEnumType(0x03);
  /// Simulated solution.
  static const gft_simulation = const GpsFixEnumType(0x04);

  static get values => [gft_standalone, gft_differential, gft_dead_reckoning, gft_manual_input, 
      gft_simulation];

  const GpsFixEnumType(int value) : super(value);
}

/// Each bit of this field represents if a given velocity
/// component is valid.
class GroundVelocityBitfieldValidity extends BitfieldType {
  static const val_vel_x = const GroundVelocityBitfieldValidity(0x01);
  static const val_vel_y = const GroundVelocityBitfieldValidity(0x02);
  static const val_vel_z = const GroundVelocityBitfieldValidity(0x04);

  static get values => [val_vel_x, val_vel_y, val_vel_z];

  const GroundVelocityBitfieldValidity(int value) : super(value);

  static GroundVelocityBitfieldValidity fromBits(
          List<GroundVelocityBitfieldValidity> bits) =>
      (bits == null || bits.length < 2)
          ? GroundVelocityBitfieldValidity(bits == null || bits.isEmpty ? 0 : bits[0])
          : bits.reduce((b1, b2) => GroundVelocityBitfieldValidity(b1.value | b2.value));
}

/// Each bit of this field represents if a given velocity
/// component is valid.
class WaterVelocityBitfieldValidity extends BitfieldType {
  static const val_vel_x = const WaterVelocityBitfieldValidity(0x01);
  static const val_vel_y = const WaterVelocityBitfieldValidity(0x02);
  static const val_vel_z = const WaterVelocityBitfieldValidity(0x04);

  static get values => [val_vel_x, val_vel_y, val_vel_z];

  const WaterVelocityBitfieldValidity(int value) : super(value);

  static WaterVelocityBitfieldValidity fromBits(
          List<WaterVelocityBitfieldValidity> bits) =>
      (bits == null || bits.length < 2)
          ? WaterVelocityBitfieldValidity(bits == null || bits.isEmpty ? 0 : bits[0])
          : bits.reduce((b1, b2) => WaterVelocityBitfieldValidity(b1.value | b2.value));
}

/// Validity of the measurement.
class DistanceEnumValidity extends EnumType {
  /// Measurement is invalid.
  static const dv_invalid = const DistanceEnumValidity(0);
  /// Measurement is valid.
  static const dv_valid = const DistanceEnumValidity(1);

  static get values => [dv_invalid, dv_valid];

  const DistanceEnumValidity(int value) : super(value);
}

/// Type of sonar.
class SonarDataEnumType extends EnumType {
  static const st_sidescan = const SonarDataEnumType(0);
  static const st_echosounder = const SonarDataEnumType(1);
  static const st_multibeam = const SonarDataEnumType(2);

  static get values => [st_sidescan, st_echosounder, st_multibeam];

  const SonarDataEnumType(int value) : super(value);
}

/// Activate or deactivate hardware pulse detection.
class PulseDetectionControlEnumOp extends EnumType {
  static const pop_off = const PulseDetectionControlEnumOp(0);
  static const pop_on = const PulseDetectionControlEnumOp(1);

  static get values => [pop_off, pop_on];

  const PulseDetectionControlEnumOp(int value) : super(value);
}

/// Whether the data is sane or not sane.
class DataSanityEnumSane extends EnumType {
  /// Data is sane.
  static const ds_sane = const DataSanityEnumSane(0);
  /// Data is not sane.
  static const ds_not_sane = const DataSanityEnumSane(1);

  static get values => [ds_sane, ds_not_sane];

  const DataSanityEnumSane(int value) : super(value);
}

/// Validity of fields.
class GpsFixRtkBitfieldValidity extends BitfieldType {
  /// Field 'tow' is valid.
  static const rfv_valid_time = const GpsFixRtkBitfieldValidity(0x0001);
  /// Fields 'base_lat', 'base_lon' and 'base_height' are valid.
  static const rfv_valid_base = const GpsFixRtkBitfieldValidity(0x0002);
  /// Fields 'n', 'e', 'd' are valid.
  static const rfv_valid_pos = const GpsFixRtkBitfieldValidity(0x0004);
  /// Fields 'v_n', 'v_e', 'v_d' are valid.
  static const rfv_valid_vel = const GpsFixRtkBitfieldValidity(0x0008);

  static get values => [rfv_valid_time, rfv_valid_base, rfv_valid_pos, rfv_valid_vel];

  const GpsFixRtkBitfieldValidity(int value) : super(value);

  static GpsFixRtkBitfieldValidity fromBits(
          List<GpsFixRtkBitfieldValidity> bits) =>
      (bits == null || bits.length < 2)
          ? GpsFixRtkBitfieldValidity(bits == null || bits.isEmpty ? 0 : bits[0])
          : bits.reduce((b1, b2) => GpsFixRtkBitfieldValidity(b1.value | b2.value));
}

/// Type of fix.
class GpsFixRtkEnumType extends EnumType {
  /// No solution, but RTK task is running.
  static const rtk_none = const GpsFixRtkEnumType(0x00);
  /// No solution, but receiving observations.
  static const rtk_obs = const GpsFixRtkEnumType(0x01);
  /// Floating point solution of IAR.
  static const rtk_float = const GpsFixRtkEnumType(0x02);
  /// Fixed (single) solution of IAR.
  static const rtk_fixed = const GpsFixRtkEnumType(0x03);

  static get values => [rtk_none, rtk_obs, rtk_float, rtk_fixed];

  const GpsFixRtkEnumType(int value) : super(value);
}

/// The type of external navigation data
class ExternalNavDataEnumType extends EnumType {
  static const extnav_full = const ExternalNavDataEnumType(0);
  static const extnav_ahrs = const ExternalNavDataEnumType(1);
  static const extnav_posref = const ExternalNavDataEnumType(2);

  static get values => [extnav_full, extnav_ahrs, extnav_posref];

  const ExternalNavDataEnumType(int value) : super(value);
}

/// The zoom action to perform.
class CameraZoomEnumAction extends EnumType {
  static const action_zoom_reset = const CameraZoomEnumAction(0);
  static const action_zoom_in = const CameraZoomEnumAction(1);
  static const action_zoom_out = const CameraZoomEnumAction(2);
  static const action_zoom_stop = const CameraZoomEnumAction(3);

  static get values => [action_zoom_reset, action_zoom_in, action_zoom_out, action_zoom_stop];

  const CameraZoomEnumAction(int value) : super(value);
}

/// Operation to perform.
class RemoteActionsRequestEnumOp extends EnumType {
  static const op_report = const RemoteActionsRequestEnumOp(0);
  static const op_query = const RemoteActionsRequestEnumOp(1);

  static get values => [op_report, op_query];

  const RemoteActionsRequestEnumOp(int value) : super(value);
}

/// The LCD action to perform
class LcdControlEnumOp extends EnumType {
  static const op_turn_off = const LcdControlEnumOp(0);
  static const op_turn_on = const LcdControlEnumOp(1);
  static const op_clear = const LcdControlEnumOp(2);
  static const op_write0 = const LcdControlEnumOp(3);
  static const op_write1 = const LcdControlEnumOp(4);

  static get values => [op_turn_off, op_turn_on, op_clear, op_write0, 
      op_write1];

  const LcdControlEnumOp(int value) : super(value);
}

/// Operation type.
class PowerOperationEnumOp extends EnumType {
  /// Request the destination entity of this message to power down
  /// it's devices immediately. If the destination entity is the
  /// special entity '0' the whole system will power down.
  static const pop_pwr_down = const PowerOperationEnumOp(0);
  /// The latest power down request is in progress and the time
  /// remaining until power down is given in field 'time_remain'.
  static const pop_pwr_down_ip = const PowerOperationEnumOp(1);
  /// The latest power down request was aborted.
  static const pop_pwr_down_aborted = const PowerOperationEnumOp(2);
  /// Request the destination entity of this message to power down
  /// it's devices at the time given in the field 'sched_time'. If
  /// the destination entity is the special entity '0' the whole
  /// system will power down.
  static const pop_sched_pwr_down = const PowerOperationEnumOp(3);
  /// Request the destination entity of this message to power up
  /// it's devices.
  static const pop_pwr_up = const PowerOperationEnumOp(4);
  /// The latest power up request is in progress.
  static const pop_pwr_up_ip = const PowerOperationEnumOp(5);
  /// Request the destination entity of this message to power up
  /// it's devices at the time given in the field 'sched_time'. If
  /// the destination entity is the special entity '0' the whole
  /// system will power up.
  static const pop_sched_pwr_up = const PowerOperationEnumOp(6);

  static get values => [pop_pwr_down, pop_pwr_down_ip, pop_pwr_down_aborted, pop_sched_pwr_down, 
      pop_pwr_up, pop_pwr_up_ip, pop_sched_pwr_up];

  const PowerOperationEnumOp(int value) : super(value);
}

/// Operation to perform.
class PowerChannelControlEnumOp extends EnumType {
  /// Turn off power channel specified in field 'id'.
  static const pcc_op_turn_off = const PowerChannelControlEnumOp(0);
  /// Turn on power channel specified in field 'id'.
  static const pcc_op_turn_on = const PowerChannelControlEnumOp(1);
  /// Toggle power channel specified in field 'id'.
  static const pcc_op_toggle = const PowerChannelControlEnumOp(2);
  /// Turn on power channel specified in field 'id' in
  /// 'sched_time' seconds.
  static const pcc_op_sched_on = const PowerChannelControlEnumOp(3);
  /// Turn off power channel specified in field 'id' in
  /// 'sched_time' seconds.
  static const pcc_op_sched_off = const PowerChannelControlEnumOp(4);
  /// Reset all scheduled operations for the channel specified in
  /// field 'id'.
  static const pcc_op_sched_reset = const PowerChannelControlEnumOp(5);
  /// Save the current state of the channel 'id' to persistent
  /// storage.
  static const pcc_op_save = const PowerChannelControlEnumOp(6);
  /// Restart power channel specified in field 'id'.
  static const pcc_op_restart = const PowerChannelControlEnumOp(7);

  static get values => [pcc_op_turn_off, pcc_op_turn_on, pcc_op_toggle, pcc_op_sched_on, 
      pcc_op_sched_off, pcc_op_sched_reset, pcc_op_save, pcc_op_restart];

  const PowerChannelControlEnumOp(int value) : super(value);
}

/// State of the Power Channel.
class PowerChannelStateEnumState extends EnumType {
  /// Power channel is off.
  static const pcs_off = const PowerChannelStateEnumState(0);
  /// Power channel is on.
  static const pcs_on = const PowerChannelStateEnumState(1);

  static get values => [pcs_off, pcs_on];

  const PowerChannelStateEnumState(int value) : super(value);
}

/// Reason for rejection.
class GpsFixRejectionEnumReason extends EnumType {
  /// New GPS Fix position is above a computed threshold.
  static const rr_above_threshold = const GpsFixRejectionEnumReason(0);
  /// Invalid measurement.
  static const rr_invalid = const GpsFixRejectionEnumReason(1);
  /// Above maximum horizontal dilution of precision.
  static const rr_above_max_hdop = const GpsFixRejectionEnumReason(2);
  /// Above maximum horizontal accuracy index.
  static const rr_above_max_hacc = const GpsFixRejectionEnumReason(3);
  /// Lost one of the validity bits between consecutive GPS fixes.
  static const rr_lost_val_bit = const GpsFixRejectionEnumReason(4);

  static get values => [rr_above_threshold, rr_invalid, rr_above_max_hdop, rr_above_max_hacc, 
      rr_lost_val_bit];

  const GpsFixRejectionEnumReason(int value) : super(value);
}

/// Reason for acceptance/rejection.
class LblRangeAcceptanceEnumAcceptance extends EnumType {
  /// This LBL range is accepted by the navigation filter.
  static const rr_accepted = const LblRangeAcceptanceEnumAcceptance(0);
  /// New LBL Range is above a computed threshold.
  static const rr_above_threshold = const LblRangeAcceptanceEnumAcceptance(1);
  /// Singular point.
  static const rr_singular = const LblRangeAcceptanceEnumAcceptance(2);
  /// The filter lacks information to properly use the received LBL range.
  static const rr_no_info = const LblRangeAcceptanceEnumAcceptance(3);
  /// Vehicle is using only GPS fix when it is at surface.
  static const rr_at_surface = const LblRangeAcceptanceEnumAcceptance(4);

  static get values => [rr_accepted, rr_above_threshold, rr_singular, rr_no_info, 
      rr_at_surface];

  const LblRangeAcceptanceEnumAcceptance(int value) : super(value);
}

/// This field represents the type of the rejected velocity.
class DvlRejectionBitfieldType extends BitfieldType {
  static const type_gv = const DvlRejectionBitfieldType(0x01);
  static const type_wv = const DvlRejectionBitfieldType(0x02);

  static get values => [type_gv, type_wv];

  const DvlRejectionBitfieldType(int value) : super(value);

  static DvlRejectionBitfieldType fromBits(
          List<DvlRejectionBitfieldType> bits) =>
      (bits == null || bits.length < 2)
          ? DvlRejectionBitfieldType(bits == null || bits.isEmpty ? 0 : bits[0])
          : bits.reduce((b1, b2) => DvlRejectionBitfieldType(b1.value | b2.value));
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
  static const rr_innov_threshold_x = const DvlRejectionEnumReason(0);
  /// The current DVL y-axis measurement is discarded
  /// because the absolute difference between the
  /// value and the previous accepted DVL measurement
  /// with a given time window is above a configurable
  /// threshold.
  static const rr_innov_threshold_y = const DvlRejectionEnumReason(1);
  /// The current DVL x-axis measurement is discarded
  /// because the the absolute value is above a
  /// configurable threshold.
  static const rr_abs_threshold_x = const DvlRejectionEnumReason(2);
  /// The current DVL y-axis measurement is discarded
  /// because the the absolute value is above a
  /// configurable threshold.
  static const rr_abs_threshold_y = const DvlRejectionEnumReason(3);

  static get values => [rr_innov_threshold_x, rr_innov_threshold_y, rr_abs_threshold_x, rr_abs_threshold_y];

  const DvlRejectionEnumReason(int value) : super(value);
}

/// Alignment State.
class AlignmentStateEnumState extends EnumType {
  static const as_not_aligned = const AlignmentStateEnumState(0);
  static const as_aligned = const AlignmentStateEnumState(1);
  static const as_not_supported = const AlignmentStateEnumState(2);
  static const as_aligning = const AlignmentStateEnumState(3);
  static const as_wrong_medium = const AlignmentStateEnumState(4);

  static get values => [as_not_aligned, as_aligned, as_not_supported, as_aligning, 
      as_wrong_medium];

  const AlignmentStateEnumState(int value) : super(value);
}

/// Desired Path flags.
class DesiredPathBitfieldFlags extends BitfieldType {
  /// Indicates that the start point specification is given,
  /// therefore it should be considered for tracking.
  static const fl_start = const DesiredPathBitfieldFlags(0x01);
  /// If start point is not given, ignore also the previous path's
  /// endpoint and take the start point to be the current vehicle
  /// location.
  static const fl_direct = const DesiredPathBitfieldFlags(0x02);
  /// Ignore altitude/depth setting and let them be controlled
  /// independently.
  static const fl_no_z = const DesiredPathBitfieldFlags(0x04);
  /// Perform 3D-tracking, i.e., consider the path formed in the
  /// XYZ plane taking into account both the 'start_z' and 'end_z'
  /// values.
  static const fl_3dtrack = const DesiredPathBitfieldFlags(0x08);
  /// Indicates that loitering, if defined, should be done
  /// counter-clockwise. Clockwise loitering will apply
  /// otherwise.
  static const fl_cclockw = const DesiredPathBitfieldFlags(0x10);
  /// Indicates that loitering, if defined, should be done from
  /// the current vehicle position. The end_lat and end_lon
  /// fields will be ignored.
  static const fl_loiter_curr = const DesiredPathBitfieldFlags(0x20);
  /// Indicates that takeoff should be done before going to the end position.
  static const fl_takeoff = const DesiredPathBitfieldFlags(0x40);
  /// Indicates that the system should land at the end position.
  static const fl_land = const DesiredPathBitfieldFlags(0x80);

  static get values => [fl_start, fl_direct, fl_no_z, fl_3dtrack, 
      fl_cclockw, fl_loiter_curr, fl_takeoff, fl_land];

  const DesiredPathBitfieldFlags(int value) : super(value);

  static DesiredPathBitfieldFlags fromBits(
          List<DesiredPathBitfieldFlags> bits) =>
      (bits == null || bits.length < 2)
          ? DesiredPathBitfieldFlags(bits == null || bits.isEmpty ? 0 : bits[0])
          : bits.reduce((b1, b2) => DesiredPathBitfieldFlags(b1.value | b2.value));
}

/// Desired Control flags.
class DesiredControlBitfieldFlags extends BitfieldType {
  /// If enabled then field X has a meaningful value.
  static const fl_x = const DesiredControlBitfieldFlags(0x01);
  /// If enabled then field Y has a meaningful value.
  static const fl_y = const DesiredControlBitfieldFlags(0x02);
  /// If enabled then field Z has a meaningful value.
  static const fl_z = const DesiredControlBitfieldFlags(0x04);
  /// If enabled then field K has a meaningful value.
  static const fl_k = const DesiredControlBitfieldFlags(0x08);
  /// If enabled then field M has a meaningful value.
  static const fl_m = const DesiredControlBitfieldFlags(0x10);
  /// If enabled then field N has a meaningful value.
  static const fl_n = const DesiredControlBitfieldFlags(0x20);

  static get values => [fl_x, fl_y, fl_z, fl_k, 
      fl_m, fl_n];

  const DesiredControlBitfieldFlags(int value) : super(value);

  static DesiredControlBitfieldFlags fromBits(
          List<DesiredControlBitfieldFlags> bits) =>
      (bits == null || bits.length < 2)
          ? DesiredControlBitfieldFlags(bits == null || bits.isEmpty ? 0 : bits[0])
          : bits.reduce((b1, b2) => DesiredControlBitfieldFlags(b1.value | b2.value));
}

/// Desired Velocity flags.
class DesiredVelocityBitfieldFlags extends BitfieldType {
  /// If enabled then field u has a meaningful value.
  static const fl_surge = const DesiredVelocityBitfieldFlags(0x01);
  /// If enabled then field u has a meaningful value.
  static const fl_sway = const DesiredVelocityBitfieldFlags(0x02);
  /// If enabled then field w has a meaningful value.
  static const fl_heave = const DesiredVelocityBitfieldFlags(0x04);
  /// If enabled then field p has a meaningful value.
  static const fl_roll = const DesiredVelocityBitfieldFlags(0x08);
  /// If enabled then field q has a meaningful value.
  static const fl_pitch = const DesiredVelocityBitfieldFlags(0x10);
  /// If enabled then field r has a meaningful value.
  static const fl_yaw = const DesiredVelocityBitfieldFlags(0x20);

  static get values => [fl_surge, fl_sway, fl_heave, fl_roll, 
      fl_pitch, fl_yaw];

  const DesiredVelocityBitfieldFlags(int value) : super(value);

  static DesiredVelocityBitfieldFlags fromBits(
          List<DesiredVelocityBitfieldFlags> bits) =>
      (bits == null || bits.length < 2)
          ? DesiredVelocityBitfieldFlags(bits == null || bits.isEmpty ? 0 : bits[0])
          : bits.reduce((b1, b2) => DesiredVelocityBitfieldFlags(b1.value | b2.value));
}

/// Path control state flags.
class PathControlStateBitfieldFlags extends BitfieldType {
  /// Set if near the target endpoint.
  static const fl_near = const PathControlStateBitfieldFlags(0x01);
  /// Set if loitering.
  static const fl_loitering = const PathControlStateBitfieldFlags(0x02);
  /// Altitude/depth being controlled independently.
  static const fl_no_z = const PathControlStateBitfieldFlags(0x04);
  /// 3D-tracking is active.
  static const fl_3dtrack = const PathControlStateBitfieldFlags(0x08);
  /// Indicates that loitering, if active, is being done
  /// counter-clockwise. Otherwise, clockwise loitering should be
  /// assumed.
  static const fl_cclockw = const PathControlStateBitfieldFlags(0x10);

  static get values => [fl_near, fl_loitering, fl_no_z, fl_3dtrack, 
      fl_cclockw];

  const PathControlStateBitfieldFlags(int value) : super(value);

  static PathControlStateBitfieldFlags fromBits(
          List<PathControlStateBitfieldFlags> bits) =>
      (bits == null || bits.length < 2)
          ? PathControlStateBitfieldFlags(bits == null || bits.isEmpty ? 0 : bits[0])
          : bits.reduce((b1, b2) => PathControlStateBitfieldFlags(b1.value | b2.value));
}

/// Brake operation.
class BrakeEnumOp extends EnumType {
  /// Stop braking procedures.
  static const op_stop = const BrakeEnumOp(0);
  /// Start braking procedures.
  static const op_start = const BrakeEnumOp(1);
  /// Revert Actuation.
  static const op_revert = const BrakeEnumOp(2);

  static get values => [op_stop, op_start, op_revert];

  const BrakeEnumOp(int value) : super(value);
}

/// Setpoint Flags
class DesiredLinearStateBitfieldFlags extends BitfieldType {
  /// If enabled then field x has a meaningful value.
  static const fl_x = const DesiredLinearStateBitfieldFlags(0x0001);
  /// If enabled then field y has a meaningful value.
  static const fl_y = const DesiredLinearStateBitfieldFlags(0x0002);
  /// If enabled then field z has a meaningful value.
  static const fl_z = const DesiredLinearStateBitfieldFlags(0x0004);
  /// If enabled then field vx has a meaningful value.
  static const fl_vx = const DesiredLinearStateBitfieldFlags(0x0008);
  /// If enabled then field vy has a meaningful value.
  static const fl_vy = const DesiredLinearStateBitfieldFlags(0x0010);
  /// If enabled then field vz has a meaningful value.
  static const fl_vz = const DesiredLinearStateBitfieldFlags(0x0020);
  /// If enabled then field ax has a meaningful value.
  static const fl_ax = const DesiredLinearStateBitfieldFlags(0x0040);
  /// If enabled then field ay has a meaningful value.
  static const fl_ay = const DesiredLinearStateBitfieldFlags(0x0080);
  /// If enabled then field az has a meaningful value.
  static const fl_az = const DesiredLinearStateBitfieldFlags(0x0100);

  static get values => [fl_x, fl_y, fl_z, fl_vx, 
      fl_vy, fl_vz, fl_ax, fl_ay, fl_az];

  const DesiredLinearStateBitfieldFlags(int value) : super(value);

  static DesiredLinearStateBitfieldFlags fromBits(
          List<DesiredLinearStateBitfieldFlags> bits) =>
      (bits == null || bits.length < 2)
          ? DesiredLinearStateBitfieldFlags(bits == null || bits.isEmpty ? 0 : bits[0])
          : bits.reduce((b1, b2) => DesiredLinearStateBitfieldFlags(b1.value | b2.value));
}

/// Flags of the maneuver.
class PopUpBitfieldFlags extends BitfieldType {
  /// If this flag is set, lat/lon/start_z fields should be
  /// ignored and current vehicle position should be considered as
  /// starting point for ascent/descent.
  static const flg_curr_pos = const PopUpBitfieldFlags(0x01);
  /// If this flag is set, duration field is used to hold position at surface
  /// for that amount of time.
  static const flg_wait_at_surface = const PopUpBitfieldFlags(0x02);
  /// This flag will only make sense if WAIT_AT_SURFACE is also set.
  /// While holding position at surface the vehicle will assume a
  /// station keeping behavior.
  static const flg_station_keep = const PopUpBitfieldFlags(0x04);

  static get values => [flg_curr_pos, flg_wait_at_surface, flg_station_keep];

  const PopUpBitfieldFlags(int value) : super(value);

  static PopUpBitfieldFlags fromBits(
          List<PopUpBitfieldFlags> bits) =>
      (bits == null || bits.length < 2)
          ? PopUpBitfieldFlags(bits == null || bits.isEmpty ? 0 : bits[0])
          : bits.reduce((b1, b2) => PopUpBitfieldFlags(b1.value | b2.value));
}

/// Loiter maneuver type.
class LoiterEnumType extends EnumType {
  static const lt_default = const LoiterEnumType(0);
  static const lt_circular = const LoiterEnumType(1);
  static const lt_racetrack = const LoiterEnumType(2);
  static const lt_eight = const LoiterEnumType(3);
  static const lt_hover = const LoiterEnumType(4);

  static get values => [lt_default, lt_circular, lt_racetrack, lt_eight, 
      lt_hover];

  const LoiterEnumType(int value) : super(value);
}

/// Desired direction.
class LoiterEnumDirection extends EnumType {
  static const ld_vdep = const LoiterEnumDirection(0);
  static const ld_clockw = const LoiterEnumDirection(1);
  static const ld_cclockw = const LoiterEnumDirection(2);
  static const ld_iwindcurr = const LoiterEnumDirection(3);

  static get values => [ld_vdep, ld_clockw, ld_cclockw, ld_iwindcurr];

  const LoiterEnumDirection(int value) : super(value);
}

/// Maneuver flags.
class RowsBitfieldFlags extends BitfieldType {
  static const flg_square_curve = const RowsBitfieldFlags(0x0001);
  static const flg_curve_right = const RowsBitfieldFlags(0x0002);

  static get values => [flg_square_curve, flg_curve_right];

  const RowsBitfieldFlags(int value) : super(value);

  static RowsBitfieldFlags fromBits(
          List<RowsBitfieldFlags> bits) =>
      (bits == null || bits.length < 2)
          ? RowsBitfieldFlags(bits == null || bits.isEmpty ? 0 : bits[0])
          : bits.reduce((b1, b2) => RowsBitfieldFlags(b1.value | b2.value));
}

/// Flags of the maneuver.
class ElevatorBitfieldFlags extends BitfieldType {
  /// If this flag is set, lat/lon/start_z fields should be
  /// ignored and current vehicle position should be considered as
  /// starting point for ascent/descent.
  static const flg_curr_pos = const ElevatorBitfieldFlags(0x01);

  static get values => [flg_curr_pos];

  const ElevatorBitfieldFlags(int value) : super(value);

  static ElevatorBitfieldFlags fromBits(
          List<ElevatorBitfieldFlags> bits) =>
      (bits == null || bits.length < 2)
          ? ElevatorBitfieldFlags(bits == null || bits.isEmpty ? 0 : bits[0])
          : bits.reduce((b1, b2) => ElevatorBitfieldFlags(b1.value | b2.value));
}

/// Code indicating maneuver state.
class ManeuverControlStateEnumState extends EnumType {
  /// Maneuver in progress.
  static const mcs_executing = const ManeuverControlStateEnumState(0);
  /// Maneuver completed.
  static const mcs_done = const ManeuverControlStateEnumState(1);
  /// Maneuver error.
  static const mcs_error = const ManeuverControlStateEnumState(2);
  /// Maneuver stopped.
  static const mcs_stopped = const ManeuverControlStateEnumState(3);

  static get values => [mcs_executing, mcs_done, mcs_error, mcs_stopped];

  const ManeuverControlStateEnumState(int value) : super(value);
}

/// Direction of the maneuver.
class CompassCalibrationEnumDirection extends EnumType {
  static const ld_vdep = const CompassCalibrationEnumDirection(0);
  static const ld_clockw = const CompassCalibrationEnumDirection(1);
  static const ld_cclockw = const CompassCalibrationEnumDirection(2);
  static const ld_iwindcurr = const CompassCalibrationEnumDirection(3);

  static get values => [ld_vdep, ld_clockw, ld_cclockw, ld_iwindcurr];

  const CompassCalibrationEnumDirection(int value) : super(value);
}

/// Formation reference frame
class FormationParametersEnumReferenceFrame extends EnumType {
  static const op_earth_fixed = const FormationParametersEnumReferenceFrame(0);
  static const op_path_fixed = const FormationParametersEnumReferenceFrame(1);
  static const op_path_curved = const FormationParametersEnumReferenceFrame(2);

  static get values => [op_earth_fixed, op_path_fixed, op_path_curved];

  const FormationParametersEnumReferenceFrame(int value) : super(value);
}

class ReferenceBitfieldFlags extends BitfieldType {
  static const flag_location = const ReferenceBitfieldFlags(0x01);
  static const flag_speed = const ReferenceBitfieldFlags(0x02);
  static const flag_z = const ReferenceBitfieldFlags(0x04);
  static const flag_radius = const ReferenceBitfieldFlags(0x08);
  static const flag_start_point = const ReferenceBitfieldFlags(0x10);
  static const flag_direct = const ReferenceBitfieldFlags(0x20);
  static const flag_mandone = const ReferenceBitfieldFlags(0x80);

  static get values => [flag_location, flag_speed, flag_z, flag_radius, 
      flag_start_point, flag_direct, flag_mandone];

  const ReferenceBitfieldFlags(int value) : super(value);

  static ReferenceBitfieldFlags fromBits(
          List<ReferenceBitfieldFlags> bits) =>
      (bits == null || bits.length < 2)
          ? ReferenceBitfieldFlags(bits == null || bits.isEmpty ? 0 : bits[0])
          : bits.reduce((b1, b2) => ReferenceBitfieldFlags(b1.value | b2.value));
}

class FollowRefStateEnumState extends EnumType {
  static const fr_wait = const FollowRefStateEnumState(1);
  static const fr_goto = const FollowRefStateEnumState(2);
  static const fr_loiter = const FollowRefStateEnumState(3);
  static const fr_hover = const FollowRefStateEnumState(4);
  static const fr_elevator = const FollowRefStateEnumState(5);
  static const fr_timeout = const FollowRefStateEnumState(6);

  static get values => [fr_wait, fr_goto, fr_loiter, fr_hover, 
      fr_elevator, fr_timeout];

  const FollowRefStateEnumState(int value) : super(value);
}

class FollowRefStateBitfieldProximity extends BitfieldType {
  static const prox_far = const FollowRefStateBitfieldProximity(0x01);
  static const prox_xy_near = const FollowRefStateBitfieldProximity(0x02);
  static const prox_z_near = const FollowRefStateBitfieldProximity(0x04);
  static const prox_xy_unreachable = const FollowRefStateBitfieldProximity(0x08);
  static const prox_z_unreachable = const FollowRefStateBitfieldProximity(0x10);

  static get values => [prox_far, prox_xy_near, prox_z_near, prox_xy_unreachable, 
      prox_z_unreachable];

  const FollowRefStateBitfieldProximity(int value) : super(value);

  static FollowRefStateBitfieldProximity fromBits(
          List<FollowRefStateBitfieldProximity> bits) =>
      (bits == null || bits.length < 2)
          ? FollowRefStateBitfieldProximity(bits == null || bits.isEmpty ? 0 : bits[0])
          : bits.reduce((b1, b2) => FollowRefStateBitfieldProximity(b1.value | b2.value));
}

/// Direction to which the vehicle should attempt to unstuck.
class DislodgeEnumDirection extends EnumType {
  static const dir_auto = const DislodgeEnumDirection(0);
  static const dir_forward = const DislodgeEnumDirection(1);
  static const dir_backward = const DislodgeEnumDirection(2);

  static get values => [dir_auto, dir_forward, dir_backward];

  const DislodgeEnumDirection(int value) : super(value);
}

/// Indicates if the message is a request, or a reply to a previous request.
class FormationEnumType extends EnumType {
  static const fc_request = const FormationEnumType(0);
  static const fc_report = const FormationEnumType(1);

  static get values => [fc_request, fc_report];

  const FormationEnumType(int value) : super(value);
}

/// Operation to perform.
class FormationEnumOp extends EnumType {
  /// Start the formation maneuver.
  static const op_start = const FormationEnumOp(0);
  /// Stop the formation maneuver.
  static const op_stop = const FormationEnumOp(1);
  /// Stop the formation maneuver.
  static const op_ready = const FormationEnumOp(2);
  /// Stop the formation maneuver.
  static const op_executing = const FormationEnumOp(3);
  /// Stop the formation maneuver.
  static const op_failure = const FormationEnumOp(4);

  static get values => [op_start, op_stop, op_ready, op_executing, 
      op_failure];

  const FormationEnumOp(int value) : super(value);
}

/// Formation reference frame
class FormationEnumReferenceFrame extends EnumType {
  static const op_earth_fixed = const FormationEnumReferenceFrame(0);
  static const op_path_fixed = const FormationEnumReferenceFrame(1);
  static const op_path_curved = const FormationEnumReferenceFrame(2);

  static get values => [op_earth_fixed, op_path_fixed, op_path_curved];

  const FormationEnumReferenceFrame(int value) : super(value);
}

/// What to do if the vehicle fails to arrive before or at the requested time.
class ScheduledGotoEnumDelayed extends EnumType {
  /// If the vehicle fails to arrive at the specified time, it will keep going to the destination
  /// at top speed and only then consider this maneuver completed.
  static const dbeh_resume = const ScheduledGotoEnumDelayed(0);
  /// If the vehicle fails to arrive at the specified time, it will stop the current maneuver and
  /// advance to the next one (independently of how far it is from destination).
  static const dbeh_skip = const ScheduledGotoEnumDelayed(1);
  /// If the vehicle fails to arrive at the specified time, it will stop the execution of this
  /// maneuver with a FAILED result (the entire plan will be stopped).
  static const dbeh_fail = const ScheduledGotoEnumDelayed(2);

  static get values => [dbeh_resume, dbeh_skip, dbeh_fail];

  const ScheduledGotoEnumDelayed(int value) : super(value);
}

/// Maneuver optional flags.
class RowsCoverageBitfieldFlags extends BitfieldType {
  /// Whether to move between transects using an additional perpendicular transect.
  static const flg_square_curve = const RowsCoverageBitfieldFlags(0x01);
  /// Shall the vehicle turn towards the right after the first transect (alternatively it will turn left).
  static const flg_curve_right = const RowsCoverageBitfieldFlags(0x02);

  static get values => [flg_square_curve, flg_curve_right];

  const RowsCoverageBitfieldFlags(int value) : super(value);

  static RowsCoverageBitfieldFlags fromBits(
          List<RowsCoverageBitfieldFlags> bits) =>
      (bits == null || bits.length < 2)
          ? RowsCoverageBitfieldFlags(bits == null || bits.isEmpty ? 0 : bits[0])
          : bits.reduce((b1, b2) => RowsCoverageBitfieldFlags(b1.value | b2.value));
}

class AutonomousSectionBitfieldLimits extends BitfieldType {
  static const enforce_depth = const AutonomousSectionBitfieldLimits(0x01);
  static const enforce_altitude = const AutonomousSectionBitfieldLimits(0x02);
  static const enforce_timeout = const AutonomousSectionBitfieldLimits(0x04);
  static const enforce_area2d = const AutonomousSectionBitfieldLimits(0x08);

  static get values => [enforce_depth, enforce_altitude, enforce_timeout, enforce_area2d];

  const AutonomousSectionBitfieldLimits(int value) : super(value);

  static AutonomousSectionBitfieldLimits fromBits(
          List<AutonomousSectionBitfieldLimits> bits) =>
      (bits == null || bits.length < 2)
          ? AutonomousSectionBitfieldLimits(bits == null || bits.isEmpty ? 0 : bits[0])
          : bits.reduce((b1, b2) => AutonomousSectionBitfieldLimits(b1.value | b2.value));
}

/// Flags of the maneuver.
class StationKeepingExtendedBitfieldFlags extends BitfieldType {
  /// If this flag is set, the vehicle will hold position underwater, loitering at z reference.
  /// It will popup periodically to report position. When it pops up, it will stay at surface in "normal" station keeping behaviour for a certain time (popup_duration).
  static const flg_keep_safe = const StationKeepingExtendedBitfieldFlags(0x01);

  static get values => [flg_keep_safe];

  const StationKeepingExtendedBitfieldFlags(int value) : super(value);

  static StationKeepingExtendedBitfieldFlags fromBits(
          List<StationKeepingExtendedBitfieldFlags> bits) =>
      (bits == null || bits.length < 2)
          ? StationKeepingExtendedBitfieldFlags(bits == null || bits.isEmpty ? 0 : bits[0])
          : bits.reduce((b1, b2) => StationKeepingExtendedBitfieldFlags(b1.value | b2.value));
}

/// Desired direction.
class MagnetometerEnumDirection extends EnumType {
  static const md_clockw_first = const MagnetometerEnumDirection(0);
  static const md_cclockw_first = const MagnetometerEnumDirection(1);

  static get values => [md_clockw_first, md_cclockw_first];

  const MagnetometerEnumDirection(int value) : super(value);
}

/// The overall operation mode.
class VehicleStateEnumOpMode extends EnumType {
  /// Ready to service requests.
  static const vs_service = const VehicleStateEnumOpMode(0);
  /// Ongoing vehicle calibration.
  static const vs_calibration = const VehicleStateEnumOpMode(1);
  /// Errors are set.
  static const vs_error = const VehicleStateEnumOpMode(2);
  /// A maneuver is executing.
  static const vs_maneuver = const VehicleStateEnumOpMode(3);
  /// External control is active.
  static const vs_external = const VehicleStateEnumOpMode(4);
  /// Booting system.
  static const vs_boot = const VehicleStateEnumOpMode(5);

  static get values => [vs_service, vs_calibration, vs_error, vs_maneuver, 
      vs_external, vs_boot];

  const VehicleStateEnumOpMode(int value) : super(value);
}

class VehicleStateBitfieldFlags extends BitfieldType {
  static const vflg_maneuver_done = const VehicleStateBitfieldFlags(0x01);

  static get values => [vflg_maneuver_done];

  const VehicleStateBitfieldFlags(int value) : super(value);

  static VehicleStateBitfieldFlags fromBits(
          List<VehicleStateBitfieldFlags> bits) =>
      (bits == null || bits.length < 2)
          ? VehicleStateBitfieldFlags(bits == null || bits.isEmpty ? 0 : bits[0])
          : bits.reduce((b1, b2) => VehicleStateBitfieldFlags(b1.value | b2.value));
}

class VehicleCommandEnumType extends EnumType {
  static const vc_request = const VehicleCommandEnumType(0);
  static const vc_success = const VehicleCommandEnumType(1);
  static const vc_in_progress = const VehicleCommandEnumType(2);
  static const vc_failure = const VehicleCommandEnumType(3);

  static get values => [vc_request, vc_success, vc_in_progress, vc_failure];

  const VehicleCommandEnumType(int value) : super(value);
}

/// The type of command/action to be performed
class VehicleCommandEnumCommand extends EnumType {
  /// Execute the maneuver specified in 'maneuver' field.
  static const vc_exec_maneuver = const VehicleCommandEnumCommand(0);
  /// Stop 'maneuver' being executed.
  static const vc_stop_maneuver = const VehicleCommandEnumCommand(1);
  /// Start calibrating vehicle.
  static const vc_start_calibration = const VehicleCommandEnumCommand(2);
  /// Stop calibrating vehicle.
  static const vc_stop_calibration = const VehicleCommandEnumCommand(3);

  static get values => [vc_exec_maneuver, vc_stop_maneuver, vc_start_calibration, vc_stop_calibration];

  const VehicleCommandEnumCommand(int value) : super(value);
}

/// Command.
class MonitorEntityStateEnumCommand extends EnumType {
  static const mes_reset = const MonitorEntityStateEnumCommand(0);
  static const mes_enable = const MonitorEntityStateEnumCommand(1);
  static const mes_disable = const MonitorEntityStateEnumCommand(2);
  static const mes_enable_exclusive = const MonitorEntityStateEnumCommand(3);
  static const mes_status = const MonitorEntityStateEnumCommand(4);

  static get values => [mes_reset, mes_enable, mes_disable, mes_enable_exclusive, 
      mes_status];

  const MonitorEntityStateEnumCommand(int value) : super(value);
}

class ControlLoopsEnumEnable extends EnumType {
  static const cl_disable = const ControlLoopsEnumEnable(0);
  static const cl_enable = const ControlLoopsEnumEnable(1);

  static get values => [cl_disable, cl_enable];

  const ControlLoopsEnumEnable(int value) : super(value);
}

/// Current medium.
class VehicleMediumEnumMedium extends EnumType {
  /// Vehicle is on the ground
  static const vm_ground = const VehicleMediumEnumMedium(0);
  /// Vehicle is airborne
  static const vm_air = const VehicleMediumEnumMedium(1);
  /// Vehicle is at water surface
  static const vm_water = const VehicleMediumEnumMedium(2);
  /// Vehicle is underwater
  static const vm_underwater = const VehicleMediumEnumMedium(3);
  /// Vehicle medium is unknown
  static const vm_unknown = const VehicleMediumEnumMedium(4);

  static get values => [vm_ground, vm_air, vm_water, vm_underwater, 
      vm_unknown];

  const VehicleMediumEnumMedium(int value) : super(value);
}

/// Collision flags.
class CollisionBitfieldType extends BitfieldType {
  /// Collision detected in the x-axis
  static const cd_x = const CollisionBitfieldType(0x01);
  /// Collision detected in the y-axis
  static const cd_y = const CollisionBitfieldType(0x02);
  /// Collision detected in the z-axis
  static const cd_z = const CollisionBitfieldType(0x04);
  /// Sudden impact detected
  static const cd_impact = const CollisionBitfieldType(0x08);

  static get values => [cd_x, cd_y, cd_z, cd_impact];

  const CollisionBitfieldType(int value) : super(value);

  static CollisionBitfieldType fromBits(
          List<CollisionBitfieldType> bits) =>
      (bits == null || bits.length < 2)
          ? CollisionBitfieldType(bits == null || bits.isEmpty ? 0 : bits[0])
          : bits.reduce((b1, b2) => CollisionBitfieldType(b1.value | b2.value));
}

/// Position mismatch monitoring flag.
class FormStateEnumPosSimMon extends EnumType {
  static const pos_ok = const FormStateEnumPosSimMon(0);
  static const pos_wrn = const FormStateEnumPosSimMon(1);
  static const pos_lim = const FormStateEnumPosSimMon(2);

  static get values => [pos_ok, pos_wrn, pos_lim];

  const FormStateEnumPosSimMon(int value) : super(value);
}

/// Communications monitoring flag.
class FormStateEnumCommMon extends EnumType {
  static const comms_ok = const FormStateEnumCommMon(0);
  static const comms_timeout = const FormStateEnumCommMon(1);

  static get values => [comms_ok, comms_timeout];

  const FormStateEnumCommMon(int value) : super(value);
}

/// Convergence monitoring flag.
class FormStateEnumConvergMon extends EnumType {
  static const conv_ok = const FormStateEnumConvergMon(0);
  static const conv_timeout = const FormStateEnumConvergMon(1);

  static get values => [conv_ok, conv_timeout];

  const FormStateEnumConvergMon(int value) : super(value);
}

/// Current mode autonomy level.
class AutopilotModeEnumAutonomy extends EnumType {
  /// Autopilot has no control
  static const al_manual = const AutopilotModeEnumAutonomy(0);
  /// Autopilot has some control
  static const al_assisted = const AutopilotModeEnumAutonomy(1);
  /// Autopilot has full control
  static const al_auto = const AutopilotModeEnumAutonomy(2);

  static get values => [al_manual, al_assisted, al_auto];

  const AutopilotModeEnumAutonomy(int value) : super(value);
}

/// Indicates if the message is a request, or a reply to a previous request.
class FormationStateEnumType extends EnumType {
  static const fc_request = const FormationStateEnumType(0);
  static const fc_report = const FormationStateEnumType(1);

  static get values => [fc_request, fc_report];

  const FormationStateEnumType(int value) : super(value);
}

/// Operation to perform.
class FormationStateEnumOp extends EnumType {
  /// Start the formation maneuver.
  static const op_start = const FormationStateEnumOp(0);
  /// Stop the formation maneuver.
  static const op_stop = const FormationStateEnumOp(1);

  static get values => [op_start, op_stop];

  const FormationStateEnumOp(int value) : super(value);
}

/// Position mismatch monitoring flag.
class FormationStateEnumPosSimMon extends EnumType {
  static const pos_ok = const FormationStateEnumPosSimMon(0);
  static const pos_wrn = const FormationStateEnumPosSimMon(1);
  static const pos_lim = const FormationStateEnumPosSimMon(2);

  static get values => [pos_ok, pos_wrn, pos_lim];

  const FormationStateEnumPosSimMon(int value) : super(value);
}

/// Communications monitoring flag.
class FormationStateEnumCommMon extends EnumType {
  static const comms_ok = const FormationStateEnumCommMon(0);
  static const comms_timeout = const FormationStateEnumCommMon(1);

  static get values => [comms_ok, comms_timeout];

  const FormationStateEnumCommMon(int value) : super(value);
}

/// Convergence monitoring flag.
class FormationStateEnumConvergMon extends EnumType {
  static const conv_ok = const FormationStateEnumConvergMon(0);
  static const conv_timeout = const FormationStateEnumConvergMon(1);

  static get values => [conv_ok, conv_timeout];

  const FormationStateEnumConvergMon(int value) : super(value);
}

/// Operation to perform.
class ReportControlEnumOp extends EnumType {
  /// Request a system to periodically send reports through 'interface'.
  /// The destination system will reply with a STARTED command. Periodicity
  /// will be defined by the field 'period'. If applicable, the destination
  /// address is defined in field 'dst'.
  static const op_request_start = const ReportControlEnumOp(0);
  /// The destination system will reply a message with this operation
  /// everytime a report is successfully started. The periodicity of
  /// reports is indicated in the field 'period' while the communication
  /// interface to be used is described in field 'interface'. If applicable,
  /// the destination address is defined in field 'dst'.
  static const op_started = const ReportControlEnumOp(1);
  /// Request a system to stop dispatching reports through a given
  /// communication interface described in 'interface'. The destination
  /// system will reply with a STOPPED command. If applicable, the
  /// destination address is defined in field 'dst'.
  static const op_request_stop = const ReportControlEnumOp(2);
  /// The destination system will reply a message with this operation
  /// everytime a scheduled report is successfully stopped in a defined
  /// communication interface. If applicable, the destination address
  /// is defined in field 'dst'.
  static const op_stopped = const ReportControlEnumOp(3);
  /// Request a system to issue a single report in a defined communication
  /// interface. The destination system will reply with a REPORT_ISSUED command.
  /// If applicable, the destination address is defined in field 'dst'.
  static const op_request_report = const ReportControlEnumOp(4);
  /// The destination system will reply a single report request with
  /// this operation.If applicable, the destination address is defined
  /// in field 'dst'.
  static const op_report_sent = const ReportControlEnumOp(5);

  static get values => [op_request_start, op_started, op_request_stop, op_stopped, 
      op_request_report, op_report_sent];

  const ReportControlEnumOp(int value) : super(value);
}

/// Communication interface to be used for reports.
class ReportControlBitfieldCommInterface extends BitfieldType {
  /// Use acoustic communications
  static const ci_acoustic = const ReportControlBitfieldCommInterface(0x01);
  /// Use satellite communications
  static const ci_satellite = const ReportControlBitfieldCommInterface(0x02);
  /// Use Global System for Mobile Communications
  static const ci_gsm = const ReportControlBitfieldCommInterface(0x04);
  /// Use mobile networks
  static const ci_mobile = const ReportControlBitfieldCommInterface(0x08);
  /// Use Radio telemetry
  static const ci_radio = const ReportControlBitfieldCommInterface(0x10);

  static get values => [ci_acoustic, ci_satellite, ci_gsm, ci_mobile, 
      ci_radio];

  const ReportControlBitfieldCommInterface(int value) : super(value);

  static ReportControlBitfieldCommInterface fromBits(
          List<ReportControlBitfieldCommInterface> bits) =>
      (bits == null || bits.length < 2)
          ? ReportControlBitfieldCommInterface(bits == null || bits.isEmpty ? 0 : bits[0])
          : bits.reduce((b1, b2) => ReportControlBitfieldCommInterface(b1.value | b2.value));
}

/// Communication mean to be used to transfer these data.
class TransmissionRequestEnumCommMean extends EnumType {
  static const cmean_wifi = const TransmissionRequestEnumCommMean(0);
  static const cmean_acoustic = const TransmissionRequestEnumCommMean(1);
  static const cmean_satellite = const TransmissionRequestEnumCommMean(2);
  static const cmean_gsm = const TransmissionRequestEnumCommMean(3);

  static get values => [cmean_wifi, cmean_acoustic, cmean_satellite, cmean_gsm];

  const TransmissionRequestEnumCommMean(int value) : super(value);
}

/// Type of data to be transmitted.
class TransmissionRequestEnumDataMode extends EnumType {
  static const dmode_inlinemsg = const TransmissionRequestEnumDataMode(0);
  static const dmode_text = const TransmissionRequestEnumDataMode(1);
  static const dmode_raw = const TransmissionRequestEnumDataMode(2);

  static get values => [dmode_inlinemsg, dmode_text, dmode_raw];

  const TransmissionRequestEnumDataMode(int value) : super(value);
}

class TransmissionStatusEnumStatus extends EnumType {
  static const tstat_in_progress = const TransmissionStatusEnumStatus(0);
  static const tstat_sent = const TransmissionStatusEnumStatus(1);
  static const tstat_delivered = const TransmissionStatusEnumStatus(51);
  static const tstat_maybe_delivered = const TransmissionStatusEnumStatus(52);
  static const tstat_input_failure = const TransmissionStatusEnumStatus(101);
  static const tstat_temporary_failure = const TransmissionStatusEnumStatus(102);
  static const tstat_permanent_failure = const TransmissionStatusEnumStatus(103);

  static get values => [tstat_in_progress, tstat_sent, tstat_delivered, tstat_maybe_delivered, 
      tstat_input_failure, tstat_temporary_failure, tstat_permanent_failure];

  const TransmissionStatusEnumStatus(int value) : super(value);
}

class SmsStatusEnumStatus extends EnumType {
  static const smsstat_queued = const SmsStatusEnumStatus(0);
  static const smsstat_sent = const SmsStatusEnumStatus(1);
  static const smsstat_input_failure = const SmsStatusEnumStatus(101);
  static const smsstat_error = const SmsStatusEnumStatus(102);

  static get values => [smsstat_queued, smsstat_sent, smsstat_input_failure, smsstat_error];

  const SmsStatusEnumStatus(int value) : super(value);
}

class VtolStateEnumState extends EnumType {
  /// Vehicle is not configured as VTOL.
  static const vtol_state_undefined = const VtolStateEnumState(0);
  /// Vehicle is in transition from multicopter to fixed-wing.
  static const vtol_state_transition_to_fw = const VtolStateEnumState(1);
  /// Vehicle is in transition from fixed-wing to multicopter.
  static const vtol_state_transition_to_mc = const VtolStateEnumState(2);
  /// Vehicle is in multicopter state.
  static const vtol_state_mc = const VtolStateEnumState(3);
  /// Vehicle is in fixed-wing state.
  static const vtol_state_fw = const VtolStateEnumState(4);

  static get values => [vtol_state_undefined, vtol_state_transition_to_fw, vtol_state_transition_to_mc, vtol_state_mc, 
      vtol_state_fw];

  const VtolStateEnumState(int value) : super(value);
}

class ArmingStateEnumState extends EnumType {
  static const motors_armed = const ArmingStateEnumState(0);
  static const motors_disarmed = const ArmingStateEnumState(1);

  static get values => [motors_armed, motors_disarmed];

  const ArmingStateEnumState(int value) : super(value);
}

class EmergencyControlEnumCommand extends EnumType {
  static const ectl_enable = const EmergencyControlEnumCommand(0);
  static const ectl_disable = const EmergencyControlEnumCommand(1);
  static const ectl_start = const EmergencyControlEnumCommand(2);
  static const ectl_stop = const EmergencyControlEnumCommand(3);
  static const ectl_query = const EmergencyControlEnumCommand(4);
  static const ectl_set_plan = const EmergencyControlEnumCommand(5);

  static get values => [ectl_enable, ectl_disable, ectl_start, ectl_stop, 
      ectl_query, ectl_set_plan];

  const EmergencyControlEnumCommand(int value) : super(value);
}

class EmergencyControlStateEnumState extends EnumType {
  static const ecs_not_configured = const EmergencyControlStateEnumState(0);
  static const ecs_disabled = const EmergencyControlStateEnumState(1);
  static const ecs_enabled = const EmergencyControlStateEnumState(2);
  static const ecs_armed = const EmergencyControlStateEnumState(3);
  static const ecs_active = const EmergencyControlStateEnumState(4);
  static const ecs_stopping = const EmergencyControlStateEnumState(5);

  static get values => [ecs_not_configured, ecs_disabled, ecs_enabled, ecs_armed, 
      ecs_active, ecs_stopping];

  const EmergencyControlStateEnumState(int value) : super(value);
}

/// Indicates if the message is a request, or a reply to a
/// previous request.
class PlanDBEnumType extends EnumType {
  static const dbt_request = const PlanDBEnumType(0);
  static const dbt_success = const PlanDBEnumType(1);
  static const dbt_failure = const PlanDBEnumType(2);
  static const dbt_in_progress = const PlanDBEnumType(3);

  static get values => [dbt_request, dbt_success, dbt_failure, dbt_in_progress];

  const PlanDBEnumType(int value) : super(value);
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
  static const dbop_set = const PlanDBEnumOp(0);
  /// Delete a plan from the DB. The 'plan_id' field identifies
  /// the plan to delete.
  static const dbop_del = const PlanDBEnumOp(1);
  /// Get a plan stored in the DB.The 'plan_id' field identifies
  /// the plan. Successful replies will yield a
  /// 'PlanSpecification' message in the 'arg' field.
  static const dbop_get = const PlanDBEnumOp(2);
  /// Get DB state for a stored plan. The 'plan_id' field
  /// identifies the plan. Successful replies will yield a
  /// 'PlanDBInformation' message in the 'arg' field.
  static const dbop_get_info = const PlanDBEnumOp(3);
  /// Clear the entire DB.
  static const dbop_clear = const PlanDBEnumOp(4);
  /// Get state of the entire DB. Successful replies will yield a
  /// 'PlanDBState' message in the 'arg' field but without
  /// individual plan information (in the 'plans_info' field of
  /// 'PlanDBState').
  static const dbop_get_state = const PlanDBEnumOp(5);
  /// Get detailed state of the entire DB. Successful replies
  /// will yield a 'PlanDBState' message in the 'arg' field with
  /// individual plan information (in the 'plans_info' field of
  /// 'PlanDBState').
  static const dbop_get_dstate = const PlanDBEnumOp(6);
  /// PlanDB replies of this type are sent automatically during
  /// bootstrap.
  static const dbop_boot = const PlanDBEnumOp(7);

  static get values => [dbop_set, dbop_del, dbop_get, dbop_get_info, 
      dbop_clear, dbop_get_state, dbop_get_dstate, dbop_boot];

  const PlanDBEnumOp(int value) : super(value);
}

/// Indicates if the message is a request or a reply to a
/// previous request. The *op*, *request_id* and *plan_id* fields
/// of a request will be echoed in one or more responses to that
/// request.
class PlanControlEnumType extends EnumType {
  static const pc_request = const PlanControlEnumType(0);
  static const pc_success = const PlanControlEnumType(1);
  static const pc_failure = const PlanControlEnumType(2);
  static const pc_in_progress = const PlanControlEnumType(3);

  static get values => [pc_request, pc_success, pc_failure, pc_in_progress];

  const PlanControlEnumType(int value) : super(value);
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
  static const pc_start = const PlanControlEnumOp(0);
  /// Stop current plan being executed if any.
  static const pc_stop = const PlanControlEnumOp(1);
  /// Load Plan. If a :ref:`PlanSpecification` is given with the
  /// request in the *data* field, then that plan is used and
  /// stored in the Plan DB. Otherwise, the plan is loaded from
  /// the Plan DB.
  static const pc_load = const PlanControlEnumOp(2);
  /// Get loaded plan. For a successful reply, the *data* field
  /// will contain the :ref:`PlanSpecification` message that
  /// corresponds to the currently loaded plan.
  static const pc_get = const PlanControlEnumOp(3);

  static get values => [pc_start, pc_stop, pc_load, pc_get];

  const PlanControlEnumOp(int value) : super(value);
}

class PlanControlBitfieldFlags extends BitfieldType {
  /// Perform vehicle calibration.
  static const flg_calibrate = const PlanControlBitfieldFlags(0x0001);
  /// Execute current plan while ignoring some errors that might be active.
  static const flg_ignore_errors = const PlanControlBitfieldFlags(0x0002);

  static get values => [flg_calibrate, flg_ignore_errors];

  const PlanControlBitfieldFlags(int value) : super(value);

  static PlanControlBitfieldFlags fromBits(
          List<PlanControlBitfieldFlags> bits) =>
      (bits == null || bits.length < 2)
          ? PlanControlBitfieldFlags(bits == null || bits.isEmpty ? 0 : bits[0])
          : bits.reduce((b1, b2) => PlanControlBitfieldFlags(b1.value | b2.value));
}

/// Describes overall state.
class PlanControlStateEnumState extends EnumType {
  /// Plan execution is blocked e.g., due to a vehicle error,
  /// or if no plan is loaded.
  static const pcs_blocked = const PlanControlStateEnumState(0);
  /// Ready to start plan execution.
  static const pcs_ready = const PlanControlStateEnumState(1);
  /// Initializing plan for execution.
  static const pcs_initializing = const PlanControlStateEnumState(2);
  /// Executing plan.
  static const pcs_executing = const PlanControlStateEnumState(3);

  static get values => [pcs_blocked, pcs_ready, pcs_initializing, pcs_executing];

  const PlanControlStateEnumState(int value) : super(value);
}

/// Outcome of the last executed plan.
class PlanControlStateEnumLastOutcome extends EnumType {
  /// Unknown or not filled.
  static const lpo_none = const PlanControlStateEnumLastOutcome(0);
  /// Last plan execution was successful.
  static const lpo_success = const PlanControlStateEnumLastOutcome(1);
  /// Last plan execution was a failure.
  static const lpo_failure = const PlanControlStateEnumLastOutcome(2);

  static get values => [lpo_none, lpo_success, lpo_failure];

  const PlanControlStateEnumLastOutcome(int value) : super(value);
}

class PlanVariableEnumType extends EnumType {
  static const pvt_boolean = const PlanVariableEnumType(0);
  static const pvt_number = const PlanVariableEnumType(1);
  static const pvt_text = const PlanVariableEnumType(2);
  static const pvt_message = const PlanVariableEnumType(3);

  static get values => [pvt_boolean, pvt_number, pvt_text, pvt_message];

  const PlanVariableEnumType(int value) : super(value);
}

class PlanVariableEnumAccess extends EnumType {
  static const pva_input = const PlanVariableEnumAccess(0);
  static const pva_output = const PlanVariableEnumAccess(1);
  static const pva_local = const PlanVariableEnumAccess(2);

  static get values => [pva_input, pva_output, pva_local];

  const PlanVariableEnumAccess(int value) : super(value);
}

class PlanGenerationEnumCmd extends EnumType {
  /// Generate the plan and store it in the PlanDB.
  static const cmd_generate = const PlanGenerationEnumCmd(0);
  /// Generate (storing it in the PlanDB) and execute it immediately.
  static const cmd_execute = const PlanGenerationEnumCmd(1);

  static get values => [cmd_generate, cmd_execute];

  const PlanGenerationEnumCmd(int value) : super(value);
}

class PlanGenerationEnumOp extends EnumType {
  /// Request the execution of this command.
  static const op_request = const PlanGenerationEnumOp(0);
  /// Some error has occurred while executing the command. The
  /// error can be found in the 'params' tuplelist (under the
  /// key 'error').
  static const op_error = const PlanGenerationEnumOp(1);
  /// The requested command was executed successfully.
  static const op_success = const PlanGenerationEnumOp(2);

  static get values => [op_request, op_error, op_success];

  const PlanGenerationEnumOp(int value) : super(value);
}

/// Action on the formation leader state variables
class LeaderStateEnumOp extends EnumType {
  static const op_request = const LeaderStateEnumOp(0);
  static const op_set = const LeaderStateEnumOp(1);
  static const op_report = const LeaderStateEnumOp(2);

  static get values => [op_request, op_set, op_report];

  const LeaderStateEnumOp(int value) : super(value);
}

/// Type of plan statistics, if they are launched before, during or after the plan execution.
class PlanStatisticsEnumType extends EnumType {
  static const tp_preplan = const PlanStatisticsEnumType(0);
  static const tp_inplan = const PlanStatisticsEnumType(1);
  static const tp_postplan = const PlanStatisticsEnumType(2);

  static get values => [tp_preplan, tp_inplan, tp_postplan];

  const PlanStatisticsEnumType(int value) : super(value);
}

class PlanStatisticsBitfieldProperties extends BitfieldType {
  /// Basic plan, meaning it is Linear, Finite and Noncyclic.
  static const prp_basic = const PlanStatisticsBitfieldProperties(0x00);
  /// Plan is nonlinear.
  static const prp_nonlinear = const PlanStatisticsBitfieldProperties(0x01);
  /// Plan is infinite in duration.
  static const prp_infinite = const PlanStatisticsBitfieldProperties(0x02);
  /// Plan is cyclical.
  static const prp_cyclical = const PlanStatisticsBitfieldProperties(0x04);
  /// All properties checked.
  static const prp_all = const PlanStatisticsBitfieldProperties(0x07);

  static get values => [prp_basic, prp_nonlinear, prp_infinite, prp_cyclical, 
      prp_all];

  const PlanStatisticsBitfieldProperties(int value) : super(value);

  static PlanStatisticsBitfieldProperties fromBits(
          List<PlanStatisticsBitfieldProperties> bits) =>
      (bits == null || bits.length < 2)
          ? PlanStatisticsBitfieldProperties(bits == null || bits.isEmpty ? 0 : bits[0])
          : bits.reduce((b1, b2) => PlanStatisticsBitfieldProperties(b1.value | b2.value));
}

/// How the position was received/calculated
class ReportedStateEnumSType extends EnumType {
  static const stype_wi_fi = const ReportedStateEnumSType(0);
  static const stype_tracker = const ReportedStateEnumSType(1);
  static const stype_sms = const ReportedStateEnumSType(2);
  static const stype_acoustic_modem = const ReportedStateEnumSType(3);
  static const stype_unknown = const ReportedStateEnumSType(254);

  static get values => [stype_wi_fi, stype_tracker, stype_sms, stype_acoustic_modem, 
      stype_unknown];

  const ReportedStateEnumSType(int value) : super(value);
}

/// The type of feature
class MapFeatureEnumFeatureType extends EnumType {
  /// These features should appear as a point with a label in the map
  static const ftype_poi = const MapFeatureEnumFeatureType(0);
  /// These features should be represented as a filled polygon (no label)
  static const ftype_filledpoly = const MapFeatureEnumFeatureType(1);
  /// These features should be represented as a countoured closed polygon (no fill and no label)
  static const ftype_contouredpoly = const MapFeatureEnumFeatureType(2);
  /// These features should be represented as an open polygon (no label)
  static const ftype_line = const MapFeatureEnumFeatureType(3);
  /// A transponder location in the map
  static const ftype_transponder = const MapFeatureEnumFeatureType(4);
  /// Intended vehicle's starting location
  static const ftype_startloc = const MapFeatureEnumFeatureType(5);
  /// The offsets reference for this map
  static const ftype_homeref = const MapFeatureEnumFeatureType(6);

  static get values => [ftype_poi, ftype_filledpoly, ftype_contouredpoly, ftype_line, 
      ftype_transponder, ftype_startloc, ftype_homeref];

  const MapFeatureEnumFeatureType(int value) : super(value);
}

class CcuEventEnumType extends EnumType {
  static const evt_log_entry = const CcuEventEnumType(1);
  static const evt_plan_added = const CcuEventEnumType(2);
  static const evt_plan_removed = const CcuEventEnumType(3);
  static const evt_plan_changed = const CcuEventEnumType(4);
  static const evt_map_feature_added = const CcuEventEnumType(5);
  static const evt_map_feature_removed = const CcuEventEnumType(6);
  static const evt_map_feature_changed = const CcuEventEnumType(7);
  static const evt_teleoperation_started = const CcuEventEnumType(8);
  static const evt_teleoperation_ended = const CcuEventEnumType(9);

  static get values => [evt_log_entry, evt_plan_added, evt_plan_removed, evt_plan_changed, 
      evt_map_feature_added, evt_map_feature_removed, evt_map_feature_changed, evt_teleoperation_started, evt_teleoperation_ended];

  const CcuEventEnumType(int value) : super(value);
}

class TrexCommandEnumCommand extends EnumType {
  static const op_disable = const TrexCommandEnumCommand(0);
  static const op_enable = const TrexCommandEnumCommand(1);
  static const op_post_goal = const TrexCommandEnumCommand(2);
  static const op_recall_goal = const TrexCommandEnumCommand(3);
  static const op_request_plan = const TrexCommandEnumCommand(4);
  static const op_report_plan = const TrexCommandEnumCommand(5);

  static get values => [op_disable, op_enable, op_post_goal, op_recall_goal, 
      op_request_plan, op_report_plan];

  const TrexCommandEnumCommand(int value) : super(value);
}

class TrexOperationEnumOp extends EnumType {
  static const op_post_token = const TrexOperationEnumOp(1);
  static const op_post_goal = const TrexOperationEnumOp(2);
  static const op_recall_goal = const TrexOperationEnumOp(3);
  static const op_request_plan = const TrexOperationEnumOp(4);
  static const op_report_plan = const TrexOperationEnumOp(5);

  static get values => [op_post_token, op_post_goal, op_recall_goal, op_request_plan, 
      op_report_plan];

  const TrexOperationEnumOp(int value) : super(value);
}

class TrexAttributeEnumAttrType extends EnumType {
  static const type_bool = const TrexAttributeEnumAttrType(1);
  static const type_int = const TrexAttributeEnumAttrType(2);
  static const type_float = const TrexAttributeEnumAttrType(3);
  static const type_string = const TrexAttributeEnumAttrType(4);
  static const type_enum = const TrexAttributeEnumAttrType(5);

  static get values => [type_bool, type_int, type_float, type_string, 
      type_enum];

  const TrexAttributeEnumAttrType(int value) : super(value);
}

class SessionStatusEnumStatus extends EnumType {
  static const status_established = const SessionStatusEnumStatus(1);
  static const status_closed = const SessionStatusEnumStatus(2);

  static get values => [status_established, status_closed];

  const SessionStatusEnumStatus(int value) : super(value);
}

/// Event type.
class IoEventEnumType extends EnumType {
  static const iov_type_input = const IoEventEnumType(1);
  static const iov_type_input_error = const IoEventEnumType(2);

  static get values => [iov_type_input, iov_type_input_error];

  const IoEventEnumType(int value) : super(value);
}

class UamTxFrameBitfieldFlags extends BitfieldType {
  static const utf_ack = const UamTxFrameBitfieldFlags(0x01);
  static const utf_delayed = const UamTxFrameBitfieldFlags(0x02);

  static get values => [utf_ack, utf_delayed];

  const UamTxFrameBitfieldFlags(int value) : super(value);

  static UamTxFrameBitfieldFlags fromBits(
          List<UamTxFrameBitfieldFlags> bits) =>
      (bits == null || bits.length < 2)
          ? UamTxFrameBitfieldFlags(bits == null || bits.isEmpty ? 0 : bits[0])
          : bits.reduce((b1, b2) => UamTxFrameBitfieldFlags(b1.value | b2.value));
}

class UamRxFrameBitfieldFlags extends BitfieldType {
  static const urf_promiscuous = const UamRxFrameBitfieldFlags(0x01);
  static const urf_delayed = const UamRxFrameBitfieldFlags(0x02);

  static get values => [urf_promiscuous, urf_delayed];

  const UamRxFrameBitfieldFlags(int value) : super(value);

  static UamRxFrameBitfieldFlags fromBits(
          List<UamRxFrameBitfieldFlags> bits) =>
      (bits == null || bits.length < 2)
          ? UamRxFrameBitfieldFlags(bits == null || bits.isEmpty ? 0 : bits[0])
          : bits.reduce((b1, b2) => UamRxFrameBitfieldFlags(b1.value | b2.value));
}

class UamTxStatusEnumValue extends EnumType {
  static const uts_done = const UamTxStatusEnumValue(0);
  static const uts_failed = const UamTxStatusEnumValue(1);
  static const uts_canceled = const UamTxStatusEnumValue(2);
  static const uts_busy = const UamTxStatusEnumValue(3);
  static const uts_inv_addr = const UamTxStatusEnumValue(4);
  static const uts_ip = const UamTxStatusEnumValue(5);
  static const uts_unsupported = const UamTxStatusEnumValue(6);
  static const uts_inv_size = const UamTxStatusEnumValue(7);

  static get values => [uts_done, uts_failed, uts_canceled, uts_busy, 
      uts_inv_addr, uts_ip, uts_unsupported, uts_inv_size];

  const UamTxStatusEnumValue(int value) : super(value);
}

/// Action on the vehicle formation control parameters.
class FormCtrlParamEnumAction extends EnumType {
  static const op_req = const FormCtrlParamEnumAction(0);
  static const op_set = const FormCtrlParamEnumAction(1);
  static const op_rep = const FormCtrlParamEnumAction(2);

  static get values => [op_req, op_set, op_rep];

  const FormCtrlParamEnumAction(int value) : super(value);
}

/// Action on the vehicle formation control parameters.
class FormationControlParamsEnumAction extends EnumType {
  static const op_req = const FormationControlParamsEnumAction(0);
  static const op_set = const FormationControlParamsEnumAction(1);
  static const op_rep = const FormationControlParamsEnumAction(2);

  static get values => [op_req, op_set, op_rep];

  const FormationControlParamsEnumAction(int value) : super(value);
}

/// Indicates if the message is a request, or a reply to a previous request.
class FormationEvaluationEnumType extends EnumType {
  static const fc_request = const FormationEvaluationEnumType(0);
  static const fc_report = const FormationEvaluationEnumType(1);

  static get values => [fc_request, fc_report];

  const FormationEvaluationEnumType(int value) : super(value);
}

/// Operation to perform.
class FormationEvaluationEnumOp extends EnumType {
  /// Start the formation maneuver.
  static const op_start = const FormationEvaluationEnumOp(0);
  /// Stop the formation maneuver.
  static const op_stop = const FormationEvaluationEnumOp(1);
  /// Stop the formation maneuver.
  static const op_ready = const FormationEvaluationEnumOp(2);
  /// Stop the formation maneuver.
  static const op_executing = const FormationEvaluationEnumOp(3);
  /// Stop the formation maneuver.
  static const op_failure = const FormationEvaluationEnumOp(4);

  static get values => [op_start, op_stop, op_ready, op_executing, 
      op_failure];

  const FormationEvaluationEnumOp(int value) : super(value);
}

class SoiCommandEnumType extends EnumType {
  static const soitype_request = const SoiCommandEnumType(1);
  static const soitype_success = const SoiCommandEnumType(2);
  static const soitype_error = const SoiCommandEnumType(3);

  static get values => [soitype_request, soitype_success, soitype_error];

  const SoiCommandEnumType(int value) : super(value);
}

class SoiCommandEnumCommand extends EnumType {
  static const soicmd_exec = const SoiCommandEnumCommand(1);
  static const soicmd_stop = const SoiCommandEnumCommand(2);
  static const soicmd_set_params = const SoiCommandEnumCommand(3);
  static const soicmd_get_params = const SoiCommandEnumCommand(4);
  static const soicmd_get_plan = const SoiCommandEnumCommand(5);
  static const soicmd_resume = const SoiCommandEnumCommand(6);

  static get values => [soicmd_exec, soicmd_stop, soicmd_set_params, soicmd_get_params, 
      soicmd_get_plan, soicmd_resume];

  const SoiCommandEnumCommand(int value) : super(value);
}

class SoiStateEnumState extends EnumType {
  static const soistate_exec = const SoiStateEnumState(1);
  static const soistate_idle = const SoiStateEnumState(2);
  static const soistate_inactive = const SoiStateEnumState(3);

  static get values => [soistate_exec, soistate_idle, soistate_inactive];

  const SoiStateEnumState(int value) : super(value);
}

/// Used to define the type of the operation this message holds.
class UsblConfigEnumOp extends EnumType {
  /// Set the beacons configuration aboard the vehicle.
  static const op_set_cfg = const UsblConfigEnumOp(0);
  /// Request the vehicle to send its current beacons configuration.
  static const op_get_cfg = const UsblConfigEnumOp(1);
  static const op_cur_cfg = const UsblConfigEnumOp(2);

  static get values => [op_set_cfg, op_get_cfg, op_cur_cfg];

  const UsblConfigEnumOp(int value) : super(value);
}

/// Type of measurement.
class DissolvedOrganicMatterEnumType extends EnumType {
  static const dt_colored = const DissolvedOrganicMatterEnumType(0);
  static const dt_fluorescent = const DissolvedOrganicMatterEnumType(1);

  static get values => [dt_colored, dt_fluorescent];

  const DissolvedOrganicMatterEnumType(int value) : super(value);
}

/// Severity of status.
class ApmStatusEnumSeverity extends EnumType {
  static const apm_emergency = const ApmStatusEnumSeverity(0);
  static const apm_alert = const ApmStatusEnumSeverity(1);
  static const apm_critical = const ApmStatusEnumSeverity(2);
  static const apm_error = const ApmStatusEnumSeverity(3);
  static const apm_warning = const ApmStatusEnumSeverity(4);
  static const apm_notice = const ApmStatusEnumSeverity(5);
  static const apm_info = const ApmStatusEnumSeverity(6);
  static const apm_debug = const ApmStatusEnumSeverity(7);

  static get values => [apm_emergency, apm_alert, apm_critical, apm_error, 
      apm_warning, apm_notice, apm_info, apm_debug];

  const ApmStatusEnumSeverity(int value) : super(value);
}

/// Gain value of readings.
class SadcReadingsEnumGain extends EnumType {
  static const gain_x1 = const SadcReadingsEnumGain(0);
  static const gain_x10 = const SadcReadingsEnumGain(1);
  static const gain_x100 = const SadcReadingsEnumGain(2);

  static get values => [gain_x1, gain_x10, gain_x100];

  const SadcReadingsEnumGain(int value) : super(value);
}

