// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// IMC Code Generator
// **************************************************************************

part of 'imc_def_gen.dart';

/// State of entity.
class EntityStateEnumState extends EnumType {
  static const boot = const EntityStateEnumState._(0);
  static const normal = const EntityStateEnumState._(1);
  static const fault = const EntityStateEnumState._(2);
  static const error = const EntityStateEnumState._(3);
  static const failure = const EntityStateEnumState._(4);

  static get values => [boot, normal, fault, error, 
      failure];

  const EntityStateEnumState._(int value) : super(value);
}

/// Complementary entity state flags.
class EntityStateBitfieldFlags extends BitfieldType {
  static const human_intervention = const EntityStateBitfieldFlags._(0x01);

  static get values => [human_intervention];

  const EntityStateBitfieldFlags._(int value) : super(value);

  static EntityStateBitfieldFlags fromBits(
          List<EntityStateBitfieldFlags> bits) =>
      bits.reduce((b1, b2) => EntityStateBitfieldFlags._(b1.value | b2.value));
}

/// Operation to perform.
class EntityListEnumOp extends EnumType {
  static const report = const EntityListEnumOp._(0);
  static const query = const EntityListEnumOp._(1);

  static get values => [report, query];

  const EntityListEnumOp._(int value) : super(value);
}

class RestartSystemEnumType extends EnumType {
  /// Request a DUNE restart
  static const dune = const RestartSystemEnumType._(1);
  /// Request a system restart.
  static const system = const RestartSystemEnumType._(2);

  static get values => [dune, system];

  const RestartSystemEnumType._(int value) : super(value);
}

/// Operation to perform.
class DevCalibrationControlEnumOp extends EnumType {
  /// Start calibration procedure.
  static const start = const DevCalibrationControlEnumOp._(0);
  /// Stop calibration procedure.
  static const stop = const DevCalibrationControlEnumOp._(1);
  /// Perform next step of the calibration procedure.
  static const step_next = const DevCalibrationControlEnumOp._(2);
  /// Perform previous step of the calibration procedure.
  static const step_previous = const DevCalibrationControlEnumOp._(3);

  static get values => [start, stop, step_next, step_previous];

  const DevCalibrationControlEnumOp._(int value) : super(value);
}

/// Additional flags.
class DevCalibrationStateBitfieldFlags extends BitfieldType {
  /// Jumping to the previous calibration step is not supported.
  static const previous_not_supported = const DevCalibrationStateBitfieldFlags._(0x01);
  /// Jumping to the next calibration step is not supported.
  static const next_not_supported = const DevCalibrationStateBitfieldFlags._(0x02);
  /// The calibration procedure was suspended and must be resumed or
  /// cancelled with a DeviceCalibrationControl message.
  static const waiting_control = const DevCalibrationStateBitfieldFlags._(0x04);
  /// Calibration was interrupted due to an error and must be
  /// restarted or cancelled with a DeviceCalibrationControl
  /// message.
  static const error = const DevCalibrationStateBitfieldFlags._(0x08);
  /// The calibration procedure was completed.
  static const completed = const DevCalibrationStateBitfieldFlags._(0x10);

  static get values => [previous_not_supported, next_not_supported, waiting_control, error, 
      completed];

  const DevCalibrationStateBitfieldFlags._(int value) : super(value);

  static DevCalibrationStateBitfieldFlags fromBits(
          List<DevCalibrationStateBitfieldFlags> bits) =>
      bits.reduce((b1, b2) => DevCalibrationStateBitfieldFlags._(b1.value | b2.value));
}

/// Current state.
class EntityActivationStateEnumState extends EnumType {
  /// Entity is inactive.
  static const inactive = const EntityActivationStateEnumState._(0);
  /// Entity is active.
  static const active = const EntityActivationStateEnumState._(1);
  /// Activation is in progress.
  static const act_ip = const EntityActivationStateEnumState._(2);
  /// Activation is completed.
  static const act_done = const EntityActivationStateEnumState._(3);
  /// The activation procedure failed and the field 'error' contains the error message.
  static const act_fail = const EntityActivationStateEnumState._(4);
  /// Deactivation is in progress.
  static const deact_ip = const EntityActivationStateEnumState._(5);
  /// Deactivation is in progress.
  static const deact_done = const EntityActivationStateEnumState._(6);
  /// The deactivation procedure failed and the field 'error' contains the error message.
  static const deact_fail = const EntityActivationStateEnumState._(7);

  static get values => [inactive, active, act_ip, act_done, 
      act_fail, deact_ip, deact_done, deact_fail];

  const EntityActivationStateEnumState._(int value) : super(value);
}

/// Action on the vehicle operation limits
class VehicleOperationalLimitsEnumOp extends EnumType {
  static const request = const VehicleOperationalLimitsEnumOp._(0);
  static const setVal = const VehicleOperationalLimitsEnumOp._(1);
  static const report = const VehicleOperationalLimitsEnumOp._(2);

  static get values => [request, setVal, report];

  const VehicleOperationalLimitsEnumOp._(int value) : super(value);
}

/// Indicates whether leaks have been detected or not.
class LeakSimulationEnumOp extends EnumType {
  static const off = const LeakSimulationEnumOp._(0);
  static const onVal = const LeakSimulationEnumOp._(1);

  static get values => [off, onVal];

  const LeakSimulationEnumOp._(int value) : super(value);
}

/// Type of request.
class UASimulationEnumType extends EnumType {
  static const data = const UASimulationEnumType._(0);
  static const ping = const UASimulationEnumType._(1);
  static const ping_reply = const UASimulationEnumType._(2);

  static get values => [data, ping, ping_reply];

  const UASimulationEnumType._(int value) : super(value);
}

/// Action on the vehicle simulation parameters for the formation control
class DynamicsSimParamEnumOp extends EnumType {
  static const request = const DynamicsSimParamEnumOp._(0);
  static const setVal = const DynamicsSimParamEnumOp._(1);
  static const report = const DynamicsSimParamEnumOp._(2);

  static get values => [request, setVal, report];

  const DynamicsSimParamEnumOp._(int value) : super(value);
}

/// Operation to perform.
class CacheControlEnumOp extends EnumType {
  static const store = const CacheControlEnumOp._(0);
  static const load = const CacheControlEnumOp._(1);
  static const clear = const CacheControlEnumOp._(2);
  static const copy = const CacheControlEnumOp._(3);
  static const copy_complete = const CacheControlEnumOp._(4);

  static get values => [store, load, clear, copy, 
      copy_complete];

  const CacheControlEnumOp._(int value) : super(value);
}

/// Operation to perform.
class LoggingControlEnumOp extends EnumType {
  /// Request the logging manager to start logging. The logging
  /// manager will reply with a STARTED operation. If logging is
  /// already in progress the current log will be closed and a new
  /// one will be opened (therefore the logging manager will send
  /// two messages - STOPPED and STARTED). The field 'name'
  /// represents the label that will be appended to the log path.
  static const request_start = const LoggingControlEnumOp._(0);
  /// The logging manager will send a message with this operation
  /// everytime a log is successfully started. The field 'name'
  /// contains the complete name of the log.
  static const started = const LoggingControlEnumOp._(1);
  /// Request the logging manager to stop logging messages. The
  /// logging manager will reply with a STOPPED operation and
  /// logging will be suspended until a message with operation
  /// START is received. If logging is already stoppped the
  /// logging manager will ignore this operation and will not
  /// reply with a STOPPED operation. The field 'name' with this
  /// operation type has no meaning.
  static const request_stop = const LoggingControlEnumOp._(2);
  /// The logging manager will send a message with this operation
  /// when logging is successfully stopped. The field 'name'
  /// contains the complete name of the log that was closed.
  static const stopped = const LoggingControlEnumOp._(3);
  /// This operation instructs the logging manager to send a
  /// message with operation CURRENT_NAME containing the complete
  /// name of the current log in the field 'name'. The field
  /// 'name' with this operation type has no meaning.
  static const request_current_name = const LoggingControlEnumOp._(4);
  /// The logging manager will send a message with this operation
  /// when asked via the REQUEST_CURRENT_NAME operation. The field
  /// 'name' contains the complete name of the log.
  static const current_name = const LoggingControlEnumOp._(5);

  static get values => [request_start, started, request_stop, stopped, 
      request_current_name, current_name];

  const LoggingControlEnumOp._(int value) : super(value);
}

/// Type of message.
class LogBookEntryEnumType extends EnumType {
  static const info = const LogBookEntryEnumType._(0);
  static const warning = const LogBookEntryEnumType._(1);
  static const error = const LogBookEntryEnumType._(2);
  static const critical = const LogBookEntryEnumType._(3);
  static const debug = const LogBookEntryEnumType._(4);

  static get values => [info, warning, error, critical, 
      debug];

  const LogBookEntryEnumType._(int value) : super(value);
}

/// Command to perform.
class LogBookControlEnumCommand extends EnumType {
  /// Retrieve log book entries.
  static const getVal = const LogBookControlEnumCommand._(0);
  /// Clear log book entries.
  static const clear = const LogBookControlEnumCommand._(1);
  /// Retrieve log book entries corresponding to errors.
  static const get_err = const LogBookControlEnumCommand._(2);
  /// Reply to a GET command. Message argument is a MessageList
  /// instance containing LogBookEntry messages.
  static const reply = const LogBookControlEnumCommand._(3);

  static get values => [getVal, clear, get_err, reply];

  const LogBookControlEnumCommand._(int value) : super(value);
}

/// Operation to perform.
class ReplayControlEnumOp extends EnumType {
  static const start = const ReplayControlEnumOp._(0);
  static const stop = const ReplayControlEnumOp._(1);
  static const pause = const ReplayControlEnumOp._(2);
  static const resume = const ReplayControlEnumOp._(3);

  static get values => [start, stop, pause, resume];

  const ReplayControlEnumOp._(int value) : super(value);
}

/// Operation to perform.
class ClockControlEnumOp extends EnumType {
  /// Synchronize clock according to given clock value.
  static const sync_exec = const ClockControlEnumOp._(0);
  /// Request autonomous clock synchronization.
  static const sync_request = const ClockControlEnumOp._(1);
  /// Synchronization start notification.
  static const sync_started = const ClockControlEnumOp._(2);
  /// Synchronization completion notification.
  static const sync_done = const ClockControlEnumOp._(3);
  /// Set timezone.
  static const set_tz = const ClockControlEnumOp._(4);
  /// Notification due to timezone modification.
  static const set_tz_done = const ClockControlEnumOp._(5);

  static get values => [sync_exec, sync_request, sync_started, sync_done, 
      set_tz, set_tz_done];

  const ClockControlEnumOp._(int value) : super(value);
}

class HistoricSonarDataEnumEncoding extends EnumType {
  static const one_byte_per_pixel = const HistoricSonarDataEnumEncoding._(0);
  static const png = const HistoricSonarDataEnumEncoding._(1);
  static const jpeg = const HistoricSonarDataEnumEncoding._(2);

  static get values => [one_byte_per_pixel, png, jpeg];

  const HistoricSonarDataEnumEncoding._(int value) : super(value);
}

/// Type of event.
class HistoricEventEnumType extends EnumType {
  static const info = const HistoricEventEnumType._(0);
  static const error = const HistoricEventEnumType._(1);

  static get values => [info, error];

  const HistoricEventEnumType._(int value) : super(value);
}

