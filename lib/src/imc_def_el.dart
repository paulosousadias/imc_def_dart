// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// IMC Code Generator
// **************************************************************************


part of 'imc_def_gen.dart';

/// State of entity.
class EntityStateEnumState extends EnumType {
  static const boot = const EntityStateEnumState(0);
  static const normal = const EntityStateEnumState(1);
  static const fault = const EntityStateEnumState(2);
  static const error = const EntityStateEnumState(3);
  static const failure = const EntityStateEnumState(4);

  static get values => [boot, normal, fault, error, 
      failure];

  const EntityStateEnumState(int value) : super(value);
}

/// Complementary entity state flags.
class EntityStateBitfieldFlags extends BitfieldType {
  static const human_intervention = const EntityStateBitfieldFlags(0x01);

  static get values => [human_intervention];

  const EntityStateBitfieldFlags(int value) : super(value);

  static EntityStateBitfieldFlags fromBits(
          List<EntityStateBitfieldFlags> bits) =>
      bits.reduce((b1, b2) => EntityStateBitfieldFlags(b1.value | b2.value));
}

/// Operation to perform.
class EntityListEnumOp extends EnumType {
  static const report = const EntityListEnumOp(0);
  static const query = const EntityListEnumOp(1);

  static get values => [report, query];

  const EntityListEnumOp(int value) : super(value);
}

class RestartSystemEnumType extends EnumType {
  /// Request a DUNE restart
  static const dune = const RestartSystemEnumType(1);
  /// Request a system restart.
  static const system = const RestartSystemEnumType(2);

  static get values => [dune, system];

  const RestartSystemEnumType(int value) : super(value);
}

/// Operation to perform.
class DevCalibrationControlEnumOp extends EnumType {
  /// Start calibration procedure.
  static const start = const DevCalibrationControlEnumOp(0);
  /// Stop calibration procedure.
  static const stop = const DevCalibrationControlEnumOp(1);
  /// Perform next step of the calibration procedure.
  static const step_next = const DevCalibrationControlEnumOp(2);
  /// Perform previous step of the calibration procedure.
  static const step_previous = const DevCalibrationControlEnumOp(3);

  static get values => [start, stop, step_next, step_previous];

  const DevCalibrationControlEnumOp(int value) : super(value);
}

/// Additional flags.
class DevCalibrationStateBitfieldFlags extends BitfieldType {
  /// Jumping to the previous calibration step is not supported.
  static const previous_not_supported = const DevCalibrationStateBitfieldFlags(0x01);
  /// Jumping to the next calibration step is not supported.
  static const next_not_supported = const DevCalibrationStateBitfieldFlags(0x02);
  /// The calibration procedure was suspended and must be resumed or
  /// cancelled with a DeviceCalibrationControl message.
  static const waiting_control = const DevCalibrationStateBitfieldFlags(0x04);
  /// Calibration was interrupted due to an error and must be
  /// restarted or cancelled with a DeviceCalibrationControl
  /// message.
  static const error = const DevCalibrationStateBitfieldFlags(0x08);
  /// The calibration procedure was completed.
  static const completed = const DevCalibrationStateBitfieldFlags(0x10);

  static get values => [previous_not_supported, next_not_supported, waiting_control, error, 
      completed];

  const DevCalibrationStateBitfieldFlags(int value) : super(value);

  static DevCalibrationStateBitfieldFlags fromBits(
          List<DevCalibrationStateBitfieldFlags> bits) =>
      bits.reduce((b1, b2) => DevCalibrationStateBitfieldFlags(b1.value | b2.value));
}

/// Current state.
class EntityActivationStateEnumState extends EnumType {
  /// Entity is inactive.
  static const inactive = const EntityActivationStateEnumState(0);
  /// Entity is active.
  static const active = const EntityActivationStateEnumState(1);
  /// Activation is in progress.
  static const act_ip = const EntityActivationStateEnumState(2);
  /// Activation is completed.
  static const act_done = const EntityActivationStateEnumState(3);
  /// The activation procedure failed and the field 'error' contains the error message.
  static const act_fail = const EntityActivationStateEnumState(4);
  /// Deactivation is in progress.
  static const deact_ip = const EntityActivationStateEnumState(5);
  /// Deactivation is in progress.
  static const deact_done = const EntityActivationStateEnumState(6);
  /// The deactivation procedure failed and the field 'error' contains the error message.
  static const deact_fail = const EntityActivationStateEnumState(7);

  static get values => [inactive, active, act_ip, act_done, 
      act_fail, deact_ip, deact_done, deact_fail];

  const EntityActivationStateEnumState(int value) : super(value);
}

/// Action on the vehicle operation limits
class VehicleOperationalLimitsEnumOp extends EnumType {
  static const request = const VehicleOperationalLimitsEnumOp(0);
  static const setVal = const VehicleOperationalLimitsEnumOp(1);
  static const report = const VehicleOperationalLimitsEnumOp(2);

  static get values => [request, setVal, report];

  const VehicleOperationalLimitsEnumOp(int value) : super(value);
}

/// Indicates whether leaks have been detected or not.
class LeakSimulationEnumOp extends EnumType {
  static const off = const LeakSimulationEnumOp(0);
  static const onVal = const LeakSimulationEnumOp(1);

  static get values => [off, onVal];

  const LeakSimulationEnumOp(int value) : super(value);
}

/// Type of request.
class UASimulationEnumType extends EnumType {
  static const data = const UASimulationEnumType(0);
  static const ping = const UASimulationEnumType(1);
  static const ping_reply = const UASimulationEnumType(2);

  static get values => [data, ping, ping_reply];

  const UASimulationEnumType(int value) : super(value);
}

/// Action on the vehicle simulation parameters for the formation control
class DynamicsSimParamEnumOp extends EnumType {
  static const request = const DynamicsSimParamEnumOp(0);
  static const setVal = const DynamicsSimParamEnumOp(1);
  static const report = const DynamicsSimParamEnumOp(2);

  static get values => [request, setVal, report];

  const DynamicsSimParamEnumOp(int value) : super(value);
}

/// Operation to perform.
class CacheControlEnumOp extends EnumType {
  static const store = const CacheControlEnumOp(0);
  static const load = const CacheControlEnumOp(1);
  static const clear = const CacheControlEnumOp(2);
  static const copy = const CacheControlEnumOp(3);
  static const copy_complete = const CacheControlEnumOp(4);

  static get values => [store, load, clear, copy, 
      copy_complete];

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
  static const request_start = const LoggingControlEnumOp(0);
  /// The logging manager will send a message with this operation
  /// everytime a log is successfully started. The field 'name'
  /// contains the complete name of the log.
  static const started = const LoggingControlEnumOp(1);
  /// Request the logging manager to stop logging messages. The
  /// logging manager will reply with a STOPPED operation and
  /// logging will be suspended until a message with operation
  /// START is received. If logging is already stoppped the
  /// logging manager will ignore this operation and will not
  /// reply with a STOPPED operation. The field 'name' with this
  /// operation type has no meaning.
  static const request_stop = const LoggingControlEnumOp(2);
  /// The logging manager will send a message with this operation
  /// when logging is successfully stopped. The field 'name'
  /// contains the complete name of the log that was closed.
  static const stopped = const LoggingControlEnumOp(3);
  /// This operation instructs the logging manager to send a
  /// message with operation CURRENT_NAME containing the complete
  /// name of the current log in the field 'name'. The field
  /// 'name' with this operation type has no meaning.
  static const request_current_name = const LoggingControlEnumOp(4);
  /// The logging manager will send a message with this operation
  /// when asked via the REQUEST_CURRENT_NAME operation. The field
  /// 'name' contains the complete name of the log.
  static const current_name = const LoggingControlEnumOp(5);

  static get values => [request_start, started, request_stop, stopped, 
      request_current_name, current_name];

  const LoggingControlEnumOp(int value) : super(value);
}

/// Type of message.
class LogBookEntryEnumType extends EnumType {
  static const info = const LogBookEntryEnumType(0);
  static const warning = const LogBookEntryEnumType(1);
  static const error = const LogBookEntryEnumType(2);
  static const critical = const LogBookEntryEnumType(3);
  static const debug = const LogBookEntryEnumType(4);

  static get values => [info, warning, error, critical, 
      debug];

  const LogBookEntryEnumType(int value) : super(value);
}

/// Command to perform.
class LogBookControlEnumCommand extends EnumType {
  /// Retrieve log book entries.
  static const getVal = const LogBookControlEnumCommand(0);
  /// Clear log book entries.
  static const clear = const LogBookControlEnumCommand(1);
  /// Retrieve log book entries corresponding to errors.
  static const get_err = const LogBookControlEnumCommand(2);
  /// Reply to a GET command. Message argument is a MessageList
  /// instance containing LogBookEntry messages.
  static const reply = const LogBookControlEnumCommand(3);

  static get values => [getVal, clear, get_err, reply];

  const LogBookControlEnumCommand(int value) : super(value);
}

/// Operation to perform.
class ReplayControlEnumOp extends EnumType {
  static const start = const ReplayControlEnumOp(0);
  static const stop = const ReplayControlEnumOp(1);
  static const pause = const ReplayControlEnumOp(2);
  static const resume = const ReplayControlEnumOp(3);

  static get values => [start, stop, pause, resume];

  const ReplayControlEnumOp(int value) : super(value);
}

/// Operation to perform.
class ClockControlEnumOp extends EnumType {
  /// Synchronize clock according to given clock value.
  static const sync_exec = const ClockControlEnumOp(0);
  /// Request autonomous clock synchronization.
  static const sync_request = const ClockControlEnumOp(1);
  /// Synchronization start notification.
  static const sync_started = const ClockControlEnumOp(2);
  /// Synchronization completion notification.
  static const sync_done = const ClockControlEnumOp(3);
  /// Set timezone.
  static const set_tz = const ClockControlEnumOp(4);
  /// Notification due to timezone modification.
  static const set_tz_done = const ClockControlEnumOp(5);

  static get values => [sync_exec, sync_request, sync_started, sync_done, 
      set_tz, set_tz_done];

  const ClockControlEnumOp(int value) : super(value);
}

class HistoricSonarDataEnumEncoding extends EnumType {
  static const one_byte_per_pixel = const HistoricSonarDataEnumEncoding(0);
  static const png = const HistoricSonarDataEnumEncoding(1);
  static const jpeg = const HistoricSonarDataEnumEncoding(2);

  static get values => [one_byte_per_pixel, png, jpeg];

  const HistoricSonarDataEnumEncoding(int value) : super(value);
}

/// Type of event.
class HistoricEventEnumType extends EnumType {
  static const info = const HistoricEventEnumType(0);
  static const error = const HistoricEventEnumType(1);

  static get values => [info, error];

  const HistoricEventEnumType(int value) : super(value);
}

/// Water parameter used to calculate the vertical profile.
class VerticalProfileEnumParameter extends EnumType {
  static const temperature = const VerticalProfileEnumParameter(0);
  static const salinity = const VerticalProfileEnumParameter(1);
  static const conductivity = const VerticalProfileEnumParameter(2);
  static const ph = const VerticalProfileEnumParameter(3);
  static const redox = const VerticalProfileEnumParameter(4);
  static const chlorophyll = const VerticalProfileEnumParameter(5);
  static const turbidity = const VerticalProfileEnumParameter(6);

  static get values => [temperature, salinity, conductivity, ph, 
      redox, chlorophyll, turbidity];

  const VerticalProfileEnumParameter(int value) : super(value);
}

/// Informs about the availability of the service on internal and
/// external networks.
class AnnounceServiceBitfieldServiceType extends BitfieldType {
  static const externalVal = const AnnounceServiceBitfieldServiceType(0x01);
  static const local = const AnnounceServiceBitfieldServiceType(0x02);

  static get values => [externalVal, local];

  const AnnounceServiceBitfieldServiceType(int value) : super(value);

  static AnnounceServiceBitfieldServiceType fromBits(
          List<AnnounceServiceBitfieldServiceType> bits) =>
      bits.reduce((b1, b2) => AnnounceServiceBitfieldServiceType(b1.value | b2.value));
}

/// Current state of an SMS transaction.
class SmsStateEnumState extends EnumType {
  static const accepted = const SmsStateEnumState(0);
  static const rejected = const SmsStateEnumState(1);
  static const interrupted = const SmsStateEnumState(2);
  static const completed = const SmsStateEnumState(3);
  static const idle = const SmsStateEnumState(4);
  static const transmitting = const SmsStateEnumState(5);
  static const receiving = const SmsStateEnumState(6);

  static get values => [accepted, rejected, interrupted, completed, 
      idle, transmitting, receiving];

  const SmsStateEnumState(int value) : super(value);
}

class IridiumTxStatusEnumStatus extends EnumType {
  static const ok = const IridiumTxStatusEnumStatus(1);
  static const error = const IridiumTxStatusEnumStatus(2);
  static const queued = const IridiumTxStatusEnumStatus(3);
  static const transmit = const IridiumTxStatusEnumStatus(4);
  static const expired = const IridiumTxStatusEnumStatus(5);
  static const empty = const IridiumTxStatusEnumStatus(6);

  static get values => [ok, error, queued, transmit, 
      expired, empty];

  const IridiumTxStatusEnumStatus(int value) : super(value);
}

/// Actions on the group list.
class SystemGroupEnumAction extends EnumType {
  static const dis = const SystemGroupEnumAction(0);
  static const setVal = const SystemGroupEnumAction(1);
  static const req = const SystemGroupEnumAction(2);
  static const chg = const SystemGroupEnumAction(3);
  static const rep = const SystemGroupEnumAction(4);
  static const frc = const SystemGroupEnumAction(5);

  static get values => [dis, setVal, req, chg, 
      rep, frc];

  const SystemGroupEnumAction(int value) : super(value);
}

class HistoricDataQueryEnumType extends EnumType {
  /// Request data from the Data Store
  static const query = const HistoricDataQueryEnumType(1);
  /// Data Store response with Data (using field 'data')
  static const reply = const HistoricDataQueryEnumType(2);
  /// Clear 'data' from the Data Store
  static const clear = const HistoricDataQueryEnumType(3);

  static get values => [query, reply, clear];

  const HistoricDataQueryEnumType(int value) : super(value);
}

class CommSystemsQueryBitfieldType extends BitfieldType {
  /// Query systems about communication capability
  static const query = const CommSystemsQueryBitfieldType(0x01);
  /// Reply systems about communication capability
  static const reply = const CommSystemsQueryBitfieldType(0x02);

  static get values => [query, reply];

  const CommSystemsQueryBitfieldType(int value) : super(value);

  static CommSystemsQueryBitfieldType fromBits(
          List<CommSystemsQueryBitfieldType> bits) =>
      bits.reduce((b1, b2) => CommSystemsQueryBitfieldType(b1.value | b2.value));
}

/// Communication interface to be used for reports.
class CommSystemsQueryBitfieldCommInterface extends BitfieldType {
  /// Use acoustic communications
  static const acoustic = const CommSystemsQueryBitfieldCommInterface(0x01);
  /// Use satellite communications
  static const satellite = const CommSystemsQueryBitfieldCommInterface(0x02);
  /// Use Global System for Mobile Communications
  static const gsm = const CommSystemsQueryBitfieldCommInterface(0x04);
  /// Use mobile networks
  static const mobile = const CommSystemsQueryBitfieldCommInterface(0x08);
  /// Use Radio telemetry
  static const radio = const CommSystemsQueryBitfieldCommInterface(0x10);

  static get values => [acoustic, satellite, gsm, mobile, 
      radio];

  const CommSystemsQueryBitfieldCommInterface(int value) : super(value);

  static CommSystemsQueryBitfieldCommInterface fromBits(
          List<CommSystemsQueryBitfieldCommInterface> bits) =>
      bits.reduce((b1, b2) => CommSystemsQueryBitfieldCommInterface(b1.value | b2.value));
}

class CommSystemsQueryEnumModel extends EnumType {
  /// Model is not defined
  static const unknown = const CommSystemsQueryEnumModel(0x00);
  /// Radio Model 3DR
  static const m3dr = const CommSystemsQueryEnumModel(0x01);
  /// Radio Model RDFXXXx point to point
  static const rdfxxxxptp = const CommSystemsQueryEnumModel(0x02);

  static get values => [unknown, m3dr, rdfxxxxptp];

  const CommSystemsQueryEnumModel(int value) : super(value);
}

/// Type of telemetry transmissions.
class TelemetryMsgEnumType extends EnumType {
  /// Send telemetry data.
  static const tx = const TelemetryMsgEnumType(0x01);
  /// Received telemetry data.
  static const rx = const TelemetryMsgEnumType(0x02);
  /// Status of transmitted data.
  static const txstatus = const TelemetryMsgEnumType(0x03);

  static get values => [tx, rx, txstatus];

  const TelemetryMsgEnumType(int value) : super(value);
}

/// Type of telemetry transmissions.
class TelemetryMsgEnumCode extends EnumType {
  /// Unknown code type
  static const code_unk = const TelemetryMsgEnumCode(0x00);
  /// Concise representation of entire system state message.
  /// Payload message is a MessageList.
  static const code_report = const TelemetryMsgEnumCode(0x01);
  /// Payload message is INLINEMSG
  static const code_imc = const TelemetryMsgEnumCode(0x02);
  /// Payload message is in raw
  static const code_raw = const TelemetryMsgEnumCode(0x03);

  static get values => [code_unk, code_report, code_imc, code_raw];

  const TelemetryMsgEnumCode(int value) : super(value);
}

/// Type of telemetry transmissions.
class TelemetryMsgBitfieldAcknowledge extends BitfieldType {
  /// Message transmitted without acknowledged reception response
  static const nak = const TelemetryMsgBitfieldAcknowledge(0x00);
  /// Message transmitted with acknowledged reception response
  static const ak = const TelemetryMsgBitfieldAcknowledge(0x01);

  static get values => [nak, ak];

  const TelemetryMsgBitfieldAcknowledge(int value) : super(value);

  static TelemetryMsgBitfieldAcknowledge fromBits(
          List<TelemetryMsgBitfieldAcknowledge> bits) =>
      bits.reduce((b1, b2) => TelemetryMsgBitfieldAcknowledge(b1.value | b2.value));
}

/// State of the transmitted message.
class TelemetryMsgEnumStatus extends EnumType {
  static const none = const TelemetryMsgEnumStatus(0x00);
  static const done = const TelemetryMsgEnumStatus(1);
  static const failed = const TelemetryMsgEnumStatus(2);
  static const queued = const TelemetryMsgEnumStatus(3);
  static const transmit = const TelemetryMsgEnumStatus(4);
  static const expired = const TelemetryMsgEnumStatus(5);
  static const empty = const TelemetryMsgEnumStatus(6);
  static const inv_addr = const TelemetryMsgEnumStatus(7);
  static const inv_size = const TelemetryMsgEnumStatus(8);

  static get values => [none, done, failed, queued, 
      transmit, expired, empty, inv_addr, inv_size];

  const TelemetryMsgEnumStatus(int value) : super(value);
}

/// Used to define the type of the operation this message holds.
class LblConfigEnumOp extends EnumType {
  /// Set the beacons configuration aboard the vehicle.
  static const set_cfg = const LblConfigEnumOp(0);
  /// Request the vehicle to send its current beacons configuration.
  static const get_cfg = const LblConfigEnumOp(1);
  static const cur_cfg = const LblConfigEnumOp(2);

  static get values => [set_cfg, get_cfg, cur_cfg];

  const LblConfigEnumOp(int value) : super(value);
}

/// Operation type.
class AcousticOperationEnumOp extends EnumType {
  /// Send an abort through the acoustic channel to the system
  /// specified in the field 'system'.
  static const abort = const AcousticOperationEnumOp(0);
  /// The latest abort request to the system specified in the
  /// field 'system' is in progress.
  static const abort_ip = const AcousticOperationEnumOp(1);
  /// The latest abort operation expired without acknowledgment
  /// from the system specified in the field 'system'.
  static const abort_timeout = const AcousticOperationEnumOp(2);
  /// The latest abort operation was acknowledged by the system
  /// specified in the field 'system'.
  static const abort_acked = const AcousticOperationEnumOp(3);
  /// Request a range through the acoustic channel to the system
  /// specified in the field 'system'.
  static const range = const AcousticOperationEnumOp(4);
  /// The latest range request to the system specified in the
  /// field 'system' is in progress.
  static const range_ip = const AcousticOperationEnumOp(5);
  /// The latest range request operation expired without reply
  /// from the system specified in the field 'system'.
  static const range_timeout = const AcousticOperationEnumOp(6);
  /// The latest range request operation to the system specified
  /// in the field 'system' was successful and the range is
  /// specified in the field 'range'.
  static const range_recved = const AcousticOperationEnumOp(7);
  /// The acoustic modem is busy and cannot execute the requested
  /// operation.
  static const busy = const AcousticOperationEnumOp(8);
  /// The latest requested operation is not supported.
  static const unsupported = const AcousticOperationEnumOp(9);
  /// The transducer was not detected.
  static const no_txd = const AcousticOperationEnumOp(10);
  /// Request message over acoustic channel. The message to send
  /// is specified by the 'msg' field.
  static const msg = const AcousticOperationEnumOp(11);
  /// Message send request has been queued.
  static const msg_queued = const AcousticOperationEnumOp(12);
  /// Message send request is in progress.
  static const msg_ip = const AcousticOperationEnumOp(13);
  /// Message send request has been fulfilled.
  static const msg_done = const AcousticOperationEnumOp(14);
  /// Message send request could not be fulfilled.
  static const msg_failure = const AcousticOperationEnumOp(15);
  /// Request message over acoustic channel. The message to send
  /// is specified by the 'msg' field.
  static const msg_short = const AcousticOperationEnumOp(16);
  /// Request sending updated position to remote system so it can be ranged.
  static const reverse_range = const AcousticOperationEnumOp(17);

  static get values => [abort, abort_ip, abort_timeout, abort_acked, 
      range, range_ip, range_timeout, range_recved, busy, 
      unsupported, no_txd, msg, msg_queued, msg_ip, 
      msg_done, msg_failure, msg_short, reverse_range];

  const AcousticOperationEnumOp(int value) : super(value);
}