/// Water parameter used to calculate the vertical profile.
class VerticalProfileEnumParameter extends EnumType {
  static const temperature = const VerticalProfileEnumParameter._(0);
  static const salinity = const VerticalProfileEnumParameter._(1);
  static const conductivity = const VerticalProfileEnumParameter._(2);
  static const ph = const VerticalProfileEnumParameter._(3);
  static const redox = const VerticalProfileEnumParameter._(4);
  static const chlorophyll = const VerticalProfileEnumParameter._(5);
  static const turbidity = const VerticalProfileEnumParameter._(6);

  static get values => [temperature, salinity, conductivity, ph, 
      redox, chlorophyll, turbidity];

  const VerticalProfileEnumParameter._(int value) : super(value);
}

/// Informs about the availability of the service on internal and
/// external networks.
class AnnounceServiceBitfieldServiceType extends BitfieldType {
  static const externalVal = const AnnounceServiceBitfieldServiceType._(0x01);
  static const local = const AnnounceServiceBitfieldServiceType._(0x02);

  static get values => [externalVal, local];

  const AnnounceServiceBitfieldServiceType._(int value) : super(value);

  static AnnounceServiceBitfieldServiceType fromBits(
          List<AnnounceServiceBitfieldServiceType> bits) =>
      bits.reduce((b1, b2) => AnnounceServiceBitfieldServiceType._(b1.value | b2.value));
}

/// Current state of an SMS transaction.
class SmsStateEnumState extends EnumType {
  static const accepted = const SmsStateEnumState._(0);
  static const rejected = const SmsStateEnumState._(1);
  static const interrupted = const SmsStateEnumState._(2);
  static const completed = const SmsStateEnumState._(3);
  static const idle = const SmsStateEnumState._(4);
  static const transmitting = const SmsStateEnumState._(5);
  static const receiving = const SmsStateEnumState._(6);

  static get values => [accepted, rejected, interrupted, completed, 
      idle, transmitting, receiving];

  const SmsStateEnumState._(int value) : super(value);
}

class IridiumTxStatusEnumStatus extends EnumType {
  static const ok = const IridiumTxStatusEnumStatus._(1);
  static const error = const IridiumTxStatusEnumStatus._(2);
  static const queued = const IridiumTxStatusEnumStatus._(3);
  static const transmit = const IridiumTxStatusEnumStatus._(4);
  static const expired = const IridiumTxStatusEnumStatus._(5);
  static const empty = const IridiumTxStatusEnumStatus._(6);

  static get values => [ok, error, queued, transmit, 
      expired, empty];

  const IridiumTxStatusEnumStatus._(int value) : super(value);
}

/// Actions on the group list.
class SystemGroupEnumAction extends EnumType {
  static const dis = const SystemGroupEnumAction._(0);
  static const setVal = const SystemGroupEnumAction._(1);
  static const req = const SystemGroupEnumAction._(2);
  static const chg = const SystemGroupEnumAction._(3);
  static const rep = const SystemGroupEnumAction._(4);
  static const frc = const SystemGroupEnumAction._(5);

  static get values => [dis, setVal, req, chg, 
      rep, frc];

  const SystemGroupEnumAction._(int value) : super(value);
}

class HistoricDataQueryEnumType extends EnumType {
  /// Request data from the Data Store
  static const query = const HistoricDataQueryEnumType._(1);
  /// Data Store response with Data (using field 'data')
  static const reply = const HistoricDataQueryEnumType._(2);
  /// Clear 'data' from the Data Store
  static const clear = const HistoricDataQueryEnumType._(3);

  static get values => [query, reply, clear];

  const HistoricDataQueryEnumType._(int value) : super(value);
}

class CommSystemsQueryBitfieldType extends BitfieldType {
  /// Query systems about communication capability
  static const query = const CommSystemsQueryBitfieldType._(0x01);
  /// Reply systems about communication capability
  static const reply = const CommSystemsQueryBitfieldType._(0x02);

  static get values => [query, reply];

  const CommSystemsQueryBitfieldType._(int value) : super(value);

  static CommSystemsQueryBitfieldType fromBits(
          List<CommSystemsQueryBitfieldType> bits) =>
      bits.reduce((b1, b2) => CommSystemsQueryBitfieldType._(b1.value | b2.value));
}

/// Communication interface to be used for reports.
class CommSystemsQueryBitfieldCommInterface extends BitfieldType {
  /// Use acoustic communications
  static const acoustic = const CommSystemsQueryBitfieldCommInterface._(0x01);
  /// Use satellite communications
  static const satellite = const CommSystemsQueryBitfieldCommInterface._(0x02);
  /// Use Global System for Mobile Communications
  static const gsm = const CommSystemsQueryBitfieldCommInterface._(0x04);
  /// Use mobile networks
  static const mobile = const CommSystemsQueryBitfieldCommInterface._(0x08);
  /// Use Radio telemetry
  static const radio = const CommSystemsQueryBitfieldCommInterface._(0x10);

  static get values => [acoustic, satellite, gsm, mobile, 
      radio];

  const CommSystemsQueryBitfieldCommInterface._(int value) : super(value);

  static CommSystemsQueryBitfieldCommInterface fromBits(
          List<CommSystemsQueryBitfieldCommInterface> bits) =>
      bits.reduce((b1, b2) => CommSystemsQueryBitfieldCommInterface._(b1.value | b2.value));
}

class CommSystemsQueryEnumModel extends EnumType {
  /// Model is not defined
  static const unknown = const CommSystemsQueryEnumModel._(0x00);
  /// Radio Model 3DR
  static const m3dr = const CommSystemsQueryEnumModel._(0x01);
  /// Radio Model RDFXXXx point to point
  static const rdfxxxxptp = const CommSystemsQueryEnumModel._(0x02);

  static get values => [unknown, m3dr, rdfxxxxptp];

  const CommSystemsQueryEnumModel._(int value) : super(value);
}

/// Type of telemetry transmissions.
class TelemetryMsgEnumType extends EnumType {
  /// Send telemetry data.
  static const tx = const TelemetryMsgEnumType._(0x01);
  /// Received telemetry data.
  static const rx = const TelemetryMsgEnumType._(0x02);
  /// Status of transmitted data.
  static const txstatus = const TelemetryMsgEnumType._(0x03);

  static get values => [tx, rx, txstatus];

  const TelemetryMsgEnumType._(int value) : super(value);
}

/// Type of telemetry transmissions.
class TelemetryMsgEnumCode extends EnumType {
  /// Unknown code type
  static const code_unk = const TelemetryMsgEnumCode._(0x00);
  /// Concise representation of entire system state message.
  /// Payload message is a MessageList.
  static const code_report = const TelemetryMsgEnumCode._(0x01);
  /// Payload message is INLINEMSG
  static const code_imc = const TelemetryMsgEnumCode._(0x02);
  /// Payload message is in raw
  static const code_raw = const TelemetryMsgEnumCode._(0x03);

  static get values => [code_unk, code_report, code_imc, code_raw];

  const TelemetryMsgEnumCode._(int value) : super(value);
}

/// Type of telemetry transmissions.
class TelemetryMsgBitfieldAcknowledge extends BitfieldType {
  /// Message transmitted without acknowledged reception response
  static const nak = const TelemetryMsgBitfieldAcknowledge._(0x00);
  /// Message transmitted with acknowledged reception response
  static const ak = const TelemetryMsgBitfieldAcknowledge._(0x01);

  static get values => [nak, ak];

  const TelemetryMsgBitfieldAcknowledge._(int value) : super(value);

  static TelemetryMsgBitfieldAcknowledge fromBits(
          List<TelemetryMsgBitfieldAcknowledge> bits) =>
      bits.reduce((b1, b2) => TelemetryMsgBitfieldAcknowledge._(b1.value | b2.value));
}

/// State of the transmitted message.
class TelemetryMsgEnumStatus extends EnumType {
  static const none = const TelemetryMsgEnumStatus._(0x00);
  static const done = const TelemetryMsgEnumStatus._(1);
  static const failed = const TelemetryMsgEnumStatus._(2);
  static const queued = const TelemetryMsgEnumStatus._(3);
  static const transmit = const TelemetryMsgEnumStatus._(4);
  static const expired = const TelemetryMsgEnumStatus._(5);
  static const empty = const TelemetryMsgEnumStatus._(6);
  static const inv_addr = const TelemetryMsgEnumStatus._(7);
  static const inv_size = const TelemetryMsgEnumStatus._(8);

  static get values => [none, done, failed, queued, 
      transmit, expired, empty, inv_addr, inv_size];

  const TelemetryMsgEnumStatus._(int value) : super(value);
}

/// Used to define the type of the operation this message holds.
class LblConfigEnumOp extends EnumType {
  /// Set the beacons configuration aboard the vehicle.
  static const set_cfg = const LblConfigEnumOp._(0);
  /// Request the vehicle to send its current beacons configuration.
  static const get_cfg = const LblConfigEnumOp._(1);
  static const cur_cfg = const LblConfigEnumOp._(2);

  static get values => [set_cfg, get_cfg, cur_cfg];

  const LblConfigEnumOp._(int value) : super(value);
}

/// Operation type.
class AcousticOperationEnumOp extends EnumType {
  /// Send an abort through the acoustic channel to the system
  /// specified in the field 'system'.
  static const abort = const AcousticOperationEnumOp._(0);
  /// The latest abort request to the system specified in the
  /// field 'system' is in progress.
  static const abort_ip = const AcousticOperationEnumOp._(1);
  /// The latest abort operation expired without acknowledgment
  /// from the system specified in the field 'system'.
  static const abort_timeout = const AcousticOperationEnumOp._(2);
  /// The latest abort operation was acknowledged by the system
  /// specified in the field 'system'.
  static const abort_acked = const AcousticOperationEnumOp._(3);
  /// Request a range through the acoustic channel to the system
  /// specified in the field 'system'.
  static const range = const AcousticOperationEnumOp._(4);
  /// The latest range request to the system specified in the
  /// field 'system' is in progress.
  static const range_ip = const AcousticOperationEnumOp._(5);
  /// The latest range request operation expired without reply
  /// from the system specified in the field 'system'.
  static const range_timeout = const AcousticOperationEnumOp._(6);
  /// The latest range request operation to the system specified
  /// in the field 'system' was successful and the range is
  /// specified in the field 'range'.
  static const range_recved = const AcousticOperationEnumOp._(7);
  /// The acoustic modem is busy and cannot execute the requested
  /// operation.
  static const busy = const AcousticOperationEnumOp._(8);
  /// The latest requested operation is not supported.
  static const unsupported = const AcousticOperationEnumOp._(9);
  /// The transducer was not detected.
  static const no_txd = const AcousticOperationEnumOp._(10);
  /// Request message over acoustic channel. The message to send
  /// is specified by the 'msg' field.
  static const msg = const AcousticOperationEnumOp._(11);
  /// Message send request has been queued.
  static const msg_queued = const AcousticOperationEnumOp._(12);
  /// Message send request is in progress.
  static const msg_ip = const AcousticOperationEnumOp._(13);
  /// Message send request has been fulfilled.
  static const msg_done = const AcousticOperationEnumOp._(14);
  /// Message send request could not be fulfilled.
  static const msg_failure = const AcousticOperationEnumOp._(15);
  /// Request message over acoustic channel. The message to send
  /// is specified by the 'msg' field.
  static const msg_short = const AcousticOperationEnumOp._(16);
  /// Request sending updated position to remote system so it can be ranged.
  static const reverse_range = const AcousticOperationEnumOp._(17);

  static get values => [abort, abort_ip, abort_timeout, abort_acked, 
      range, range_ip, range_timeout, range_recved, busy, 
      unsupported, no_txd, msg, msg_queued, msg_ip, 
      msg_done, msg_failure, msg_short, reverse_range];