/// Validity of fields.
class GpsFixBitfieldValidity extends BitfieldType {
  /// Fields 'utc_year', 'utc_month' and 'utc_day' are valid.
  static const valid_date = const GpsFixBitfieldValidity(0x0001);
  /// Field 'utc_time' is valid.
  static const valid_time = const GpsFixBitfieldValidity(0x0002);
  /// Fields 'lat', 'lon', 'altitude' and 'satellites' are valid.
  static const valid_pos = const GpsFixBitfieldValidity(0x0004);
  /// Field 'cog' is valid.
  static const valid_cog = const GpsFixBitfieldValidity(0x0008);
  /// Field 'sog' is valid.
  static const valid_sog = const GpsFixBitfieldValidity(0x0010);
  /// Field 'hacc' is valid.
  static const valid_hacc = const GpsFixBitfieldValidity(0x0020);
  /// Field 'vacc' is valid.
  static const valid_vacc = const GpsFixBitfieldValidity(0x0040);
  /// Field 'hdop' is valid.
  static const valid_hdop = const GpsFixBitfieldValidity(0x0080);
  /// Field 'vdop' is valid.
  static const valid_vdop = const GpsFixBitfieldValidity(0x0100);

  static get values => [valid_date, valid_time, valid_pos, valid_cog, 
      valid_sog, valid_hacc, valid_vacc, valid_hdop, valid_vdop];

  const GpsFixBitfieldValidity(int value) : super(value);

  static GpsFixBitfieldValidity fromBits(
          List<GpsFixBitfieldValidity> bits) =>
      bits.reduce((b1, b2) => GpsFixBitfieldValidity(b1.value | b2.value));
}

/// Type of fix.
class GpsFixEnumType extends EnumType {
  /// Stand alone solution.
  static const standalone = const GpsFixEnumType(0x00);
  /// Differential solution.
  static const differential = const GpsFixEnumType(0x01);
  /// Dead reckoning solution.
  static const dead_reckoning = const GpsFixEnumType(0x02);
  /// Manual solution.
  static const manual_input = const GpsFixEnumType(0x03);
  /// Simulated solution.
  static const simulation = const GpsFixEnumType(0x04);

  static get values => [standalone, differential, dead_reckoning, manual_input, 
      simulation];

  const GpsFixEnumType(int value) : super(value);
}

/// Each bit of this field represents if a given velocity
/// component is valid.
class GroundVelocityBitfieldValidity extends BitfieldType {
  static const vel_x = const GroundVelocityBitfieldValidity(0x01);
  static const vel_y = const GroundVelocityBitfieldValidity(0x02);
  static const vel_z = const GroundVelocityBitfieldValidity(0x04);

  static get values => [vel_x, vel_y, vel_z];

  const GroundVelocityBitfieldValidity(int value) : super(value);

  static GroundVelocityBitfieldValidity fromBits(
          List<GroundVelocityBitfieldValidity> bits) =>
      bits.reduce((b1, b2) => GroundVelocityBitfieldValidity(b1.value | b2.value));
}

/// Each bit of this field represents if a given velocity
/// component is valid.
class WaterVelocityBitfieldValidity extends BitfieldType {
  static const vel_x = const WaterVelocityBitfieldValidity(0x01);
  static const vel_y = const WaterVelocityBitfieldValidity(0x02);
  static const vel_z = const WaterVelocityBitfieldValidity(0x04);

  static get values => [vel_x, vel_y, vel_z];

  const WaterVelocityBitfieldValidity(int value) : super(value);

  static WaterVelocityBitfieldValidity fromBits(
          List<WaterVelocityBitfieldValidity> bits) =>
      bits.reduce((b1, b2) => WaterVelocityBitfieldValidity(b1.value | b2.value));
}

/// Validity of the measurement.
class DistanceEnumValidity extends EnumType {
  /// Measurement is invalid.
  static const invalid = const DistanceEnumValidity(0);
  /// Measurement is valid.
  static const valid = const DistanceEnumValidity(1);

  static get values => [invalid, valid];

  const DistanceEnumValidity(int value) : super(value);
}

/// Type of sonar.
class SonarDataEnumType extends EnumType {
  static const sidescan = const SonarDataEnumType(0);
  static const echosounder = const SonarDataEnumType(1);
  static const multibeam = const SonarDataEnumType(2);

  static get values => [sidescan, echosounder, multibeam];

  const SonarDataEnumType(int value) : super(value);
}

/// Activate or deactivate hardware pulse detection.
class PulseDetectionControlEnumOp extends EnumType {
  static const off = const PulseDetectionControlEnumOp(0);
  static const onVal = const PulseDetectionControlEnumOp(1);

  static get values => [off, onVal];

  const PulseDetectionControlEnumOp(int value) : super(value);
}

/// Whether the data is sane or not sane.
class DataSanityEnumSane extends EnumType {
  /// Data is sane.
  static const sane = const DataSanityEnumSane(0);
  /// Data is not sane.
  static const not_sane = const DataSanityEnumSane(1);

  static get values => [sane, not_sane];

  const DataSanityEnumSane(int value) : super(value);
}

/// Validity of fields.
class GpsFixRtkBitfieldValidity extends BitfieldType {
  /// Field 'tow' is valid.
  static const valid_time = const GpsFixRtkBitfieldValidity(0x0001);
  /// Fields 'base_lat', 'base_lon' and 'base_height' are valid.
  static const valid_base = const GpsFixRtkBitfieldValidity(0x0002);
  /// Fields 'n', 'e', 'd' are valid.
  static const valid_pos = const GpsFixRtkBitfieldValidity(0x0004);
  /// Fields 'v_n', 'v_e', 'v_d' are valid.
  static const valid_vel = const GpsFixRtkBitfieldValidity(0x0008);

  static get values => [valid_time, valid_base, valid_pos, valid_vel];

  const GpsFixRtkBitfieldValidity(int value) : super(value);

  static GpsFixRtkBitfieldValidity fromBits(
          List<GpsFixRtkBitfieldValidity> bits) =>
      bits.reduce((b1, b2) => GpsFixRtkBitfieldValidity(b1.value | b2.value));
}

/// Type of fix.
class GpsFixRtkEnumType extends EnumType {
  /// No solution, but RTK task is running.
  static const none = const GpsFixRtkEnumType(0x00);
  /// No solution, but receiving observations.
  static const obs = const GpsFixRtkEnumType(0x01);
  /// Floating point solution of IAR.
  static const float = const GpsFixRtkEnumType(0x02);
  /// Fixed (single) solution of IAR.
  static const fixed = const GpsFixRtkEnumType(0x03);

  static get values => [none, obs, float, fixed];

  const GpsFixRtkEnumType(int value) : super(value);
}

/// The type of external navigation data
class ExternalNavDataEnumType extends EnumType {
  static const full = const ExternalNavDataEnumType(0);
  static const ahrs = const ExternalNavDataEnumType(1);
  static const posref = const ExternalNavDataEnumType(2);

  static get values => [full, ahrs, posref];

  const ExternalNavDataEnumType(int value) : super(value);
}

/// The zoom action to perform.
class CameraZoomEnumAction extends EnumType {
  static const zoom_reset = const CameraZoomEnumAction(0);
  static const zoom_in = const CameraZoomEnumAction(1);
  static const zoom_out = const CameraZoomEnumAction(2);
  static const zoom_stop = const CameraZoomEnumAction(3);

  static get values => [zoom_reset, zoom_in, zoom_out, zoom_stop];

  const CameraZoomEnumAction(int value) : super(value);
}

/// Operation to perform.
class RemoteActionsRequestEnumOp extends EnumType {
  static const report = const RemoteActionsRequestEnumOp(0);
  static const query = const RemoteActionsRequestEnumOp(1);

  static get values => [report, query];

  const RemoteActionsRequestEnumOp(int value) : super(value);
}

/// The LCD action to perform
class LcdControlEnumOp extends EnumType {
  static const turn_off = const LcdControlEnumOp(0);
  static const turn_on = const LcdControlEnumOp(1);
  static const clear = const LcdControlEnumOp(2);
  static const write0 = const LcdControlEnumOp(3);
  static const write1 = const LcdControlEnumOp(4);

  static get values => [turn_off, turn_on, clear, write0, 
      write1];

  const LcdControlEnumOp(int value) : super(value);
}

/// Operation type.
class PowerOperationEnumOp extends EnumType {
  /// Request the destination entity of this message to power down
  /// it's devices immediately. If the destination entity is the
  /// special entity '0' the whole system will power down.
  static const pwr_down = const PowerOperationEnumOp(0);
  /// The latest power down request is in progress and the time
  /// remaining until power down is given in field 'time_remain'.
  static const pwr_down_ip = const PowerOperationEnumOp(1);
  /// The latest power down request was aborted.
  static const pwr_down_aborted = const PowerOperationEnumOp(2);
  /// Request the destination entity of this message to power down
  /// it's devices at the time given in the field 'sched_time'. If
  /// the destination entity is the special entity '0' the whole
  /// system will power down.
  static const sched_pwr_down = const PowerOperationEnumOp(3);
  /// Request the destination entity of this message to power up
  /// it's devices.
  static const pwr_up = const PowerOperationEnumOp(4);
  /// The latest power up request is in progress.
  static const pwr_up_ip = const PowerOperationEnumOp(5);
  /// Request the destination entity of this message to power up
  /// it's devices at the time given in the field 'sched_time'. If
  /// the destination entity is the special entity '0' the whole
  /// system will power up.
  static const sched_pwr_up = const PowerOperationEnumOp(6);

  static get values => [pwr_down, pwr_down_ip, pwr_down_aborted, sched_pwr_down, 
      pwr_up, pwr_up_ip, sched_pwr_up];

  const PowerOperationEnumOp(int value) : super(value);
}

/// Operation to perform.
class PowerChannelControlEnumOp extends EnumType {
  /// Turn off power channel specified in field 'id'.
  static const turn_off = const PowerChannelControlEnumOp(0);
  /// Turn on power channel specified in field 'id'.
  static const turn_on = const PowerChannelControlEnumOp(1);
  /// Toggle power channel specified in field 'id'.
  static const toggle = const PowerChannelControlEnumOp(2);
  /// Turn on power channel specified in field 'id' in
  /// 'sched_time' seconds.
  static const sched_on = const PowerChannelControlEnumOp(3);
  /// Turn off power channel specified in field 'id' in
  /// 'sched_time' seconds.
  static const sched_off = const PowerChannelControlEnumOp(4);
  /// Reset all scheduled operations for the channel specified in
  /// field 'id'.
  static const sched_reset = const PowerChannelControlEnumOp(5);
  /// Save the current state of the channel 'id' to persistent
  /// storage.
  static const save = const PowerChannelControlEnumOp(6);
  /// Restart power channel specified in field 'id'.
  static const restart = const PowerChannelControlEnumOp(7);

  static get values => [turn_off, turn_on, toggle, sched_on, 
      sched_off, sched_reset, save, restart];

  const PowerChannelControlEnumOp(int value) : super(value);
}

/// State of the Power Channel.
class PowerChannelStateEnumState extends EnumType {
  /// Power channel is off.
  static const off = const PowerChannelStateEnumState(0);
  /// Power channel is on.
  static const onVal = const PowerChannelStateEnumState(1);

  static get values => [off, onVal];

  const PowerChannelStateEnumState(int value) : super(value);
}

/// Reason for rejection.
class GpsFixRejectionEnumReason extends EnumType {
  /// New GPS Fix position is above a computed threshold.
  static const above_threshold = const GpsFixRejectionEnumReason(0);
  /// Invalid measurement.
  static const invalid = const GpsFixRejectionEnumReason(1);
  /// Above maximum horizontal dilution of precision.
  static const above_max_hdop = const GpsFixRejectionEnumReason(2);
  /// Above maximum horizontal accuracy index.
  static const above_max_hacc = const GpsFixRejectionEnumReason(3);
  /// Lost one of the validity bits between consecutive GPS fixes.
  static const lost_val_bit = const GpsFixRejectionEnumReason(4);

  static get values => [above_threshold, invalid, above_max_hdop, above_max_hacc, 
      lost_val_bit];

  const GpsFixRejectionEnumReason(int value) : super(value);
}

/// Reason for acceptance/rejection.
class LblRangeAcceptanceEnumAcceptance extends EnumType {
  /// This LBL range is accepted by the navigation filter.
  static const accepted = const LblRangeAcceptanceEnumAcceptance(0);
  /// New LBL Range is above a computed threshold.
  static const above_threshold = const LblRangeAcceptanceEnumAcceptance(1);
  /// Singular point.
  static const singular = const LblRangeAcceptanceEnumAcceptance(2);
  /// The filter lacks information to properly use the received LBL range.
  static const no_info = const LblRangeAcceptanceEnumAcceptance(3);
  /// Vehicle is using only GPS fix when it is at surface.
  static const at_surface = const LblRangeAcceptanceEnumAcceptance(4);

  static get values => [accepted, above_threshold, singular, no_info, 
      at_surface];

  const LblRangeAcceptanceEnumAcceptance(int value) : super(value);
}

/// This field represents the type of the rejected velocity.
class DvlRejectionBitfieldType extends BitfieldType {
  static const gv = const DvlRejectionBitfieldType(0x01);
  static const wv = const DvlRejectionBitfieldType(0x02);

  static get values => [gv, wv];

  const DvlRejectionBitfieldType(int value) : super(value);

  static DvlRejectionBitfieldType fromBits(
          List<DvlRejectionBitfieldType> bits) =>
      bits.reduce((b1, b2) => DvlRejectionBitfieldType(b1.value | b2.value));
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
  static const innov_threshold_x = const DvlRejectionEnumReason(0);
  /// The current DVL y-axis measurement is discarded
  /// because the absolute difference between the
  /// value and the previous accepted DVL measurement
  /// with a given time window is above a configurable
  /// threshold.
  static const innov_threshold_y = const DvlRejectionEnumReason(1);
  /// The current DVL x-axis measurement is discarded
  /// because the the absolute value is above a
  /// configurable threshold.
  static const abs_threshold_x = const DvlRejectionEnumReason(2);
  /// The current DVL y-axis measurement is discarded
  /// because the the absolute value is above a
  /// configurable threshold.
  static const abs_threshold_y = const DvlRejectionEnumReason(3);

  static get values => [innov_threshold_x, innov_threshold_y, abs_threshold_x, abs_threshold_y];

  const DvlRejectionEnumReason(int value) : super(value);
}

/// Alignment State.
class AlignmentStateEnumState extends EnumType {
  static const not_aligned = const AlignmentStateEnumState(0);
  static const aligned = const AlignmentStateEnumState(1);
  static const not_supported = const AlignmentStateEnumState(2);
  static const aligning = const AlignmentStateEnumState(3);
  static const wrong_medium = const AlignmentStateEnumState(4);

  static get values => [not_aligned, aligned, not_supported, aligning, 
      wrong_medium];

  const AlignmentStateEnumState(int value) : super(value);
}

/// Desired Path flags.
class DesiredPathBitfieldFlags extends BitfieldType {
  /// Indicates that the start point specification is given,
  /// therefore it should be considered for tracking.
  static const start = const DesiredPathBitfieldFlags(0x01);
  /// If start point is not given, ignore also the previous path's
  /// endpoint and take the start point to be the current vehicle
  /// location.
  static const direct = const DesiredPathBitfieldFlags(0x02);
  /// Ignore altitude/depth setting and let them be controlled
  /// independently.
  static const no_z = const DesiredPathBitfieldFlags(0x04);
  /// Perform 3D-tracking, i.e., consider the path formed in the
  /// XYZ plane taking into account both the 'start_z' and 'end_z'
  /// values.
  static const v3dtrack = const DesiredPathBitfieldFlags(0x08);
  /// Indicates that loitering, if defined, should be done
  /// counter-clockwise. Clockwise loitering will apply
  /// otherwise.
  static const cclockw = const DesiredPathBitfieldFlags(0x10);
  /// Indicates that loitering, if defined, should be done from
  /// the current vehicle position. The end_lat and end_lon
  /// fields will be ignored.
  static const loiter_curr = const DesiredPathBitfieldFlags(0x20);
  /// Indicates that takeoff should be done before going to the end position.
  static const takeoff = const DesiredPathBitfieldFlags(0x40);
  /// Indicates that the system should land at the end position.
  static const land = const DesiredPathBitfieldFlags(0x80);

  static get values => [start, direct, no_z, v3dtrack, 
      cclockw, loiter_curr, takeoff, land];

  const DesiredPathBitfieldFlags(int value) : super(value);

  static DesiredPathBitfieldFlags fromBits(
          List<DesiredPathBitfieldFlags> bits) =>
      bits.reduce((b1, b2) => DesiredPathBitfieldFlags(b1.value | b2.value));
}

/// Desired Control flags.
class DesiredControlBitfieldFlags extends BitfieldType {
  /// If enabled then field X has a meaningful value.
  static const x = const DesiredControlBitfieldFlags(0x01);
  /// If enabled then field Y has a meaningful value.
  static const y = const DesiredControlBitfieldFlags(0x02);
  /// If enabled then field Z has a meaningful value.
  static const z = const DesiredControlBitfieldFlags(0x04);
  /// If enabled then field K has a meaningful value.
  static const k = const DesiredControlBitfieldFlags(0x08);
  /// If enabled then field M has a meaningful value.
  static const m = const DesiredControlBitfieldFlags(0x10);
  /// If enabled then field N has a meaningful value.
  static const n = const DesiredControlBitfieldFlags(0x20);

  static get values => [x, y, z, k, 
      m, n];

  const DesiredControlBitfieldFlags(int value) : super(value);

  static DesiredControlBitfieldFlags fromBits(
          List<DesiredControlBitfieldFlags> bits) =>
      bits.reduce((b1, b2) => DesiredControlBitfieldFlags(b1.value | b2.value));
}

/// Desired Velocity flags.
class DesiredVelocityBitfieldFlags extends BitfieldType {
  /// If enabled then field u has a meaningful value.
  static const surge = const DesiredVelocityBitfieldFlags(0x01);
  /// If enabled then field u has a meaningful value.
  static const sway = const DesiredVelocityBitfieldFlags(0x02);
  /// If enabled then field w has a meaningful value.
  static const heave = const DesiredVelocityBitfieldFlags(0x04);
  /// If enabled then field p has a meaningful value.
  static const roll = const DesiredVelocityBitfieldFlags(0x08);
  /// If enabled then field q has a meaningful value.
  static const pitch = const DesiredVelocityBitfieldFlags(0x10);
  /// If enabled then field r has a meaningful value.
  static const yaw = const DesiredVelocityBitfieldFlags(0x20);

  static get values => [surge, sway, heave, roll, 
      pitch, yaw];

  const DesiredVelocityBitfieldFlags(int value) : super(value);

  static DesiredVelocityBitfieldFlags fromBits(
          List<DesiredVelocityBitfieldFlags> bits) =>
      bits.reduce((b1, b2) => DesiredVelocityBitfieldFlags(b1.value | b2.value));
}

/// Path control state flags.
class PathControlStateBitfieldFlags extends BitfieldType {
  /// Set if near the target endpoint.
  static const near = const PathControlStateBitfieldFlags(0x01);
  /// Set if loitering.
  static const loitering = const PathControlStateBitfieldFlags(0x02);
  /// Altitude/depth being controlled independently.
  static const no_z = const PathControlStateBitfieldFlags(0x04);
  /// 3D-tracking is active.
  static const v3dtrack = const PathControlStateBitfieldFlags(0x08);
  /// Indicates that loitering, if active, is being done
  /// counter-clockwise. Otherwise, clockwise loitering should be
  /// assumed.
  static const cclockw = const PathControlStateBitfieldFlags(0x10);

  static get values => [near, loitering, no_z, v3dtrack, 
      cclockw];

  const PathControlStateBitfieldFlags(int value) : super(value);

  static PathControlStateBitfieldFlags fromBits(
          List<PathControlStateBitfieldFlags> bits) =>
      bits.reduce((b1, b2) => PathControlStateBitfieldFlags(b1.value | b2.value));
}

/// Brake operation.
class BrakeEnumOp extends EnumType {
  /// Stop braking procedures.
  static const stop = const BrakeEnumOp(0);
  /// Start braking procedures.
  static const start = const BrakeEnumOp(1);
  /// Revert Actuation.
  static const revert = const BrakeEnumOp(2);

  static get values => [stop, start, revert];

  const BrakeEnumOp(int value) : super(value);
}

/// Setpoint Flags
class DesiredLinearStateBitfieldFlags extends BitfieldType {
  /// If enabled then field x has a meaningful value.
  static const x = const DesiredLinearStateBitfieldFlags(0x0001);
  /// If enabled then field y has a meaningful value.
  static const y = const DesiredLinearStateBitfieldFlags(0x0002);
  /// If enabled then field z has a meaningful value.
  static const z = const DesiredLinearStateBitfieldFlags(0x0004);
  /// If enabled then field vx has a meaningful value.
  static const vx = const DesiredLinearStateBitfieldFlags(0x0008);
  /// If enabled then field vy has a meaningful value.
  static const vy = const DesiredLinearStateBitfieldFlags(0x0010);
  /// If enabled then field vz has a meaningful value.
  static const vz = const DesiredLinearStateBitfieldFlags(0x0020);
  /// If enabled then field ax has a meaningful value.
  static const ax = const DesiredLinearStateBitfieldFlags(0x0040);
  /// If enabled then field ay has a meaningful value.
  static const ay = const DesiredLinearStateBitfieldFlags(0x0080);
  /// If enabled then field az has a meaningful value.
  static const az = const DesiredLinearStateBitfieldFlags(0x0100);

  static get values => [x, y, z, vx, 
      vy, vz, ax, ay, az];

  const DesiredLinearStateBitfieldFlags(int value) : super(value);

  static DesiredLinearStateBitfieldFlags fromBits(
          List<DesiredLinearStateBitfieldFlags> bits) =>
      bits.reduce((b1, b2) => DesiredLinearStateBitfieldFlags(b1.value | b2.value));
}