  const AcousticOperationEnumOp._(int value) : super(value);
}

/// Validity of fields.
class GpsFixBitfieldValidity extends BitfieldType {
  /// Fields 'utc_year', 'utc_month' and 'utc_day' are valid.
  static const valid_date = const GpsFixBitfieldValidity._(0x0001);
  /// Field 'utc_time' is valid.
  static const valid_time = const GpsFixBitfieldValidity._(0x0002);
  /// Fields 'lat', 'lon', 'altitude' and 'satellites' are valid.
  static const valid_pos = const GpsFixBitfieldValidity._(0x0004);
  /// Field 'cog' is valid.
  static const valid_cog = const GpsFixBitfieldValidity._(0x0008);
  /// Field 'sog' is valid.
  static const valid_sog = const GpsFixBitfieldValidity._(0x0010);
  /// Field 'hacc' is valid.
  static const valid_hacc = const GpsFixBitfieldValidity._(0x0020);
  /// Field 'vacc' is valid.
  static const valid_vacc = const GpsFixBitfieldValidity._(0x0040);
  /// Field 'hdop' is valid.
  static const valid_hdop = const GpsFixBitfieldValidity._(0x0080);
  /// Field 'vdop' is valid.
  static const valid_vdop = const GpsFixBitfieldValidity._(0x0100);

  static get values => [valid_date, valid_time, valid_pos, valid_cog, 
      valid_sog, valid_hacc, valid_vacc, valid_hdop, valid_vdop];

  const GpsFixBitfieldValidity._(int value) : super(value);

  static GpsFixBitfieldValidity fromBits(
          List<GpsFixBitfieldValidity> bits) =>
      bits.reduce((b1, b2) => GpsFixBitfieldValidity._(b1.value | b2.value));
}

/// Type of fix.
class GpsFixEnumType extends EnumType {
  /// Stand alone solution.
  static const standalone = const GpsFixEnumType._(0x00);
  /// Differential solution.
  static const differential = const GpsFixEnumType._(0x01);
  /// Dead reckoning solution.
  static const dead_reckoning = const GpsFixEnumType._(0x02);
  /// Manual solution.
  static const manual_input = const GpsFixEnumType._(0x03);
  /// Simulated solution.
  static const simulation = const GpsFixEnumType._(0x04);

  static get values => [standalone, differential, dead_reckoning, manual_input, 
      simulation];

  const GpsFixEnumType._(int value) : super(value);
}

/// Each bit of this field represents if a given velocity
/// component is valid.
class GroundVelocityBitfieldValidity extends BitfieldType {
  static const vel_x = const GroundVelocityBitfieldValidity._(0x01);
  static const vel_y = const GroundVelocityBitfieldValidity._(0x02);
  static const vel_z = const GroundVelocityBitfieldValidity._(0x04);

  static get values => [vel_x, vel_y, vel_z];

  const GroundVelocityBitfieldValidity._(int value) : super(value);

  static GroundVelocityBitfieldValidity fromBits(
          List<GroundVelocityBitfieldValidity> bits) =>
      bits.reduce((b1, b2) => GroundVelocityBitfieldValidity._(b1.value | b2.value));
}

/// Each bit of this field represents if a given velocity
/// component is valid.
class WaterVelocityBitfieldValidity extends BitfieldType {
  static const vel_x = const WaterVelocityBitfieldValidity._(0x01);
  static const vel_y = const WaterVelocityBitfieldValidity._(0x02);
  static const vel_z = const WaterVelocityBitfieldValidity._(0x04);

  static get values => [vel_x, vel_y, vel_z];

  const WaterVelocityBitfieldValidity._(int value) : super(value);

  static WaterVelocityBitfieldValidity fromBits(
          List<WaterVelocityBitfieldValidity> bits) =>
      bits.reduce((b1, b2) => WaterVelocityBitfieldValidity._(b1.value | b2.value));
}

/// Validity of the measurement.
class DistanceEnumValidity extends EnumType {
  /// Measurement is invalid.
  static const invalid = const DistanceEnumValidity._(0);
  /// Measurement is valid.
  static const valid = const DistanceEnumValidity._(1);

  static get values => [invalid, valid];

  const DistanceEnumValidity._(int value) : super(value);
}

/// Type of sonar.
class SonarDataEnumType extends EnumType {
  static const sidescan = const SonarDataEnumType._(0);
  static const echosounder = const SonarDataEnumType._(1);
  static const multibeam = const SonarDataEnumType._(2);

  static get values => [sidescan, echosounder, multibeam];

  const SonarDataEnumType._(int value) : super(value);
}

/// Activate or deactivate hardware pulse detection.
class PulseDetectionControlEnumOp extends EnumType {
  static const off = const PulseDetectionControlEnumOp._(0);
  static const onVal = const PulseDetectionControlEnumOp._(1);

  static get values => [off, onVal];

  const PulseDetectionControlEnumOp._(int value) : super(value);
}

/// Whether the data is sane or not sane.
class DataSanityEnumSane extends EnumType {
  /// Data is sane.
  static const sane = const DataSanityEnumSane._(0);
  /// Data is not sane.
  static const not_sane = const DataSanityEnumSane._(1);

  static get values => [sane, not_sane];

  const DataSanityEnumSane._(int value) : super(value);
}

/// Validity of fields.
class GpsFixRtkBitfieldValidity extends BitfieldType {
  /// Field 'tow' is valid.
  static const valid_time = const GpsFixRtkBitfieldValidity._(0x0001);
  /// Fields 'base_lat', 'base_lon' and 'base_height' are valid.
  static const valid_base = const GpsFixRtkBitfieldValidity._(0x0002);
  /// Fields 'n', 'e', 'd' are valid.
  static const valid_pos = const GpsFixRtkBitfieldValidity._(0x0004);
  /// Fields 'v_n', 'v_e', 'v_d' are valid.
  static const valid_vel = const GpsFixRtkBitfieldValidity._(0x0008);

  static get values => [valid_time, valid_base, valid_pos, valid_vel];

  const GpsFixRtkBitfieldValidity._(int value) : super(value);

  static GpsFixRtkBitfieldValidity fromBits(
          List<GpsFixRtkBitfieldValidity> bits) =>
      bits.reduce((b1, b2) => GpsFixRtkBitfieldValidity._(b1.value | b2.value));
}

/// Type of fix.
class GpsFixRtkEnumType extends EnumType {
  /// No solution, but RTK task is running.
  static const none = const GpsFixRtkEnumType._(0x00);
  /// No solution, but receiving observations.
  static const obs = const GpsFixRtkEnumType._(0x01);
  /// Floating point solution of IAR.
  static const float = const GpsFixRtkEnumType._(0x02);
  /// Fixed (single) solution of IAR.
  static const fixed = const GpsFixRtkEnumType._(0x03);

  static get values => [none, obs, float, fixed];

  const GpsFixRtkEnumType._(int value) : super(value);
}

/// The type of external navigation data
class ExternalNavDataEnumType extends EnumType {
  static const full = const ExternalNavDataEnumType._(0);
  static const ahrs = const ExternalNavDataEnumType._(1);
  static const posref = const ExternalNavDataEnumType._(2);

  static get values => [full, ahrs, posref];

  const ExternalNavDataEnumType._(int value) : super(value);
}

/// The zoom action to perform.
class CameraZoomEnumAction extends EnumType {
  static const zoom_reset = const CameraZoomEnumAction._(0);
  static const zoom_in = const CameraZoomEnumAction._(1);
  static const zoom_out = const CameraZoomEnumAction._(2);
  static const zoom_stop = const CameraZoomEnumAction._(3);

  static get values => [zoom_reset, zoom_in, zoom_out, zoom_stop];

  const CameraZoomEnumAction._(int value) : super(value);
}

/// Operation to perform.
class RemoteActionsRequestEnumOp extends EnumType {
  static const report = const RemoteActionsRequestEnumOp._(0);
  static const query = const RemoteActionsRequestEnumOp._(1);

  static get values => [report, query];

  const RemoteActionsRequestEnumOp._(int value) : super(value);
}

/// The LCD action to perform
class LcdControlEnumOp extends EnumType {
  static const turn_off = const LcdControlEnumOp._(0);
  static const turn_on = const LcdControlEnumOp._(1);
  static const clear = const LcdControlEnumOp._(2);
  static const write0 = const LcdControlEnumOp._(3);
  static const write1 = const LcdControlEnumOp._(4);

  static get values => [turn_off, turn_on, clear, write0, 
      write1];

  const LcdControlEnumOp._(int value) : super(value);
}

/// Operation type.
class PowerOperationEnumOp extends EnumType {
  /// Request the destination entity of this message to power down
  /// it's devices immediately. If the destination entity is the
  /// special entity '0' the whole system will power down.
  static const pwr_down = const PowerOperationEnumOp._(0);
  /// The latest power down request is in progress and the time
  /// remaining until power down is given in field 'time_remain'.
  static const pwr_down_ip = const PowerOperationEnumOp._(1);
  /// The latest power down request was aborted.
  static const pwr_down_aborted = const PowerOperationEnumOp._(2);
  /// Request the destination entity of this message to power down
  /// it's devices at the time given in the field 'sched_time'. If
  /// the destination entity is the special entity '0' the whole
  /// system will power down.
  static const sched_pwr_down = const PowerOperationEnumOp._(3);
  /// Request the destination entity of this message to power up
  /// it's devices.
  static const pwr_up = const PowerOperationEnumOp._(4);
  /// The latest power up request is in progress.
  static const pwr_up_ip = const PowerOperationEnumOp._(5);
  /// Request the destination entity of this message to power up
  /// it's devices at the time given in the field 'sched_time'. If
  /// the destination entity is the special entity '0' the whole
  /// system will power up.
  static const sched_pwr_up = const PowerOperationEnumOp._(6);

  static get values => [pwr_down, pwr_down_ip, pwr_down_aborted, sched_pwr_down, 
      pwr_up, pwr_up_ip, sched_pwr_up];

  const PowerOperationEnumOp._(int value) : super(value);
}

/// Operation to perform.
class PowerChannelControlEnumOp extends EnumType {
  /// Turn off power channel specified in field 'id'.
  static const turn_off = const PowerChannelControlEnumOp._(0);
  /// Turn on power channel specified in field 'id'.
  static const turn_on = const PowerChannelControlEnumOp._(1);
  /// Toggle power channel specified in field 'id'.
  static const toggle = const PowerChannelControlEnumOp._(2);
  /// Turn on power channel specified in field 'id' in
  /// 'sched_time' seconds.
  static const sched_on = const PowerChannelControlEnumOp._(3);
  /// Turn off power channel specified in field 'id' in
  /// 'sched_time' seconds.
  static const sched_off = const PowerChannelControlEnumOp._(4);
  /// Reset all scheduled operations for the channel specified in
  /// field 'id'.
  static const sched_reset = const PowerChannelControlEnumOp._(5);
  /// Save the current state of the channel 'id' to persistent
  /// storage.
  static const save = const PowerChannelControlEnumOp._(6);
  /// Restart power channel specified in field 'id'.
  static const restart = const PowerChannelControlEnumOp._(7);

  static get values => [turn_off, turn_on, toggle, sched_on, 
      sched_off, sched_reset, save, restart];

  const PowerChannelControlEnumOp._(int value) : super(value);
}