/// Flags of the maneuver.
class PopUpBitfieldFlags extends BitfieldType {
  /// If this flag is set, lat/lon/start_z fields should be
  /// ignored and current vehicle position should be considered as
  /// starting point for ascent/descent.
  static const curr_pos = const PopUpBitfieldFlags(0x01);
  /// If this flag is set, duration field is used to hold position at surface
  /// for that amount of time.
  static const wait_at_surface = const PopUpBitfieldFlags(0x02);
  /// This flag will only make sense if WAIT_AT_SURFACE is also set.
  /// While holding position at surface the vehicle will assume a
  /// station keeping behavior.
  static const station_keep = const PopUpBitfieldFlags(0x04);

  static get values => [curr_pos, wait_at_surface, station_keep];

  const PopUpBitfieldFlags(int value) : super(value);

  static PopUpBitfieldFlags fromBits(
          List<PopUpBitfieldFlags> bits) =>
      bits.reduce((b1, b2) => PopUpBitfieldFlags(b1.value | b2.value));
}

/// Loiter maneuver type.
class LoiterEnumType extends EnumType {
  static const defaultVal = const LoiterEnumType(0);
  static const circular = const LoiterEnumType(1);
  static const racetrack = const LoiterEnumType(2);
  static const eight = const LoiterEnumType(3);
  static const hover = const LoiterEnumType(4);

  static get values => [defaultVal, circular, racetrack, eight, 
      hover];

  const LoiterEnumType(int value) : super(value);
}

/// Desired direction.
class LoiterEnumDirection extends EnumType {
  static const vdep = const LoiterEnumDirection(0);
  static const clockw = const LoiterEnumDirection(1);
  static const cclockw = const LoiterEnumDirection(2);
  static const iwindcurr = const LoiterEnumDirection(3);

  static get values => [vdep, clockw, cclockw, iwindcurr];

  const LoiterEnumDirection(int value) : super(value);
}

/// Maneuver flags.
class RowsBitfieldFlags extends BitfieldType {
  static const square_curve = const RowsBitfieldFlags(0x0001);
  static const curve_right = const RowsBitfieldFlags(0x0002);

  static get values => [square_curve, curve_right];

  const RowsBitfieldFlags(int value) : super(value);

  static RowsBitfieldFlags fromBits(
          List<RowsBitfieldFlags> bits) =>
      bits.reduce((b1, b2) => RowsBitfieldFlags(b1.value | b2.value));
}

/// Flags of the maneuver.
class ElevatorBitfieldFlags extends BitfieldType {
  /// If this flag is set, lat/lon/start_z fields should be
  /// ignored and current vehicle position should be considered as
  /// starting point for ascent/descent.
  static const curr_pos = const ElevatorBitfieldFlags(0x01);

  static get values => [curr_pos];

  const ElevatorBitfieldFlags(int value) : super(value);

  static ElevatorBitfieldFlags fromBits(
          List<ElevatorBitfieldFlags> bits) =>
      bits.reduce((b1, b2) => ElevatorBitfieldFlags(b1.value | b2.value));
}

/// Code indicating maneuver state.
class ManeuverControlStateEnumState extends EnumType {
  /// Maneuver in progress.
  static const executing = const ManeuverControlStateEnumState(0);
  /// Maneuver completed.
  static const done = const ManeuverControlStateEnumState(1);
  /// Maneuver error.
  static const error = const ManeuverControlStateEnumState(2);
  /// Maneuver stopped.
  static const stopped = const ManeuverControlStateEnumState(3);

  static get values => [executing, done, error, stopped];

  const ManeuverControlStateEnumState(int value) : super(value);
}

/// Direction of the maneuver.
class CompassCalibrationEnumDirection extends EnumType {
  static const vdep = const CompassCalibrationEnumDirection(0);
  static const clockw = const CompassCalibrationEnumDirection(1);
  static const cclockw = const CompassCalibrationEnumDirection(2);
  static const iwindcurr = const CompassCalibrationEnumDirection(3);

  static get values => [vdep, clockw, cclockw, iwindcurr];

  const CompassCalibrationEnumDirection(int value) : super(value);
}

/// Formation reference frame
class FormationParametersEnumReferenceFrame extends EnumType {
  static const earth_fixed = const FormationParametersEnumReferenceFrame(0);
  static const path_fixed = const FormationParametersEnumReferenceFrame(1);
  static const path_curved = const FormationParametersEnumReferenceFrame(2);

  static get values => [earth_fixed, path_fixed, path_curved];

  const FormationParametersEnumReferenceFrame(int value) : super(value);
}

class ReferenceBitfieldFlags extends BitfieldType {
  static const location = const ReferenceBitfieldFlags(0x01);
  static const speed = const ReferenceBitfieldFlags(0x02);
  static const z = const ReferenceBitfieldFlags(0x04);
  static const radius = const ReferenceBitfieldFlags(0x08);
  static const start_point = const ReferenceBitfieldFlags(0x10);
  static const direct = const ReferenceBitfieldFlags(0x20);
  static const mandone = const ReferenceBitfieldFlags(0x80);

  static get values => [location, speed, z, radius, 
      start_point, direct, mandone];

  const ReferenceBitfieldFlags(int value) : super(value);

  static ReferenceBitfieldFlags fromBits(
          List<ReferenceBitfieldFlags> bits) =>
      bits.reduce((b1, b2) => ReferenceBitfieldFlags(b1.value | b2.value));
}

class FollowRefStateEnumState extends EnumType {
  static const wait = const FollowRefStateEnumState(1);
  static const goto = const FollowRefStateEnumState(2);
  static const loiter = const FollowRefStateEnumState(3);
  static const hover = const FollowRefStateEnumState(4);
  static const elevator = const FollowRefStateEnumState(5);
  static const timeout = const FollowRefStateEnumState(6);

  static get values => [wait, goto, loiter, hover, 
      elevator, timeout];

  const FollowRefStateEnumState(int value) : super(value);
}

class FollowRefStateBitfieldProximity extends BitfieldType {
  static const far = const FollowRefStateBitfieldProximity(0x01);
  static const xy_near = const FollowRefStateBitfieldProximity(0x02);
  static const z_near = const FollowRefStateBitfieldProximity(0x04);
  static const xy_unreachable = const FollowRefStateBitfieldProximity(0x08);
  static const z_unreachable = const FollowRefStateBitfieldProximity(0x10);

  static get values => [far, xy_near, z_near, xy_unreachable, 
      z_unreachable];

  const FollowRefStateBitfieldProximity(int value) : super(value);

  static FollowRefStateBitfieldProximity fromBits(
          List<FollowRefStateBitfieldProximity> bits) =>
      bits.reduce((b1, b2) => FollowRefStateBitfieldProximity(b1.value | b2.value));
}

/// Direction to which the vehicle should attempt to unstuck.
class DislodgeEnumDirection extends EnumType {
  static const auto = const DislodgeEnumDirection(0);
  static const forward = const DislodgeEnumDirection(1);
  static const backward = const DislodgeEnumDirection(2);

  static get values => [auto, forward, backward];

  const DislodgeEnumDirection(int value) : super(value);
}

/// Indicates if the message is a request, or a reply to a previous request.
class FormationEnumType extends EnumType {
  static const request = const FormationEnumType(0);
  static const report = const FormationEnumType(1);

  static get values => [request, report];

  const FormationEnumType(int value) : super(value);
}

/// Operation to perform.
class FormationEnumOp extends EnumType {
  /// Start the formation maneuver.
  static const start = const FormationEnumOp(0);
  /// Stop the formation maneuver.
  static const stop = const FormationEnumOp(1);
  /// Stop the formation maneuver.
  static const ready = const FormationEnumOp(2);
  /// Stop the formation maneuver.
  static const executing = const FormationEnumOp(3);
  /// Stop the formation maneuver.
  static const failure = const FormationEnumOp(4);

  static get values => [start, stop, ready, executing, 
      failure];

  const FormationEnumOp(int value) : super(value);
}

/// Formation reference frame
class FormationEnumReferenceFrame extends EnumType {
  static const earth_fixed = const FormationEnumReferenceFrame(0);
  static const path_fixed = const FormationEnumReferenceFrame(1);
  static const path_curved = const FormationEnumReferenceFrame(2);

  static get values => [earth_fixed, path_fixed, path_curved];

  const FormationEnumReferenceFrame(int value) : super(value);
}

/// What to do if the vehicle fails to arrive before or at the requested time.
class ScheduledGotoEnumDelayed extends EnumType {
  /// If the vehicle fails to arrive at the specified time, it will keep going to the destination
  /// at top speed and only then consider this maneuver completed.
  static const resume = const ScheduledGotoEnumDelayed(0);
  /// If the vehicle fails to arrive at the specified time, it will stop the current maneuver and
  /// advance to the next one (independently of how far it is from destination).
  static const skip = const ScheduledGotoEnumDelayed(1);
  /// If the vehicle fails to arrive at the specified time, it will stop the execution of this
  /// maneuver with a FAILED result (the entire plan will be stopped).
  static const fail = const ScheduledGotoEnumDelayed(2);

  static get values => [resume, skip, fail];

  const ScheduledGotoEnumDelayed(int value) : super(value);
}

/// Maneuver optional flags.
class RowsCoverageBitfieldFlags extends BitfieldType {
  /// Whether to move between transects using an additional perpendicular transect.
  static const square_curve = const RowsCoverageBitfieldFlags(0x01);
  /// Shall the vehicle turn towards the right after the first transect (alternatively it will turn left).
  static const curve_right = const RowsCoverageBitfieldFlags(0x02);

  static get values => [square_curve, curve_right];

  const RowsCoverageBitfieldFlags(int value) : super(value);

  static RowsCoverageBitfieldFlags fromBits(
          List<RowsCoverageBitfieldFlags> bits) =>
      bits.reduce((b1, b2) => RowsCoverageBitfieldFlags(b1.value | b2.value));
}

class AutonomousSectionBitfieldLimits extends BitfieldType {
  static const depth = const AutonomousSectionBitfieldLimits(0x01);
  static const altitude = const AutonomousSectionBitfieldLimits(0x02);
  static const timeout = const AutonomousSectionBitfieldLimits(0x04);
  static const area2d = const AutonomousSectionBitfieldLimits(0x08);

  static get values => [depth, altitude, timeout, area2d];

  const AutonomousSectionBitfieldLimits(int value) : super(value);

  static AutonomousSectionBitfieldLimits fromBits(
          List<AutonomousSectionBitfieldLimits> bits) =>
      bits.reduce((b1, b2) => AutonomousSectionBitfieldLimits(b1.value | b2.value));
}

/// Flags of the maneuver.
class StationKeepingExtendedBitfieldFlags extends BitfieldType {
  /// If this flag is set, the vehicle will hold position underwater, loitering at z reference.
  /// It will popup periodically to report position. When it pops up, it will stay at surface in "normal" station keeping behaviour for a certain time (popup_duration).
  static const keep_safe = const StationKeepingExtendedBitfieldFlags(0x01);

  static get values => [keep_safe];

  const StationKeepingExtendedBitfieldFlags(int value) : super(value);

  static StationKeepingExtendedBitfieldFlags fromBits(
          List<StationKeepingExtendedBitfieldFlags> bits) =>
      bits.reduce((b1, b2) => StationKeepingExtendedBitfieldFlags(b1.value | b2.value));
}

/// Desired direction.
class MagnetometerEnumDirection extends EnumType {
  static const clockw_first = const MagnetometerEnumDirection(0);
  static const cclockw_first = const MagnetometerEnumDirection(1);