/// State of the Power Channel.
class PowerChannelStateEnumState extends EnumType {
  /// Power channel is off.
  static const off = const PowerChannelStateEnumState._(0);
  /// Power channel is on.
  static const onVal = const PowerChannelStateEnumState._(1);

  static get values => [off, onVal];

  const PowerChannelStateEnumState._(int value) : super(value);
}

/// Reason for rejection.
class GpsFixRejectionEnumReason extends EnumType {
  /// New GPS Fix position is above a computed threshold.
  static const above_threshold = const GpsFixRejectionEnumReason._(0);
  /// Invalid measurement.
  static const invalid = const GpsFixRejectionEnumReason._(1);
  /// Above maximum horizontal dilution of precision.
  static const above_max_hdop = const GpsFixRejectionEnumReason._(2);
  /// Above maximum horizontal accuracy index.
  static const above_max_hacc = const GpsFixRejectionEnumReason._(3);
  /// Lost one of the validity bits between consecutive GPS fixes.
  static const lost_val_bit = const GpsFixRejectionEnumReason._(4);

  static get values => [above_threshold, invalid, above_max_hdop, above_max_hacc, 
      lost_val_bit];

  const GpsFixRejectionEnumReason._(int value) : super(value);
}

/// Reason for acceptance/rejection.
class LblRangeAcceptanceEnumAcceptance extends EnumType {
  /// This LBL range is accepted by the navigation filter.
  static const accepted = const LblRangeAcceptanceEnumAcceptance._(0);
  /// New LBL Range is above a computed threshold.
  static const above_threshold = const LblRangeAcceptanceEnumAcceptance._(1);
  /// Singular point.
  static const singular = const LblRangeAcceptanceEnumAcceptance._(2);
  /// The filter lacks information to properly use the received LBL range.
  static const no_info = const LblRangeAcceptanceEnumAcceptance._(3);
  /// Vehicle is using only GPS fix when it is at surface.
  static const at_surface = const LblRangeAcceptanceEnumAcceptance._(4);

  static get values => [accepted, above_threshold, singular, no_info, 
      at_surface];

  const LblRangeAcceptanceEnumAcceptance._(int value) : super(value);
}

/// This field represents the type of the rejected velocity.
class DvlRejectionBitfieldType extends BitfieldType {
  static const gv = const DvlRejectionBitfieldType._(0x01);
  static const wv = const DvlRejectionBitfieldType._(0x02);

  static get values => [gv, wv];

  const DvlRejectionBitfieldType._(int value) : super(value);

  static DvlRejectionBitfieldType fromBits(
          List<DvlRejectionBitfieldType> bits) =>
      bits.reduce((b1, b2) => DvlRejectionBitfieldType._(b1.value | b2.value));
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
  static const innov_threshold_x = const DvlRejectionEnumReason._(0);
  /// The current DVL y-axis measurement is discarded
  /// because the absolute difference between the
  /// value and the previous accepted DVL measurement
  /// with a given time window is above a configurable
  /// threshold.
  static const innov_threshold_y = const DvlRejectionEnumReason._(1);
  /// The current DVL x-axis measurement is discarded
  /// because the the absolute value is above a
  /// configurable threshold.
  static const abs_threshold_x = const DvlRejectionEnumReason._(2);
  /// The current DVL y-axis measurement is discarded
  /// because the the absolute value is above a
  /// configurable threshold.
  static const abs_threshold_y = const DvlRejectionEnumReason._(3);

  static get values => [innov_threshold_x, innov_threshold_y, abs_threshold_x, abs_threshold_y];

  const DvlRejectionEnumReason._(int value) : super(value);
}

/// Alignment State.
class AlignmentStateEnumState extends EnumType {
  static const not_aligned = const AlignmentStateEnumState._(0);
  static const aligned = const AlignmentStateEnumState._(1);
  static const not_supported = const AlignmentStateEnumState._(2);
  static const aligning = const AlignmentStateEnumState._(3);
  static const wrong_medium = const AlignmentStateEnumState._(4);

  static get values => [not_aligned, aligned, not_supported, aligning, 
      wrong_medium];

  const AlignmentStateEnumState._(int value) : super(value);
}

/// Desired Path flags.
class DesiredPathBitfieldFlags extends BitfieldType {
  /// Indicates that the start point specification is given,
  /// therefore it should be considered for tracking.
  static const start = const DesiredPathBitfieldFlags._(0x01);
  /// If start point is not given, ignore also the previous path's
  /// endpoint and take the start point to be the current vehicle
  /// location.
  static const direct = const DesiredPathBitfieldFlags._(0x02);
  /// Ignore altitude/depth setting and let them be controlled
  /// independently.
  static const no_z = const DesiredPathBitfieldFlags._(0x04);
  /// Perform 3D-tracking, i.e., consider the path formed in the
  /// XYZ plane taking into account both the 'start_z' and 'end_z'
  /// values.
  static const v3dtrack = const DesiredPathBitfieldFlags._(0x08);
  /// Indicates that loitering, if defined, should be done
  /// counter-clockwise. Clockwise loitering will apply
  /// otherwise.
  static const cclockw = const DesiredPathBitfieldFlags._(0x10);
  /// Indicates that loitering, if defined, should be done from
  /// the current vehicle position. The end_lat and end_lon
  /// fields will be ignored.
  static const loiter_curr = const DesiredPathBitfieldFlags._(0x20);
  /// Indicates that takeoff should be done before going to the end position.
  static const takeoff = const DesiredPathBitfieldFlags._(0x40);
  /// Indicates that the system should land at the end position.
  static const land = const DesiredPathBitfieldFlags._(0x80);

  static get values => [start, direct, no_z, v3dtrack, 
      cclockw, loiter_curr, takeoff, land];

  const DesiredPathBitfieldFlags._(int value) : super(value);

  static DesiredPathBitfieldFlags fromBits(
          List<DesiredPathBitfieldFlags> bits) =>
      bits.reduce((b1, b2) => DesiredPathBitfieldFlags._(b1.value | b2.value));
}

/// Desired Control flags.
class DesiredControlBitfieldFlags extends BitfieldType {
  /// If enabled then field X has a meaningful value.
  static const x = const DesiredControlBitfieldFlags._(0x01);
  /// If enabled then field Y has a meaningful value.
  static const y = const DesiredControlBitfieldFlags._(0x02);
  /// If enabled then field Z has a meaningful value.
  static const z = const DesiredControlBitfieldFlags._(0x04);
  /// If enabled then field K has a meaningful value.
  static const k = const DesiredControlBitfieldFlags._(0x08);
  /// If enabled then field M has a meaningful value.
  static const m = const DesiredControlBitfieldFlags._(0x10);
  /// If enabled then field N has a meaningful value.
  static const n = const DesiredControlBitfieldFlags._(0x20);

  static get values => [x, y, z, k, 
      m, n];

  const DesiredControlBitfieldFlags._(int value) : super(value);

  static DesiredControlBitfieldFlags fromBits(
          List<DesiredControlBitfieldFlags> bits) =>
      bits.reduce((b1, b2) => DesiredControlBitfieldFlags._(b1.value | b2.value));
}

/// Desired Velocity flags.
class DesiredVelocityBitfieldFlags extends BitfieldType {
  /// If enabled then field u has a meaningful value.
  static const surge = const DesiredVelocityBitfieldFlags._(0x01);
  /// If enabled then field u has a meaningful value.
  static const sway = const DesiredVelocityBitfieldFlags._(0x02);
  /// If enabled then field w has a meaningful value.
  static const heave = const DesiredVelocityBitfieldFlags._(0x04);
  /// If enabled then field p has a meaningful value.
  static const roll = const DesiredVelocityBitfieldFlags._(0x08);
  /// If enabled then field q has a meaningful value.
  static const pitch = const DesiredVelocityBitfieldFlags._(0x10);
  /// If enabled then field r has a meaningful value.
  static const yaw = const DesiredVelocityBitfieldFlags._(0x20);

  static get values => [surge, sway, heave, roll, 
      pitch, yaw];

  const DesiredVelocityBitfieldFlags._(int value) : super(value);

  static DesiredVelocityBitfieldFlags fromBits(
          List<DesiredVelocityBitfieldFlags> bits) =>
      bits.reduce((b1, b2) => DesiredVelocityBitfieldFlags._(b1.value | b2.value));
}

/// Path control state flags.
class PathControlStateBitfieldFlags extends BitfieldType {
  /// Set if near the target endpoint.
  static const near = const PathControlStateBitfieldFlags._(0x01);
  /// Set if loitering.
  static const loitering = const PathControlStateBitfieldFlags._(0x02);
  /// Altitude/depth being controlled independently.
  static const no_z = const PathControlStateBitfieldFlags._(0x04);
  /// 3D-tracking is active.
  static const v3dtrack = const PathControlStateBitfieldFlags._(0x08);
  /// Indicates that loitering, if active, is being done
  /// counter-clockwise. Otherwise, clockwise loitering should be
  /// assumed.
  static const cclockw = const PathControlStateBitfieldFlags._(0x10);

  static get values => [near, loitering, no_z, v3dtrack, 
      cclockw];

  const PathControlStateBitfieldFlags._(int value) : super(value);

  static PathControlStateBitfieldFlags fromBits(
          List<PathControlStateBitfieldFlags> bits) =>
      bits.reduce((b1, b2) => PathControlStateBitfieldFlags._(b1.value | b2.value));
}

/// Brake operation.
class BrakeEnumOp extends EnumType {
  /// Stop braking procedures.
  static const stop = const BrakeEnumOp._(0);
  /// Start braking procedures.
  static const start = const BrakeEnumOp._(1);
  /// Revert Actuation.
  static const revert = const BrakeEnumOp._(2);

  static get values => [stop, start, revert];

  const BrakeEnumOp._(int value) : super(value);
}

/// Setpoint Flags
class DesiredLinearStateBitfieldFlags extends BitfieldType {
  /// If enabled then field x has a meaningful value.
  static const x = const DesiredLinearStateBitfieldFlags._(0x0001);
  /// If enabled then field y has a meaningful value.
  static const y = const DesiredLinearStateBitfieldFlags._(0x0002);
  /// If enabled then field z has a meaningful value.
  static const z = const DesiredLinearStateBitfieldFlags._(0x0004);
  /// If enabled then field vx has a meaningful value.
  static const vx = const DesiredLinearStateBitfieldFlags._(0x0008);
  /// If enabled then field vy has a meaningful value.
  static const vy = const DesiredLinearStateBitfieldFlags._(0x0010);
  /// If enabled then field vz has a meaningful value.
  static const vz = const DesiredLinearStateBitfieldFlags._(0x0020);
  /// If enabled then field ax has a meaningful value.
  static const ax = const DesiredLinearStateBitfieldFlags._(0x0040);
  /// If enabled then field ay has a meaningful value.
  static const ay = const DesiredLinearStateBitfieldFlags._(0x0080);
  /// If enabled then field az has a meaningful value.
  static const az = const DesiredLinearStateBitfieldFlags._(0x0100);

  static get values => [x, y, z, vx, 
      vy, vz, ax, ay, az];

  const DesiredLinearStateBitfieldFlags._(int value) : super(value);

  static DesiredLinearStateBitfieldFlags fromBits(
          List<DesiredLinearStateBitfieldFlags> bits) =>
      bits.reduce((b1, b2) => DesiredLinearStateBitfieldFlags._(b1.value | b2.value));
}

/// Flags of the maneuver.
class PopUpBitfieldFlags extends BitfieldType {
  /// If this flag is set, lat/lon/start_z fields should be
  /// ignored and current vehicle position should be considered as
  /// starting point for ascent/descent.
  static const curr_pos = const PopUpBitfieldFlags._(0x01);
  /// If this flag is set, duration field is used to hold position at surface
  /// for that amount of time.
  static const wait_at_surface = const PopUpBitfieldFlags._(0x02);
  /// This flag will only make sense if WAIT_AT_SURFACE is also set.
  /// While holding position at surface the vehicle will assume a
  /// station keeping behavior.
  static const station_keep = const PopUpBitfieldFlags._(0x04);

  static get values => [curr_pos, wait_at_surface, station_keep];

  const PopUpBitfieldFlags._(int value) : super(value);

  static PopUpBitfieldFlags fromBits(
          List<PopUpBitfieldFlags> bits) =>
      bits.reduce((b1, b2) => PopUpBitfieldFlags._(b1.value | b2.value));
}

/// Loiter maneuver type.
class LoiterEnumType extends EnumType {
  static const defaultVal = const LoiterEnumType._(0);
  static const circular = const LoiterEnumType._(1);
  static const racetrack = const LoiterEnumType._(2);
  static const eight = const LoiterEnumType._(3);
  static const hover = const LoiterEnumType._(4);

  static get values => [defaultVal, circular, racetrack, eight, 
      hover];

  const LoiterEnumType._(int value) : super(value);
}

/// Desired direction.
class LoiterEnumDirection extends EnumType {
  static const vdep = const LoiterEnumDirection._(0);
  static const clockw = const LoiterEnumDirection._(1);
  static const cclockw = const LoiterEnumDirection._(2);
  static const iwindcurr = const LoiterEnumDirection._(3);

  static get values => [vdep, clockw, cclockw, iwindcurr];

  const LoiterEnumDirection._(int value) : super(value);
}

/// Maneuver flags.
class RowsBitfieldFlags extends BitfieldType {
  static const square_curve = const RowsBitfieldFlags._(0x0001);
  static const curve_right = const RowsBitfieldFlags._(0x0002);

  static get values => [square_curve, curve_right];

  const RowsBitfieldFlags._(int value) : super(value);

  static RowsBitfieldFlags fromBits(
          List<RowsBitfieldFlags> bits) =>
      bits.reduce((b1, b2) => RowsBitfieldFlags._(b1.value | b2.value));
}

/// Flags of the maneuver.
class ElevatorBitfieldFlags extends BitfieldType {
  /// If this flag is set, lat/lon/start_z fields should be
  /// ignored and current vehicle position should be considered as
  /// starting point for ascent/descent.
  static const curr_pos = const ElevatorBitfieldFlags._(0x01);

  static get values => [curr_pos];

  const ElevatorBitfieldFlags._(int value) : super(value);

  static ElevatorBitfieldFlags fromBits(
          List<ElevatorBitfieldFlags> bits) =>
      bits.reduce((b1, b2) => ElevatorBitfieldFlags._(b1.value | b2.value));
}

/// Code indicating maneuver state.
class ManeuverControlStateEnumState extends EnumType {
  /// Maneuver in progress.
  static const executing = const ManeuverControlStateEnumState._(0);
  /// Maneuver completed.
  static const done = const ManeuverControlStateEnumState._(1);
  /// Maneuver error.
  static const error = const ManeuverControlStateEnumState._(2);
  /// Maneuver stopped.
  static const stopped = const ManeuverControlStateEnumState._(3);

  static get values => [executing, done, error, stopped];

  const ManeuverControlStateEnumState._(int value) : super(value);
}

/// Direction of the maneuver.
class CompassCalibrationEnumDirection extends EnumType {
  static const vdep = const CompassCalibrationEnumDirection._(0);
  static const clockw = const CompassCalibrationEnumDirection._(1);
  static const cclockw = const CompassCalibrationEnumDirection._(2);
  static const iwindcurr = const CompassCalibrationEnumDirection._(3);

  static get values => [vdep, clockw, cclockw, iwindcurr];

  const CompassCalibrationEnumDirection._(int value) : super(value);
}

/// Formation reference frame
class FormationParametersEnumReferenceFrame extends EnumType {
  static const earth_fixed = const FormationParametersEnumReferenceFrame._(0);
  static const path_fixed = const FormationParametersEnumReferenceFrame._(1);
  static const path_curved = const FormationParametersEnumReferenceFrame._(2);

  static get values => [earth_fixed, path_fixed, path_curved];

  const FormationParametersEnumReferenceFrame._(int value) : super(value);
}

class ReferenceBitfieldFlags extends BitfieldType {
  static const location = const ReferenceBitfieldFlags._(0x01);
  static const speed = const ReferenceBitfieldFlags._(0x02);
  static const z = const ReferenceBitfieldFlags._(0x04);
  static const radius = const ReferenceBitfieldFlags._(0x08);
  static const start_point = const ReferenceBitfieldFlags._(0x10);
  static const direct = const ReferenceBitfieldFlags._(0x20);
  static const mandone = const ReferenceBitfieldFlags._(0x80);

  static get values => [location, speed, z, radius, 
      start_point, direct, mandone];

  const ReferenceBitfieldFlags._(int value) : super(value);

  static ReferenceBitfieldFlags fromBits(
          List<ReferenceBitfieldFlags> bits) =>
      bits.reduce((b1, b2) => ReferenceBitfieldFlags._(b1.value | b2.value));
}

class FollowRefStateEnumState extends EnumType {
  static const wait = const FollowRefStateEnumState._(1);
  static const goto = const FollowRefStateEnumState._(2);
  static const loiter = const FollowRefStateEnumState._(3);
  static const hover = const FollowRefStateEnumState._(4);
  static const elevator = const FollowRefStateEnumState._(5);
  static const timeout = const FollowRefStateEnumState._(6);

  static get values => [wait, goto, loiter, hover, 
      elevator, timeout];

  const FollowRefStateEnumState._(int value) : super(value);
}

class FollowRefStateBitfieldProximity extends BitfieldType {
  static const far = const FollowRefStateBitfieldProximity._(0x01);
  static const xy_near = const FollowRefStateBitfieldProximity._(0x02);
  static const z_near = const FollowRefStateBitfieldProximity._(0x04);
  static const xy_unreachable = const FollowRefStateBitfieldProximity._(0x08);
  static const z_unreachable = const FollowRefStateBitfieldProximity._(0x10);

  static get values => [far, xy_near, z_near, xy_unreachable, 
      z_unreachable];

  const FollowRefStateBitfieldProximity._(int value) : super(value);

  static FollowRefStateBitfieldProximity fromBits(
          List<FollowRefStateBitfieldProximity> bits) =>
      bits.reduce((b1, b2) => FollowRefStateBitfieldProximity._(b1.value | b2.value));
}

/// Direction to which the vehicle should attempt to unstuck.
class DislodgeEnumDirection extends EnumType {
  static const auto = const DislodgeEnumDirection._(0);
  static const forward = const DislodgeEnumDirection._(1);
  static const backward = const DislodgeEnumDirection._(2);

  static get values => [auto, forward, backward];

  const DislodgeEnumDirection._(int value) : super(value);
}

/// Indicates if the message is a request, or a reply to a previous request.
class FormationEnumType extends EnumType {
  static const request = const FormationEnumType._(0);
  static const report = const FormationEnumType._(1);

  static get values => [request, report];

  const FormationEnumType._(int value) : super(value);
}

/// Operation to perform.
class FormationEnumOp extends EnumType {
  /// Start the formation maneuver.
  static const start = const FormationEnumOp._(0);
  /// Stop the formation maneuver.
  static const stop = const FormationEnumOp._(1);
  /// Stop the formation maneuver.
  static const ready = const FormationEnumOp._(2);
  /// Stop the formation maneuver.
  static const executing = const FormationEnumOp._(3);
  /// Stop the formation maneuver.
  static const failure = const FormationEnumOp._(4);

  static get values => [start, stop, ready, executing, 
      failure];

  const FormationEnumOp._(int value) : super(value);
}

/// Formation reference frame
class FormationEnumReferenceFrame extends EnumType {
  static const earth_fixed = const FormationEnumReferenceFrame._(0);
  static const path_fixed = const FormationEnumReferenceFrame._(1);
  static const path_curved = const FormationEnumReferenceFrame._(2);

  static get values => [earth_fixed, path_fixed, path_curved];

  const FormationEnumReferenceFrame._(int value) : super(value);
}

/// What to do if the vehicle fails to arrive before or at the requested time.
class ScheduledGotoEnumDelayed extends EnumType {
  /// If the vehicle fails to arrive at the specified time, it will keep going to the destination
  /// at top speed and only then consider this maneuver completed.
  static const resume = const ScheduledGotoEnumDelayed._(0);
  /// If the vehicle fails to arrive at the specified time, it will stop the current maneuver and
  /// advance to the next one (independently of how far it is from destination).
  static const skip = const ScheduledGotoEnumDelayed._(1);
  /// If the vehicle fails to arrive at the specified time, it will stop the execution of this
  /// maneuver with a FAILED result (the entire plan will be stopped).
  static const fail = const ScheduledGotoEnumDelayed._(2);

  static get values => [resume, skip, fail];

  const ScheduledGotoEnumDelayed._(int value) : super(value);
}

/// Maneuver optional flags.
class RowsCoverageBitfieldFlags extends BitfieldType {
  /// Whether to move between transects using an additional perpendicular transect.
  static const square_curve = const RowsCoverageBitfieldFlags._(0x01);
  /// Shall the vehicle turn towards the right after the first transect (alternatively it will turn left).
  static const curve_right = const RowsCoverageBitfieldFlags._(0x02);

  static get values => [square_curve, curve_right];

  const RowsCoverageBitfieldFlags._(int value) : super(value);

  static RowsCoverageBitfieldFlags fromBits(
          List<RowsCoverageBitfieldFlags> bits) =>
      bits.reduce((b1, b2) => RowsCoverageBitfieldFlags._(b1.value | b2.value));
}

class AutonomousSectionBitfieldLimits extends BitfieldType {
  static const depth = const AutonomousSectionBitfieldLimits._(0x01);
  static const altitude = const AutonomousSectionBitfieldLimits._(0x02);
  static const timeout = const AutonomousSectionBitfieldLimits._(0x04);
  static const area2d = const AutonomousSectionBitfieldLimits._(0x08);

  static get values => [depth, altitude, timeout, area2d];

  const AutonomousSectionBitfieldLimits._(int value) : super(value);

  static AutonomousSectionBitfieldLimits fromBits(
          List<AutonomousSectionBitfieldLimits> bits) =>
      bits.reduce((b1, b2) => AutonomousSectionBitfieldLimits._(b1.value | b2.value));
}

/// Flags of the maneuver.
class StationKeepingExtendedBitfieldFlags extends BitfieldType {
  /// If this flag is set, the vehicle will hold position underwater, loitering at z reference.
  /// It will popup periodically to report position. When it pops up, it will stay at surface in "normal" station keeping behaviour for a certain time (popup_duration).
  static const keep_safe = const StationKeepingExtendedBitfieldFlags._(0x01);

  static get values => [keep_safe];

  const StationKeepingExtendedBitfieldFlags._(int value) : super(value);

  static StationKeepingExtendedBitfieldFlags fromBits(
          List<StationKeepingExtendedBitfieldFlags> bits) =>
      bits.reduce((b1, b2) => StationKeepingExtendedBitfieldFlags._(b1.value | b2.value));
}

/// Desired direction.
class MagnetometerEnumDirection extends EnumType {
  static const clockw_first = const MagnetometerEnumDirection._(0);
  static const cclockw_first = const MagnetometerEnumDirection._(1);