  static get values => [clockw_first, cclockw_first];

  const MagnetometerEnumDirection(int value) : super(value);
}

/// The overall operation mode.
class VehicleStateEnumOpMode extends EnumType {
  /// Ready to service requests.
  static const service = const VehicleStateEnumOpMode(0);
  /// Ongoing vehicle calibration.
  static const calibration = const VehicleStateEnumOpMode(1);
  /// Errors are set.
  static const error = const VehicleStateEnumOpMode(2);
  /// A maneuver is executing.
  static const maneuver = const VehicleStateEnumOpMode(3);
  /// External control is active.
  static const externalVal = const VehicleStateEnumOpMode(4);
  /// Booting system.
  static const boot = const VehicleStateEnumOpMode(5);

  static get values => [service, calibration, error, maneuver, 
      externalVal, boot];

  const VehicleStateEnumOpMode(int value) : super(value);
}

class VehicleStateBitfieldFlags extends BitfieldType {
  static const maneuver_done = const VehicleStateBitfieldFlags(0x01);

  static get values => [maneuver_done];

  const VehicleStateBitfieldFlags(int value) : super(value);

  static VehicleStateBitfieldFlags fromBits(
          List<VehicleStateBitfieldFlags> bits) =>
      bits.reduce((b1, b2) => VehicleStateBitfieldFlags(b1.value | b2.value));
}

class VehicleCommandEnumType extends EnumType {
  static const request = const VehicleCommandEnumType(0);
  static const success = const VehicleCommandEnumType(1);
  static const in_progress = const VehicleCommandEnumType(2);
  static const failure = const VehicleCommandEnumType(3);

  static get values => [request, success, in_progress, failure];

  const VehicleCommandEnumType(int value) : super(value);
}

/// The type of command/action to be performed
class VehicleCommandEnumCommand extends EnumType {
  /// Execute the maneuver specified in 'maneuver' field.
  static const exec_maneuver = const VehicleCommandEnumCommand(0);
  /// Stop 'maneuver' being executed.
  static const stop_maneuver = const VehicleCommandEnumCommand(1);
  /// Start calibrating vehicle.
  static const start_calibration = const VehicleCommandEnumCommand(2);
  /// Stop calibrating vehicle.
  static const stop_calibration = const VehicleCommandEnumCommand(3);

  static get values => [exec_maneuver, stop_maneuver, start_calibration, stop_calibration];

  const VehicleCommandEnumCommand(int value) : super(value);
}

/// Command.
class MonitorEntityStateEnumCommand extends EnumType {
  static const reset = const MonitorEntityStateEnumCommand(0);
  static const enable = const MonitorEntityStateEnumCommand(1);
  static const disable = const MonitorEntityStateEnumCommand(2);
  static const enable_exclusive = const MonitorEntityStateEnumCommand(3);
  static const status = const MonitorEntityStateEnumCommand(4);

  static get values => [reset, enable, disable, enable_exclusive, 
      status];

  const MonitorEntityStateEnumCommand(int value) : super(value);
}

class ControlLoopsEnumEnable extends EnumType {
  static const disable = const ControlLoopsEnumEnable(0);
  static const enable = const ControlLoopsEnumEnable(1);

  static get values => [disable, enable];

  const ControlLoopsEnumEnable(int value) : super(value);
}

/// Current medium.
class VehicleMediumEnumMedium extends EnumType {
  /// Vehicle is on the ground
  static const ground = const VehicleMediumEnumMedium(0);
  /// Vehicle is airborne
  static const air = const VehicleMediumEnumMedium(1);
  /// Vehicle is at water surface
  static const water = const VehicleMediumEnumMedium(2);
  /// Vehicle is underwater
  static const underwater = const VehicleMediumEnumMedium(3);
  /// Vehicle medium is unknown
  static const unknown = const VehicleMediumEnumMedium(4);

  static get values => [ground, air, water, underwater, 
      unknown];

  const VehicleMediumEnumMedium(int value) : super(value);
}

/// Collision flags.
class CollisionBitfieldType extends BitfieldType {
  /// Collision detected in the x-axis
  static const x = const CollisionBitfieldType(0x01);
  /// Collision detected in the y-axis
  static const y = const CollisionBitfieldType(0x02);
  /// Collision detected in the z-axis
  static const z = const CollisionBitfieldType(0x04);
  /// Sudden impact detected
  static const impact = const CollisionBitfieldType(0x08);

  static get values => [x, y, z, impact];

  const CollisionBitfieldType(int value) : super(value);

  static CollisionBitfieldType fromBits(
          List<CollisionBitfieldType> bits) =>
      bits.reduce((b1, b2) => CollisionBitfieldType(b1.value | b2.value));
}

/// Position mismatch monitoring flag.
class FormStateEnumPosSimMon extends EnumType {
  static const ok = const FormStateEnumPosSimMon(0);
  static const wrn = const FormStateEnumPosSimMon(1);
  static const lim = const FormStateEnumPosSimMon(2);

  static get values => [ok, wrn, lim];

  const FormStateEnumPosSimMon(int value) : super(value);
}

/// Communications monitoring flag.
class FormStateEnumCommMon extends EnumType {
  static const ok = const FormStateEnumCommMon(0);
  static const timeout = const FormStateEnumCommMon(1);

  static get values => [ok, timeout];

  const FormStateEnumCommMon(int value) : super(value);
}

/// Convergence monitoring flag.
class FormStateEnumConvergMon extends EnumType {
  static const ok = const FormStateEnumConvergMon(0);
  static const timeout = const FormStateEnumConvergMon(1);

  static get values => [ok, timeout];

  const FormStateEnumConvergMon(int value) : super(value);
}

/// Current mode autonomy level.
class AutopilotModeEnumAutonomy extends EnumType {
  /// Autopilot has no control
  static const manual = const AutopilotModeEnumAutonomy(0);
  /// Autopilot has some control
  static const assisted = const AutopilotModeEnumAutonomy(1);
  /// Autopilot has full control
  static const auto = const AutopilotModeEnumAutonomy(2);

  static get values => [manual, assisted, auto];

  const AutopilotModeEnumAutonomy(int value) : super(value);
}

/// Indicates if the message is a request, or a reply to a previous request.
class FormationStateEnumType extends EnumType {
  static const request = const FormationStateEnumType(0);
  static const report = const FormationStateEnumType(1);

  static get values => [request, report];

  const FormationStateEnumType(int value) : super(value);
}

/// Operation to perform.
class FormationStateEnumOp extends EnumType {
  /// Start the formation maneuver.
  static const start = const FormationStateEnumOp(0);
  /// Stop the formation maneuver.
  static const stop = const FormationStateEnumOp(1);

  static get values => [start, stop];

  const FormationStateEnumOp(int value) : super(value);
}

/// Position mismatch monitoring flag.
class FormationStateEnumPosSimMon extends EnumType {
  static const ok = const FormationStateEnumPosSimMon(0);
  static const wrn = const FormationStateEnumPosSimMon(1);
  static const lim = const FormationStateEnumPosSimMon(2);

  static get values => [ok, wrn, lim];

  const FormationStateEnumPosSimMon(int value) : super(value);
}

/// Communications monitoring flag.
class FormationStateEnumCommMon extends EnumType {
  static const ok = const FormationStateEnumCommMon(0);
  static const timeout = const FormationStateEnumCommMon(1);

  static get values => [ok, timeout];

  const FormationStateEnumCommMon(int value) : super(value);
}

/// Convergence monitoring flag.
class FormationStateEnumConvergMon extends EnumType {
  static const ok = const FormationStateEnumConvergMon(0);
  static const timeout = const FormationStateEnumConvergMon(1);

  static get values => [ok, timeout];

  const FormationStateEnumConvergMon(int value) : super(value);
}

/// Operation to perform.
class ReportControlEnumOp extends EnumType {
  /// Request a system to periodically send reports through 'interface'.
  /// The destination system will reply with a STARTED command. Periodicity
  /// will be defined by the field 'period'. If applicable, the destination
  /// address is defined in field 'dst'.
  static const request_start = const ReportControlEnumOp(0);
  /// The destination system will reply a message with this operation
  /// everytime a report is successfully started. The periodicity of
  /// reports is indicated in the field 'period' while the communication
  /// interface to be used is described in field 'interface'. If applicable,
  /// the destination address is defined in field 'dst'.
  static const started = const ReportControlEnumOp(1);
  /// Request a system to stop dispatching reports through a given
  /// communication interface described in 'interface'. The destination
  /// system will reply with a STOPPED command. If applicable, the
  /// destination address is defined in field 'dst'.
  static const request_stop = const ReportControlEnumOp(2);
  /// The destination system will reply a message with this operation
  /// everytime a scheduled report is successfully stopped in a defined
  /// communication interface. If applicable, the destination address
  /// is defined in field 'dst'.
  static const stopped = const ReportControlEnumOp(3);
  /// Request a system to issue a single report in a defined communication
  /// interface. The destination system will reply with a REPORT_ISSUED command.
  /// If applicable, the destination address is defined in field 'dst'.
  static const request_report = const ReportControlEnumOp(4);
  /// The destination system will reply a single report request with
  /// this operation.If applicable, the destination address is defined
  /// in field 'dst'.
  static const report_sent = const ReportControlEnumOp(5);

  static get values => [request_start, started, request_stop, stopped, 
      request_report, report_sent];

  const ReportControlEnumOp(int value) : super(value);
}

/// Communication interface to be used for reports.
class ReportControlBitfieldCommInterface extends BitfieldType {
  /// Use acoustic communications
  static const acoustic = const ReportControlBitfieldCommInterface(0x01);
  /// Use satellite communications
  static const satellite = const ReportControlBitfieldCommInterface(0x02);
  /// Use Global System for Mobile Communications
  static const gsm = const ReportControlBitfieldCommInterface(0x04);
  /// Use mobile networks
  static const mobile = const ReportControlBitfieldCommInterface(0x08);
  /// Use Radio telemetry
  static const radio = const ReportControlBitfieldCommInterface(0x10);

  static get values => [acoustic, satellite, gsm, mobile, 
      radio];

  const ReportControlBitfieldCommInterface(int value) : super(value);

  static ReportControlBitfieldCommInterface fromBits(
          List<ReportControlBitfieldCommInterface> bits) =>
      bits.reduce((b1, b2) => ReportControlBitfieldCommInterface(b1.value | b2.value));
}

/// Communication mean to be used to transfer these data.
class TransmissionRequestEnumCommMean extends EnumType {
  static const wifi = const TransmissionRequestEnumCommMean(0);
  static const acoustic = const TransmissionRequestEnumCommMean(1);
  static const satellite = const TransmissionRequestEnumCommMean(2);
  static const gsm = const TransmissionRequestEnumCommMean(3);

  static get values => [wifi, acoustic, satellite, gsm];

  const TransmissionRequestEnumCommMean(int value) : super(value);
}

/// Type of data to be transmitted.
class TransmissionRequestEnumDataMode extends EnumType {
  static const inlinemsg = const TransmissionRequestEnumDataMode(0);
  static const text = const TransmissionRequestEnumDataMode(1);
  static const raw = const TransmissionRequestEnumDataMode(2);