  static get values => [clockw_first, cclockw_first];

  const MagnetometerEnumDirection._(int value) : super(value);
}

/// The overall operation mode.
class VehicleStateEnumOpMode extends EnumType {
  /// Ready to service requests.
  static const service = const VehicleStateEnumOpMode._(0);
  /// Ongoing vehicle calibration.
  static const calibration = const VehicleStateEnumOpMode._(1);
  /// Errors are set.
  static const error = const VehicleStateEnumOpMode._(2);
  /// A maneuver is executing.
  static const maneuver = const VehicleStateEnumOpMode._(3);
  /// External control is active.
  static const externalVal = const VehicleStateEnumOpMode._(4);
  /// Booting system.
  static const boot = const VehicleStateEnumOpMode._(5);

  static get values => [service, calibration, error, maneuver, 
      externalVal, boot];

  const VehicleStateEnumOpMode._(int value) : super(value);
}

class VehicleStateBitfieldFlags extends BitfieldType {
  static const maneuver_done = const VehicleStateBitfieldFlags._(0x01);

  static get values => [maneuver_done];

  const VehicleStateBitfieldFlags._(int value) : super(value);

  static VehicleStateBitfieldFlags fromBits(
          List<VehicleStateBitfieldFlags> bits) =>
      bits.reduce((b1, b2) => VehicleStateBitfieldFlags._(b1.value | b2.value));
}

class VehicleCommandEnumType extends EnumType {
  static const request = const VehicleCommandEnumType._(0);
  static const success = const VehicleCommandEnumType._(1);
  static const in_progress = const VehicleCommandEnumType._(2);
  static const failure = const VehicleCommandEnumType._(3);

  static get values => [request, success, in_progress, failure];

  const VehicleCommandEnumType._(int value) : super(value);
}

/// The type of command/action to be performed
class VehicleCommandEnumCommand extends EnumType {
  /// Execute the maneuver specified in 'maneuver' field.
  static const exec_maneuver = const VehicleCommandEnumCommand._(0);
  /// Stop 'maneuver' being executed.
  static const stop_maneuver = const VehicleCommandEnumCommand._(1);
  /// Start calibrating vehicle.
  static const start_calibration = const VehicleCommandEnumCommand._(2);
  /// Stop calibrating vehicle.
  static const stop_calibration = const VehicleCommandEnumCommand._(3);

  static get values => [exec_maneuver, stop_maneuver, start_calibration, stop_calibration];

  const VehicleCommandEnumCommand._(int value) : super(value);
}

/// Command.
class MonitorEntityStateEnumCommand extends EnumType {
  static const reset = const MonitorEntityStateEnumCommand._(0);
  static const enable = const MonitorEntityStateEnumCommand._(1);
  static const disable = const MonitorEntityStateEnumCommand._(2);
  static const enable_exclusive = const MonitorEntityStateEnumCommand._(3);
  static const status = const MonitorEntityStateEnumCommand._(4);

  static get values => [reset, enable, disable, enable_exclusive, 
      status];

  const MonitorEntityStateEnumCommand._(int value) : super(value);
}

class ControlLoopsEnumEnable extends EnumType {
  static const disable = const ControlLoopsEnumEnable._(0);
  static const enable = const ControlLoopsEnumEnable._(1);

  static get values => [disable, enable];

  const ControlLoopsEnumEnable._(int value) : super(value);
}

/// Current medium.
class VehicleMediumEnumMedium extends EnumType {
  /// Vehicle is on the ground
  static const ground = const VehicleMediumEnumMedium._(0);
  /// Vehicle is airborne
  static const air = const VehicleMediumEnumMedium._(1);
  /// Vehicle is at water surface
  static const water = const VehicleMediumEnumMedium._(2);
  /// Vehicle is underwater
  static const underwater = const VehicleMediumEnumMedium._(3);
  /// Vehicle medium is unknown
  static const unknown = const VehicleMediumEnumMedium._(4);

  static get values => [ground, air, water, underwater, 
      unknown];

  const VehicleMediumEnumMedium._(int value) : super(value);
}

/// Collision flags.
class CollisionBitfieldType extends BitfieldType {
  /// Collision detected in the x-axis
  static const x = const CollisionBitfieldType._(0x01);
  /// Collision detected in the y-axis
  static const y = const CollisionBitfieldType._(0x02);
  /// Collision detected in the z-axis
  static const z = const CollisionBitfieldType._(0x04);
  /// Sudden impact detected
  static const impact = const CollisionBitfieldType._(0x08);

  static get values => [x, y, z, impact];

  const CollisionBitfieldType._(int value) : super(value);

  static CollisionBitfieldType fromBits(
          List<CollisionBitfieldType> bits) =>
      bits.reduce((b1, b2) => CollisionBitfieldType._(b1.value | b2.value));
}

/// Position mismatch monitoring flag.
class FormStateEnumPosSimMon extends EnumType {
  static const ok = const FormStateEnumPosSimMon._(0);
  static const wrn = const FormStateEnumPosSimMon._(1);
  static const lim = const FormStateEnumPosSimMon._(2);

  static get values => [ok, wrn, lim];

  const FormStateEnumPosSimMon._(int value) : super(value);
}

/// Communications monitoring flag.
class FormStateEnumCommMon extends EnumType {
  static const ok = const FormStateEnumCommMon._(0);
  static const timeout = const FormStateEnumCommMon._(1);

  static get values => [ok, timeout];

  const FormStateEnumCommMon._(int value) : super(value);
}

/// Convergence monitoring flag.
class FormStateEnumConvergMon extends EnumType {
  static const ok = const FormStateEnumConvergMon._(0);
  static const timeout = const FormStateEnumConvergMon._(1);

  static get values => [ok, timeout];

  const FormStateEnumConvergMon._(int value) : super(value);
}

/// Current mode autonomy level.
class AutopilotModeEnumAutonomy extends EnumType {
  /// Autopilot has no control
  static const manual = const AutopilotModeEnumAutonomy._(0);
  /// Autopilot has some control
  static const assisted = const AutopilotModeEnumAutonomy._(1);
  /// Autopilot has full control
  static const auto = const AutopilotModeEnumAutonomy._(2);

  static get values => [manual, assisted, auto];

  const AutopilotModeEnumAutonomy._(int value) : super(value);
}

/// Indicates if the message is a request, or a reply to a previous request.
class FormationStateEnumType extends EnumType {
  static const request = const FormationStateEnumType._(0);
  static const report = const FormationStateEnumType._(1);

  static get values => [request, report];

  const FormationStateEnumType._(int value) : super(value);
}

/// Operation to perform.
class FormationStateEnumOp extends EnumType {
  /// Start the formation maneuver.
  static const start = const FormationStateEnumOp._(0);
  /// Stop the formation maneuver.
  static const stop = const FormationStateEnumOp._(1);

  static get values => [start, stop];

  const FormationStateEnumOp._(int value) : super(value);
}

/// Position mismatch monitoring flag.
class FormationStateEnumPosSimMon extends EnumType {
  static const ok = const FormationStateEnumPosSimMon._(0);
  static const wrn = const FormationStateEnumPosSimMon._(1);
  static const lim = const FormationStateEnumPosSimMon._(2);

  static get values => [ok, wrn, lim];

  const FormationStateEnumPosSimMon._(int value) : super(value);
}

/// Communications monitoring flag.
class FormationStateEnumCommMon extends EnumType {
  static const ok = const FormationStateEnumCommMon._(0);
  static const timeout = const FormationStateEnumCommMon._(1);

  static get values => [ok, timeout];

  const FormationStateEnumCommMon._(int value) : super(value);
}

/// Convergence monitoring flag.
class FormationStateEnumConvergMon extends EnumType {
  static const ok = const FormationStateEnumConvergMon._(0);
  static const timeout = const FormationStateEnumConvergMon._(1);

  static get values => [ok, timeout];

  const FormationStateEnumConvergMon._(int value) : super(value);
}

/// Operation to perform.
class ReportControlEnumOp extends EnumType {
  /// Request a system to periodically send reports through 'interface'.
  /// The destination system will reply with a STARTED command. Periodicity
  /// will be defined by the field 'period'. If applicable, the destination
  /// address is defined in field 'dst'.
  static const request_start = const ReportControlEnumOp._(0);
  /// The destination system will reply a message with this operation
  /// everytime a report is successfully started. The periodicity of
  /// reports is indicated in the field 'period' while the communication
  /// interface to be used is described in field 'interface'. If applicable,
  /// the destination address is defined in field 'dst'.
  static const started = const ReportControlEnumOp._(1);
  /// Request a system to stop dispatching reports through a given
  /// communication interface described in 'interface'. The destination
  /// system will reply with a STOPPED command. If applicable, the
  /// destination address is defined in field 'dst'.
  static const request_stop = const ReportControlEnumOp._(2);
  /// The destination system will reply a message with this operation
  /// everytime a scheduled report is successfully stopped in a defined
  /// communication interface. If applicable, the destination address
  /// is defined in field 'dst'.
  static const stopped = const ReportControlEnumOp._(3);
  /// Request a system to issue a single report in a defined communication
  /// interface. The destination system will reply with a REPORT_ISSUED command.
  /// If applicable, the destination address is defined in field 'dst'.
  static const request_report = const ReportControlEnumOp._(4);
  /// The destination system will reply a single report request with
  /// this operation.If applicable, the destination address is defined
  /// in field 'dst'.
  static const report_sent = const ReportControlEnumOp._(5);

  static get values => [request_start, started, request_stop, stopped, 
      request_report, report_sent];

  const ReportControlEnumOp._(int value) : super(value);
}

/// Communication interface to be used for reports.
class ReportControlBitfieldCommInterface extends BitfieldType {
  /// Use acoustic communications
  static const acoustic = const ReportControlBitfieldCommInterface._(0x01);
  /// Use satellite communications
  static const satellite = const ReportControlBitfieldCommInterface._(0x02);
  /// Use Global System for Mobile Communications
  static const gsm = const ReportControlBitfieldCommInterface._(0x04);
  /// Use mobile networks
  static const mobile = const ReportControlBitfieldCommInterface._(0x08);
  /// Use Radio telemetry
  static const radio = const ReportControlBitfieldCommInterface._(0x10);

  static get values => [acoustic, satellite, gsm, mobile, 
      radio];

  const ReportControlBitfieldCommInterface._(int value) : super(value);

  static ReportControlBitfieldCommInterface fromBits(
          List<ReportControlBitfieldCommInterface> bits) =>
      bits.reduce((b1, b2) => ReportControlBitfieldCommInterface._(b1.value | b2.value));
}

/// Communication mean to be used to transfer these data.
class TransmissionRequestEnumCommMean extends EnumType {
  static const wifi = const TransmissionRequestEnumCommMean._(0);
  static const acoustic = const TransmissionRequestEnumCommMean._(1);
  static const satellite = const TransmissionRequestEnumCommMean._(2);
  static const gsm = const TransmissionRequestEnumCommMean._(3);

  static get values => [wifi, acoustic, satellite, gsm];

  const TransmissionRequestEnumCommMean._(int value) : super(value);
}

/// Type of data to be transmitted.
class TransmissionRequestEnumDataMode extends EnumType {
  static const inlinemsg = const TransmissionRequestEnumDataMode._(0);
  static const text = const TransmissionRequestEnumDataMode._(1);
  static const raw = const TransmissionRequestEnumDataMode._(2);

  static get values => [inlinemsg, text, raw];

  const TransmissionRequestEnumDataMode._(int value) : super(value);
}

class TransmissionStatusEnumStatus extends EnumType {
  static const in_progress = const TransmissionStatusEnumStatus._(0);
  static const sent = const TransmissionStatusEnumStatus._(1);
  static const delivered = const TransmissionStatusEnumStatus._(51);
  static const maybe_delivered = const TransmissionStatusEnumStatus._(52);
  static const input_failure = const TransmissionStatusEnumStatus._(101);
  static const temporary_failure = const TransmissionStatusEnumStatus._(102);
  static const permanent_failure = const TransmissionStatusEnumStatus._(103);

  static get values => [in_progress, sent, delivered, maybe_delivered, 
      input_failure, temporary_failure, permanent_failure];

  const TransmissionStatusEnumStatus._(int value) : super(value);
}

class SmsStatusEnumStatus extends EnumType {
  static const queued = const SmsStatusEnumStatus._(0);
  static const sent = const SmsStatusEnumStatus._(1);
  static const input_failure = const SmsStatusEnumStatus._(101);
  static const error = const SmsStatusEnumStatus._(102);

  static get values => [queued, sent, input_failure, error];

  const SmsStatusEnumStatus._(int value) : super(value);
}

class VtolStateEnumState extends EnumType {
  /// Vehicle is not configured as VTOL.
  static const undefined = const VtolStateEnumState._(0);
  /// Vehicle is in transition from multicopter to fixed-wing.
  static const transition_to_fw = const VtolStateEnumState._(1);
  /// Vehicle is in transition from fixed-wing to multicopter.
  static const transition_to_mc = const VtolStateEnumState._(2);
  /// Vehicle is in multicopter state.
  static const mc = const VtolStateEnumState._(3);
  /// Vehicle is in fixed-wing state.
  static const fw = const VtolStateEnumState._(4);

  static get values => [undefined, transition_to_fw, transition_to_mc, mc, 
      fw];

  const VtolStateEnumState._(int value) : super(value);
}

class ArmingStateEnumState extends EnumType {
  static const armed = const ArmingStateEnumState._(0);
  static const disarmed = const ArmingStateEnumState._(1);

  static get values => [armed, disarmed];

  const ArmingStateEnumState._(int value) : super(value);
}

class EmergencyControlEnumCommand extends EnumType {
  static const enable = const EmergencyControlEnumCommand._(0);
  static const disable = const EmergencyControlEnumCommand._(1);
  static const start = const EmergencyControlEnumCommand._(2);
  static const stop = const EmergencyControlEnumCommand._(3);
  static const query = const EmergencyControlEnumCommand._(4);
  static const set_plan = const EmergencyControlEnumCommand._(5);

  static get values => [enable, disable, start, stop, 
      query, set_plan];

  const EmergencyControlEnumCommand._(int value) : super(value);
}

class EmergencyControlStateEnumState extends EnumType {
  static const not_configured = const EmergencyControlStateEnumState._(0);
  static const disabled = const EmergencyControlStateEnumState._(1);
  static const enabled = const EmergencyControlStateEnumState._(2);
  static const armed = const EmergencyControlStateEnumState._(3);
  static const active = const EmergencyControlStateEnumState._(4);
  static const stopping = const EmergencyControlStateEnumState._(5);

  static get values => [not_configured, disabled, enabled, armed, 
      active, stopping];

  const EmergencyControlStateEnumState._(int value) : super(value);
}

/// Indicates if the message is a request, or a reply to a
/// previous request.
class PlanDBEnumType extends EnumType {
  static const request = const PlanDBEnumType._(0);
  static const success = const PlanDBEnumType._(1);
  static const failure = const PlanDBEnumType._(2);
  static const in_progress = const PlanDBEnumType._(3);

  static get values => [request, success, failure, in_progress];

  const PlanDBEnumType._(int value) : super(value);
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
  static const setVal = const PlanDBEnumOp._(0);
  /// Delete a plan from the DB. The 'plan_id' field identifies
  /// the plan to delete.
  static const del = const PlanDBEnumOp._(1);
  /// Get a plan stored in the DB.The 'plan_id' field identifies
  /// the plan. Successful replies will yield a
  /// 'PlanSpecification' message in the 'arg' field.
  static const getVal = const PlanDBEnumOp._(2);
  /// Get DB state for a stored plan. The 'plan_id' field
  /// identifies the plan. Successful replies will yield a
  /// 'PlanDBInformation' message in the 'arg' field.
  static const get_info = const PlanDBEnumOp._(3);
  /// Clear the entire DB.
  static const clear = const PlanDBEnumOp._(4);
  /// Get state of the entire DB. Successful replies will yield a
  /// 'PlanDBState' message in the 'arg' field but without
  /// individual plan information (in the 'plans_info' field of
  /// 'PlanDBState').
  static const get_state = const PlanDBEnumOp._(5);
  /// Get detailed state of the entire DB. Successful replies
  /// will yield a 'PlanDBState' message in the 'arg' field with
  /// individual plan information (in the 'plans_info' field of
  /// 'PlanDBState').
  static const get_dstate = const PlanDBEnumOp._(6);
  /// PlanDB replies of this type are sent automatically during
  /// bootstrap.
  static const boot = const PlanDBEnumOp._(7);

  static get values => [setVal, del, getVal, get_info, 
      clear, get_state, get_dstate, boot];

  const PlanDBEnumOp._(int value) : super(value);
}

/// Indicates if the message is a request or a reply to a
/// previous request. The *op*, *request_id* and *plan_id* fields
/// of a request will be echoed in one or more responses to that
/// request.
class PlanControlEnumType extends EnumType {
  static const request = const PlanControlEnumType._(0);
  static const success = const PlanControlEnumType._(1);
  static const failure = const PlanControlEnumType._(2);
  static const in_progress = const PlanControlEnumType._(3);

  static get values => [request, success, failure, in_progress];

  const PlanControlEnumType._(int value) : super(value);
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
  static const start = const PlanControlEnumOp._(0);
  /// Stop current plan being executed if any.
  static const stop = const PlanControlEnumOp._(1);
  /// Load Plan. If a :ref:`PlanSpecification` is given with the
  /// request in the *data* field, then that plan is used and
  /// stored in the Plan DB. Otherwise, the plan is loaded from
  /// the Plan DB.
  static const load = const PlanControlEnumOp._(2);
  /// Get loaded plan. For a successful reply, the *data* field
  /// will contain the :ref:`PlanSpecification` message that
  /// corresponds to the currently loaded plan.
  static const getVal = const PlanControlEnumOp._(3);

  static get values => [start, stop, load, getVal];

  const PlanControlEnumOp._(int value) : super(value);
}

class PlanControlBitfieldFlags extends BitfieldType {
  /// Perform vehicle calibration.
  static const calibrate = const PlanControlBitfieldFlags._(0x0001);
  /// Execute current plan while ignoring some errors that might be active.
  static const ignore_errors = const PlanControlBitfieldFlags._(0x0002);

  static get values => [calibrate, ignore_errors];

  const PlanControlBitfieldFlags._(int value) : super(value);

  static PlanControlBitfieldFlags fromBits(
          List<PlanControlBitfieldFlags> bits) =>
      bits.reduce((b1, b2) => PlanControlBitfieldFlags._(b1.value | b2.value));
}

/// Describes overall state.
class PlanControlStateEnumState extends EnumType {
  /// Plan execution is blocked e.g., due to a vehicle error,
  /// or if no plan is loaded.
  static const blocked = const PlanControlStateEnumState._(0);
  /// Ready to start plan execution.
  static const ready = const PlanControlStateEnumState._(1);
  /// Initializing plan for execution.
  static const initializing = const PlanControlStateEnumState._(2);
  /// Executing plan.
  static const executing = const PlanControlStateEnumState._(3);

  static get values => [blocked, ready, initializing, executing];

  const PlanControlStateEnumState._(int value) : super(value);
}

/// Outcome of the last executed plan.
class PlanControlStateEnumLastOutcome extends EnumType {
  /// Unknown or not filled.
  static const none = const PlanControlStateEnumLastOutcome._(0);
  /// Last plan execution was successful.
  static const success = const PlanControlStateEnumLastOutcome._(1);
  /// Last plan execution was a failure.
  static const failure = const PlanControlStateEnumLastOutcome._(2);

  static get values => [none, success, failure];

  const PlanControlStateEnumLastOutcome._(int value) : super(value);
}

class PlanVariableEnumType extends EnumType {
  static const boolean = const PlanVariableEnumType._(0);
  static const number = const PlanVariableEnumType._(1);
  static const text = const PlanVariableEnumType._(2);
  static const message = const PlanVariableEnumType._(3);

  static get values => [boolean, number, text, message];

  const PlanVariableEnumType._(int value) : super(value);
}

class PlanVariableEnumAccess extends EnumType {
  static const input = const PlanVariableEnumAccess._(0);
  static const output = const PlanVariableEnumAccess._(1);
  static const local = const PlanVariableEnumAccess._(2);

  static get values => [input, output, local];

  const PlanVariableEnumAccess._(int value) : super(value);
}

class PlanGenerationEnumCmd extends EnumType {
  /// Generate the plan and store it in the PlanDB.
  static const generate = const PlanGenerationEnumCmd._(0);
  /// Generate (storing it in the PlanDB) and execute it immediately.
  static const execute = const PlanGenerationEnumCmd._(1);

  static get values => [generate, execute];

  const PlanGenerationEnumCmd._(int value) : super(value);
}

class PlanGenerationEnumOp extends EnumType {
  /// Request the execution of this command.
  static const request = const PlanGenerationEnumOp._(0);
  /// Some error has occurred while executing the command. The
  /// error can be found in the 'params' tuplelist (under the
  /// key 'error').
  static const error = const PlanGenerationEnumOp._(1);
  /// The requested command was executed successfully.
  static const success = const PlanGenerationEnumOp._(2);

  static get values => [request, error, success];

  const PlanGenerationEnumOp._(int value) : super(value);
}

/// Action on the formation leader state variables
class LeaderStateEnumOp extends EnumType {
  static const request = const LeaderStateEnumOp._(0);
  static const setVal = const LeaderStateEnumOp._(1);
  static const report = const LeaderStateEnumOp._(2);

  static get values => [request, setVal, report];

  const LeaderStateEnumOp._(int value) : super(value);
}

/// Type of plan statistics, if they are launched before, during or after the plan execution.
class PlanStatisticsEnumType extends EnumType {
  static const preplan = const PlanStatisticsEnumType._(0);
  static const inplan = const PlanStatisticsEnumType._(1);
  static const postplan = const PlanStatisticsEnumType._(2);

  static get values => [preplan, inplan, postplan];

  const PlanStatisticsEnumType._(int value) : super(value);
}

class PlanStatisticsBitfieldProperties extends BitfieldType {
  /// Basic plan, meaning it is Linear, Finite and Noncyclic.
  static const basic = const PlanStatisticsBitfieldProperties._(0x00);
  /// Plan is nonlinear.
  static const nonlinear = const PlanStatisticsBitfieldProperties._(0x01);
  /// Plan is infinite in duration.
  static const infinite = const PlanStatisticsBitfieldProperties._(0x02);
  /// Plan is cyclical.
  static const cyclical = const PlanStatisticsBitfieldProperties._(0x04);
  /// All properties checked.
  static const all = const PlanStatisticsBitfieldProperties._(0x07);

  static get values => [basic, nonlinear, infinite, cyclical, 
      all];

  const PlanStatisticsBitfieldProperties._(int value) : super(value);