  static get values => [inlinemsg, text, raw];

  const TransmissionRequestEnumDataMode(int value) : super(value);
}

class TransmissionStatusEnumStatus extends EnumType {
  static const in_progress = const TransmissionStatusEnumStatus(0);
  static const sent = const TransmissionStatusEnumStatus(1);
  static const delivered = const TransmissionStatusEnumStatus(51);
  static const maybe_delivered = const TransmissionStatusEnumStatus(52);
  static const input_failure = const TransmissionStatusEnumStatus(101);
  static const temporary_failure = const TransmissionStatusEnumStatus(102);
  static const permanent_failure = const TransmissionStatusEnumStatus(103);

  static get values => [in_progress, sent, delivered, maybe_delivered, 
      input_failure, temporary_failure, permanent_failure];

  const TransmissionStatusEnumStatus(int value) : super(value);
}

class SmsStatusEnumStatus extends EnumType {
  static const queued = const SmsStatusEnumStatus(0);
  static const sent = const SmsStatusEnumStatus(1);
  static const input_failure = const SmsStatusEnumStatus(101);
  static const error = const SmsStatusEnumStatus(102);

  static get values => [queued, sent, input_failure, error];

  const SmsStatusEnumStatus(int value) : super(value);
}

class VtolStateEnumState extends EnumType {
  /// Vehicle is not configured as VTOL.
  static const undefined = const VtolStateEnumState(0);
  /// Vehicle is in transition from multicopter to fixed-wing.
  static const transition_to_fw = const VtolStateEnumState(1);
  /// Vehicle is in transition from fixed-wing to multicopter.
  static const transition_to_mc = const VtolStateEnumState(2);
  /// Vehicle is in multicopter state.
  static const mc = const VtolStateEnumState(3);
  /// Vehicle is in fixed-wing state.
  static const fw = const VtolStateEnumState(4);

  static get values => [undefined, transition_to_fw, transition_to_mc, mc, 
      fw];

  const VtolStateEnumState(int value) : super(value);
}

class ArmingStateEnumState extends EnumType {
  static const armed = const ArmingStateEnumState(0);
  static const disarmed = const ArmingStateEnumState(1);

  static get values => [armed, disarmed];

  const ArmingStateEnumState(int value) : super(value);
}

class EmergencyControlEnumCommand extends EnumType {
  static const enable = const EmergencyControlEnumCommand(0);
  static const disable = const EmergencyControlEnumCommand(1);
  static const start = const EmergencyControlEnumCommand(2);
  static const stop = const EmergencyControlEnumCommand(3);
  static const query = const EmergencyControlEnumCommand(4);
  static const set_plan = const EmergencyControlEnumCommand(5);

  static get values => [enable, disable, start, stop, 
      query, set_plan];

  const EmergencyControlEnumCommand(int value) : super(value);
}

class EmergencyControlStateEnumState extends EnumType {
  static const not_configured = const EmergencyControlStateEnumState(0);
  static const disabled = const EmergencyControlStateEnumState(1);
  static const enabled = const EmergencyControlStateEnumState(2);
  static const armed = const EmergencyControlStateEnumState(3);
  static const active = const EmergencyControlStateEnumState(4);
  static const stopping = const EmergencyControlStateEnumState(5);

  static get values => [not_configured, disabled, enabled, armed, 
      active, stopping];

  const EmergencyControlStateEnumState(int value) : super(value);
}

/// Indicates if the message is a request, or a reply to a
/// previous request.
class PlanDBEnumType extends EnumType {
  static const request = const PlanDBEnumType(0);
  static const success = const PlanDBEnumType(1);
  static const failure = const PlanDBEnumType(2);
  static const in_progress = const PlanDBEnumType(3);

  static get values => [request, success, failure, in_progress];

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
  static const setVal = const PlanDBEnumOp(0);
  /// Delete a plan from the DB. The 'plan_id' field identifies
  /// the plan to delete.
  static const del = const PlanDBEnumOp(1);
  /// Get a plan stored in the DB.The 'plan_id' field identifies
  /// the plan. Successful replies will yield a
  /// 'PlanSpecification' message in the 'arg' field.
  static const getVal = const PlanDBEnumOp(2);
  /// Get DB state for a stored plan. The 'plan_id' field
  /// identifies the plan. Successful replies will yield a
  /// 'PlanDBInformation' message in the 'arg' field.
  static const get_info = const PlanDBEnumOp(3);
  /// Clear the entire DB.
  static const clear = const PlanDBEnumOp(4);
  /// Get state of the entire DB. Successful replies will yield a
  /// 'PlanDBState' message in the 'arg' field but without
  /// individual plan information (in the 'plans_info' field of
  /// 'PlanDBState').
  static const get_state = const PlanDBEnumOp(5);
  /// Get detailed state of the entire DB. Successful replies
  /// will yield a 'PlanDBState' message in the 'arg' field with
  /// individual plan information (in the 'plans_info' field of
  /// 'PlanDBState').
  static const get_dstate = const PlanDBEnumOp(6);
  /// PlanDB replies of this type are sent automatically during
  /// bootstrap.
  static const boot = const PlanDBEnumOp(7);

  static get values => [setVal, del, getVal, get_info, 
      clear, get_state, get_dstate, boot];

  const PlanDBEnumOp(int value) : super(value);
}

/// Indicates if the message is a request or a reply to a
/// previous request. The *op*, *request_id* and *plan_id* fields
/// of a request will be echoed in one or more responses to that
/// request.
class PlanControlEnumType extends EnumType {
  static const request = const PlanControlEnumType(0);
  static const success = const PlanControlEnumType(1);
  static const failure = const PlanControlEnumType(2);
  static const in_progress = const PlanControlEnumType(3);

  static get values => [request, success, failure, in_progress];

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
  static const start = const PlanControlEnumOp(0);
  /// Stop current plan being executed if any.
  static const stop = const PlanControlEnumOp(1);
  /// Load Plan. If a :ref:`PlanSpecification` is given with the
  /// request in the *data* field, then that plan is used and
  /// stored in the Plan DB. Otherwise, the plan is loaded from
  /// the Plan DB.
  static const load = const PlanControlEnumOp(2);
  /// Get loaded plan. For a successful reply, the *data* field
  /// will contain the :ref:`PlanSpecification` message that
  /// corresponds to the currently loaded plan.
  static const getVal = const PlanControlEnumOp(3);

  static get values => [start, stop, load, getVal];

  const PlanControlEnumOp(int value) : super(value);
}

class PlanControlBitfieldFlags extends BitfieldType {
  /// Perform vehicle calibration.
  static const calibrate = const PlanControlBitfieldFlags(0x0001);
  /// Execute current plan while ignoring some errors that might be active.
  static const ignore_errors = const PlanControlBitfieldFlags(0x0002);

  static get values => [calibrate, ignore_errors];

  const PlanControlBitfieldFlags(int value) : super(value);

  static PlanControlBitfieldFlags fromBits(
          List<PlanControlBitfieldFlags> bits) =>
      bits.reduce((b1, b2) => PlanControlBitfieldFlags(b1.value | b2.value));
}

/// Describes overall state.
class PlanControlStateEnumState extends EnumType {
  /// Plan execution is blocked e.g., due to a vehicle error,
  /// or if no plan is loaded.
  static const blocked = const PlanControlStateEnumState(0);
  /// Ready to start plan execution.
  static const ready = const PlanControlStateEnumState(1);
  /// Initializing plan for execution.
  static const initializing = const PlanControlStateEnumState(2);
  /// Executing plan.
  static const executing = const PlanControlStateEnumState(3);

  static get values => [blocked, ready, initializing, executing];

  const PlanControlStateEnumState(int value) : super(value);
}

/// Outcome of the last executed plan.
class PlanControlStateEnumLastOutcome extends EnumType {
  /// Unknown or not filled.
  static const none = const PlanControlStateEnumLastOutcome(0);
  /// Last plan execution was successful.
  static const success = const PlanControlStateEnumLastOutcome(1);
  /// Last plan execution was a failure.
  static const failure = const PlanControlStateEnumLastOutcome(2);

  static get values => [none, success, failure];

  const PlanControlStateEnumLastOutcome(int value) : super(value);
}

class PlanVariableEnumType extends EnumType {
  static const boolean = const PlanVariableEnumType(0);
  static const number = const PlanVariableEnumType(1);
  static const text = const PlanVariableEnumType(2);
  static const message = const PlanVariableEnumType(3);

  static get values => [boolean, number, text, message];

  const PlanVariableEnumType(int value) : super(value);
}

class PlanVariableEnumAccess extends EnumType {
  static const input = const PlanVariableEnumAccess(0);
  static const output = const PlanVariableEnumAccess(1);
  static const local = const PlanVariableEnumAccess(2);

  static get values => [input, output, local];

  const PlanVariableEnumAccess(int value) : super(value);
}

class PlanGenerationEnumCmd extends EnumType {
  /// Generate the plan and store it in the PlanDB.
  static const generate = const PlanGenerationEnumCmd(0);
  /// Generate (storing it in the PlanDB) and execute it immediately.
  static const execute = const PlanGenerationEnumCmd(1);

  static get values => [generate, execute];

  const PlanGenerationEnumCmd(int value) : super(value);
}

class PlanGenerationEnumOp extends EnumType {
  /// Request the execution of this command.
  static const request = const PlanGenerationEnumOp(0);
  /// Some error has occurred while executing the command. The
  /// error can be found in the 'params' tuplelist (under the
  /// key 'error').
  static const error = const PlanGenerationEnumOp(1);
  /// The requested command was executed successfully.
  static const success = const PlanGenerationEnumOp(2);

  static get values => [request, error, success];

  const PlanGenerationEnumOp(int value) : super(value);
}

/// Action on the formation leader state variables
class LeaderStateEnumOp extends EnumType {
  static const request = const LeaderStateEnumOp(0);
  static const setVal = const LeaderStateEnumOp(1);
  static const report = const LeaderStateEnumOp(2);

  static get values => [request, setVal, report];

  const LeaderStateEnumOp(int value) : super(value);
}

/// Type of plan statistics, if they are launched before, during or after the plan execution.
class PlanStatisticsEnumType extends EnumType {
  static const preplan = const PlanStatisticsEnumType(0);
  static const inplan = const PlanStatisticsEnumType(1);
  static const postplan = const PlanStatisticsEnumType(2);

  static get values => [preplan, inplan, postplan];

  const PlanStatisticsEnumType(int value) : super(value);
}

class PlanStatisticsBitfieldProperties extends BitfieldType {
  /// Basic plan, meaning it is Linear, Finite and Noncyclic.
  static const basic = const PlanStatisticsBitfieldProperties(0x00);
  /// Plan is nonlinear.
  static const nonlinear = const PlanStatisticsBitfieldProperties(0x01);
  /// Plan is infinite in duration.
  static const infinite = const PlanStatisticsBitfieldProperties(0x02);
  /// Plan is cyclical.
  static const cyclical = const PlanStatisticsBitfieldProperties(0x04);
  /// All properties checked.
  static const all = const PlanStatisticsBitfieldProperties(0x07);

  static get values => [basic, nonlinear, infinite, cyclical, 
      all];

  const PlanStatisticsBitfieldProperties(int value) : super(value);