  static PlanStatisticsBitfieldProperties fromBits(
          List<PlanStatisticsBitfieldProperties> bits) =>
      bits.reduce((b1, b2) => PlanStatisticsBitfieldProperties._(b1.value | b2.value));
}

/// How the position was received/calculated
class ReportedStateEnumSType extends EnumType {
  static const wi_fi = const ReportedStateEnumSType._(0);
  static const tracker = const ReportedStateEnumSType._(1);
  static const sms = const ReportedStateEnumSType._(2);
  static const acoustic_modem = const ReportedStateEnumSType._(3);
  static const unknown = const ReportedStateEnumSType._(254);

  static get values => [wi_fi, tracker, sms, acoustic_modem, 
      unknown];

  const ReportedStateEnumSType._(int value) : super(value);
}

/// The type of feature
class MapFeatureEnumFeatureType extends EnumType {
  /// These features should appear as a point with a label in the map
  static const poi = const MapFeatureEnumFeatureType._(0);
  /// These features should be represented as a filled polygon (no label)
  static const filledpoly = const MapFeatureEnumFeatureType._(1);
  /// These features should be represented as a countoured closed polygon (no fill and no label)
  static const contouredpoly = const MapFeatureEnumFeatureType._(2);
  /// These features should be represented as an open polygon (no label)
  static const line = const MapFeatureEnumFeatureType._(3);
  /// A transponder location in the map
  static const transponder = const MapFeatureEnumFeatureType._(4);
  /// Intended vehicle's starting location
  static const startloc = const MapFeatureEnumFeatureType._(5);
  /// The offsets reference for this map
  static const homeref = const MapFeatureEnumFeatureType._(6);

  static get values => [poi, filledpoly, contouredpoly, line, 
      transponder, startloc, homeref];

  const MapFeatureEnumFeatureType._(int value) : super(value);
}

class CcuEventEnumType extends EnumType {
  static const log_entry = const CcuEventEnumType._(1);
  static const plan_added = const CcuEventEnumType._(2);
  static const plan_removed = const CcuEventEnumType._(3);
  static const plan_changed = const CcuEventEnumType._(4);
  static const map_feature_added = const CcuEventEnumType._(5);
  static const map_feature_removed = const CcuEventEnumType._(6);
  static const map_feature_changed = const CcuEventEnumType._(7);
  static const teleoperation_started = const CcuEventEnumType._(8);
  static const teleoperation_ended = const CcuEventEnumType._(9);

  static get values => [log_entry, plan_added, plan_removed, plan_changed, 
      map_feature_added, map_feature_removed, map_feature_changed, teleoperation_started, teleoperation_ended];

  const CcuEventEnumType._(int value) : super(value);
}

class TrexCommandEnumCommand extends EnumType {
  static const disable = const TrexCommandEnumCommand._(0);
  static const enable = const TrexCommandEnumCommand._(1);
  static const post_goal = const TrexCommandEnumCommand._(2);
  static const recall_goal = const TrexCommandEnumCommand._(3);
  static const request_plan = const TrexCommandEnumCommand._(4);
  static const report_plan = const TrexCommandEnumCommand._(5);

  static get values => [disable, enable, post_goal, recall_goal, 
      request_plan, report_plan];

  const TrexCommandEnumCommand._(int value) : super(value);
}

class TrexOperationEnumOp extends EnumType {
  static const post_token = const TrexOperationEnumOp._(1);
  static const post_goal = const TrexOperationEnumOp._(2);
  static const recall_goal = const TrexOperationEnumOp._(3);
  static const request_plan = const TrexOperationEnumOp._(4);
  static const report_plan = const TrexOperationEnumOp._(5);

  static get values => [post_token, post_goal, recall_goal, request_plan, 
      report_plan];

  const TrexOperationEnumOp._(int value) : super(value);
}

class TrexAttributeEnumAttrType extends EnumType {
  static const boolVal = const TrexAttributeEnumAttrType._(1);
  static const intVal = const TrexAttributeEnumAttrType._(2);
  static const float = const TrexAttributeEnumAttrType._(3);
  static const string = const TrexAttributeEnumAttrType._(4);
  static const enumVal = const TrexAttributeEnumAttrType._(5);

  static get values => [boolVal, intVal, float, string, 
      enumVal];

  const TrexAttributeEnumAttrType._(int value) : super(value);
}

class SessionStatusEnumStatus extends EnumType {
  static const established = const SessionStatusEnumStatus._(1);
  static const closed = const SessionStatusEnumStatus._(2);

  static get values => [established, closed];

  const SessionStatusEnumStatus._(int value) : super(value);
}

/// Event type.
class IoEventEnumType extends EnumType {
  static const input = const IoEventEnumType._(1);
  static const input_error = const IoEventEnumType._(2);

  static get values => [input, input_error];

  const IoEventEnumType._(int value) : super(value);
}

class UamTxFrameBitfieldFlags extends BitfieldType {
  static const ack = const UamTxFrameBitfieldFlags._(0x01);
  static const delayed = const UamTxFrameBitfieldFlags._(0x02);

  static get values => [ack, delayed];

  const UamTxFrameBitfieldFlags._(int value) : super(value);

  static UamTxFrameBitfieldFlags fromBits(
          List<UamTxFrameBitfieldFlags> bits) =>
      bits.reduce((b1, b2) => UamTxFrameBitfieldFlags._(b1.value | b2.value));
}

class UamRxFrameBitfieldFlags extends BitfieldType {
  static const promiscuous = const UamRxFrameBitfieldFlags._(0x01);
  static const delayed = const UamRxFrameBitfieldFlags._(0x02);

  static get values => [promiscuous, delayed];

  const UamRxFrameBitfieldFlags._(int value) : super(value);

  static UamRxFrameBitfieldFlags fromBits(
          List<UamRxFrameBitfieldFlags> bits) =>
      bits.reduce((b1, b2) => UamRxFrameBitfieldFlags._(b1.value | b2.value));
}

class UamTxStatusEnumValue extends EnumType {
  static const done = const UamTxStatusEnumValue._(0);
  static const failed = const UamTxStatusEnumValue._(1);
  static const canceled = const UamTxStatusEnumValue._(2);
  static const busy = const UamTxStatusEnumValue._(3);
  static const inv_addr = const UamTxStatusEnumValue._(4);
  static const ip = const UamTxStatusEnumValue._(5);
  static const unsupported = const UamTxStatusEnumValue._(6);
  static const inv_size = const UamTxStatusEnumValue._(7);

  static get values => [done, failed, canceled, busy, 
      inv_addr, ip, unsupported, inv_size];

  const UamTxStatusEnumValue._(int value) : super(value);
}

/// Action on the vehicle formation control parameters.
class FormCtrlParamEnumAction extends EnumType {
  static const req = const FormCtrlParamEnumAction._(0);
  static const setVal = const FormCtrlParamEnumAction._(1);
  static const rep = const FormCtrlParamEnumAction._(2);

  static get values => [req, setVal, rep];

  const FormCtrlParamEnumAction._(int value) : super(value);
}

/// Action on the vehicle formation control parameters.
class FormationControlParamsEnumAction extends EnumType {
  static const req = const FormationControlParamsEnumAction._(0);
  static const setVal = const FormationControlParamsEnumAction._(1);
  static const rep = const FormationControlParamsEnumAction._(2);

  static get values => [req, setVal, rep];

  const FormationControlParamsEnumAction._(int value) : super(value);
}

/// Indicates if the message is a request, or a reply to a previous request.
class FormationEvaluationEnumType extends EnumType {
  static const request = const FormationEvaluationEnumType._(0);
  static const report = const FormationEvaluationEnumType._(1);

  static get values => [request, report];

  const FormationEvaluationEnumType._(int value) : super(value);
}

/// Operation to perform.
class FormationEvaluationEnumOp extends EnumType {
  /// Start the formation maneuver.
  static const start = const FormationEvaluationEnumOp._(0);
  /// Stop the formation maneuver.
  static const stop = const FormationEvaluationEnumOp._(1);
  /// Stop the formation maneuver.
  static const ready = const FormationEvaluationEnumOp._(2);
  /// Stop the formation maneuver.
  static const executing = const FormationEvaluationEnumOp._(3);
  /// Stop the formation maneuver.
  static const failure = const FormationEvaluationEnumOp._(4);

  static get values => [start, stop, ready, executing, 
      failure];

  const FormationEvaluationEnumOp._(int value) : super(value);
}

class SoiCommandEnumType extends EnumType {
  static const request = const SoiCommandEnumType._(1);
  static const success = const SoiCommandEnumType._(2);
  static const error = const SoiCommandEnumType._(3);

  static get values => [request, success, error];

  const SoiCommandEnumType._(int value) : super(value);
}

class SoiCommandEnumCommand extends EnumType {
  static const exec = const SoiCommandEnumCommand._(1);
  static const stop = const SoiCommandEnumCommand._(2);
  static const set_params = const SoiCommandEnumCommand._(3);
  static const get_params = const SoiCommandEnumCommand._(4);
  static const get_plan = const SoiCommandEnumCommand._(5);
  static const resume = const SoiCommandEnumCommand._(6);

  static get values => [exec, stop, set_params, get_params, 
      get_plan, resume];

  const SoiCommandEnumCommand._(int value) : super(value);
}

class SoiStateEnumState extends EnumType {
  static const exec = const SoiStateEnumState._(1);
  static const idle = const SoiStateEnumState._(2);
  static const inactive = const SoiStateEnumState._(3);

  static get values => [exec, idle, inactive];

  const SoiStateEnumState._(int value) : super(value);
}

/// Used to define the type of the operation this message holds.
class UsblConfigEnumOp extends EnumType {
  /// Set the beacons configuration aboard the vehicle.
  static const set_cfg = const UsblConfigEnumOp._(0);
  /// Request the vehicle to send its current beacons configuration.
  static const get_cfg = const UsblConfigEnumOp._(1);
  static const cur_cfg = const UsblConfigEnumOp._(2);

  static get values => [set_cfg, get_cfg, cur_cfg];

  const UsblConfigEnumOp._(int value) : super(value);
}

/// Type of measurement.
class DissolvedOrganicMatterEnumType extends EnumType {
  static const colored = const DissolvedOrganicMatterEnumType._(0);
  static const fluorescent = const DissolvedOrganicMatterEnumType._(1);

  static get values => [colored, fluorescent];

  const DissolvedOrganicMatterEnumType._(int value) : super(value);
}

/// Severity of status.
class ApmStatusEnumSeverity extends EnumType {
  static const emergency = const ApmStatusEnumSeverity._(0);
  static const alert = const ApmStatusEnumSeverity._(1);
  static const critical = const ApmStatusEnumSeverity._(2);
  static const error = const ApmStatusEnumSeverity._(3);
  static const warning = const ApmStatusEnumSeverity._(4);
  static const notice = const ApmStatusEnumSeverity._(5);
  static const info = const ApmStatusEnumSeverity._(6);
  static const debug = const ApmStatusEnumSeverity._(7);

  static get values => [emergency, alert, critical, error, 
      warning, notice, info, debug];

  const ApmStatusEnumSeverity._(int value) : super(value);
}

/// Gain value of readings.
class SadcReadingsEnumGain extends EnumType {
  static const x1 = const SadcReadingsEnumGain._(0);
  static const x10 = const SadcReadingsEnumGain._(1);
  static const x100 = const SadcReadingsEnumGain._(2);

  static get values => [x1, x10, x100];

  const SadcReadingsEnumGain._(int value) : super(value);
}