  static PlanStatisticsBitfieldProperties fromBits(
          List<PlanStatisticsBitfieldProperties> bits) =>
      bits.reduce((b1, b2) => PlanStatisticsBitfieldProperties(b1.value | b2.value));
}

/// How the position was received/calculated
class ReportedStateEnumSType extends EnumType {
  static const wi_fi = const ReportedStateEnumSType(0);
  static const tracker = const ReportedStateEnumSType(1);
  static const sms = const ReportedStateEnumSType(2);
  static const acoustic_modem = const ReportedStateEnumSType(3);
  static const unknown = const ReportedStateEnumSType(254);

  static get values => [wi_fi, tracker, sms, acoustic_modem, 
      unknown];

  const ReportedStateEnumSType(int value) : super(value);
}

/// The type of feature
class MapFeatureEnumFeatureType extends EnumType {
  /// These features should appear as a point with a label in the map
  static const poi = const MapFeatureEnumFeatureType(0);
  /// These features should be represented as a filled polygon (no label)
  static const filledpoly = const MapFeatureEnumFeatureType(1);
  /// These features should be represented as a countoured closed polygon (no fill and no label)
  static const contouredpoly = const MapFeatureEnumFeatureType(2);
  /// These features should be represented as an open polygon (no label)
  static const line = const MapFeatureEnumFeatureType(3);
  /// A transponder location in the map
  static const transponder = const MapFeatureEnumFeatureType(4);
  /// Intended vehicle's starting location
  static const startloc = const MapFeatureEnumFeatureType(5);
  /// The offsets reference for this map
  static const homeref = const MapFeatureEnumFeatureType(6);

  static get values => [poi, filledpoly, contouredpoly, line, 
      transponder, startloc, homeref];

  const MapFeatureEnumFeatureType(int value) : super(value);
}

class CcuEventEnumType extends EnumType {
  static const log_entry = const CcuEventEnumType(1);
  static const plan_added = const CcuEventEnumType(2);
  static const plan_removed = const CcuEventEnumType(3);
  static const plan_changed = const CcuEventEnumType(4);
  static const map_feature_added = const CcuEventEnumType(5);
  static const map_feature_removed = const CcuEventEnumType(6);
  static const map_feature_changed = const CcuEventEnumType(7);
  static const teleoperation_started = const CcuEventEnumType(8);
  static const teleoperation_ended = const CcuEventEnumType(9);

  static get values => [log_entry, plan_added, plan_removed, plan_changed, 
      map_feature_added, map_feature_removed, map_feature_changed, teleoperation_started, teleoperation_ended];

  const CcuEventEnumType(int value) : super(value);
}

class TrexCommandEnumCommand extends EnumType {
  static const disable = const TrexCommandEnumCommand(0);
  static const enable = const TrexCommandEnumCommand(1);
  static const post_goal = const TrexCommandEnumCommand(2);
  static const recall_goal = const TrexCommandEnumCommand(3);
  static const request_plan = const TrexCommandEnumCommand(4);
  static const report_plan = const TrexCommandEnumCommand(5);

  static get values => [disable, enable, post_goal, recall_goal, 
      request_plan, report_plan];

  const TrexCommandEnumCommand(int value) : super(value);
}

class TrexOperationEnumOp extends EnumType {
  static const post_token = const TrexOperationEnumOp(1);
  static const post_goal = const TrexOperationEnumOp(2);
  static const recall_goal = const TrexOperationEnumOp(3);
  static const request_plan = const TrexOperationEnumOp(4);
  static const report_plan = const TrexOperationEnumOp(5);

  static get values => [post_token, post_goal, recall_goal, request_plan, 
      report_plan];

  const TrexOperationEnumOp(int value) : super(value);
}

class TrexAttributeEnumAttrType extends EnumType {
  static const boolVal = const TrexAttributeEnumAttrType(1);
  static const intVal = const TrexAttributeEnumAttrType(2);
  static const float = const TrexAttributeEnumAttrType(3);
  static const string = const TrexAttributeEnumAttrType(4);
  static const enumVal = const TrexAttributeEnumAttrType(5);

  static get values => [boolVal, intVal, float, string, 
      enumVal];

  const TrexAttributeEnumAttrType(int value) : super(value);
}

class SessionStatusEnumStatus extends EnumType {
  static const established = const SessionStatusEnumStatus(1);
  static const closed = const SessionStatusEnumStatus(2);

  static get values => [established, closed];

  const SessionStatusEnumStatus(int value) : super(value);
}

/// Event type.
class IoEventEnumType extends EnumType {
  static const input = const IoEventEnumType(1);
  static const input_error = const IoEventEnumType(2);

  static get values => [input, input_error];

  const IoEventEnumType(int value) : super(value);
}

class UamTxFrameBitfieldFlags extends BitfieldType {
  static const ack = const UamTxFrameBitfieldFlags(0x01);
  static const delayed = const UamTxFrameBitfieldFlags(0x02);

  static get values => [ack, delayed];

  const UamTxFrameBitfieldFlags(int value) : super(value);

  static UamTxFrameBitfieldFlags fromBits(
          List<UamTxFrameBitfieldFlags> bits) =>
      bits.reduce((b1, b2) => UamTxFrameBitfieldFlags(b1.value | b2.value));
}

class UamRxFrameBitfieldFlags extends BitfieldType {
  static const promiscuous = const UamRxFrameBitfieldFlags(0x01);
  static const delayed = const UamRxFrameBitfieldFlags(0x02);

  static get values => [promiscuous, delayed];

  const UamRxFrameBitfieldFlags(int value) : super(value);

  static UamRxFrameBitfieldFlags fromBits(
          List<UamRxFrameBitfieldFlags> bits) =>
      bits.reduce((b1, b2) => UamRxFrameBitfieldFlags(b1.value | b2.value));
}

class UamTxStatusEnumValue extends EnumType {
  static const done = const UamTxStatusEnumValue(0);
  static const failed = const UamTxStatusEnumValue(1);
  static const canceled = const UamTxStatusEnumValue(2);
  static const busy = const UamTxStatusEnumValue(3);
  static const inv_addr = const UamTxStatusEnumValue(4);
  static const ip = const UamTxStatusEnumValue(5);
  static const unsupported = const UamTxStatusEnumValue(6);
  static const inv_size = const UamTxStatusEnumValue(7);

  static get values => [done, failed, canceled, busy, 
      inv_addr, ip, unsupported, inv_size];

  const UamTxStatusEnumValue(int value) : super(value);
}

/// Action on the vehicle formation control parameters.
class FormCtrlParamEnumAction extends EnumType {
  static const req = const FormCtrlParamEnumAction(0);
  static const setVal = const FormCtrlParamEnumAction(1);
  static const rep = const FormCtrlParamEnumAction(2);

  static get values => [req, setVal, rep];

  const FormCtrlParamEnumAction(int value) : super(value);
}

/// Action on the vehicle formation control parameters.
class FormationControlParamsEnumAction extends EnumType {
  static const req = const FormationControlParamsEnumAction(0);
  static const setVal = const FormationControlParamsEnumAction(1);
  static const rep = const FormationControlParamsEnumAction(2);

  static get values => [req, setVal, rep];

  const FormationControlParamsEnumAction(int value) : super(value);
}

/// Indicates if the message is a request, or a reply to a previous request.
class FormationEvaluationEnumType extends EnumType {
  static const request = const FormationEvaluationEnumType(0);
  static const report = const FormationEvaluationEnumType(1);

  static get values => [request, report];

  const FormationEvaluationEnumType(int value) : super(value);
}

/// Operation to perform.
class FormationEvaluationEnumOp extends EnumType {
  /// Start the formation maneuver.
  static const start = const FormationEvaluationEnumOp(0);
  /// Stop the formation maneuver.
  static const stop = const FormationEvaluationEnumOp(1);
  /// Stop the formation maneuver.
  static const ready = const FormationEvaluationEnumOp(2);
  /// Stop the formation maneuver.
  static const executing = const FormationEvaluationEnumOp(3);
  /// Stop the formation maneuver.
  static const failure = const FormationEvaluationEnumOp(4);

  static get values => [start, stop, ready, executing, 
      failure];

  const FormationEvaluationEnumOp(int value) : super(value);
}

class SoiCommandEnumType extends EnumType {
  static const request = const SoiCommandEnumType(1);
  static const success = const SoiCommandEnumType(2);
  static const error = const SoiCommandEnumType(3);

  static get values => [request, success, error];

  const SoiCommandEnumType(int value) : super(value);
}

class SoiCommandEnumCommand extends EnumType {
  static const exec = const SoiCommandEnumCommand(1);
  static const stop = const SoiCommandEnumCommand(2);
  static const set_params = const SoiCommandEnumCommand(3);
  static const get_params = const SoiCommandEnumCommand(4);
  static const get_plan = const SoiCommandEnumCommand(5);
  static const resume = const SoiCommandEnumCommand(6);

  static get values => [exec, stop, set_params, get_params, 
      get_plan, resume];

  const SoiCommandEnumCommand(int value) : super(value);
}

class SoiStateEnumState extends EnumType {
  static const exec = const SoiStateEnumState(1);
  static const idle = const SoiStateEnumState(2);
  static const inactive = const SoiStateEnumState(3);

  static get values => [exec, idle, inactive];

  const SoiStateEnumState(int value) : super(value);
}

/// Used to define the type of the operation this message holds.
class UsblConfigEnumOp extends EnumType {
  /// Set the beacons configuration aboard the vehicle.
  static const set_cfg = const UsblConfigEnumOp(0);
  /// Request the vehicle to send its current beacons configuration.
  static const get_cfg = const UsblConfigEnumOp(1);
  static const cur_cfg = const UsblConfigEnumOp(2);

  static get values => [set_cfg, get_cfg, cur_cfg];

  const UsblConfigEnumOp(int value) : super(value);
}

/// Type of measurement.
class DissolvedOrganicMatterEnumType extends EnumType {
  static const colored = const DissolvedOrganicMatterEnumType(0);
  static const fluorescent = const DissolvedOrganicMatterEnumType(1);

  static get values => [colored, fluorescent];

  const DissolvedOrganicMatterEnumType(int value) : super(value);
}

/// Severity of status.
class ApmStatusEnumSeverity extends EnumType {
  static const emergency = const ApmStatusEnumSeverity(0);
  static const alert = const ApmStatusEnumSeverity(1);
  static const critical = const ApmStatusEnumSeverity(2);
  static const error = const ApmStatusEnumSeverity(3);
  static const warning = const ApmStatusEnumSeverity(4);
  static const notice = const ApmStatusEnumSeverity(5);
  static const info = const ApmStatusEnumSeverity(6);
  static const debug = const ApmStatusEnumSeverity(7);

  static get values => [emergency, alert, critical, error, 
      warning, notice, info, debug];

  const ApmStatusEnumSeverity(int value) : super(value);
}

/// Gain value of readings.
class SadcReadingsEnumGain extends EnumType {
  static const x1 = const SadcReadingsEnumGain(0);
  static const x10 = const SadcReadingsEnumGain(1);
  static const x100 = const SadcReadingsEnumGain(2);

  static get values => [x1, x10, x100];

  const SadcReadingsEnumGain(int value) : super(value);
}

