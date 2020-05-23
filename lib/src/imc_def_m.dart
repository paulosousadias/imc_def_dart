// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// IMC Code Generator
// **************************************************************************

part of 'imc_def_gen.dart';

const String VERSION = '5.4.11';
const int SYNC_NUMBER = 0xFE54;
const int SYNC_NUMBER_REVERSED = 0x54FE;
const String MD5_SUM = 'cdc4c6dfe2baed8395138f0b1b8e1910';

/// The base IMCMessage
///
abstract class ImcMessage extends Message {
  @override
  int get sync => SYNC_NUMBER;
}

/// Maneuver message group class
///
abstract class Maneuver extends ImcMessage {
}

/// Control Command message group class
///
abstract class ControlCommand extends ImcMessage {
}

/// RemoteData message group class
///
abstract class RemoteData extends ImcMessage {
}

/// Entity State class
///
/// State reported by an entity in the vehicle. The source entity is
/// identified in the message header.
abstract class EntityState extends ImcMessage implements Built<EntityState, EntityStateBuilder> {
  static const static_id = 1;
  EntityState._();
  factory EntityState([void Function(EntityStateBuilder b) updates]) = _$EntityState;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'EntityState';

  /// State of entity.
  @ImcField('State', 'state', ImcType.typeUInt8)
  EntityStateEnumState get state;

  /// Complementary entity state flags.
  @ImcField('Flags', 'flags', ImcType.typeUInt8)
  EntityStateBitfieldFlags get flags;

  /// Complementary human-readable description of entity state.
  @ImcField('Complementary description', 'description', ImcType.typePlaintext)
  String get description;
}

/// Query Entity State class
///
/// Request entities to report their state. Entities should respond
/// by issuing an appropriate EntityState message.
abstract class QueryEntityState extends ImcMessage implements Built<QueryEntityState, QueryEntityStateBuilder> {
  static const static_id = 2;
  QueryEntityState._();
  factory QueryEntityState([void Function(QueryEntityStateBuilder b) updates]) = _$QueryEntityState;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'QueryEntityState';
}

/// Entity Information class
///
/// This message describes an entity.
abstract class EntityInfo extends ImcMessage implements Built<EntityInfo, EntityInfoBuilder> {
  static const static_id = 3;
  EntityInfo._();
  factory EntityInfo([void Function(EntityInfoBuilder b) updates]) = _$EntityInfo;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'EntityInfo';

  /// Entity identifier.
  @ImcField('Entity Identifier', 'id', ImcType.typeUInt8)
  int get id;

  /// Entity label or empty if the entity id is not valid.
  @ImcField('Label', 'label', ImcType.typePlaintext)
  String get label;

  /// Name of the plugin/component/subsystem associated with this
  /// entity.
  @ImcField('Component name', 'component', ImcType.typePlaintext)
  String get component;

  /// Amount of time needed to properly activate the entity.
  @ImcField('Activation Time', 'act_time', ImcType.typeUInt16, units: 's')
  int get actTime;

  /// Amount of time needed to properly deactivate the entity.
  @ImcField('Deactivation Time', 'deact_time', ImcType.typeUInt16, units: 's')
  int get deactTime;
}

/// Query Entity Information class
///
/// Request information about an entity identifier. The receiving
/// system shall reply with an EntityInfo message with the details
/// of that entity.
abstract class QueryEntityInfo extends ImcMessage implements Built<QueryEntityInfo, QueryEntityInfoBuilder> {
  static const static_id = 4;
  QueryEntityInfo._();
  factory QueryEntityInfo([void Function(QueryEntityInfoBuilder b) updates]) = _$QueryEntityInfo;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'QueryEntityInfo';

  /// Entity identifier.
  @ImcField('Entity Identifier', 'id', ImcType.typeUInt8)
  int get id;
}

/// Entity List class
///
/// This message describes the names and identification numbers of
/// all entities in the system.
abstract class EntityList extends ImcMessage implements Built<EntityList, EntityListBuilder> {
  static const static_id = 5;
  EntityList._();
  factory EntityList([void Function(EntityListBuilder b) updates]) = _$EntityList;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'EntityList';

  /// Operation to perform.
  @ImcField('operation', 'op', ImcType.typeUInt8)
  EntityListEnumOp get op;

  /// Example: "Battery=11;CTD=3"
  @ImcField('list', 'list', ImcType.typePlaintext, units: 'TupleList')
  String get list;
}

/// CPU Usage class
///
/// Report of software CPU usage.
abstract class CpuUsage extends ImcMessage implements Built<CpuUsage, CpuUsageBuilder> {
  static const static_id = 7;
  CpuUsage._();
  factory CpuUsage([void Function(CpuUsageBuilder b) updates]) = _$CpuUsage;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'CpuUsage';

  /// The CPU usage, in percentage, of the sending software.
  @ImcField('Usage percentage', 'value', ImcType.typeUInt8, units: '%')
  int get value;
}

/// Transport Bindings class
///
/// Message generated when tasks bind to messages.
abstract class TransportBindings extends ImcMessage implements Built<TransportBindings, TransportBindingsBuilder> {
  static const static_id = 8;
  TransportBindings._();
  factory TransportBindings([void Function(TransportBindingsBuilder b) updates]) = _$TransportBindings;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'TransportBindings';

  /// The name of the consumer (e.g. task name).
  @ImcField('Consumer name', 'consumer', ImcType.typePlaintext)
  String get consumer;

  /// The id of the message to be listened to.
  @ImcField('Message Identifier', 'message_id', ImcType.typeUInt16)
  int get messageId;
}

/// Restart System class
///
/// Request the destination system to restart itself.
abstract class RestartSystem extends ImcMessage implements Built<RestartSystem, RestartSystemBuilder> {
  static const static_id = 9;
  RestartSystem._();
  factory RestartSystem([void Function(RestartSystemBuilder b) updates]) = _$RestartSystem;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'RestartSystem';

  @ImcField('Restart Type', 'type', ImcType.typeUInt8)
  RestartSystemEnumType get type;
}

/// Device Calibration Control class
///
/// This message controls the calibration procedure of a given
/// device. The destination device is selected using the destination
/// entity identification number.
abstract class DevCalibrationControl extends ImcMessage implements Built<DevCalibrationControl, DevCalibrationControlBuilder> {
  static const static_id = 12;
  DevCalibrationControl._();
  factory DevCalibrationControl([void Function(DevCalibrationControlBuilder b) updates]) = _$DevCalibrationControl;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'DevCalibrationControl';

  /// Operation to perform.
  @ImcField('Operation', 'op', ImcType.typeUInt8)
  DevCalibrationControlEnumOp get op;
}

/// Device Calibration State class
///
/// State of the calibration procedure.
abstract class DevCalibrationState extends ImcMessage implements Built<DevCalibrationState, DevCalibrationStateBuilder> {
  static const static_id = 13;
  DevCalibrationState._();
  factory DevCalibrationState([void Function(DevCalibrationStateBuilder b) updates]) = _$DevCalibrationState;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'DevCalibrationState';

  /// Total number of steps of the calibration procedure.
  @ImcField('Total Steps', 'total_steps', ImcType.typeUInt8)
  int get totalSteps;

  /// Number of the current step being performed.
  @ImcField('Current Step Number', 'step_number', ImcType.typeUInt8)
  int get stepNumber;

  /// Human-readable description of the current step.
  @ImcField('Description', 'step', ImcType.typePlaintext)
  String get step;

  /// Additional flags.
  @ImcField('Flags', 'flags', ImcType.typeUInt8)
  DevCalibrationStateBitfieldFlags get flags;
}

/// Entity Activation State class
///
/// State of entity activation/deactivation.
abstract class EntityActivationState extends ImcMessage implements Built<EntityActivationState, EntityActivationStateBuilder> {
  static const static_id = 14;
  EntityActivationState._();
  factory EntityActivationState([void Function(EntityActivationStateBuilder b) updates]) = _$EntityActivationState;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'EntityActivationState';

  /// Current state.
  @ImcField('State', 'state', ImcType.typeUInt8)
  EntityActivationStateEnumState get state;

  /// Human-readable error message.
  @ImcField('Error', 'error', ImcType.typePlaintext)
  String get error;
}

/// Query Entity Activation State class
///
/// Query the activation/deactivation state of an entity. The
/// recipient shall reply with an EntityActivationState message.
abstract class QueryEntityActivationState extends ImcMessage implements Built<QueryEntityActivationState, QueryEntityActivationStateBuilder> {
  static const static_id = 15;
  QueryEntityActivationState._();
  factory QueryEntityActivationState([void Function(QueryEntityActivationStateBuilder b) updates]) = _$QueryEntityActivationState;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'QueryEntityActivationState';
}

/// Vehicle Operational Limits class
///
/// Vehicle opertional limits.
/// For aircraft this should represent the flight envelope and the dynamic contraints.
abstract class VehicleOperationalLimits extends ImcMessage implements Built<VehicleOperationalLimits, VehicleOperationalLimitsBuilder> {
  static const static_id = 16;
  VehicleOperationalLimits._();
  factory VehicleOperationalLimits([void Function(VehicleOperationalLimitsBuilder b) updates]) = _$VehicleOperationalLimits;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'VehicleOperationalLimits';

  /// Action on the vehicle operation limits
  @ImcField('Action on the vehicle operational limits', 'op', ImcType.typeUInt8)
  VehicleOperationalLimitsEnumOp get op;

  /// Minimum operation speed.
  /// For aircraft this is equal or larger then the stall speed.
  @ImcField('Minimum speed', 'speed_min', ImcType.typeFp32, units: 'm/s')
  double get speedMin;

  /// Maximum operation speed.
  /// For aircraft this is limited by the engine power or structural contrains.
  @ImcField('Maximum speed', 'speed_max', ImcType.typeFp32, units: 'm/s')
  double get speedMax;

  /// Maximum longitudinal acceleration.
  @ImcField('Longitudinal maximum acceleration', 'long_accel', ImcType.typeFp32, units: 'm/s/s')
  double get longAccel;

  /// Maximum altitude above mean-sea-level.
  @ImcField('Maximum MSL altitude', 'alt_max_msl', ImcType.typeFp32, units: 'm')
  double get altMaxMsl;

  /// Maximum dive rate (negative vertical speed) as a fraction of the longitudinal speed.
  @ImcField('Maximum Dive Rate Speed Fraction', 'dive_fraction_max', ImcType.typeFp32)
  double get diveFractionMax;

  /// Maximum climb rate (positive vertical speed) as a fraction of the longitudinal speed.
  @ImcField('Maximum Climb Rate Speed Fraction', 'climb_fraction_max', ImcType.typeFp32)
  double get climbFractionMax;

  /// Limit to the bank angle (roll; angle over the xx body-axis).
  @ImcField('Bank limit', 'bank_max', ImcType.typeFp32, units: 'rad')
  double get bankMax;

  /// Limit to the bank angular rate (roll; angle over the xx body-axis).
  @ImcField('Bank rate limit', 'p_max', ImcType.typeFp32, units: 'rad/s')
  double get pMax;

  /// Minimum pitch angle (angle over the xx body-axis).
  @ImcField('Minimum pitch angle', 'pitch_min', ImcType.typeFp32, units: 'rad')
  double get pitchMin;

  /// Maximum pitch angle (angle over the xx body-axis).
  @ImcField('Maximum pitch angle', 'pitch_max', ImcType.typeFp32, units: 'rad')
  double get pitchMax;

  /// Maximum pitch angular rate (angle over the xx body-axis).
  @ImcField('Maximum pitch rate', 'q_max', ImcType.typeFp32, units: 'rad/s')
  double get qMax;

  /// Minimum load factor, i.e., maximum positive acceleration in the zz body-axis
  /// as a factor of the gravity acceleration at mean-sea-level.
  @ImcField('Minimum load factor', 'g_min', ImcType.typeFp32, units: 'g')
  double get gMin;

  /// Maximum load factor, i.e., maximum negative acceleration in the zz body-axis
  /// as a factor of the gravity acceleration at mean-sea-level.
  @ImcField('Maximum load factor', 'g_max', ImcType.typeFp32, units: 'g')
  double get gMax;

  /// Maximum lateral load factor, i.e., maximum acceleration in the yy body-axis
  /// as a factor of the gravity acceleration at mean-sea-level.
  @ImcField('Maximum lateral load factor', 'g_lat_max', ImcType.typeFp32, units: 'g')
  double get gLatMax;

  /// Minimum motor RPMs.
  @ImcField('Minimum RPMs', 'rpm_min', ImcType.typeFp32, units: 'rpm')
  double get rpmMin;

  /// Maximum motor RPMs.
  @ImcField('Maximum RPMs', 'rpm_max', ImcType.typeFp32, units: 'rpm')
  double get rpmMax;

  /// Maximum motor RPMs' rate of change.
  @ImcField('Maximum RPM rate', 'rpm_rate_max', ImcType.typeFp32, units: 'rpm/s')
  double get rpmRateMax;
}

/// Message List class
///
abstract class MsgList extends ImcMessage implements Built<MsgList, MsgListBuilder> {
  static const static_id = 20;
  MsgList._();
  factory MsgList([void Function(MsgListBuilder b) updates]) = _$MsgList;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'MsgList';

  @ImcField('Messages', 'msgs', ImcType.typeMessageList)
  List<ImcMessage> get msgs;
}

/// Simulated State class
///
/// This message presents the simulated state of the vehicle. The simulated
/// state attempts to provide a realistic state interpretation of operating
/// various kinds of vehicles.
abstract class SimulatedState extends ImcMessage implements Built<SimulatedState, SimulatedStateBuilder> {
  static const static_id = 50;
  SimulatedState._();
  factory SimulatedState([void Function(SimulatedStateBuilder b) updates]) = _$SimulatedState;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'SimulatedState';

  /// WGS-84 Latitude.
  @ImcField('Latitude (WGS-84)', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  /// WGS-84 Longitude.
  @ImcField('Longitude (WGS-84)', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;

  /// Height above the WGS-84 ellipsoid.
  @ImcField('Height (WGS-84)', 'height', ImcType.typeFp32, units: 'm')
  double get height;

  /// The North offset of the North/East/Down field.
  @ImcField('Offset north (m)', 'x', ImcType.typeFp32, units: 'm')
  double get x;

  /// The East offset of the North/East/Down field.
  @ImcField('Offset east (m)', 'y', ImcType.typeFp32, units: 'm')
  double get y;

  /// The Down offset of the North/East/Down field.
  @ImcField('Offset down (m)', 'z', ImcType.typeFp32, units: 'm')
  double get z;

  /// The phi Euler angle from the vehicle's attitude.
  @ImcField('Rotation over x axis', 'phi', ImcType.typeFp32, units: 'rad')
  double get phi;

  /// The theta Euler angle from the vehicle's attitude.
  @ImcField('Rotation over y axis', 'theta', ImcType.typeFp32, units: 'rad')
  double get theta;

  /// The psi Euler angle from the vehicle's attitude.
  @ImcField('Rotation over z axis', 'psi', ImcType.typeFp32, units: 'rad')
  double get psi;

  /// Body-fixed frame xx axis linear velocity component.
  @ImcField('Body-Fixed xx Linear Velocity', 'u', ImcType.typeFp32, units: 'm/s')
  double get u;

  /// Body-fixed frame yy axis linear velocity component.
  @ImcField('Body-Fixed yy Linear Velocity', 'v', ImcType.typeFp32, units: 'm/s')
  double get v;

  /// Body-fixed frame zz axis linear velocity component.
  @ImcField('Body-Fixed zz Linear Velocity', 'w', ImcType.typeFp32, units: 'm/s')
  double get w;

  /// The angular velocity over body-fixed xx axis (roll rate).
  @ImcField('Angular Velocity in x', 'p', ImcType.typeFp32, units: 'rad/s')
  double get p;

  /// The angular velocity over body-fixed yy axis (pitch rate).
  @ImcField('Angular Velocity in y', 'q', ImcType.typeFp32, units: 'rad/s')
  double get q;

  /// The angular velocity over body-fixed zz axis (yaw rate).
  @ImcField('Angular Velocity in z', 'r', ImcType.typeFp32, units: 'rad/s')
  double get r;

  /// Stream Velocity xx axis velocity component.
  @ImcField('Stream Velocity X (North)', 'svx', ImcType.typeFp32, units: 'm/s')
  double get svx;

  /// Stream Velocity yy axis velocity component.
  @ImcField('Stream Velocity Y (East)', 'svy', ImcType.typeFp32, units: 'm/s')
  double get svy;

  /// Stream Velocity zz axis velocity component.
  @ImcField('Stream Velocity Z (Down)', 'svz', ImcType.typeFp32, units: 'm/s')
  double get svz;
}

/// Leak Simulation class
///
/// Simulate leak behavior.
abstract class LeakSimulation extends ImcMessage implements Built<LeakSimulation, LeakSimulationBuilder> {
  static const static_id = 51;
  LeakSimulation._();
  factory LeakSimulation([void Function(LeakSimulationBuilder b) updates]) = _$LeakSimulation;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'LeakSimulation';

  /// Indicates whether leaks have been detected or not.
  @ImcField('Operation', 'op', ImcType.typeUInt8)
  LeakSimulationEnumOp get op;

  /// Comma separated list of leak entities (empty for all leaks
  /// configured).
  @ImcField('Leak Entities', 'entities', ImcType.typePlaintext)
  String get entities;
}

/// Underwater Acoustics Simulation class
///
/// Underwater acoustics simulation request.
abstract class UASimulation extends ImcMessage implements Built<UASimulation, UASimulationBuilder> {
  static const static_id = 52;
  UASimulation._();
  factory UASimulation([void Function(UASimulationBuilder b) updates]) = _$UASimulation;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'UASimulation';

  /// Type of request.
  @ImcField('Type', 'type', ImcType.typeUInt8)
  UASimulationEnumType get type;

  /// Transmission speed.
  @ImcField('Transmission Speed', 'speed', ImcType.typeUInt16, units: 'bps')
  int get speed;

  /// Data for transmission requests.
  @ImcField('Data', 'data', ImcType.typeRawdata)
  List<int> get data;
}

/// Dynamics Simulation Parameters class
///
/// Vehicle dynamics parameters for 3DOF, 4DOF or 5DOF simulations.
abstract class DynamicsSimParam extends ImcMessage implements Built<DynamicsSimParam, DynamicsSimParamBuilder> {
  static const static_id = 53;
  DynamicsSimParam._();
  factory DynamicsSimParam([void Function(DynamicsSimParamBuilder b) updates]) = _$DynamicsSimParam;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'DynamicsSimParam';

  /// Action on the vehicle simulation parameters for the formation control
  @ImcField('Action on the Vehicle Simulation Parameters', 'op', ImcType.typeUInt8)
  DynamicsSimParamEnumOp get op;

  /// Proportional gain from the TAS (True Airspeed) error to the longitudinal acceleration.
  @ImcField('TAS to Longitudinal Acceleration Gain', 'tas2acc_pgain', ImcType.typeFp32)
  double get tas2accPgain;

  /// Proportional gain from the bank angle error to the bank angular rate.
  @ImcField('Bank to Bank Rate Gain', 'bank2p_pgain', ImcType.typeFp32)
  double get bank2pPgain;
}

/// Storage Usage class
///
/// Report of storage usage.
abstract class StorageUsage extends ImcMessage implements Built<StorageUsage, StorageUsageBuilder> {
  static const static_id = 100;
  StorageUsage._();
  factory StorageUsage([void Function(StorageUsageBuilder b) updates]) = _$StorageUsage;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'StorageUsage';

  /// The available storage of the reporting device.
  @ImcField('Available', 'available', ImcType.typeUint32, units: 'MiB')
  int get available;

  /// The percentage of storage used by the reporting device.
  @ImcField('Usage', 'value', ImcType.typeUInt8, units: '%')
  int get value;
}

/// Cache Control class
///
/// Control caching of messages to persistent storage.
abstract class CacheControl extends ImcMessage implements Built<CacheControl, CacheControlBuilder> {
  static const static_id = 101;
  CacheControl._();
  factory CacheControl([void Function(CacheControlBuilder b) updates]) = _$CacheControl;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'CacheControl';

  /// Operation to perform.
  @ImcField('Control Operation', 'op', ImcType.typeUInt8)
  CacheControlEnumOp get op;

  /// Destination for the cache snapshot file.
  @ImcField('Snapshot destination', 'snapshot', ImcType.typePlaintext)
  String get snapshot;

  /// Message to store.
  @ImcField('Message', 'message', ImcType.typeMessage)
  ImcMessage get message;
}

/// Logging Control class
///
/// Control logging of messages to persistent storage.
abstract class LoggingControl extends ImcMessage implements Built<LoggingControl, LoggingControlBuilder> {
  static const static_id = 102;
  LoggingControl._();
  factory LoggingControl([void Function(LoggingControlBuilder b) updates]) = _$LoggingControl;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'LoggingControl';

  /// Operation to perform.
  @ImcField('Control Operation', 'op', ImcType.typeUInt8)
  LoggingControlEnumOp get op;

  /// The meaning of this field depends on the operation and is
  /// explained in the operation's description.
  @ImcField('Log Label / Path', 'name', ImcType.typePlaintext)
  String get name;
}

/// Log Book Entry class
///
/// Human readable message reporting an event of interest.
abstract class LogBookEntry extends ImcMessage implements Built<LogBookEntry, LogBookEntryBuilder> {
  static const static_id = 103;
  LogBookEntry._();
  factory LogBookEntry([void Function(LogBookEntryBuilder b) updates]) = _$LogBookEntry;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'LogBookEntry';

  /// Type of message.
  @ImcField('Type', 'type', ImcType.typeUInt8)
  LogBookEntryEnumType get type;

  /// Timestamp (Epoch time).
  @ImcField('Timestamp', 'htime', ImcType.typeFp64, units: 's')
  double get htime;

  /// Message context.
  @ImcField('Context', 'context', ImcType.typePlaintext)
  String get context;

  /// Message text.
  @ImcField('Text', 'text', ImcType.typePlaintext)
  String get text;
}

/// Log Book Control class
///
/// Control history log.
abstract class LogBookControl extends ImcMessage implements Built<LogBookControl, LogBookControlBuilder> {
  static const static_id = 104;
  LogBookControl._();
  factory LogBookControl([void Function(LogBookControlBuilder b) updates]) = _$LogBookControl;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'LogBookControl';

  /// Command to perform.
  @ImcField('Command', 'command', ImcType.typeUInt8)
  LogBookControlEnumCommand get command;

  /// Timestamp for command (Epoch time).
  @ImcField('Timestamp', 'htime', ImcType.typeFp64, units: 's')
  double get htime;

  /// Argument, currently used only for 'REPLY'.
  @ImcField('Messages', 'msg', ImcType.typeMessageList)
  List<LogBookEntry> get msg;
}

/// Replay Control class
///
/// Control replay of LSF logged data.
abstract class ReplayControl extends ImcMessage implements Built<ReplayControl, ReplayControlBuilder> {
  static const static_id = 105;
  ReplayControl._();
  factory ReplayControl([void Function(ReplayControlBuilder b) updates]) = _$ReplayControl;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'ReplayControl';

  /// Operation to perform.
  @ImcField('Operation', 'op', ImcType.typeUInt8)
  ReplayControlEnumOp get op;

  /// Pathname of file to replay.
  @ImcField('File To Replay', 'file', ImcType.typePlaintext)
  String get file;
}

/// Clock Control class
///
/// Clock control.
abstract class ClockControl extends ImcMessage implements Built<ClockControl, ClockControlBuilder> {
  static const static_id = 106;
  ClockControl._();
  factory ClockControl([void Function(ClockControlBuilder b) updates]) = _$ClockControl;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'ClockControl';

  /// Operation to perform.
  @ImcField('Operation', 'op', ImcType.typeUInt8)
  ClockControlEnumOp get op;

  /// Clock value (Epoch time).
  @ImcField('Clock', 'clock', ImcType.typeFp64, units: 's')
  double get clock;

  /// Timezone.
  @ImcField('Timezone', 'tz', ImcType.typeInt8)
  int get tz;
}

/// Historic CTD class
///
/// This message is used to store historic (transmitted afterwards) CTD data .
abstract class HistoricCTD extends ImcMessage implements Built<HistoricCTD, HistoricCTDBuilder> {
  static const static_id = 107;
  HistoricCTD._();
  factory HistoricCTD([void Function(HistoricCTDBuilder b) updates]) = _$HistoricCTD;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'HistoricCTD';

  @ImcField('Conductivity', 'conductivity', ImcType.typeFp32, units: 'S/m')
  double get conductivity;

  @ImcField('Temperature', 'temperature', ImcType.typeFp32, units: '°C')
  double get temperature;

  @ImcField('Depth', 'depth', ImcType.typeFp32, units: 'm')
  double get depth;
}

/// Historic Telemetry class
///
/// This message is used to store historic (transmitted afterwards) telemetry information.
abstract class HistoricTelemetry extends ImcMessage implements Built<HistoricTelemetry, HistoricTelemetryBuilder> {
  static const static_id = 108;
  HistoricTelemetry._();
  factory HistoricTelemetry([void Function(HistoricTelemetryBuilder b) updates]) = _$HistoricTelemetry;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'HistoricTelemetry';

  @ImcField('Altitude', 'altitude', ImcType.typeFp32, units: 'm')
  double get altitude;

  /// Roll encoded as α.(65535/(2.π))
  @ImcField('Roll', 'roll', ImcType.typeUInt16)
  int get roll;

  /// Pitch encoded as α.(65535/(2.π))
  @ImcField('Pitch', 'pitch', ImcType.typeUInt16)
  int get pitch;

  /// Yaw encoded as α.(65535/(2.π))
  @ImcField('Yaw', 'yaw', ImcType.typeUInt16)
  int get yaw;

  @ImcField('Speed', 'speed', ImcType.typeInt16, units: 'dm')
  int get speed;
}

/// Historic Sonar Data class
///
/// This message is used to store historic (transmitted afterwards) sonar data.
abstract class HistoricSonarData extends ImcMessage implements Built<HistoricSonarData, HistoricSonarDataBuilder> {
  static const static_id = 109;
  HistoricSonarData._();
  factory HistoricSonarData([void Function(HistoricSonarDataBuilder b) updates]) = _$HistoricSonarData;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'HistoricSonarData';

  @ImcField('Altitude', 'altitude', ImcType.typeFp32, units: 'm')
  double get altitude;

  @ImcField('Width', 'width', ImcType.typeFp32, units: 'm')
  double get width;

  @ImcField('Length', 'length', ImcType.typeFp32, units: 'm')
  double get length;

  @ImcField('Bearing', 'bearing', ImcType.typeFp32)
  double get bearing;

  /// The number of pixels per line as the data in 'sonar_data' may
  /// correspond to more than one sequential sidescan lines.
  @ImcField('Pixels Per Line', 'pxl', ImcType.typeInt16)
  int get pxl;

  @ImcField('Encoding', 'encoding', ImcType.typeUInt8)
  HistoricSonarDataEnumEncoding get encoding;

  /// Sonar data encoded as in 'encoding'.
  @ImcField('SonarData', 'sonar_data', ImcType.typeRawdata)
  List<int> get sonarData;
}

/// Historic Event class
///
/// This message is used to store historic event log entries.
abstract class HistoricEvent extends ImcMessage implements Built<HistoricEvent, HistoricEventBuilder> {
  static const static_id = 110;
  HistoricEvent._();
  factory HistoricEvent([void Function(HistoricEventBuilder b) updates]) = _$HistoricEvent;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'HistoricEvent';

  @ImcField('Event', 'text', ImcType.typePlaintext)
  String get text;

  /// Type of event.
  @ImcField('Event Type', 'type', ImcType.typeUInt8)
  HistoricEventEnumType get type;
}

/// Vertical Profile class
///
/// This message is used to store historic profiles for water parameters: Temperature, Salinity, Chlorophyll...
abstract class VerticalProfile extends ImcMessage implements Built<VerticalProfile, VerticalProfileBuilder> {
  static const static_id = 111;
  VerticalProfile._();
  factory VerticalProfile([void Function(VerticalProfileBuilder b) updates]) = _$VerticalProfile;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'VerticalProfile';

  /// Water parameter used to calculate the vertical profile.
  @ImcField('Parameter', 'parameter', ImcType.typeUInt8)
  VerticalProfileEnumParameter get parameter;

  @ImcField('Number of Samples', 'numSamples', ImcType.typeUInt8)
  int get numSamples;

  @ImcField('Samples', 'samples', ImcType.typeMessageList)
  List<ProfileSample> get samples;

  /// Latitude where the profile was calculated.
  @ImcField('Latitude', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  /// Longitude where the profile was calculated.
  @ImcField('Longitude', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;
}

/// Profile Sample class
///
/// Samples to calculate a vertical profile.
abstract class ProfileSample extends ImcMessage implements Built<ProfileSample, ProfileSampleBuilder> {
  static const static_id = 112;
  ProfileSample._();
  factory ProfileSample([void Function(ProfileSampleBuilder b) updates]) = _$ProfileSample;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'ProfileSample';

  @ImcField('Depth', 'depth', ImcType.typeUInt16, units: 'dm')
  int get depth;

  @ImcField('Average', 'avg', ImcType.typeFp32)
  double get avg;
}

/// Heartbeat class
///
/// The Heartbeat message is used to inform other modules that the
/// sending entity's system is running normally and communications
/// are alive.
abstract class Heartbeat extends ImcMessage implements Built<Heartbeat, HeartbeatBuilder> {
  static const static_id = 150;
  Heartbeat._();
  factory Heartbeat([void Function(HeartbeatBuilder b) updates]) = _$Heartbeat;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Heartbeat';
}

/// Announce class
///
/// A system description that is to be broadcasted to other systems.
abstract class Announce extends ImcMessage implements Built<Announce, AnnounceBuilder> {
  static const static_id = 151;
  Announce._();
  factory Announce([void Function(AnnounceBuilder b) updates]) = _$Announce;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Announce';

  /// System name.
  @ImcField('System Name', 'sys_name', ImcType.typePlaintext)
  String get sysName;

  /// System type.
  @ImcField('System Type', 'sys_type', ImcType.typeUInt8)
  SystemTypeEnum get sysType;

  /// The owner IMC system ID.
  @ImcField('Control Owner', 'owner', ImcType.typeUInt16)
  int get owner;

  /// WGS-84 Latitude. If lat=0 and lon=0 means location value is unknown.
  @ImcField('Latitude WGS-84', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  /// WGS-84 Longitude. If lat=0 and lon=0 means location value is unknown.
  @ImcField('Longitude WGS-84', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;

  /// Height above WGS-84 ellipsoid.
  @ImcField('Height WGS-84', 'height', ImcType.typeFp32, units: 'm')
  double get height;

  /// Semicolon separated list of URLs. Examples of such URLs are:
  /// 
  /// - *imc+udp://192.168.106.34:6002/*
  /// - *dune://0.0.0.0/uid/1294925553839635/*
  /// - *http://192.168.106.34/dune/*.
  @ImcField('Services', 'services', ImcType.typePlaintext)
  String get services;
}

/// Announce Service class
///
/// Announcement about the existence of a service.
abstract class AnnounceService extends ImcMessage implements Built<AnnounceService, AnnounceServiceBuilder> {
  static const static_id = 152;
  AnnounceService._();
  factory AnnounceService([void Function(AnnounceServiceBuilder b) updates]) = _$AnnounceService;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'AnnounceService';

  /// Semicolon separated list of URLs (see :ref:`Announce`).
  @ImcField('Service', 'service', ImcType.typePlaintext)
  String get service;

  /// Informs about the availability of the service on internal and
  /// external networks.
  @ImcField('ServiceType', 'service_type', ImcType.typeUInt8)
  AnnounceServiceBitfieldServiceType get serviceType;
}

/// Receive Signal Strength Information class
///
/// Measure of the RSSI by a networking device.
/// Indicates the gain or loss in the signal strength due to the transmission and reception equipment and the transmission medium and distance.
abstract class RSSI extends ImcMessage implements Built<RSSI, RSSIBuilder> {
  static const static_id = 153;
  RSSI._();
  factory RSSI([void Function(RSSIBuilder b) updates]) = _$RSSI;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'RSSI';

  /// RSSI measurement.
  @ImcField('Value', 'value', ImcType.typeFp32, units: '%')
  double get value;
}

/// Voltage Standing Wave Ratio class
///
/// Measure of the VSWR by a networking device.
abstract class VSWR extends ImcMessage implements Built<VSWR, VSWRBuilder> {
  static const static_id = 154;
  VSWR._();
  factory VSWR([void Function(VSWRBuilder b) updates]) = _$VSWR;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'VSWR';

  /// VSWR measurement.
  @ImcField('Value', 'value', ImcType.typeFp32)
  double get value;
}

/// Link Level class
///
/// Measurement of link level quality. For instance, this may
/// correspond to the acknowledgment ratio of a link. But,
/// generally, the measure is link-dependent.
abstract class LinkLevel extends ImcMessage implements Built<LinkLevel, LinkLevelBuilder> {
  static const static_id = 155;
  LinkLevel._();
  factory LinkLevel([void Function(LinkLevelBuilder b) updates]) = _$LinkLevel;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'LinkLevel';

  /// Link level value.
  @ImcField('Value', 'value', ImcType.typeFp32)
  double get value;
}

/// SMS class
///
/// Send a SMS message.
abstract class Sms extends ImcMessage implements Built<Sms, SmsBuilder> {
  static const static_id = 156;
  Sms._();
  factory Sms([void Function(SmsBuilder b) updates]) = _$Sms;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Sms';

  /// Target mobile device number.
  @ImcField('Number', 'number', ImcType.typePlaintext)
  String get number;

  /// Timeout for sending message.
  @ImcField('Timeout', 'timeout', ImcType.typeUInt16)
  int get timeout;

  /// Message contents.
  @ImcField('Contents', 'contents', ImcType.typePlaintext)
  String get contents;
}

/// SMS Transmit class
///
/// Request to send SMS.
abstract class SmsTx extends ImcMessage implements Built<SmsTx, SmsTxBuilder> {
  static const static_id = 157;
  SmsTx._();
  factory SmsTx([void Function(SmsTxBuilder b) updates]) = _$SmsTx;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'SmsTx';

  /// Sequence number.
  @ImcField('Sequence Number', 'seq', ImcType.typeUint32)
  int get seq;

  /// Number or name of the recipient.
  @ImcField('Destination', 'destination', ImcType.typePlaintext)
  String get destination;

  /// Timeout for sending message.
  @ImcField('Timeout', 'timeout', ImcType.typeUInt16, units: 's')
  int get timeout;

  /// Message data.
  @ImcField('Data', 'data', ImcType.typeRawdata)
  List<int> get data;
}

/// SMS Receive class
///
/// Received SMS data.
abstract class SmsRx extends ImcMessage implements Built<SmsRx, SmsRxBuilder> {
  static const static_id = 158;
  SmsRx._();
  factory SmsRx([void Function(SmsRxBuilder b) updates]) = _$SmsRx;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'SmsRx';

  /// Number of name of the sender.
  @ImcField('Source', 'source', ImcType.typePlaintext)
  String get source;

  /// Message data.
  @ImcField('Data', 'data', ImcType.typeRawdata)
  List<int> get data;
}

/// SMS State class
///
abstract class SmsState extends ImcMessage implements Built<SmsState, SmsStateBuilder> {
  static const static_id = 159;
  SmsState._();
  factory SmsState([void Function(SmsStateBuilder b) updates]) = _$SmsState;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'SmsState';

  /// Sequence number.
  @ImcField('Sequence Number', 'seq', ImcType.typeUint32)
  int get seq;

  /// Current state of an SMS transaction.
  @ImcField('State', 'state', ImcType.typeUInt8)
  SmsStateEnumState get state;

  @ImcField('Error Message', 'error', ImcType.typePlaintext)
  String get error;
}

/// Text Message class
///
/// A text message has been received.
abstract class TextMessage extends ImcMessage implements Built<TextMessage, TextMessageBuilder> {
  static const static_id = 160;
  TextMessage._();
  factory TextMessage([void Function(TextMessageBuilder b) updates]) = _$TextMessage;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'TextMessage';

  /// Message origin (if known).
  @ImcField('Origin', 'origin', ImcType.typePlaintext)
  String get origin;

  /// Message contents.
  @ImcField('Text', 'text', ImcType.typePlaintext)
  String get text;
}

/// Received Iridium Message class
///
abstract class IridiumMsgRx extends ImcMessage implements Built<IridiumMsgRx, IridiumMsgRxBuilder> {
  static const static_id = 170;
  IridiumMsgRx._();
  factory IridiumMsgRx([void Function(IridiumMsgRxBuilder b) updates]) = _$IridiumMsgRx;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'IridiumMsgRx';

  /// The unique identifier of this message's origin device (e.g. lauv-xtreme-2, manta-0).
  @ImcField('Origin Identifier', 'origin', ImcType.typePlaintext)
  String get origin;

  /// Timestamp (Epoch time).
  @ImcField('Timestamp', 'htime', ImcType.typeFp64, units: 's')
  double get htime;

  @ImcField('Latitude Reference', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  @ImcField('Longitude Reference', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;

  /// Message data.
  @ImcField('Data', 'data', ImcType.typeRawdata)
  List<int> get data;
}

/// Transmit Iridium Message class
///
abstract class IridiumMsgTx extends ImcMessage implements Built<IridiumMsgTx, IridiumMsgTxBuilder> {
  static const static_id = 171;
  IridiumMsgTx._();
  factory IridiumMsgTx([void Function(IridiumMsgTxBuilder b) updates]) = _$IridiumMsgTx;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'IridiumMsgTx';

  /// The request identifier used to receive transmission updates.
  @ImcField('Request Identifier', 'req_id', ImcType.typeUInt16)
  int get reqId;

  /// Time, in seconds, after which there will be no more atempts to transmit the message.
  @ImcField('Time to live', 'ttl', ImcType.typeUInt16, units: 's')
  int get ttl;

  /// The unique identifier of this message's destination (e.g. lauv-xtreme-2, manta-0).
  @ImcField('Destination Identifier', 'destination', ImcType.typePlaintext)
  String get destination;

  /// Message data.
  @ImcField('Data', 'data', ImcType.typeRawdata)
  List<int> get data;
}

/// Iridium Transmission Status class
///
abstract class IridiumTxStatus extends ImcMessage implements Built<IridiumTxStatus, IridiumTxStatusBuilder> {
  static const static_id = 172;
  IridiumTxStatus._();
  factory IridiumTxStatus([void Function(IridiumTxStatusBuilder b) updates]) = _$IridiumTxStatus;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'IridiumTxStatus';

  /// The request identifier used to receive transmission updates
  @ImcField('Request Identifier', 'req_id', ImcType.typeUInt16)
  int get reqId;

  @ImcField('Status Code', 'status', ImcType.typeUInt8)
  IridiumTxStatusEnumStatus get status;

  @ImcField('Status Text', 'text', ImcType.typePlaintext)
  String get text;
}

/// Group Membership State class
///
/// Group communication link assertion.
abstract class GroupMembershipState extends ImcMessage implements Built<GroupMembershipState, GroupMembershipStateBuilder> {
  static const static_id = 180;
  GroupMembershipState._();
  factory GroupMembershipState([void Function(GroupMembershipStateBuilder b) updates]) = _$GroupMembershipState;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'GroupMembershipState';

  /// Name of the group of systems.
  @ImcField('Group Name', 'group_name', ImcType.typePlaintext)
  String get groupName;

  /// Communication link assertion for each group member.
  /// One bit to assert each system communication link state.
  @ImcField('Communication Links Assertion', 'links', ImcType.typeUint32)
  int get links;
}

/// System Group class
///
/// Group of systems configuration.
abstract class SystemGroup extends ImcMessage implements Built<SystemGroup, SystemGroupBuilder> {
  static const static_id = 181;
  SystemGroup._();
  factory SystemGroup([void Function(SystemGroupBuilder b) updates]) = _$SystemGroup;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'SystemGroup';

  /// Name of the group of systems.
  @ImcField('Group Name', 'GroupName', ImcType.typePlaintext)
  String get groupName;

  /// Actions on the group list.
  @ImcField('Group List Action', 'Action', ImcType.typeUInt8)
  SystemGroupEnumAction get action;

  /// List of names of system in the group, separated by commas.
  @ImcField('Systems Name List', 'GroupList', ImcType.typePlaintext)
  String get groupList;
}

/// Link Latency class
///
/// Communications latency between two systems.
abstract class LinkLatency extends ImcMessage implements Built<LinkLatency, LinkLatencyBuilder> {
  static const static_id = 182;
  LinkLatency._();
  factory LinkLatency([void Function(LinkLatencyBuilder b) updates]) = _$LinkLatency;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'LinkLatency';

  /// Time taken between the communications package/message is sent
  /// from the source until it arrives to the destination.
  @ImcField('Value', 'value', ImcType.typeFp32, units: 's')
  double get value;

  /// ID of system that was the source of the communication package.
  @ImcField('Communications Source System ID', 'sys_src', ImcType.typeUInt16)
  int get sysSrc;
}

/// Extended Receive Signal Strength Information class
///
/// Measure of the RSSI by a networking device.
/// Indicates the gain or loss in the signal strenght due to the transmission
/// and reception equipment and the transmission medium and distance.
abstract class ExtendedRSSI extends ImcMessage implements Built<ExtendedRSSI, ExtendedRSSIBuilder> {
  static const static_id = 183;
  ExtendedRSSI._();
  factory ExtendedRSSI([void Function(ExtendedRSSIBuilder b) updates]) = _$ExtendedRSSI;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'ExtendedRSSI';

  /// RSSI measurement.
  @ImcField('Value', 'value', ImcType.typeFp32)
  double get value;

  /// Indicates the units used for the RSSI value.
  @ImcField('RSSI Units', 'units', ImcType.typeUInt8)
  RSSIUnitsEnum get units;
}

/// Historic Data Series class
///
/// This message holds a list of inline data samples produced by one or more vehicles in the past.
/// It is used to transfer data over disruption tolerant networks.
abstract class HistoricData extends ImcMessage implements Built<HistoricData, HistoricDataBuilder> {
  static const static_id = 184;
  HistoricData._();
  factory HistoricData([void Function(HistoricDataBuilder b) updates]) = _$HistoricData;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'HistoricData';

  /// All data sent inside this message will have offsets relative to this latitude.
  @ImcField('Base Latitude', 'base_lat', ImcType.typeFp32, units: '°')
  double get baseLat;

  /// All data sent inside this message will have offsets relative to this longitude.
  @ImcField('Base Longitude', 'base_lon', ImcType.typeFp32, units: '°')
  double get baseLon;

  /// All data sent inside this message will use this time as the origin (0).
  @ImcField('Base Timestamp', 'base_time', ImcType.typeFp32, units: 's')
  double get baseTime;

  @ImcField('Data', 'data', ImcType.typeMessageList)
  List<RemoteData> get data;
}

/// Compressed Historic Data Series class
///
/// This message holds a list of inline data samples produced by one or more vehicles in the past.
/// It is used to transfer data over disruption tolerant networks.
abstract class CompressedHistory extends ImcMessage implements Built<CompressedHistory, CompressedHistoryBuilder> {
  static const static_id = 185;
  CompressedHistory._();
  factory CompressedHistory([void Function(CompressedHistoryBuilder b) updates]) = _$CompressedHistory;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'CompressedHistory';

  /// All data sent inside this message will have offsets relative to this latitude.
  @ImcField('Base Latitude', 'base_lat', ImcType.typeFp32, units: '°')
  double get baseLat;

  /// All data sent inside this message will have offsets relative to this longitude.
  @ImcField('Base Longitude', 'base_lon', ImcType.typeFp32, units: '°')
  double get baseLon;

  /// All data sent inside this message will use this time as the origin (0).
  @ImcField('Base Timestamp', 'base_time', ImcType.typeFp32, units: 's')
  double get baseTime;

  /// A message-list of HistoricSample messages compressed with GZip algorithm.
  @ImcField('Data', 'data', ImcType.typeRawdata)
  List<int> get data;
}

/// Historic Data Sample class
///
abstract class HistoricSample extends RemoteData implements Built<HistoricSample, HistoricSampleBuilder> {
  static const static_id = 186;
  HistoricSample._();
  factory HistoricSample([void Function(HistoricSampleBuilder b) updates]) = _$HistoricSample;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'HistoricSample';

  /// The IMC identifier of the system that produced this sample.
  @ImcField('Original System Id', 'sys_id', ImcType.typeUInt16)
  int get sysId;

  /// The priority for this data sample. Default priority is 0. Samples with
  /// higher priorities will *always* be transmitted before samples with lower
  /// priorities. Samples with -127 priority will not be transmitted but just
  /// logged to disk locally.
  @ImcField('Priority', 'priority', ImcType.typeInt8)
  int get priority;

  /// Northing offsets relative to base latitude / longitude expressed in the enclosing `HistoricData` message.
  @ImcField('X offset', 'x', ImcType.typeInt16, units: 'm')
  int get x;

  /// Easting offsets relative to base latitude / longitude expressed in the enclosing `HistoricData` message.
  @ImcField('Y offset', 'y', ImcType.typeInt16, units: 'm')
  int get y;

  /// Altitude / depth offsets relative to sea level expressed in decimeters.
  /// Negative values mean depth and positive values mean altitude.
  @ImcField('Z offset', 'z', ImcType.typeInt16, units: 'dm')
  int get z;

  /// Time offset in seconds relative to the base time expressed in the enclosing `HistoricData` message.
  @ImcField('Time offset', 't', ImcType.typeInt16, units: 's')
  int get t;

  @ImcField('Data Sample', 'sample', ImcType.typeMessage)
  ImcMessage get sample;
}

/// Historic Data Query class
///
abstract class HistoricDataQuery extends ImcMessage implements Built<HistoricDataQuery, HistoricDataQueryBuilder> {
  static const static_id = 187;
  HistoricDataQuery._();
  factory HistoricDataQuery([void Function(HistoricDataQueryBuilder b) updates]) = _$HistoricDataQuery;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'HistoricDataQuery';

  @ImcField('Request Id', 'req_id', ImcType.typeUInt16)
  int get reqId;

  @ImcField('Request Type', 'type', ImcType.typeUInt8)
  HistoricDataQueryEnumType get type;

  @ImcField('Maximum Size', 'max_size', ImcType.typeUInt16)
  int get maxSize;

  @ImcField('Data', 'data', ImcType.typeMessage)
  HistoricData get data;
}

/// Remote Command class
///
/// Command to remote system. If a system receives a RemoteCommand and it isn't the intended recipient, then it should
/// resend it.
abstract class RemoteCommand extends RemoteData implements Built<RemoteCommand, RemoteCommandBuilder> {
  static const static_id = 188;
  RemoteCommand._();
  factory RemoteCommand([void Function(RemoteCommandBuilder b) updates]) = _$RemoteCommand;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'RemoteCommand';

  /// IMC id of the original sender.
  @ImcField('Original Source', 'original_source', ImcType.typeUInt16)
  int get originalSource;

  /// IMC id of the recipient.
  @ImcField('Destination', 'destination', ImcType.typeUInt16)
  int get destination;

  /// Expiration time of the message (Epoch Time), in seconds. If the message doesn't reach the destination within timeout,
  /// the validity of the message expires and there will be no more attempts to transmit the message.
  @ImcField('Timeout', 'timeout', ImcType.typeFp64, units: 's')
  double get timeout;

  /// Command to be unpacked by the recipient.
  @ImcField('Command', 'cmd', ImcType.typeMessage)
  ImcMessage get cmd;
}

/// Communication Systems Query class
///
/// Presence of Communication Interfaces query.
abstract class CommSystemsQuery extends ImcMessage implements Built<CommSystemsQuery, CommSystemsQueryBuilder> {
  static const static_id = 189;
  CommSystemsQuery._();
  factory CommSystemsQuery([void Function(CommSystemsQueryBuilder b) updates]) = _$CommSystemsQuery;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'CommSystemsQuery';

  @ImcField('Type', 'type', ImcType.typeUInt8)
  CommSystemsQueryBitfieldType get type;

  /// Communication interface to be used for reports.
  @ImcField('Communication Interface', 'comm_interface', ImcType.typeUInt16)
  CommSystemsQueryBitfieldCommInterface get commInterface;

  @ImcField('Model', 'model', ImcType.typeUInt16)
  CommSystemsQueryEnumModel get model;

  /// Comma separated list of known Radio system names.
  @ImcField('System List', 'list', ImcType.typePlaintext, units: 'List')
  String get list;
}

/// Telemetry Message class
///
/// Message to handle telemetry transmissions.
abstract class TelemetryMsg extends ImcMessage implements Built<TelemetryMsg, TelemetryMsgBuilder> {
  static const static_id = 190;
  TelemetryMsg._();
  factory TelemetryMsg([void Function(TelemetryMsgBuilder b) updates]) = _$TelemetryMsg;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'TelemetryMsg';

  /// Type of telemetry transmissions.
  @ImcField('Type', 'type', ImcType.typeUInt8)
  TelemetryMsgEnumType get type;

  /// The request identifier used to receive transmission updates.
  @ImcField('Request Identifier', 'req_id', ImcType.typeUint32)
  int get reqId;

  /// Time, in seconds, which will be considered a non-transmitted message.
  @ImcField('Time to live', 'ttl', ImcType.typeUInt16, units: 's')
  int get ttl;

  /// Type of telemetry transmissions.
  @ImcField('Code', 'code', ImcType.typeUInt8)
  TelemetryMsgEnumCode get code;

  /// The unique identifier of this message's destination (e.g. lauv-xtreme-2, manta-0).
  @ImcField('Destination Identifier', 'destination', ImcType.typePlaintext)
  String get destination;

  /// The unique identifier of this message's destination (e.g. lauv-xtreme-2, manta-0).
  @ImcField('Source Identifier', 'Source', ImcType.typePlaintext)
  String get source;

  /// Type of telemetry transmissions.
  @ImcField('Acknowledge', 'acknowledge', ImcType.typeUInt8)
  TelemetryMsgBitfieldAcknowledge get acknowledge;

  /// State of the transmitted message.
  @ImcField('Status', 'status', ImcType.typeUInt8)
  TelemetryMsgEnumStatus get status;

  @ImcField('Data', 'data', ImcType.typeRawdata)
  List<int> get data;
}

/// LBL Range class
///
/// When the vehicle uses Long Base Line navigation, this message
/// notifies that a new range was received from one of the acoustics
/// transponders. The message fields are used to identify the range
/// value and the transponder name.
abstract class LblRange extends ImcMessage implements Built<LblRange, LblRangeBuilder> {
  static const static_id = 200;
  LblRange._();
  factory LblRange([void Function(LblRangeBuilder b) updates]) = _$LblRange;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'LblRange';

  /// Identification number of the acoustic transponder from which
  /// the range information was received.
  @ImcField('Beacon Identification Number', 'id', ImcType.typeUInt8)
  int get id;

  /// Distance to the acoustic transponder.
  @ImcField('Range', 'range', ImcType.typeFp32, units: 'm')
  double get range;
}

/// LBL Beacon Configuration class
///
/// Position and configuration of an LBL transponder (beacon).
abstract class LblBeacon extends ImcMessage implements Built<LblBeacon, LblBeaconBuilder> {
  static const static_id = 202;
  LblBeacon._();
  factory LblBeacon([void Function(LblBeaconBuilder b) updates]) = _$LblBeacon;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'LblBeacon';

  /// Name/Label of the acoustic transponder.
  @ImcField('Beacon Name', 'beacon', ImcType.typePlaintext)
  String get beacon;

  /// WGS-84 Latitude coordinate.
  @ImcField('Latitude WGS-84', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  /// WGS-84 Longitude coordinate.
  @ImcField('Longitude WGS-84', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;

  /// The beacon's depth.
  @ImcField('Depth', 'depth', ImcType.typeFp32, units: 'm')
  double get depth;

  /// Interrogation channel.
  @ImcField('Interrogation channel', 'query_channel', ImcType.typeUInt8)
  int get queryChannel;

  /// Reply channel.
  @ImcField('Reply channel', 'reply_channel', ImcType.typeUInt8)
  int get replyChannel;

  /// Transponder delay.
  @ImcField('Transponder delay', 'transponder_delay', ImcType.typeUInt8, units: 'ms')
  int get transponderDelay;
}

/// LBL Configuration class
///
/// Long Base Line configuration.
abstract class LblConfig extends ImcMessage implements Built<LblConfig, LblConfigBuilder> {
  static const static_id = 203;
  LblConfig._();
  factory LblConfig([void Function(LblConfigBuilder b) updates]) = _$LblConfig;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'LblConfig';

  /// Used to define the type of the operation this message holds.
  @ImcField('Operation', 'op', ImcType.typeUInt8)
  LblConfigEnumOp get op;

  /// A list of LBL beacon configuration messages.
  @ImcField('Beacons', 'beacons', ImcType.typeMessageList)
  List<LblBeacon> get beacons;
}

/// Acoustic Message class
///
/// Send an acoustic message.
abstract class AcousticMessage extends ImcMessage implements Built<AcousticMessage, AcousticMessageBuilder> {
  static const static_id = 206;
  AcousticMessage._();
  factory AcousticMessage([void Function(AcousticMessageBuilder b) updates]) = _$AcousticMessage;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'AcousticMessage';

  /// Message to send.
  @ImcField('Message to send', 'message', ImcType.typeMessage)
  ImcMessage get message;
}

/// Acoustic Operation class
///
/// Acoustic operation.
abstract class AcousticOperation extends ImcMessage implements Built<AcousticOperation, AcousticOperationBuilder> {
  static const static_id = 211;
  AcousticOperation._();
  factory AcousticOperation([void Function(AcousticOperationBuilder b) updates]) = _$AcousticOperation;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'AcousticOperation';

  /// Operation type.
  @ImcField('Operation', 'op', ImcType.typeUInt8)
  AcousticOperationEnumOp get op;

  /// The meaning of this field depends on the operation and is
  /// explained in the operation's description.
  @ImcField('System', 'system', ImcType.typePlaintext)
  String get system;

  /// The meaning of this field depends on the operation and is
  /// explained in the operation's description.
  @ImcField('Range', 'range', ImcType.typeFp32, units: 'm')
  double get range;

  /// Argument for message send ('MSG') requests.
  @ImcField('Message To Send', 'msg', ImcType.typeMessage)
  ImcMessage get msg;
}

/// Acoustic Systems Query class
///
/// Request a list of known underwater acoustic systems. The
/// recipient of this message shall reply with an AcousticSystems
/// message.
abstract class AcousticSystemsQuery extends ImcMessage implements Built<AcousticSystemsQuery, AcousticSystemsQueryBuilder> {
  static const static_id = 212;
  AcousticSystemsQuery._();
  factory AcousticSystemsQuery([void Function(AcousticSystemsQueryBuilder b) updates]) = _$AcousticSystemsQuery;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'AcousticSystemsQuery';
}

/// Acoustic Systems class
///
/// This message is sent in reply to an AcousticSystemsQuery message
/// and lists all known underwater acoustic systems (modems, narrow
/// band transponders, etc).
abstract class AcousticSystems extends ImcMessage implements Built<AcousticSystems, AcousticSystemsBuilder> {
  static const static_id = 213;
  AcousticSystems._();
  factory AcousticSystems([void Function(AcousticSystemsBuilder b) updates]) = _$AcousticSystems;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'AcousticSystems';

  /// Comma separated list of known acoustic system names.
  @ImcField('System List', 'list', ImcType.typePlaintext, units: 'List')
  String get list;
}

/// Acoustic Link Quality class
///
/// This message is used to report the perceived link quality to other
/// acoustic peers.
abstract class AcousticLink extends ImcMessage implements Built<AcousticLink, AcousticLinkBuilder> {
  static const static_id = 214;
  AcousticLink._();
  factory AcousticLink([void Function(AcousticLinkBuilder b) updates]) = _$AcousticLink;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'AcousticLink';

  /// The name of the peer on the other side of this link.
  @ImcField('Peer Name', 'peer', ImcType.typePlaintext)
  String get peer;

  /// RSSI is a signed floating point number. Higher RSSI values correspond to
  /// stronger signals.
  /// The signal strength is acceptable when measured RSSI values lie between
  /// -20 dB and -85 dB.
  @ImcField('Received Signal Strength Indicator', 'rssi', ImcType.typeFp32, units: 'dB')
  double get rssi;

  /// Signal Integrity value illustrates distortion of the last received
  /// acoustic signal. It is calculated based on cross-correlation
  /// measurements.
  /// Higher *Signal Integrity Level* values correspond to less distorted
  /// signals. An acoustic link is considered weak if the *Signal Integrity
  /// Level* value is less than 100.
  @ImcField('Signal Integrity Level', 'integrity', ImcType.typeUInt16)
  int get integrity;
}

/// Revolutions Per Minute class
///
/// Number of revolutions per minute.
abstract class Rpm extends ImcMessage implements Built<Rpm, RpmBuilder> {
  static const static_id = 250;
  Rpm._();
  factory Rpm([void Function(RpmBuilder b) updates]) = _$Rpm;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Rpm';

  /// Number of revolutions per minute.
  @ImcField('Value', 'value', ImcType.typeInt16, units: 'rpm')
  int get value;
}

/// Voltage class
///
/// Report of electrical voltage.
abstract class Voltage extends ImcMessage implements Built<Voltage, VoltageBuilder> {
  static const static_id = 251;
  Voltage._();
  factory Voltage([void Function(VoltageBuilder b) updates]) = _$Voltage;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Voltage';

  /// The value of the internal electrical voltage as measured by
  /// the sensor.
  @ImcField('Measured Voltage Value', 'value', ImcType.typeFp32, units: 'V')
  double get value;
}

/// Current class
///
/// Report of electrical current.
abstract class Current extends ImcMessage implements Built<Current, CurrentBuilder> {
  static const static_id = 252;
  Current._();
  factory Current([void Function(CurrentBuilder b) updates]) = _$Current;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Current';

  /// The value of the internal electrical current as measured by
  /// the sensor.
  @ImcField('Measured Current Value', 'value', ImcType.typeFp32, units: 'A')
  double get value;
}

/// GPS Fix class
///
/// Report of a GPS fix.
abstract class GpsFix extends ImcMessage implements Built<GpsFix, GpsFixBuilder> {
  static const static_id = 253;
  GpsFix._();
  factory GpsFix([void Function(GpsFixBuilder b) updates]) = _$GpsFix;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'GpsFix';

  /// Validity of fields.
  @ImcField('Validity', 'validity', ImcType.typeUInt16)
  GpsFixBitfieldValidity get validity;

  /// Type of fix.
  @ImcField('Type', 'type', ImcType.typeUInt8)
  GpsFixEnumType get type;

  /// UTC year.
  @ImcField('UTC Year', 'utc_year', ImcType.typeUInt16)
  int get utcYear;

  /// UTC month.
  @ImcField('UTC Month', 'utc_month', ImcType.typeUInt8)
  int get utcMonth;

  /// UTC day.
  @ImcField('UTC Day', 'utc_day', ImcType.typeUInt8)
  int get utcDay;

  /// UTC time of the GPS fix measured in seconds since 00:00:00 (midnight).
  @ImcField('UTC Time of Fix', 'utc_time', ImcType.typeFp32, units: 's')
  double get utcTime;

  /// WGS-84 Latitude coordinate.
  @ImcField('Latitude WGS-84', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  /// WGS-84 Longitude coordinate.
  @ImcField('Longitude WGS-84', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;

  /// Height above WGS-84 ellipsoid.
  @ImcField('Height above WGS-84 ellipsoid', 'height', ImcType.typeFp32, units: 'm')
  double get height;

  /// Number of satellites used by the GPS device to compute the
  /// solution.
  @ImcField('Number of Satellites', 'satellites', ImcType.typeUInt8)
  int get satellites;

  /// Course Over Ground (true).
  @ImcField('Course Over Ground', 'cog', ImcType.typeFp32, units: 'rad')
  double get cog;

  /// Speed Over Ground.
  @ImcField('Speed Over Ground', 'sog', ImcType.typeFp32, units: 'm/s')
  double get sog;

  /// Horizontal dilution of precision.
  @ImcField('Horizontal Dilution of Precision', 'hdop', ImcType.typeFp32)
  double get hdop;

  /// Vertical dilution of precision.
  @ImcField('Vertical Dilution of Precision', 'vdop', ImcType.typeFp32)
  double get vdop;

  /// Horizontal Accuracy Estimate.
  @ImcField('Horizontal Accuracy Estimate', 'hacc', ImcType.typeFp32, units: 'm')
  double get hacc;

  /// Vertical Accuracy Estimate.
  @ImcField('Vertical Accuracy Estimate', 'vacc', ImcType.typeFp32, units: 'm')
  double get vacc;
}

/// Euler Angles class
///
/// Report of spatial orientation according to SNAME's notation
/// (1950).
abstract class EulerAngles extends ImcMessage implements Built<EulerAngles, EulerAnglesBuilder> {
  static const static_id = 254;
  EulerAngles._();
  factory EulerAngles([void Function(EulerAnglesBuilder b) updates]) = _$EulerAngles;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'EulerAngles';

  /// The device time.
  @ImcField('Device Time', 'time', ImcType.typeFp64, units: 's')
  double get time;

  /// Rotation around the vehicle longitudinal axis.
  @ImcField('Roll Angle', 'phi', ImcType.typeFp64, units: 'rad')
  double get phi;

  /// Rotation around the vehicle lateral or transverse axis.
  @ImcField('Pitch Angle', 'theta', ImcType.typeFp64, units: 'rad')
  double get theta;

  /// Rotation around the vehicle vertical axis. A value of 0 means
  /// the vehicle is oriented towards true north. In cases where the
  /// sensor cannot measure the true heading, this field will have
  /// the same value as Yaw (Magnetic).
  @ImcField('Yaw Angle (True)', 'psi', ImcType.typeFp64, units: 'rad')
  double get psi;

  /// Rotation around the vehicle vertical axis. A value of 0 means
  /// the vehicle is oriented towards magnetic north. In cases where
  /// the sensor cannot measure the magnetic heading, this field
  /// will have the same value as Yaw (True).
  @ImcField('Yaw Angle (Magnetic)', 'psi_magnetic', ImcType.typeFp64, units: 'rad')
  double get psiMagnetic;
}

/// Euler Angles Delta class
///
/// Component of incremetal orientation vector over a period of time.
abstract class EulerAnglesDelta extends ImcMessage implements Built<EulerAnglesDelta, EulerAnglesDeltaBuilder> {
  static const static_id = 255;
  EulerAnglesDelta._();
  factory EulerAnglesDelta([void Function(EulerAnglesDeltaBuilder b) updates]) = _$EulerAnglesDelta;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'EulerAnglesDelta';

  /// The device time.
  @ImcField('Device Time', 'time', ImcType.typeFp64, units: 's')
  double get time;

  /// X component.
  @ImcField('X', 'x', ImcType.typeFp64, units: 'rad')
  double get x;

  /// Y component.
  @ImcField('Y', 'y', ImcType.typeFp64, units: 'rad')
  double get y;

  /// Z component.
  @ImcField('Z', 'z', ImcType.typeFp64, units: 'rad')
  double get z;

  /// Period of time of the orientation vector increments.
  @ImcField('Timestep', 'timestep', ImcType.typeFp32, units: 's')
  double get timestep;
}

/// Angular Velocity class
///
/// Vector quantifying the direction and magnitude of the measured
/// angular velocity that a device is exposed to.
abstract class AngularVelocity extends ImcMessage implements Built<AngularVelocity, AngularVelocityBuilder> {
  static const static_id = 256;
  AngularVelocity._();
  factory AngularVelocity([void Function(AngularVelocityBuilder b) updates]) = _$AngularVelocity;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'AngularVelocity';

  /// The device time.
  @ImcField('Device Time', 'time', ImcType.typeFp64, units: 's')
  double get time;

  /// X component.
  @ImcField('X', 'x', ImcType.typeFp64, units: 'rad/s')
  double get x;

  /// Y component.
  @ImcField('Y', 'y', ImcType.typeFp64, units: 'rad/s')
  double get y;

  /// Z component.
  @ImcField('Z', 'z', ImcType.typeFp64, units: 'rad/s')
  double get z;
}

/// Acceleration class
///
/// Vector quantifying the direction and magnitude of the measured
/// acceleration that a device is exposed to.
abstract class Acceleration extends ImcMessage implements Built<Acceleration, AccelerationBuilder> {
  static const static_id = 257;
  Acceleration._();
  factory Acceleration([void Function(AccelerationBuilder b) updates]) = _$Acceleration;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Acceleration';

  /// The device time.
  @ImcField('Device Time', 'time', ImcType.typeFp64, units: 's')
  double get time;

  /// X component.
  @ImcField('X', 'x', ImcType.typeFp64, units: 'm/s/s')
  double get x;

  /// Y component.
  @ImcField('Y', 'y', ImcType.typeFp64, units: 'm/s/s')
  double get y;

  /// Z component.
  @ImcField('Z', 'z', ImcType.typeFp64, units: 'm/s/s')
  double get z;
}

/// Magnetic Field class
///
/// Vector quantifying the direction and magnitude of the measured
/// magnetic field that a device is exposed to.
abstract class MagneticField extends ImcMessage implements Built<MagneticField, MagneticFieldBuilder> {
  static const static_id = 258;
  MagneticField._();
  factory MagneticField([void Function(MagneticFieldBuilder b) updates]) = _$MagneticField;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'MagneticField';

  /// The device time.
  @ImcField('Device Time', 'time', ImcType.typeFp64, units: 's')
  double get time;

  /// X component.
  @ImcField('X', 'x', ImcType.typeFp64, units: 'G')
  double get x;

  /// Y component.
  @ImcField('Y', 'y', ImcType.typeFp64, units: 'G')
  double get y;

  /// Z component.
  @ImcField('Z', 'z', ImcType.typeFp64, units: 'G')
  double get z;
}

/// Ground Velocity class
///
/// Vector quantifying the direction and magnitude of the measured
/// velocity relative to the ground that a device is exposed to.
abstract class GroundVelocity extends ImcMessage implements Built<GroundVelocity, GroundVelocityBuilder> {
  static const static_id = 259;
  GroundVelocity._();
  factory GroundVelocity([void Function(GroundVelocityBuilder b) updates]) = _$GroundVelocity;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'GroundVelocity';

  /// Each bit of this field represents if a given velocity
  /// component is valid.
  @ImcField('Validity', 'validity', ImcType.typeUInt8)
  GroundVelocityBitfieldValidity get validity;

  /// X component.
  @ImcField('X', 'x', ImcType.typeFp64, units: 'm/s')
  double get x;

  /// Y component.
  @ImcField('Y', 'y', ImcType.typeFp64, units: 'm/s')
  double get y;

  /// Z component.
  @ImcField('Z', 'z', ImcType.typeFp64, units: 'm/s')
  double get z;
}

/// Water Velocity class
///
/// Vector quantifying the direction and magnitude of the measured
/// velocity relative to the water that a device is exposed to.
abstract class WaterVelocity extends ImcMessage implements Built<WaterVelocity, WaterVelocityBuilder> {
  static const static_id = 260;
  WaterVelocity._();
  factory WaterVelocity([void Function(WaterVelocityBuilder b) updates]) = _$WaterVelocity;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'WaterVelocity';

  /// Each bit of this field represents if a given velocity
  /// component is valid.
  @ImcField('Validity', 'validity', ImcType.typeUInt8)
  WaterVelocityBitfieldValidity get validity;

  /// X component.
  @ImcField('X', 'x', ImcType.typeFp64, units: 'm/s')
  double get x;

  /// Y component.
  @ImcField('Y', 'y', ImcType.typeFp64, units: 'm/s')
  double get y;

  /// Z component.
  @ImcField('Z', 'z', ImcType.typeFp64, units: 'm/s')
  double get z;
}

/// Velocity Delta class
///
/// Component of incremetal velocity vector.
abstract class VelocityDelta extends ImcMessage implements Built<VelocityDelta, VelocityDeltaBuilder> {
  static const static_id = 261;
  VelocityDelta._();
  factory VelocityDelta([void Function(VelocityDeltaBuilder b) updates]) = _$VelocityDelta;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'VelocityDelta';

  /// The device time.
  @ImcField('Device Time', 'time', ImcType.typeFp64, units: 's')
  double get time;

  /// X component.
  @ImcField('X', 'x', ImcType.typeFp64, units: 'm/s')
  double get x;

  /// Y component.
  @ImcField('Y', 'y', ImcType.typeFp64, units: 'm/s')
  double get y;

  /// Z component.
  @ImcField('Z', 'z', ImcType.typeFp64, units: 'm/s')
  double get z;
}

/// Distance class
///
/// Distance measurement detected by the device.
abstract class Distance extends ImcMessage implements Built<Distance, DistanceBuilder> {
  static const static_id = 262;
  Distance._();
  factory Distance([void Function(DistanceBuilder b) updates]) = _$Distance;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Distance';

  /// Validity of the measurement.
  @ImcField('Validity', 'validity', ImcType.typeUInt8)
  DistanceEnumValidity get validity;

  /// Device Location in the system.
  @ImcField('Location', 'location', ImcType.typeMessageList)
  List<DeviceState> get location;

  /// Beam configuration of the device.
  @ImcField('Beam Configuration', 'beam_config', ImcType.typeMessageList)
  List<BeamConfig> get beamConfig;

  /// Measured distance.
  @ImcField('Measured Distance', 'value', ImcType.typeFp32, units: 'm')
  double get value;
}

/// Temperature class
///
/// Report of temperature.
abstract class Temperature extends ImcMessage implements Built<Temperature, TemperatureBuilder> {
  static const static_id = 263;
  Temperature._();
  factory Temperature([void Function(TemperatureBuilder b) updates]) = _$Temperature;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Temperature';

  /// The value of the temperature as measured by the sensor.
  @ImcField('Measured Temperature', 'value', ImcType.typeFp32, units: '°C')
  double get value;
}

/// Pressure class
///
/// Report of external pressure.
abstract class Pressure extends ImcMessage implements Built<Pressure, PressureBuilder> {
  static const static_id = 264;
  Pressure._();
  factory Pressure([void Function(PressureBuilder b) updates]) = _$Pressure;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Pressure';

  /// The value of the pressure as measured by the sensor.
  @ImcField('Measured Pressure', 'value', ImcType.typeFp64, units: 'hPa')
  double get value;
}

/// Depth class
///
/// Depth report.
abstract class Depth extends ImcMessage implements Built<Depth, DepthBuilder> {
  static const static_id = 265;
  Depth._();
  factory Depth([void Function(DepthBuilder b) updates]) = _$Depth;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Depth';

  /// Depth value measured by a sensor.
  @ImcField('Measured Depth', 'value', ImcType.typeFp32, units: 'm')
  double get value;
}

/// Depth Offset class
///
/// Report of Depth Offset.
abstract class DepthOffset extends ImcMessage implements Built<DepthOffset, DepthOffsetBuilder> {
  static const static_id = 266;
  DepthOffset._();
  factory DepthOffset([void Function(DepthOffsetBuilder b) updates]) = _$DepthOffset;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'DepthOffset';

  /// Depth offset.
  @ImcField('Measured Offset', 'value', ImcType.typeFp32, units: 'm')
  double get value;
}

/// Sound Speed class
///
/// Sound Speed report.
abstract class SoundSpeed extends ImcMessage implements Built<SoundSpeed, SoundSpeedBuilder> {
  static const static_id = 267;
  SoundSpeed._();
  factory SoundSpeed([void Function(SoundSpeedBuilder b) updates]) = _$SoundSpeed;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'SoundSpeed';

  /// Estimated sound speed. Negative values denote invalid estimates.
  @ImcField('Computed Sound Speed', 'value', ImcType.typeFp32, units: 'm/s')
  double get value;
}

/// Water Density class
///
/// Water Density report.
abstract class WaterDensity extends ImcMessage implements Built<WaterDensity, WaterDensityBuilder> {
  static const static_id = 268;
  WaterDensity._();
  factory WaterDensity([void Function(WaterDensityBuilder b) updates]) = _$WaterDensity;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'WaterDensity';

  /// Computed Water Density.
  @ImcField('Computed Water Density', 'value', ImcType.typeFp32, units: 'kg/m/m/m')
  double get value;
}

/// Conductivity class
///
/// Report of conductivity.
abstract class Conductivity extends ImcMessage implements Built<Conductivity, ConductivityBuilder> {
  static const static_id = 269;
  Conductivity._();
  factory Conductivity([void Function(ConductivityBuilder b) updates]) = _$Conductivity;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Conductivity';

  /// The value of the conductivity as measured by the sensor.
  @ImcField('Measured Conductivity', 'value', ImcType.typeFp32, units: 'S/m')
  double get value;
}

/// Salinity class
///
/// Report of salinity.
abstract class Salinity extends ImcMessage implements Built<Salinity, SalinityBuilder> {
  static const static_id = 270;
  Salinity._();
  factory Salinity([void Function(SalinityBuilder b) updates]) = _$Salinity;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Salinity';

  /// The value of the salinity as measured by the sensor.
  @ImcField('Measured Salinity', 'value', ImcType.typeFp32)
  double get value;
}

/// Wind Speed class
///
/// Measurement of wind speed.
abstract class WindSpeed extends ImcMessage implements Built<WindSpeed, WindSpeedBuilder> {
  static const static_id = 271;
  WindSpeed._();
  factory WindSpeed([void Function(WindSpeedBuilder b) updates]) = _$WindSpeed;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'WindSpeed';

  /// Direction of the measured wind speed.
  @ImcField('Direction', 'direction', ImcType.typeFp32, units: 'rad')
  double get direction;

  /// The value of the wind speed as measured by the sensor.
  @ImcField('Speed', 'speed', ImcType.typeFp32, units: 'm/s')
  double get speed;

  /// Wind turbulence intensity.
  @ImcField('Turbulence', 'turbulence', ImcType.typeFp32, units: 'm/s')
  double get turbulence;
}

/// Relative Humidity class
///
/// Measurement of relative humidity.
abstract class RelativeHumidity extends ImcMessage implements Built<RelativeHumidity, RelativeHumidityBuilder> {
  static const static_id = 272;
  RelativeHumidity._();
  factory RelativeHumidity([void Function(RelativeHumidityBuilder b) updates]) = _$RelativeHumidity;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'RelativeHumidity';

  /// Value of relative humidity.
  @ImcField('Relative Humidity Value', 'value', ImcType.typeFp32)
  double get value;
}

/// Device Data (Text) class
///
/// Verbatim representation of device data in plain text format.
abstract class DevDataText extends ImcMessage implements Built<DevDataText, DevDataTextBuilder> {
  static const static_id = 273;
  DevDataText._();
  factory DevDataText([void Function(DevDataTextBuilder b) updates]) = _$DevDataText;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'DevDataText';

  /// Plain text data as extracted directly from the device.
  @ImcField('Value', 'value', ImcType.typePlaintext)
  String get value;
}

/// Device Data (Binary) class
///
/// Verbatim representation of device data in binary format.
abstract class DevDataBinary extends ImcMessage implements Built<DevDataBinary, DevDataBinaryBuilder> {
  static const static_id = 274;
  DevDataBinary._();
  factory DevDataBinary([void Function(DevDataBinaryBuilder b) updates]) = _$DevDataBinary;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'DevDataBinary';

  /// Raw binary data as extracted directly from the device.
  @ImcField('Value', 'value', ImcType.typeRawdata)
  List<int> get value;
}

/// Force class
///
/// Force measurement.
abstract class Force extends ImcMessage implements Built<Force, ForceBuilder> {
  static const static_id = 275;
  Force._();
  factory Force([void Function(ForceBuilder b) updates]) = _$Force;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Force';

  /// Force magnitude.
  @ImcField('Measured Force', 'value', ImcType.typeFp32, units: 'N')
  double get value;
}

/// Sonar Data class
///
/// This message contains the data acquired by a single sonar
/// measurement. The following describes the format used to
/// fill the data field used in this message. (Byte order is
/// little endian.)
/// 
/// **Sidescan:**
/// 
/// +------+-------------------+-----------+
/// | Data | Name              | Type      |
/// +======+===================+===========+
/// | A    | Ranges data       |   uintX_t |
/// +------+-------------------+-----------+
/// 
/// .. figure:: ../images/imc_sidescan.png
/// 
/// * The type *uintX_t* will depend on the number of bits per unit, and it should be a multiple of 8.
/// * Furthermore, for now, 32 bits is the highest value of bits per unit supported.
/// 
/// **Multibeam:**
/// 
/// +------+--------+-------------------------+---------+----------------------------------------------------------------------+
/// | Index| Section| Name                    | Type    | Comments                                                             |
/// +======+========+=========================+=========+======================================================================+
/// | 1    | H1     | Number of points        | uint16_t| Number of data points                                                |
/// +------+--------+-------------------------+---------+----------------------------------------------------------------------+
/// | 2    | H2     | Start angle             | fp32_t  | In radians                                                           |
/// +------+--------+-------------------------+---------+----------------------------------------------------------------------+
/// | 3    | H3     | Flags                   | uint8_t | Refer to next table                                                  |
/// +------+--------+-------------------------+---------+----------------------------------------------------------------------+
/// | 4    | H4 ?   | Angle scale factor      | fp32_t  | Used for angle steps in radians                                      |
/// +------+--------+-------------------------+---------+----------------------------------------------------------------------+
/// | 5    | H5 ?   | Intensities scale factor| fp32_t  |                                                                      |
/// +------+--------+-------------------------+---------+----------------------------------------------------------------------+
/// | 6    | D1 ?   | Angle steps[H1]         | uint16_t| Values in radians                                                    |
/// +------+--------+-------------------------+---------+----------------------------------------------------------------------+
/// | 7    | D2     | Ranges[H1]              | uintX_t | Ranges data points (scale factor from common field "Scaling Factor") |
/// +------+--------+-------------------------+---------+----------------------------------------------------------------------+
/// | 8    | D3 ?   | Intensities[H1]         | uintX_t | Intensities data points                                              |
/// +------+--------+-------------------------+---------+----------------------------------------------------------------------+
/// 
/// +--------+------------------+-----+
/// | Section| Flag Label       | Bit |
/// +========+==================+=====+
/// | H4.1   | Intensities flag | 0   |
/// +--------+------------------+-----+
/// | H4.2   | Angle step flag  | 1   |
/// +--------+------------------+-----+
/// 
/// .. figure:: ../images/imc_multibeam.png
/// 
/// *Notes:*
/// 
/// * Each angle at step *i* can be calculated is defined by:
/// 
/// .. code-block:: python
/// 
/// angle[i] = H2_start_angle + (32-bit sum of D1_angle_step[0] through D1_angle_step[i]) * H4_scaling_factor
/// 
/// * If bit H4.1 is not set then sections H5 and D3 won't exist.
/// * If bit H4.2 is not set then sections H4 and D1 won't exist. In case this bit is set, then the angle steps is read from field "Beam Width" from "Beam Configuration".
/// * The type *uintX_t* will depend on the number of bits per unit, and it should be a multiple of 8.
/// * Furthermore, for now, 32 bits is the highest value of bits per unit supported.
/// 
/// *How to write ranges and intensities data:*
/// 
/// .. code-block:: python
/// :linenos:
/// 
/// 
/// data_unit = (Integer) (data_value / scale_factor);
/// bytes_per_unit = bits_per_unit / 8;
/// LOOP: i = 0, until i = bytes_per_unit
/// byte[i] = (data_unit >> 8 * i) & 0xFF);
/// 
/// write(byte);
/// 
/// **Common:**
abstract class SonarData extends ImcMessage implements Built<SonarData, SonarDataBuilder> {
  static const static_id = 276;
  SonarData._();
  factory SonarData([void Function(SonarDataBuilder b) updates]) = _$SonarData;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'SonarData';

  /// Type of sonar.
  @ImcField('Type', 'type', ImcType.typeUInt8)
  SonarDataEnumType get type;

  /// Operating frequency.
  @ImcField('Frequency', 'frequency', ImcType.typeUint32, units: 'Hz')
  int get frequency;

  /// Minimum range.
  @ImcField('Minimum Range', 'min_range', ImcType.typeUInt16, units: 'm')
  int get minRange;

  /// Maximum range.
  @ImcField('Maximum Range', 'max_range', ImcType.typeUInt16, units: 'm')
  int get maxRange;

  /// Size of the data unit. (Should be multiple of 8)
  @ImcField('Bits Per Data Point', 'bits_per_point', ImcType.typeUInt8, units: 'bit')
  int get bitsPerPoint;

  /// Scaling factor used to multiply each data unit to restore the
  /// original floating point value.
  @ImcField('Scaling Factor', 'scale_factor', ImcType.typeFp32)
  double get scaleFactor;

  /// Beam configuration of the device.
  @ImcField('Beam Configuration', 'beam_config', ImcType.typeMessageList)
  List<BeamConfig> get beamConfig;

  /// Data acquired by the measurement.
  @ImcField('Data', 'data', ImcType.typeRawdata)
  List<int> get data;
}

/// Pulse class
///
/// Hardware pulse detection.
abstract class Pulse extends ImcMessage implements Built<Pulse, PulseBuilder> {
  static const static_id = 277;
  Pulse._();
  factory Pulse([void Function(PulseBuilder b) updates]) = _$Pulse;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Pulse';
}

/// Pulse Detection Control class
///
/// Control of hardware pulse detection.
abstract class PulseDetectionControl extends ImcMessage implements Built<PulseDetectionControl, PulseDetectionControlBuilder> {
  static const static_id = 278;
  PulseDetectionControl._();
  factory PulseDetectionControl([void Function(PulseDetectionControlBuilder b) updates]) = _$PulseDetectionControl;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'PulseDetectionControl';

  /// Activate or deactivate hardware pulse detection.
  @ImcField('Operation', 'op', ImcType.typeUInt8)
  PulseDetectionControlEnumOp get op;
}

/// Fuel Level class
///
/// Report of fuel level.
abstract class FuelLevel extends ImcMessage implements Built<FuelLevel, FuelLevelBuilder> {
  static const static_id = 279;
  FuelLevel._();
  factory FuelLevel([void Function(FuelLevelBuilder b) updates]) = _$FuelLevel;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'FuelLevel';

  /// Fuel level percentage of the system.
  @ImcField('Value', 'value', ImcType.typeFp32, units: '%')
  double get value;

  /// Percentage level of confidence in the estimation of the amount
  /// of energy in the batteries.
  @ImcField('Confidence Level', 'confidence', ImcType.typeFp32, units: '%')
  double get confidence;

  /// Operation mode name and the estimated time available in that
  /// mode in hours. Example: "Motion=1.5"
  @ImcField('Operation Modes', 'opmodes', ImcType.typePlaintext, units: 'TupleList')
  String get opmodes;
}

/// GPS Navigation Data class
///
/// Report of GPS navigation data.
abstract class GpsNavData extends ImcMessage implements Built<GpsNavData, GpsNavDataBuilder> {
  static const static_id = 280;
  GpsNavData._();
  factory GpsNavData([void Function(GpsNavDataBuilder b) updates]) = _$GpsNavData;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'GpsNavData';

  /// GPS Millisecond Time of Week.
  @ImcField('GPS Millisecond Time of Week', 'itow', ImcType.typeUint32, units: 'ms')
  int get itow;

  /// Latitude.
  @ImcField('Latitude', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  /// Longitude.
  @ImcField('Longitude', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;

  /// Height Above Ellipsoid.
  @ImcField('Height above ellipsoid', 'height_ell', ImcType.typeFp32, units: 'm')
  double get heightEll;

  /// Height Above Sea Level.
  @ImcField('Height above sea level', 'height_sea', ImcType.typeFp32, units: 'm')
  double get heightSea;

  /// Horizontal Accuracy Estimate.
  @ImcField('Horizontal Accuracy Estimate', 'hacc', ImcType.typeFp32, units: 'm')
  double get hacc;

  /// Vertical Accuracy Estimate.
  @ImcField('Vertical Accuracy Estimate', 'vacc', ImcType.typeFp32, units: 'm')
  double get vacc;

  /// NED North Velocity.
  @ImcField('NED North Velocity', 'vel_n', ImcType.typeFp32, units: 'm/s')
  double get velN;

  /// NED East Velocity.
  @ImcField('NED East Velocity', 'vel_e', ImcType.typeFp32, units: 'm/s')
  double get velE;

  /// NED Down Velocity.
  @ImcField('NED Down Velocity', 'vel_d', ImcType.typeFp32, units: 'm/s')
  double get velD;

  /// NED Down Velocity.
  @ImcField('Speed (3D)', 'speed', ImcType.typeFp32, units: 'm/s')
  double get speed;

  /// NED Down Velocity.
  @ImcField('Ground Speed (2D)', 'gspeed', ImcType.typeFp32, units: 'm/s')
  double get gspeed;

  /// NED Down Velocity.
  @ImcField('Heading (2D)', 'heading', ImcType.typeFp32, units: 'rad')
  double get heading;

  /// NED Down Velocity.
  @ImcField('Speed Accuracy Estimate', 'sacc', ImcType.typeFp32, units: 'm/s')
  double get sacc;

  /// Course / Heading Accuracy Estimate.
  @ImcField('Course / Heading Accuracy Estimate', 'cacc', ImcType.typeFp32, units: 'rad')
  double get cacc;
}

/// Servo Position class
///
/// Actual position of a servo.
abstract class ServoPosition extends ImcMessage implements Built<ServoPosition, ServoPositionBuilder> {
  static const static_id = 281;
  ServoPosition._();
  factory ServoPosition([void Function(ServoPositionBuilder b) updates]) = _$ServoPosition;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'ServoPosition';

  /// Servo identifier.
  @ImcField('Identifier', 'id', ImcType.typeUInt8)
  int get id;

  /// Value of the servo position.
  @ImcField('Position', 'value', ImcType.typeFp32, units: 'rad')
  double get value;
}

/// Device State class
///
/// Location of a specific device in the system infrastructure.
abstract class DeviceState extends ImcMessage implements Built<DeviceState, DeviceStateBuilder> {
  static const static_id = 282;
  DeviceState._();
  factory DeviceState([void Function(DeviceStateBuilder b) updates]) = _$DeviceState;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'DeviceState';

  /// Device's position over the X axis.
  @ImcField('Device Position - X', 'x', ImcType.typeFp32, units: 'm')
  double get x;

  /// Device's position over the Y axis.
  @ImcField('Device Position - Y', 'y', ImcType.typeFp32, units: 'm')
  double get y;

  /// Device's position over the Z axis.
  @ImcField('Device Position - Z', 'z', ImcType.typeFp32, units: 'm')
  double get z;

  /// Device's rotation over the X axis.
  @ImcField('Device Rotation - X', 'phi', ImcType.typeFp32, units: 'rad')
  double get phi;

  /// Device's rotation over the Y axis.
  @ImcField('Device Rotation - Y', 'theta', ImcType.typeFp32, units: 'rad')
  double get theta;

  /// Device's rotation over the Z axis.
  @ImcField('Device Rotation - Z', 'psi', ImcType.typeFp32, units: 'rad')
  double get psi;
}

/// Beam Configuration class
///
/// Beam configuration of the device.
abstract class BeamConfig extends ImcMessage implements Built<BeamConfig, BeamConfigBuilder> {
  static const static_id = 283;
  BeamConfig._();
  factory BeamConfig([void Function(BeamConfigBuilder b) updates]) = _$BeamConfig;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'BeamConfig';

  /// Beam width of the instrument. A negative number denotes that
  /// this information is not available or is not applicable.
  @ImcField('Beam Width', 'beam_width', ImcType.typeFp32, units: 'rad')
  double get beamWidth;

  /// Beam height of the instrument. A negative number denotes that
  /// this information is not available or is not applicable.
  @ImcField('Beam Height', 'beam_height', ImcType.typeFp32, units: 'rad')
  double get beamHeight;
}

/// Data Sanity class
///
/// Report sanity or lack of it in the data output by a sensor.
abstract class DataSanity extends ImcMessage implements Built<DataSanity, DataSanityBuilder> {
  static const static_id = 284;
  DataSanity._();
  factory DataSanity([void Function(DataSanityBuilder b) updates]) = _$DataSanity;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'DataSanity';

  /// Whether the data is sane or not sane.
  @ImcField('Sanity', 'sane', ImcType.typeUInt8)
  DataSanityEnumSane get sane;
}

/// Rhodamine Dye class
///
/// Rhodamine Dye measurement.
abstract class RhodamineDye extends ImcMessage implements Built<RhodamineDye, RhodamineDyeBuilder> {
  static const static_id = 285;
  RhodamineDye._();
  factory RhodamineDye([void Function(RhodamineDyeBuilder b) updates]) = _$RhodamineDye;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'RhodamineDye';

  /// Amount of rhodamine dye detected.
  @ImcField('Value', 'value', ImcType.typeFp32, units: 'PPB')
  double get value;
}

/// Crude Oil class
///
/// Crude oil measurement.
abstract class CrudeOil extends ImcMessage implements Built<CrudeOil, CrudeOilBuilder> {
  static const static_id = 286;
  CrudeOil._();
  factory CrudeOil([void Function(CrudeOilBuilder b) updates]) = _$CrudeOil;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'CrudeOil';

  /// Amount of crude oil detected.
  @ImcField('Value', 'value', ImcType.typeFp32, units: 'PPB')
  double get value;
}

/// Fine Oil class
///
/// Fine oil measurement.
abstract class FineOil extends ImcMessage implements Built<FineOil, FineOilBuilder> {
  static const static_id = 287;
  FineOil._();
  factory FineOil([void Function(FineOilBuilder b) updates]) = _$FineOil;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'FineOil';

  /// Amount of fine oil detected.
  @ImcField('Value', 'value', ImcType.typeFp32, units: 'PPB')
  double get value;
}

/// Turbidity class
///
/// Turbidity measurement.
abstract class Turbidity extends ImcMessage implements Built<Turbidity, TurbidityBuilder> {
  static const static_id = 288;
  Turbidity._();
  factory Turbidity([void Function(TurbidityBuilder b) updates]) = _$Turbidity;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Turbidity';

  /// Turbidity reading.
  @ImcField('Value', 'value', ImcType.typeFp32, units: 'NTU')
  double get value;
}

/// Chlorophyll class
///
/// Chlorophyll measurement.
abstract class Chlorophyll extends ImcMessage implements Built<Chlorophyll, ChlorophyllBuilder> {
  static const static_id = 289;
  Chlorophyll._();
  factory Chlorophyll([void Function(ChlorophyllBuilder b) updates]) = _$Chlorophyll;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Chlorophyll';

  /// Chlorophyll reading.
  @ImcField('Value', 'value', ImcType.typeFp32, units: 'µg/L')
  double get value;
}

/// Fluorescein class
///
/// Fluorescein measurement.
abstract class Fluorescein extends ImcMessage implements Built<Fluorescein, FluoresceinBuilder> {
  static const static_id = 290;
  Fluorescein._();
  factory Fluorescein([void Function(FluoresceinBuilder b) updates]) = _$Fluorescein;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Fluorescein';

  /// Fluorescein reading.
  @ImcField('Value', 'value', ImcType.typeFp32, units: 'PPB')
  double get value;
}

/// Phycocyanin class
///
/// Phycocyanin measurement.
abstract class Phycocyanin extends ImcMessage implements Built<Phycocyanin, PhycocyaninBuilder> {
  static const static_id = 291;
  Phycocyanin._();
  factory Phycocyanin([void Function(PhycocyaninBuilder b) updates]) = _$Phycocyanin;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Phycocyanin';

  /// Phycocyanin reading.
  @ImcField('Value', 'value', ImcType.typeFp32, units: 'PPB')
  double get value;
}

/// Phycoerythrin class
///
/// Phycoerythrin measurement.
abstract class Phycoerythrin extends ImcMessage implements Built<Phycoerythrin, PhycoerythrinBuilder> {
  static const static_id = 292;
  Phycoerythrin._();
  factory Phycoerythrin([void Function(PhycoerythrinBuilder b) updates]) = _$Phycoerythrin;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Phycoerythrin';

  /// Phycoerythrin reading.
  @ImcField('Value', 'value', ImcType.typeFp32, units: 'PPB')
  double get value;
}

/// GPS Fix RTK class
///
/// Report of an RTK-GPS fix.
abstract class GpsFixRtk extends ImcMessage implements Built<GpsFixRtk, GpsFixRtkBuilder> {
  static const static_id = 293;
  GpsFixRtk._();
  factory GpsFixRtk([void Function(GpsFixRtkBuilder b) updates]) = _$GpsFixRtk;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'GpsFixRtk';

  /// Validity of fields.
  @ImcField('Validity', 'validity', ImcType.typeUInt16)
  GpsFixRtkBitfieldValidity get validity;

  /// Type of fix.
  @ImcField('Type', 'type', ImcType.typeUInt8)
  GpsFixRtkEnumType get type;

  /// GPS Time of Week.
  @ImcField('GPS Time of Week', 'tow', ImcType.typeUint32)
  int get tow;

  /// WGS-84 Latitude coordinate of the base.
  @ImcField('Base Latitude WGS-84', 'base_lat', ImcType.typeFp64, units: 'rad')
  double get baseLat;

  /// WGS-84 Longitude coordinate of the base.
  @ImcField('Base Longitude WGS-84', 'base_lon', ImcType.typeFp64, units: 'rad')
  double get baseLon;

  /// Height above WGS-84 ellipsoid of the base.
  @ImcField('Base Height above WGS-84 ellipsoid', 'base_height', ImcType.typeFp32, units: 'm')
  double get baseHeight;

  /// Baseline North coordinate.
  @ImcField('Position North', 'n', ImcType.typeFp32, units: 'm')
  double get n;

  /// Baseline East coordinate.
  @ImcField('Position East', 'e', ImcType.typeFp32, units: 'm')
  double get e;

  /// Baseline Down coordinate.
  @ImcField('Position Down', 'd', ImcType.typeFp32, units: 'm')
  double get d;

  /// Velocity North coordinate.
  @ImcField('Velocity North', 'v_n', ImcType.typeFp32, units: 'm/s')
  double get vN;

  /// Velocity East coordinate.
  @ImcField('Velocity East', 'v_e', ImcType.typeFp32, units: 'm/s')
  double get vE;

  /// Velocity Down coordinate.
  @ImcField('Velocity Down', 'v_d', ImcType.typeFp32, units: 'm/s')
  double get vD;

  /// Number of satellites used in solution.
  @ImcField('Number of Satellites', 'satellites', ImcType.typeUInt8)
  int get satellites;

  /// Number of hypotheses in the Integer Ambiguity Resolution (smaller is better).
  @ImcField('IAR Hypotheses', 'iar_hyp', ImcType.typeUInt16)
  int get iarHyp;

  /// Quality ratio of Integer Ambiguity Resolution (bigger is better).
  @ImcField('IAR Ratio', 'iar_ratio', ImcType.typeFp32)
  double get iarRatio;
}

/// External Navigation Data class
///
/// This message is a representation of the state of the vehicle,
/// as seen by an external navigation computer.
/// 
/// An example usage is when DUNE is used with ardupilot. The
/// data gathered from the autopilot is a complete navigation
/// solution.
/// 
/// ExternalNavData contains an inline Estimated State, which
/// is a complete description of the system
/// in terms of parameters such as position, orientation and
/// velocities at a particular moment in time.
/// 
/// The Type field selects wether the navigation data is a
/// full state estimation, or only concerns attitude or
/// position/velocity.
abstract class ExternalNavData extends ImcMessage implements Built<ExternalNavData, ExternalNavDataBuilder> {
  static const static_id = 294;
  ExternalNavData._();
  factory ExternalNavData([void Function(ExternalNavDataBuilder b) updates]) = _$ExternalNavData;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'ExternalNavData';

  /// External Navigation Data.
  @ImcField('Estimated State', 'state', ImcType.typeMessage)
  EstimatedState get state;

  /// The type of external navigation data
  @ImcField('Nav Data Type', 'type', ImcType.typeUInt8)
  ExternalNavDataEnumType get type;
}

/// Dissolved Oxygen class
///
/// Dissolved Oxygen measurement.
abstract class DissolvedOxygen extends ImcMessage implements Built<DissolvedOxygen, DissolvedOxygenBuilder> {
  static const static_id = 295;
  DissolvedOxygen._();
  factory DissolvedOxygen([void Function(DissolvedOxygenBuilder b) updates]) = _$DissolvedOxygen;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'DissolvedOxygen';

  /// Dissolved Oxygen reading.
  @ImcField('Value', 'value', ImcType.typeFp32, units: 'µM')
  double get value;
}

/// Air Saturation class
///
/// Air Saturation measurement.
abstract class AirSaturation extends ImcMessage implements Built<AirSaturation, AirSaturationBuilder> {
  static const static_id = 296;
  AirSaturation._();
  factory AirSaturation([void Function(AirSaturationBuilder b) updates]) = _$AirSaturation;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'AirSaturation';

  /// Air Saturation reading.
  @ImcField('Value', 'value', ImcType.typeFp32, units: '%')
  double get value;
}

/// Throttle class
///
/// Throttle e.g. for Plane/Copter .
abstract class Throttle extends ImcMessage implements Built<Throttle, ThrottleBuilder> {
  static const static_id = 297;
  Throttle._();
  factory Throttle([void Function(ThrottleBuilder b) updates]) = _$Throttle;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Throttle';

  /// The value of the desired throttle.
  @ImcField('Value', 'value', ImcType.typeFp64, units: '%')
  double get value;
}

/// pH class
///
/// Report of pH.
abstract class PH extends ImcMessage implements Built<PH, PHBuilder> {
  static const static_id = 298;
  PH._();
  factory PH([void Function(PHBuilder b) updates]) = _$PH;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'PH';

  /// The value of the pH as measured by the sensor.
  @ImcField('Value', 'value', ImcType.typeFp32)
  double get value;
}

/// Redox Potential class
///
/// Report of Redox Potential.
abstract class Redox extends ImcMessage implements Built<Redox, RedoxBuilder> {
  static const static_id = 299;
  Redox._();
  factory Redox([void Function(RedoxBuilder b) updates]) = _$Redox;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Redox';

  /// The value of the Redox as measured by the sensor.
  @ImcField('Value', 'value', ImcType.typeFp32, units: 'V')
  double get value;
}

/// Camera Zoom class
///
/// Camera Zoom.
abstract class CameraZoom extends ImcMessage implements Built<CameraZoom, CameraZoomBuilder> {
  static const static_id = 300;
  CameraZoom._();
  factory CameraZoom([void Function(CameraZoomBuilder b) updates]) = _$CameraZoom;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'CameraZoom';

  /// The identification number of the destination camera.
  @ImcField('Camera Number', 'id', ImcType.typeUInt8)
  int get id;

  /// Absolute zoom level.
  @ImcField('Absolute Zoom Level', 'zoom', ImcType.typeUInt8)
  int get zoom;

  /// The zoom action to perform.
  @ImcField('Action', 'action', ImcType.typeUInt8)
  CameraZoomEnumAction get action;
}

/// Set Thruster Actuation class
///
/// Actuate directly on a thruster.
abstract class SetThrusterActuation extends ImcMessage implements Built<SetThrusterActuation, SetThrusterActuationBuilder> {
  static const static_id = 301;
  SetThrusterActuation._();
  factory SetThrusterActuation([void Function(SetThrusterActuationBuilder b) updates]) = _$SetThrusterActuation;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'SetThrusterActuation';

  /// The identification number of the destination thruster.
  @ImcField('Thruster Number', 'id', ImcType.typeUInt8)
  int get id;

  /// Actuation magnitude.
  @ImcField('Actuation Value', 'value', ImcType.typeFp32)
  double get value;
}

/// Set Servo Position class
///
/// Set the position of a servo.
abstract class SetServoPosition extends ImcMessage implements Built<SetServoPosition, SetServoPositionBuilder> {
  static const static_id = 302;
  SetServoPosition._();
  factory SetServoPosition([void Function(SetServoPositionBuilder b) updates]) = _$SetServoPosition;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'SetServoPosition';

  /// The identification number of the destination servo.
  @ImcField('Identifier', 'id', ImcType.typeUInt8)
  int get id;

  /// Actuation magnitude.
  @ImcField('Position', 'value', ImcType.typeFp32, units: 'rad')
  double get value;
}

/// Set Control Surface Deflection class
///
/// Set the deflection angle of a control surface.
abstract class SetControlSurfaceDeflection extends ImcMessage implements Built<SetControlSurfaceDeflection, SetControlSurfaceDeflectionBuilder> {
  static const static_id = 303;
  SetControlSurfaceDeflection._();
  factory SetControlSurfaceDeflection([void Function(SetControlSurfaceDeflectionBuilder b) updates]) = _$SetControlSurfaceDeflection;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'SetControlSurfaceDeflection';

  /// The identification number of the destination control surface.
  @ImcField('Identifier', 'id', ImcType.typeUInt8)
  int get id;

  /// Actuation magnitude.
  @ImcField('Angle', 'angle', ImcType.typeFp32, units: 'rad')
  double get angle;
}

/// Remote Actions Request class
///
/// This message is used as query to request for the possible remote
/// actions (operation=QUERY and the list is empty in this
/// case). The vehicle responds using the same message type
/// returning the tuplelist with the pairs: Action,Type
/// (operation=REPORT). The type of action can be Axis, Hat or
/// Button.
abstract class RemoteActionsRequest extends ImcMessage implements Built<RemoteActionsRequest, RemoteActionsRequestBuilder> {
  static const static_id = 304;
  RemoteActionsRequest._();
  factory RemoteActionsRequest([void Function(RemoteActionsRequestBuilder b) updates]) = _$RemoteActionsRequest;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'RemoteActionsRequest';

  /// Operation to perform.
  @ImcField('operation', 'op', ImcType.typeUInt8)
  RemoteActionsRequestEnumOp get op;

  /// Example: "Propulsion=Axis,PanTilt=Hat,Lights=Button"
  @ImcField('Actions', 'actions', ImcType.typePlaintext, units: 'TupleList')
  String get actions;
}

/// Remote Actions class
///
/// This message is used to send a periodic update of values for
/// each remote action. If the action is not on the list the assumed
/// value is 0.
abstract class RemoteActions extends ImcMessage implements Built<RemoteActions, RemoteActionsBuilder> {
  static const static_id = 305;
  RemoteActions._();
  factory RemoteActions([void Function(RemoteActionsBuilder b) updates]) = _$RemoteActions;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'RemoteActions';

  /// List of values for each remote action (e.g: "Propeller=0.6,PanTilt=0.75,Lights=1").
  @ImcField('Actions', 'actions', ImcType.typePlaintext, units: 'TupleList')
  String get actions;
}

/// Button Event class
///
/// Event of a specific hardware button.
abstract class ButtonEvent extends ImcMessage implements Built<ButtonEvent, ButtonEventBuilder> {
  static const static_id = 306;
  ButtonEvent._();
  factory ButtonEvent([void Function(ButtonEventBuilder b) updates]) = _$ButtonEvent;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'ButtonEvent';

  /// Button identifier.
  @ImcField('Button', 'button', ImcType.typeUInt8)
  int get button;

  /// Value of the button.
  @ImcField('Value', 'value', ImcType.typeUInt8)
  int get value;
}

/// LCD Control class
///
/// Control LCD.
abstract class LcdControl extends ImcMessage implements Built<LcdControl, LcdControlBuilder> {
  static const static_id = 307;
  LcdControl._();
  factory LcdControl([void Function(LcdControlBuilder b) updates]) = _$LcdControl;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'LcdControl';

  /// The LCD action to perform
  @ImcField('Operation', 'op', ImcType.typeUInt8)
  LcdControlEnumOp get op;

  /// Text to be written (if defined write operation).
  @ImcField('Text', 'text', ImcType.typePlaintext)
  String get text;
}

/// Power Operation class
///
/// This message allows controlling the system's power lines.
abstract class PowerOperation extends ImcMessage implements Built<PowerOperation, PowerOperationBuilder> {
  static const static_id = 308;
  PowerOperation._();
  factory PowerOperation([void Function(PowerOperationBuilder b) updates]) = _$PowerOperation;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'PowerOperation';

  /// Operation type.
  @ImcField('Operation', 'op', ImcType.typeUInt8)
  PowerOperationEnumOp get op;

  /// Time remaining to complete operation.
  @ImcField('Time Remaining', 'time_remain', ImcType.typeFp32, units: 's')
  double get timeRemain;

  /// Scheduled time of operation.
  @ImcField('Scheduled Time', 'sched_time', ImcType.typeFp64, units: 's')
  double get schedTime;
}

/// Power Channel Control class
///
/// This message allows controlling power channels.
abstract class PowerChannelControl extends ImcMessage implements Built<PowerChannelControl, PowerChannelControlBuilder> {
  static const static_id = 309;
  PowerChannelControl._();
  factory PowerChannelControl([void Function(PowerChannelControlBuilder b) updates]) = _$PowerChannelControl;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'PowerChannelControl';

  /// The name of the power channel.
  @ImcField('Channel Name', 'name', ImcType.typePlaintext)
  String get name;

  /// Operation to perform.
  @ImcField('Operation', 'op', ImcType.typeUInt8)
  PowerChannelControlEnumOp get op;

  /// Scheduled time of operation.
  @ImcField('Scheduled Time', 'sched_time', ImcType.typeFp64, units: 's')
  double get schedTime;
}

/// Query Power Channel State class
///
/// Request the state of power channels.
abstract class QueryPowerChannelState extends ImcMessage implements Built<QueryPowerChannelState, QueryPowerChannelStateBuilder> {
  static const static_id = 310;
  QueryPowerChannelState._();
  factory QueryPowerChannelState([void Function(QueryPowerChannelStateBuilder b) updates]) = _$QueryPowerChannelState;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'QueryPowerChannelState';
}

/// Power Channel State class
///
/// Message conveying the state of a power channel.
abstract class PowerChannelState extends ImcMessage implements Built<PowerChannelState, PowerChannelStateBuilder> {
  static const static_id = 311;
  PowerChannelState._();
  factory PowerChannelState([void Function(PowerChannelStateBuilder b) updates]) = _$PowerChannelState;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'PowerChannelState';

  /// Power Channel Name.
  @ImcField('Name', 'name', ImcType.typePlaintext)
  String get name;

  /// State of the Power Channel.
  @ImcField('State', 'state', ImcType.typeUInt8)
  PowerChannelStateEnumState get state;
}

/// LED Brightness class
///
/// Brightness value of an LED (Light-Emitting Diode).
abstract class LedBrightness extends ImcMessage implements Built<LedBrightness, LedBrightnessBuilder> {
  static const static_id = 312;
  LedBrightness._();
  factory LedBrightness([void Function(LedBrightnessBuilder b) updates]) = _$LedBrightness;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'LedBrightness';

  /// LED name.
  @ImcField('Name', 'name', ImcType.typePlaintext)
  String get name;

  /// Brightness value.
  @ImcField('Value', 'value', ImcType.typeUInt8)
  int get value;
}

/// Query LED Brightness class
///
/// Query the brightness of an LED (Light-Emitting Diode). The
/// recipient of this message shall reply with 'LedBrightness'.
abstract class QueryLedBrightness extends ImcMessage implements Built<QueryLedBrightness, QueryLedBrightnessBuilder> {
  static const static_id = 313;
  QueryLedBrightness._();
  factory QueryLedBrightness([void Function(QueryLedBrightnessBuilder b) updates]) = _$QueryLedBrightness;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'QueryLedBrightness';

  /// LED name.
  @ImcField('Name', 'name', ImcType.typePlaintext)
  String get name;
}

/// Set LED Brightness class
///
/// Control the brightness of an LED (Light-Emitting Diode). The
/// recipient of this message shall set the intensity of the LED to
/// the desired 'value' and reply with 'LedBrightness'.
abstract class SetLedBrightness extends ImcMessage implements Built<SetLedBrightness, SetLedBrightnessBuilder> {
  static const static_id = 314;
  SetLedBrightness._();
  factory SetLedBrightness([void Function(SetLedBrightnessBuilder b) updates]) = _$SetLedBrightness;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'SetLedBrightness';

  /// LED name.
  @ImcField('Name', 'name', ImcType.typePlaintext)
  String get name;

  /// Desired brightness value.
  @ImcField('Value', 'value', ImcType.typeUInt8)
  int get value;
}

/// Set PWM class
///
/// Set properties of a PWM signal channel.
abstract class SetPWM extends ImcMessage implements Built<SetPWM, SetPWMBuilder> {
  static const static_id = 315;
  SetPWM._();
  factory SetPWM([void Function(SetPWMBuilder b) updates]) = _$SetPWM;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'SetPWM';

  /// PWM channel identifier.
  @ImcField('Channel Identifier', 'id', ImcType.typeUInt8)
  int get id;

  /// The total period of the PWM signal (sum of active and inactive
  /// time of the PWM).
  @ImcField('Period', 'period', ImcType.typeUint32, units: 'µs')
  int get period;

  /// The active time of the PWM signal. The duty cycle value must
  /// be less or equal to the period.
  @ImcField('Duty Cycle', 'duty_cycle', ImcType.typeUint32, units: 'µs')
  int get dutyCycle;
}

/// PWM class
///
/// Properties of a PWM signal channel.
abstract class PWM extends ImcMessage implements Built<PWM, PWMBuilder> {
  static const static_id = 316;
  PWM._();
  factory PWM([void Function(PWMBuilder b) updates]) = _$PWM;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'PWM';

  /// PWM channel identifier.
  @ImcField('Channel Identifier', 'id', ImcType.typeUInt8)
  int get id;

  /// The total period of the PWM signal (sum of active and inactive
  /// time of the PWM).
  @ImcField('Period', 'period', ImcType.typeUint32, units: 'µs')
  int get period;

  /// The active time of the PWM signal. The duty cycle value is
  /// less or equal to the period.
  @ImcField('Duty Cycle', 'duty_cycle', ImcType.typeUint32, units: 'µs')
  int get dutyCycle;
}

/// Estimated State class
///
/// This message presents the estimated state of the vehicle.
/// 
/// EstimatedState is a complete description of the system
/// in terms of parameters such as position, orientation and
/// velocities at a particular moment in time.
/// 
/// The system position is given by a North-East-Down (NED)
/// local tangent plane displacement (x, y, z) relative to
/// an absolute WGS-84 coordinate (latitude, longitude,
/// height above ellipsoid).
/// 
/// The symbols for position and attitude as well as linear and
/// angular velocities were chosen according to SNAME's notation (1950).
/// The body-fixed reference frame and Euler angles are depicted
/// next:
/// 
/// .. figure:: ../images/euler-lauv.png
/// :align:  center
/// 
/// Euler angles
abstract class EstimatedState extends ImcMessage implements Built<EstimatedState, EstimatedStateBuilder> {
  static const static_id = 350;
  EstimatedState._();
  factory EstimatedState([void Function(EstimatedStateBuilder b) updates]) = _$EstimatedState;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'EstimatedState';

  /// WGS-84 Latitude.
  @ImcField('Latitude (WGS-84)', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  /// WGS-84 Longitude.
  @ImcField('Longitude (WGS-84)', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;

  /// Height above the WGS-84 ellipsoid.
  @ImcField('Height (WGS-84)', 'height', ImcType.typeFp32, units: 'm')
  double get height;

  /// The North offset of the North/East/Down field with respect to
  /// LLH.
  @ImcField('Offset north', 'x', ImcType.typeFp32, units: 'm')
  double get x;

  /// The East offset of the North/East/Down field with respect to
  /// LLH.
  @ImcField('Offset east', 'y', ImcType.typeFp32, units: 'm')
  double get y;

  /// The Down offset of the North/East/Down field with respect to
  /// LLH.
  @ImcField('Offset down', 'z', ImcType.typeFp32, units: 'm')
  double get z;

  /// The phi Euler angle from the vehicle's attitude.
  @ImcField('Rotation over x axis', 'phi', ImcType.typeFp32, units: 'rad')
  double get phi;

  /// The theta Euler angle from the vehicle's attitude.
  @ImcField('Rotation over y axis', 'theta', ImcType.typeFp32, units: 'rad')
  double get theta;

  /// The psi Euler angle from the vehicle's attitude.
  @ImcField('Rotation over z axis', 'psi', ImcType.typeFp32, units: 'rad')
  double get psi;

  /// Body-fixed frame xx axis velocity component.
  @ImcField('Body-Fixed xx Velocity', 'u', ImcType.typeFp32, units: 'm/s')
  double get u;

  /// Body-fixed frame yy axis velocity component.
  @ImcField('Body-Fixed yy Velocity', 'v', ImcType.typeFp32, units: 'm/s')
  double get v;

  /// Body-fixed frame zz axis velocity component.
  @ImcField('Body-Fixed zz Velocity', 'w', ImcType.typeFp32, units: 'm/s')
  double get w;

  /// Ground Velocity xx axis velocity component.
  @ImcField('Ground Velocity X (North)', 'vx', ImcType.typeFp32, units: 'm/s')
  double get vx;

  /// Ground Velocity yy axis velocity component.
  @ImcField('Ground Velocity Y (East)', 'vy', ImcType.typeFp32, units: 'm/s')
  double get vy;

  /// Ground Velocity zz axis velocity component.
  @ImcField('Ground Velocity Z (Down)', 'vz', ImcType.typeFp32, units: 'm/s')
  double get vz;

  /// The angular velocity over body-fixed xx axis (roll).
  @ImcField('Angular Velocity in x', 'p', ImcType.typeFp32, units: 'rad/s')
  double get p;

  /// The angular velocity over body-fixed yy axis (pitch).
  @ImcField('Angular Velocity in y', 'q', ImcType.typeFp32, units: 'rad/s')
  double get q;

  /// The angular velocity over body-fixed zz axis (yaw).
  @ImcField('Angular Velocity in z', 'r', ImcType.typeFp32, units: 'rad/s')
  double get r;

  /// Depth, in meters. To be used by underwater vehicles. Negative
  /// values denote invalid estimates.
  @ImcField('Depth', 'depth', ImcType.typeFp32, units: 'm')
  double get depth;

  /// Altitude, in meters. Negative values denote invalid estimates.
  @ImcField('Altitude', 'alt', ImcType.typeFp32, units: 'm')
  double get alt;
}

/// Estimated Stream Velocity class
///
/// The estimated stream velocity, typically for water or air
/// streams.
abstract class EstimatedStreamVelocity extends ImcMessage implements Built<EstimatedStreamVelocity, EstimatedStreamVelocityBuilder> {
  static const static_id = 351;
  EstimatedStreamVelocity._();
  factory EstimatedStreamVelocity([void Function(EstimatedStreamVelocityBuilder b) updates]) = _$EstimatedStreamVelocity;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'EstimatedStreamVelocity';

  /// X component (North).
  @ImcField('X component (North)', 'x', ImcType.typeFp64, units: 'm/s')
  double get x;

  /// Y component (East).
  @ImcField('Y component (East)', 'y', ImcType.typeFp64, units: 'm/s')
  double get y;

  /// Z component (Down).
  @ImcField('Z component (Down)', 'z', ImcType.typeFp64, units: 'm/s')
  double get z;
}

/// Indicated Speed class
///
/// Speed measured by the navigation filter.
abstract class IndicatedSpeed extends ImcMessage implements Built<IndicatedSpeed, IndicatedSpeedBuilder> {
  static const static_id = 352;
  IndicatedSpeed._();
  factory IndicatedSpeed([void Function(IndicatedSpeedBuilder b) updates]) = _$IndicatedSpeed;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'IndicatedSpeed';

  @ImcField('Measured speed', 'value', ImcType.typeFp64, units: 'm/s')
  double get value;
}

/// True Speed class
///
/// Ground true speed.
abstract class TrueSpeed extends ImcMessage implements Built<TrueSpeed, TrueSpeedBuilder> {
  static const static_id = 353;
  TrueSpeed._();
  factory TrueSpeed([void Function(TrueSpeedBuilder b) updates]) = _$TrueSpeed;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'TrueSpeed';

  @ImcField('Estimated value', 'value', ImcType.typeFp64, units: 'm/s')
  double get value;
}

/// Navigation Uncertainty class
///
/// Report of navigation uncertainty.
/// This is usually given by the output of the state
/// covariance matrix of an Extended Kalman Filter.
abstract class NavigationUncertainty extends ImcMessage implements Built<NavigationUncertainty, NavigationUncertaintyBuilder> {
  static const static_id = 354;
  NavigationUncertainty._();
  factory NavigationUncertainty([void Function(NavigationUncertaintyBuilder b) updates]) = _$NavigationUncertainty;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'NavigationUncertainty';

  /// The North offset variance of the North/East/Down
  /// field with respect to LLH.
  @ImcField('Variance - x Position', 'x', ImcType.typeFp32, units: 'm')
  double get x;

  /// The East offset variance of the North/East/Down
  /// field with respect to LLH.
  @ImcField('Variance - y Position', 'y', ImcType.typeFp32, units: 'm')
  double get y;

  /// The Down offset variance of the North/East/Down
  /// field with respect to LLH.
  @ImcField('Variance - z Position', 'z', ImcType.typeFp32, units: 'm')
  double get z;

  /// The phi Euler angle variance from the vehicle's attitude.
  @ImcField('Variance - Roll', 'phi', ImcType.typeFp32, units: 'rad')
  double get phi;

  /// The theta Euler angle variance from the vehicle's attitude.
  @ImcField('Variance - Pitch', 'theta', ImcType.typeFp32, units: 'rad')
  double get theta;

  /// The psi Euler angle variance from the vehicle's attitude.
  @ImcField('Variance - Yaw', 'psi', ImcType.typeFp32, units: 'rad')
  double get psi;

  /// The angular velocity variance over body-fixed xx axis (roll).
  @ImcField('Variance - Gyro. Roll Rate', 'p', ImcType.typeFp32, units: 'rad/s')
  double get p;

  /// The angular velocity variance over body-fixed yy axis (pitch).
  @ImcField('Variance - Gyro. Pitch Rate', 'q', ImcType.typeFp32, units: 'rad/s')
  double get q;

  /// The angular velocity variance over body-fixed zz axis (yaw).
  @ImcField('Variance - Gyro. Yaw Rate', 'r', ImcType.typeFp32, units: 'rad/s')
  double get r;

  /// Body-fixed frame xx axis velocity variance component.
  @ImcField('Variance - Body-Fixed xx Velocity', 'u', ImcType.typeFp32, units: 'm/s')
  double get u;

  /// Body-fixed frame yy axis velocity variance component.
  @ImcField('Variance - Body-Fixed yy Velocity', 'v', ImcType.typeFp32, units: 'm/s')
  double get v;

  /// Body-fixed frame zz axis velocity variance component.
  @ImcField('Variance - Body-Fixed ww Velocity', 'w', ImcType.typeFp32, units: 'm/s')
  double get w;

  /// The psi Euler angle bias variance from the vehicle's sensed attitude.
  @ImcField('Variance - Yaw Bias', 'bias_psi', ImcType.typeFp32, units: 'rad')
  double get biasPsi;

  /// The angular velocity over body-fixed zz axis bias variance from sensor.
  @ImcField('Variance - Gyro. Yaw Rate Bias', 'bias_r', ImcType.typeFp32, units: 'rad/s')
  double get biasR;
}

/// Navigation Data class
///
/// Report of navigation data.
/// This is constituted by data which is not
/// part of the vehicle estimated state but
/// that the user may refer for more information.
abstract class NavigationData extends ImcMessage implements Built<NavigationData, NavigationDataBuilder> {
  static const static_id = 355;
  NavigationData._();
  factory NavigationData([void Function(NavigationDataBuilder b) updates]) = _$NavigationData;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'NavigationData';

  /// The psi Euler angle bias from the vehicle's sensed attitude.
  @ImcField('Yaw Bias', 'bias_psi', ImcType.typeFp32, units: 'rad')
  double get biasPsi;

  /// The angular velocity over body-fixed zz axis bias from sensor.
  @ImcField('Gyro. Yaw Rate Bias', 'bias_r', ImcType.typeFp32, units: 'rad/s')
  double get biasR;

  /// Course over ground given by NED ground velocity vectors.
  @ImcField('Course Over Ground', 'cog', ImcType.typeFp32, units: 'rad')
  double get cog;

  /// Continuous psi Euler angle (without normalizations).
  @ImcField('Continuous Yaw', 'cyaw', ImcType.typeFp32, units: 'rad')
  double get cyaw;

  /// GPS rejection filter level.
  @ImcField('GPS Rejection Filter Level', 'lbl_rej_level', ImcType.typeFp32)
  double get lblRejLevel;

  /// LBL rejection filter level.
  @ImcField('LBL Rejection Filter Level', 'gps_rej_level', ImcType.typeFp32)
  double get gpsRejLevel;

  /// Custom variable.
  @ImcField('Variance - Custom Variable X', 'custom_x', ImcType.typeFp32)
  double get customX;

  /// Custom variable.
  @ImcField('Variance - Custom Variable Y', 'custom_y', ImcType.typeFp32)
  double get customY;

  /// Custom variable.
  @ImcField('Variance - Custom Variable Z', 'custom_z', ImcType.typeFp32)
  double get customZ;
}

/// GPS Fix Rejection class
///
abstract class GpsFixRejection extends ImcMessage implements Built<GpsFixRejection, GpsFixRejectionBuilder> {
  static const static_id = 356;
  GpsFixRejection._();
  factory GpsFixRejection([void Function(GpsFixRejectionBuilder b) updates]) = _$GpsFixRejection;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'GpsFixRejection';

  /// UTC time of the rejected GPS fix measured in seconds since
  /// 00:00:00 (midnight).
  @ImcField('UTC Time of Fix', 'utc_time', ImcType.typeFp32, units: 's')
  double get utcTime;

  /// Reason for rejection.
  @ImcField('Reason', 'reason', ImcType.typeUInt8)
  GpsFixRejectionEnumReason get reason;
}

/// LBL Range Acceptance class
///
/// When the vehicle uses Long Base Line navigation, this message
/// notifies that a new range was received from one of the acoustics
/// transponders. The message fields are used to identify the range
/// value and the transponder name. Also, this message has an
/// acceptance field that indicates whether a LBL range was accepted
/// or rejected, and if rejected, the reason why.
abstract class LblRangeAcceptance extends ImcMessage implements Built<LblRangeAcceptance, LblRangeAcceptanceBuilder> {
  static const static_id = 357;
  LblRangeAcceptance._();
  factory LblRangeAcceptance([void Function(LblRangeAcceptanceBuilder b) updates]) = _$LblRangeAcceptance;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'LblRangeAcceptance';

  /// Identification number of the acoustic transponder from which
  /// the range information was received.
  @ImcField('Beacon Identification Number', 'id', ImcType.typeUInt8)
  int get id;

  /// Distance to the acoustic transponder.
  @ImcField('Range', 'range', ImcType.typeFp32, units: 'm')
  double get range;

  /// Reason for acceptance/rejection.
  @ImcField('Acceptance', 'acceptance', ImcType.typeUInt8)
  LblRangeAcceptanceEnumAcceptance get acceptance;
}

/// DVL Rejection class
///
/// When the vehicle uses Doppler Velocity Log sensor, this message
/// notifies that a new measurement was locally rejected by the
/// navigation filter.
abstract class DvlRejection extends ImcMessage implements Built<DvlRejection, DvlRejectionBuilder> {
  static const static_id = 358;
  DvlRejection._();
  factory DvlRejection([void Function(DvlRejectionBuilder b) updates]) = _$DvlRejection;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'DvlRejection';

  /// This field represents the type of the rejected velocity.
  @ImcField('Type of velocity', 'type', ImcType.typeUInt8)
  DvlRejectionBitfieldType get type;

  /// Reason for rejection. There are two types of DVL measurement
  /// filters. An Innovation filter checks the innovation between
  /// the current measurement and the previous measurement within a
  /// certain amount of time and an Absolute filter compares the
  /// measurement with an absolute threshold value. Those filters
  /// are tested using horizontal speed measurements, i.e.,
  /// measurements in the x-axis and in the y-axis.
  @ImcField('Reason', 'reason', ImcType.typeUInt8)
  DvlRejectionEnumReason get reason;

  /// Value of the rejection.
  /// If it is an innovation rejection the value is
  /// the absolute difference between the previous
  /// accepted DVL measurement and the current one.
  /// If it is an absolute rejection the value is
  /// the current DVL measurement.
  @ImcField('Value', 'value', ImcType.typeFp32, units: 'm/s')
  double get value;

  /// Timestep of the rejection.
  /// The timestep is 0 for an absolute rejection
  /// since it is an instantaneous reading. For
  /// innovation rejection it is the time difference
  /// between the previous accepted DVL measurement
  /// and the current one.
  @ImcField('Timestep', 'timestep', ImcType.typeFp32, units: 's')
  double get timestep;
}

/// LBL Beacon Position Estimate class
///
/// LBL Beacon position estimate.
abstract class LblEstimate extends ImcMessage implements Built<LblEstimate, LblEstimateBuilder> {
  static const static_id = 360;
  LblEstimate._();
  factory LblEstimate([void Function(LblEstimateBuilder b) updates]) = _$LblEstimate;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'LblEstimate';

  /// LBL Beacon configuration estimate.
  @ImcField('LBL Beacon Configuration', 'beacon', ImcType.typeMessage)
  LblBeacon get beacon;

  /// The North position offset of the NED field with respect to origin.
  @ImcField('North position', 'x', ImcType.typeFp32, units: 'm')
  double get x;

  /// The East position offset of the NED field with respect to origin.
  @ImcField('East position', 'y', ImcType.typeFp32, units: 'm')
  double get y;

  /// The North offset variance of the North/East/Down
  /// field with respect to LLH.
  @ImcField('North position variance', 'var_x', ImcType.typeFp32, units: 'm')
  double get varX;

  /// The East offset variance of the North/East/Down
  /// field with respect to LLH.
  @ImcField('East position variance', 'var_y', ImcType.typeFp32, units: 'm')
  double get varY;

  /// Distance between current LBL Beacon position and filter estimation.
  @ImcField('Distance', 'distance', ImcType.typeFp32, units: 'm')
  double get distance;
}

/// Alignment State class
///
/// This message notifies the vehicle is ready for dead-reckoning missions.
abstract class AlignmentState extends ImcMessage implements Built<AlignmentState, AlignmentStateBuilder> {
  static const static_id = 361;
  AlignmentState._();
  factory AlignmentState([void Function(AlignmentStateBuilder b) updates]) = _$AlignmentState;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'AlignmentState';

  /// Alignment State.
  @ImcField('State', 'state', ImcType.typeUInt8)
  AlignmentStateEnumState get state;
}

/// GroupStreamVelocity class
///
/// The stream velocity estimated by a group of systems.
/// Typically for water or air streams.
abstract class GroupStreamVelocity extends ImcMessage implements Built<GroupStreamVelocity, GroupStreamVelocityBuilder> {
  static const static_id = 362;
  GroupStreamVelocity._();
  factory GroupStreamVelocity([void Function(GroupStreamVelocityBuilder b) updates]) = _$GroupStreamVelocity;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'GroupStreamVelocity';

  /// X component (North).
  @ImcField('X component (North)', 'x', ImcType.typeFp64, units: 'm/s')
  double get x;

  /// Y component (East).
  @ImcField('Y component (East)', 'y', ImcType.typeFp64, units: 'm/s')
  double get y;

  /// Z component (Down).
  @ImcField('Z component (Down)', 'z', ImcType.typeFp64, units: 'm/s')
  double get z;
}

/// Airflow class
///
/// Airspeed along with airflow angles.
abstract class Airflow extends ImcMessage implements Built<Airflow, AirflowBuilder> {
  static const static_id = 363;
  Airflow._();
  factory Airflow([void Function(AirflowBuilder b) updates]) = _$Airflow;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Airflow';

  /// Airspeed, the 2-norm of the relative velocity.
  @ImcField('Airspeed', 'va', ImcType.typeFp32, units: 'm/s')
  double get va;

  /// Angle of attack.
  @ImcField('Angle of attack', 'aoa', ImcType.typeFp32, units: 'rad')
  double get aoa;

  /// Sideslip angle.
  @ImcField('Sideslip angle', 'ssa', ImcType.typeFp32, units: 'rad')
  double get ssa;
}

/// Desired Heading class
///
/// Desired Heading angle reference value for the control layer.
abstract class DesiredHeading extends ControlCommand implements Built<DesiredHeading, DesiredHeadingBuilder> {
  static const static_id = 400;
  DesiredHeading._();
  factory DesiredHeading([void Function(DesiredHeadingBuilder b) updates]) = _$DesiredHeading;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'DesiredHeading';

  /// The value of the desired heading angle, relative to true
  /// north, in radians.
  @ImcField('Value', 'value', ImcType.typeFp64, units: 'rad')
  double get value;
}

/// Desired Z class
///
/// Desired Z reference value for the control layer.
abstract class DesiredZ extends ControlCommand implements Built<DesiredZ, DesiredZBuilder> {
  static const static_id = 401;
  DesiredZ._();
  factory DesiredZ([void Function(DesiredZBuilder b) updates]) = _$DesiredZ;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'DesiredZ';

  /// The value of the desired z reference in meters.
  @ImcField('Value', 'value', ImcType.typeFp32, units: 'm')
  double get value;

  /// Units of the z reference.
  @ImcField('Z Units', 'z_units', ImcType.typeUInt8)
  ZUnitsEnum get zUnits;
}

/// Desired Speed class
///
/// Desired Speed reference value for the control layer.
abstract class DesiredSpeed extends ControlCommand implements Built<DesiredSpeed, DesiredSpeedBuilder> {
  static const static_id = 402;
  DesiredSpeed._();
  factory DesiredSpeed([void Function(DesiredSpeedBuilder b) updates]) = _$DesiredSpeed;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'DesiredSpeed';

  /// The value of the desired speed, in the scale specified by the
  /// "Speed Units" field.
  @ImcField('Value', 'value', ImcType.typeFp64)
  double get value;

  /// Indicates the units used for the speed value.
  @ImcField('Speed Units', 'speed_units', ImcType.typeUInt8)
  SpeedUnitsEnum get speedUnits;
}

/// Desired Roll class
///
/// Desired Roll angle reference value for the control layer.
abstract class DesiredRoll extends ControlCommand implements Built<DesiredRoll, DesiredRollBuilder> {
  static const static_id = 403;
  DesiredRoll._();
  factory DesiredRoll([void Function(DesiredRollBuilder b) updates]) = _$DesiredRoll;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'DesiredRoll';

  /// The value of the desired roll angle.
  @ImcField('Value', 'value', ImcType.typeFp64, units: 'rad')
  double get value;
}

/// Desired Pitch class
///
/// Desired Pitch angle reference value for the control layer.
abstract class DesiredPitch extends ControlCommand implements Built<DesiredPitch, DesiredPitchBuilder> {
  static const static_id = 404;
  DesiredPitch._();
  factory DesiredPitch([void Function(DesiredPitchBuilder b) updates]) = _$DesiredPitch;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'DesiredPitch';

  /// The value of the desired pitch angle.
  @ImcField('Value', 'value', ImcType.typeFp64, units: 'rad')
  double get value;
}

/// Desired Vertical Rate class
///
/// Desired Vertical Rate speed reference value for the control layer.
abstract class DesiredVerticalRate extends ImcMessage implements Built<DesiredVerticalRate, DesiredVerticalRateBuilder> {
  static const static_id = 405;
  DesiredVerticalRate._();
  factory DesiredVerticalRate([void Function(DesiredVerticalRateBuilder b) updates]) = _$DesiredVerticalRate;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'DesiredVerticalRate';

  /// The value of the desired vertical rate speed in meters per
  /// second.
  @ImcField('Value', 'value', ImcType.typeFp64, units: 'm/s')
  double get value;
}

/// Desired Path class
///
/// Perform path control.
/// 
/// The path is specified by two WGS-84 waypoints, respective
/// altitude / depth settings, optional loitering at the end point,
/// and some control flags.
/// 
/// The start and end waypoints are defined by the specified end point fields
/// ('end_{lat/lon/z}') plus:
/// 
/// 1. the start waypoint fields ('start_{lat|lon|z}') if the
/// 'START' flag (bit in 'flags' field) is set; or
/// 2. the end point of the previous path recently tracked; or
/// 3. the current location is the 'DIRECT' flag is set or if
/// the tracker has been idle for some time.
/// 
/// Altitude and depth control can be performed as follows:
/// 
/// 1. by default, the tracker will just transmit an altitude/depth
/// reference value equal to 'end_z' to the appropriate controller;
/// 2. if the 'NO_Z' flag is set no altitude/depth control will take
/// place, hence they can be controlled independently;
/// 3. if the '3DTRACK' flag is set, 3D-tracking will be done
/// (if supported by the active controller).
/// 
/// Loitering can be specified at the end point with a certain
/// radius ('lradius'), duration ('lduration'), and clockwise or
/// counter-clockwise direction ('CCLOCKW' flag).
abstract class DesiredPath extends ControlCommand implements Built<DesiredPath, DesiredPathBuilder> {
  static const static_id = 406;
  DesiredPath._();
  factory DesiredPath([void Function(DesiredPathBuilder b) updates]) = _$DesiredPath;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'DesiredPath';

  /// Unsigned integer reference for the scope of the desired path message.
  /// Path reference should only be set by a maneuver.
  /// Should be set to an always increasing reference at the time of dispatching this message.
  /// Lower level path controllers must inherit the same path reference sent by maneuver.
  @ImcField('Path Reference', 'path_ref', ImcType.typeUint32)
  int get pathRef;

  /// WGS-84 latitude of start point. This will be ignored unless
  /// the 'START' flag is set.
  @ImcField('Start Point -- Latitude WGS-84', 'start_lat', ImcType.typeFp64, units: 'rad')
  double get startLat;

  /// WGS-84 longitude of start point. This will be ignored unless
  /// the 'START' flag is set.
  @ImcField('Start Point -- WGS-84 Longitude', 'start_lon', ImcType.typeFp64, units: 'rad')
  double get startLon;

  /// Altitude or depth of start point. This parameter will be
  /// ignored if the 'NO_Z' flag is set, or if the 'START' flag is
  /// not set.
  @ImcField('Start Point -- Z Reference', 'start_z', ImcType.typeFp32, units: 'm')
  double get startZ;

  /// Units of the start point's z reference.
  @ImcField('Start Point -- Z Units', 'start_z_units', ImcType.typeUInt8)
  ZUnitsEnum get startZUnits;

  /// WGS-84 latitude of end point.
  @ImcField('End Point -- WGS84 Latitude', 'end_lat', ImcType.typeFp64, units: 'rad')
  double get endLat;

  /// WGS-84 longitude of end point.
  @ImcField('End Point -- WGS-84 Longitude', 'end_lon', ImcType.typeFp64, units: 'rad')
  double get endLon;

  /// Depth or altitude for the end point. This parameter will be
  /// ignored if the 'NO_Z' flag is set.
  @ImcField('End Point -- Z Reference', 'end_z', ImcType.typeFp32, units: 'm')
  double get endZ;

  /// Units of the end point's z reference.
  @ImcField('End Point -- Z Units', 'end_z_units', ImcType.typeUInt8)
  ZUnitsEnum get endZUnits;

  /// Maneuver speed reference.
  @ImcField('Speed', 'speed', ImcType.typeFp32)
  double get speed;

  /// Speed units.
  @ImcField('Speed Units', 'speed_units', ImcType.typeUInt8)
  SpeedUnitsEnum get speedUnits;

  /// Radius for loitering at end point. Specify less or equal to 0
  /// for no loitering.
  @ImcField('Loiter -- Radius', 'lradius', ImcType.typeFp32, units: 'm')
  double get lradius;

  /// Desired Path flags.
  @ImcField('Flags', 'flags', ImcType.typeUInt8)
  DesiredPathBitfieldFlags get flags;
}

/// Desired Control class
///
/// Set the desired virtual forces and torques to be applied to the
/// vehicle.
abstract class DesiredControl extends ImcMessage implements Built<DesiredControl, DesiredControlBuilder> {
  static const static_id = 407;
  DesiredControl._();
  factory DesiredControl([void Function(DesiredControlBuilder b) updates]) = _$DesiredControl;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'DesiredControl';

  /// Force X along the vehicle's x axis.
  @ImcField('Force along the x axis', 'x', ImcType.typeFp64, units: 'N')
  double get x;

  /// Force Y along the vehicle's y axis.
  @ImcField('Force along the y axis', 'y', ImcType.typeFp64, units: 'N')
  double get y;

  /// Force Z along the vehicle's z axis.
  @ImcField('Force along the z axis', 'z', ImcType.typeFp64, units: 'N')
  double get z;

  /// Torque K about the vehicle's x axis.
  @ImcField('Torque about the x axis', 'k', ImcType.typeFp64, units: 'Nm')
  double get k;

  /// Torque M about the vehicle's y axis.
  @ImcField('Torque about the y axis', 'm', ImcType.typeFp64, units: 'Nm')
  double get m;

  /// Torque N about the vehicle's z axis.
  @ImcField('Torque about the z axis', 'n', ImcType.typeFp64, units: 'Nm')
  double get n;

  /// Desired Control flags.
  @ImcField('Flags', 'flags', ImcType.typeUInt8)
  DesiredControlBitfieldFlags get flags;
}

/// Desired Heading Rate class
///
/// Desired Heading Rate speed reference value for the control layer.
abstract class DesiredHeadingRate extends ImcMessage implements Built<DesiredHeadingRate, DesiredHeadingRateBuilder> {
  static const static_id = 408;
  DesiredHeadingRate._();
  factory DesiredHeadingRate([void Function(DesiredHeadingRateBuilder b) updates]) = _$DesiredHeadingRate;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'DesiredHeadingRate';

  /// The value of the desired heading rate speed in radians per
  /// second.
  @ImcField('Value', 'value', ImcType.typeFp64, units: 'rad/s')
  double get value;
}

/// Desired Velocity class
///
/// Desired value for each linear and angular speeds.
abstract class DesiredVelocity extends ImcMessage implements Built<DesiredVelocity, DesiredVelocityBuilder> {
  static const static_id = 409;
  DesiredVelocity._();
  factory DesiredVelocity([void Function(DesiredVelocityBuilder b) updates]) = _$DesiredVelocity;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'DesiredVelocity';

  /// Desired speed along the vehicle's x axis.
  @ImcField('Desired Linear Speed in xx', 'u', ImcType.typeFp64, units: 'm/s')
  double get u;

  /// Desired speed along the vehicle's y axis.
  @ImcField('Desired Linear Speed in yy', 'v', ImcType.typeFp64, units: 'm/s')
  double get v;

  /// Desired speed along the vehicle's z axis.
  @ImcField('Desired Linear Speed in zz', 'w', ImcType.typeFp64, units: 'm/s')
  double get w;

  /// Desired speed about the vehicle's x axis.
  @ImcField('Desired Angular Speed in xx', 'p', ImcType.typeFp64, units: 'm/s')
  double get p;

  /// Desired speed about the vehicle's y axis.
  @ImcField('Desired Angular Speed in yy', 'q', ImcType.typeFp64, units: 'm/s')
  double get q;

  /// Desired speed about the vehicle's z axis.
  @ImcField('Desired Angular Speed in zz', 'r', ImcType.typeFp64, units: 'm/s')
  double get r;

  /// Desired Velocity flags.
  @ImcField('Flags', 'flags', ImcType.typeUInt8)
  DesiredVelocityBitfieldFlags get flags;
}

/// Path Control State class
///
/// Path control state issued by Path Controller.
abstract class PathControlState extends ImcMessage implements Built<PathControlState, PathControlStateBuilder> {
  static const static_id = 410;
  PathControlState._();
  factory PathControlState([void Function(PathControlStateBuilder b) updates]) = _$PathControlState;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'PathControlState';

  /// Unsigned integer reference of the desired path message to which this
  /// PathControlState message refers to.
  /// Path reference should only be set by a maneuver, not by path controllers.
  @ImcField('Path Reference', 'path_ref', ImcType.typeUint32)
  int get pathRef;

  /// WGS-84 latitude of start point.
  @ImcField('Start Point -- Latitude WGS-84', 'start_lat', ImcType.typeFp64, units: 'rad')
  double get startLat;

  /// WGS-84 longitude of start point.
  @ImcField('Start Point -- WGS-84 Longitude', 'start_lon', ImcType.typeFp64, units: 'rad')
  double get startLon;

  /// Altitude or depth of start point. This parameter will be
  /// ignored if the 'NO_Z' flag is set, or if the 'START' flag is
  /// not set.
  @ImcField('Start Point -- Z Reference', 'start_z', ImcType.typeFp32, units: 'm')
  double get startZ;

  /// Units of the start point's z reference.
  @ImcField('Start Point -- Z Units', 'start_z_units', ImcType.typeUInt8)
  ZUnitsEnum get startZUnits;

  /// WGS-84 latitude of end point.
  @ImcField('End Point -- Latitude WGS-84', 'end_lat', ImcType.typeFp64, units: 'rad')
  double get endLat;

  /// WGS-84 longitude of end point.
  @ImcField('End Point -- WGS-84 Longitude', 'end_lon', ImcType.typeFp64, units: 'rad')
  double get endLon;

  /// Depth or altitude for the end point. This parameter should be
  /// ignored if the 'NO_Z' flag is set.
  @ImcField('End Point -- Z Reference', 'end_z', ImcType.typeFp32, units: 'm')
  double get endZ;

  /// Units of the end point's z reference.
  @ImcField('End Point -- Z Units', 'end_z_units', ImcType.typeUInt8)
  ZUnitsEnum get endZUnits;

  /// Radius for loitering at end point.
  /// Will be 0 if no loitering is active.
  @ImcField('Loiter -- Radius', 'lradius', ImcType.typeFp32, units: 'm')
  double get lradius;

  /// Path control state flags.
  @ImcField('Flags', 'flags', ImcType.typeUInt8)
  PathControlStateBitfieldFlags get flags;

  /// Along-Track position value.
  @ImcField('Along Track Position', 'x', ImcType.typeFp32, units: 'm')
  double get x;

  /// Cross-Track position value.
  @ImcField('Cross Track Position', 'y', ImcType.typeFp32, units: 'm')
  double get y;

  /// Vertical-Track position value.
  @ImcField('Vertical Track Position', 'z', ImcType.typeFp32, units: 'm')
  double get z;

  /// Along-Track velocity value.
  @ImcField('Along Track Velocity', 'vx', ImcType.typeFp32, units: 'm/s')
  double get vx;

  /// Cross-Track velocity value.
  @ImcField('Cross Track Velocity', 'vy', ImcType.typeFp32, units: 'm/s')
  double get vy;

  /// Vertical-Track velocity value.
  @ImcField('Vertical Track Velocity', 'vz', ImcType.typeFp32, units: 'm/s')
  double get vz;

  /// Course error value.
  @ImcField('Course Error', 'course_error', ImcType.typeFp32, units: 'rad')
  double get courseError;

  /// Estimated time to reach target waypoint. The value will be
  /// 65535 if the time is unknown or undefined, and 0 when
  /// loitering.
  @ImcField('Estimated Time to Arrival (ETA)', 'eta', ImcType.typeUInt16, units: 's')
  int get eta;
}

/// Allocated Control Torques class
///
/// Control torques allocated to the actuators.
abstract class AllocatedControlTorques extends ImcMessage implements Built<AllocatedControlTorques, AllocatedControlTorquesBuilder> {
  static const static_id = 411;
  AllocatedControlTorques._();
  factory AllocatedControlTorques([void Function(AllocatedControlTorquesBuilder b) updates]) = _$AllocatedControlTorques;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'AllocatedControlTorques';

  /// Torque K about the vehicle's x axis.
  @ImcField('Torque about the x axis', 'k', ImcType.typeFp64, units: 'Nm')
  double get k;

  /// Torque M about the vehicle's y axis.
  @ImcField('Torque about the y axis', 'm', ImcType.typeFp64, units: 'Nm')
  double get m;

  /// Torque N about the vehicle's z axis.
  @ImcField('Torque about the x axis', 'n', ImcType.typeFp64, units: 'Nm')
  double get n;
}

/// Control Parcel class
///
/// Report of PID control parcels.
abstract class ControlParcel extends ImcMessage implements Built<ControlParcel, ControlParcelBuilder> {
  static const static_id = 412;
  ControlParcel._();
  factory ControlParcel([void Function(ControlParcelBuilder b) updates]) = _$ControlParcel;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'ControlParcel';

  /// Proportional parcel value.
  @ImcField('Proportional Parcel', 'p', ImcType.typeFp32)
  double get p;

  /// Integral parcel value.
  @ImcField('Integrative Parcel', 'i', ImcType.typeFp32)
  double get i;

  /// Derivative parcel value.
  @ImcField('Derivative Parcel', 'd', ImcType.typeFp32)
  double get d;

  /// Anti-windup parcel value.
  @ImcField('Anti-Windup Parcel', 'a', ImcType.typeFp32)
  double get a;
}

/// Brake class
///
/// Brake the vehicle in some way, i. e., reduce forward speed.
abstract class Brake extends ImcMessage implements Built<Brake, BrakeBuilder> {
  static const static_id = 413;
  Brake._();
  factory Brake([void Function(BrakeBuilder b) updates]) = _$Brake;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Brake';

  /// Brake operation.
  @ImcField('Operation', 'op', ImcType.typeUInt8)
  BrakeEnumOp get op;
}

/// Desired Linear State class
///
/// Position, velocity and acceleration setpoints in NED
abstract class DesiredLinearState extends ImcMessage implements Built<DesiredLinearState, DesiredLinearStateBuilder> {
  static const static_id = 414;
  DesiredLinearState._();
  factory DesiredLinearState([void Function(DesiredLinearStateBuilder b) updates]) = _$DesiredLinearState;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'DesiredLinearState';

  /// Desired pos in x.
  @ImcField('Desired pos in xx', 'x', ImcType.typeFp64, units: 'm')
  double get x;

  /// Desired pos in y.
  @ImcField('Desired pos in yy', 'y', ImcType.typeFp64, units: 'm')
  double get y;

  /// Desired pos in z.
  @ImcField('Desired pos in zz', 'z', ImcType.typeFp64, units: 'm')
  double get z;

  /// Desired speed along NED x axis.
  @ImcField('Desired Linear Speed in xx', 'vx', ImcType.typeFp64, units: 'm/s')
  double get vx;

  /// Desired speed along NED y axis.
  @ImcField('Desired Linear Speed in yy', 'vy', ImcType.typeFp64, units: 'm/s')
  double get vy;

  /// Desired speed along NED z axis.
  @ImcField('Desired Linear Speed in zz', 'vz', ImcType.typeFp64, units: 'm/s')
  double get vz;

  /// Desired acceleration along NED x axis.
  @ImcField('Desired Linear Acceleration in xx', 'ax', ImcType.typeFp64, units: 'm/s/s')
  double get ax;

  /// Desired acceleration along NED y axis.
  @ImcField('Desired Linear Acceleration in yy', 'ay', ImcType.typeFp64, units: 'm/s/s')
  double get ay;

  /// Desired acceleration along NED z axis.
  @ImcField('Desired Linear Acceleration in zz', 'az', ImcType.typeFp64, units: 'm/s/s')
  double get az;

  /// Setpoint Flags
  @ImcField('Flags', 'flags', ImcType.typeUInt16)
  DesiredLinearStateBitfieldFlags get flags;
}

/// Desired Throttle class
///
/// Desired throttle e.g. for Plane in FBWA-mode.
abstract class DesiredThrottle extends ControlCommand implements Built<DesiredThrottle, DesiredThrottleBuilder> {
  static const static_id = 415;
  DesiredThrottle._();
  factory DesiredThrottle([void Function(DesiredThrottleBuilder b) updates]) = _$DesiredThrottle;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'DesiredThrottle';

  /// The value of the desired throttle.
  @ImcField('Value', 'value', ImcType.typeFp64, units: '%')
  double get value;
}

/// Goto Maneuver class
///
/// A "Goto" is a maneuver specifying a movement of the vehicle to a
/// target waypoint. The waypoint is described by the WGS-84
/// waypoint coordinate and target Z reference.
/// 
/// Mandatory parameters defined for a "Goto" are
/// timeout, speed and speed units.
/// 
/// Optional parameters may be defined for the target Euler
/// Angles (roll, pitch and yaw) though these parameters may
/// not be considered by all maneuver controllers in charge
/// of the execution of this type of maneuver.
abstract class Goto extends Maneuver implements Built<Goto, GotoBuilder> {
  static const static_id = 450;
  Goto._();
  factory Goto([void Function(GotoBuilder b) updates]) = _$Goto;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Goto';

  /// The amount of time the maneuver is allowed to run.
  @ImcField('Timeout', 'timeout', ImcType.typeUInt16, units: 's')
  int get timeout;

  /// WGS-84 Latitude of target waypoint.
  @ImcField('Latitude WGS-84', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  /// WGS-84 Longitude of target waypoint.
  @ImcField('Longitude WGS-84', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;

  /// Target reference in the z axis. Use z_units to specify
  /// whether z represents depth, altitude or other.
  @ImcField('Z Reference', 'z', ImcType.typeFp32, units: 'm')
  double get z;

  /// Units of the z reference.
  @ImcField('Z Units', 'z_units', ImcType.typeUInt8)
  ZUnitsEnum get zUnits;

  /// Maneuver speed reference.
  @ImcField('Speed', 'speed', ImcType.typeFp32)
  double get speed;

  /// Speed units.
  @ImcField('Speed Units', 'speed_units', ImcType.typeUInt8)
  SpeedUnitsEnum get speedUnits;

  /// The phi Euler angle in which the vehicle should set its
  /// attitude. Use '-1' for this field to be
  /// unconsidered. Otherwise the value spans from 0 to 2 Pi.
  @ImcField('Roll', 'roll', ImcType.typeFp64, units: 'rad')
  double get roll;

  /// The theta Euler angle in which the vehicle should set its
  /// attitude. Use '-1' for this field to be
  /// disconcerted. Otherwise the value spans from 0 to 2 Pi.
  @ImcField('Pitch', 'pitch', ImcType.typeFp64, units: 'rad')
  double get pitch;

  /// The psi Euler angle in which the vehicle should set its
  /// attitude. Use '-1' for this field to be considered. Otherwise
  /// the value spans from 0 to 2 Pi.
  @ImcField('Yaw', 'yaw', ImcType.typeFp64, units: 'rad')
  double get yaw;

  /// Custom settings for maneuver.
  @ImcField('Custom settings for maneuver', 'custom', ImcType.typePlaintext, units: 'TupleList')
  String get custom;
}

/// PopUp Maneuver class
///
/// The Pop Up maneuver makes the vehicle come to the surface at a
/// specific waypoint. This maneuver is restricted to underwater vehicles.
abstract class PopUp extends Maneuver implements Built<PopUp, PopUpBuilder> {
  static const static_id = 451;
  PopUp._();
  factory PopUp([void Function(PopUpBuilder b) updates]) = _$PopUp;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'PopUp';

  /// The amount of time the maneuver is allowed to run. If the
  /// maneuver is not completed in the amount of time specified an
  /// error will be generated.
  @ImcField('Timeout', 'timeout', ImcType.typeUInt16, units: 's')
  int get timeout;

  /// WGS-84 Latitude.
  @ImcField('Latitude WGS-84', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  /// WGS-84 Longitude.
  @ImcField('Longitude WGS-84', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;

  /// Maneuver reference in the z axis. Use z_units to specify
  /// whether z represents depth, altitude or other.
  @ImcField('Z Reference', 'z', ImcType.typeFp32, units: 'm')
  double get z;

  /// Units of the z reference.
  @ImcField('Z Units', 'z_units', ImcType.typeUInt8)
  ZUnitsEnum get zUnits;

  /// Maneuver speed reference.
  @ImcField('Speed', 'speed', ImcType.typeFp32)
  double get speed;

  /// Speed units.
  @ImcField('Speed Units', 'speed_units', ImcType.typeUInt8)
  SpeedUnitsEnum get speedUnits;

  /// The duration of this maneuver at surface level.
  /// Only used if flag WAIT_AT_SURFACE is on.
  @ImcField('Duration', 'duration', ImcType.typeUInt16, units: 's')
  int get duration;

  /// Radius of the maneuver.
  /// Only used if flag STATION_KEEP is on.
  @ImcField('Radius', 'radius', ImcType.typeFp32, units: 'm')
  double get radius;

  /// Flags of the maneuver.
  @ImcField('Flags', 'flags', ImcType.typeUInt8)
  PopUpBitfieldFlags get flags;

  /// Custom settings for maneuver.
  @ImcField('Custom settings for maneuver', 'custom', ImcType.typePlaintext, units: 'TupleList')
  String get custom;
}

/// Teleoperation Maneuver class
///
/// The Teleoperation Maneuver lets the vehicle be controlled by an
/// external human operator.
abstract class Teleoperation extends Maneuver implements Built<Teleoperation, TeleoperationBuilder> {
  static const static_id = 452;
  Teleoperation._();
  factory Teleoperation([void Function(TeleoperationBuilder b) updates]) = _$Teleoperation;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Teleoperation';

  /// Custom settings for maneuver.
  @ImcField('Custom settings for maneuver', 'custom', ImcType.typePlaintext, units: 'TupleList')
  String get custom;
}

/// Loiter Maneuver class
///
/// The Loiter maneuver makes the vehicle circle around a specific
/// waypoint with fixed depth reference.
abstract class Loiter extends Maneuver implements Built<Loiter, LoiterBuilder> {
  static const static_id = 453;
  Loiter._();
  factory Loiter([void Function(LoiterBuilder b) updates]) = _$Loiter;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Loiter';

  /// The timeout indicates the time that an error should occur if
  /// exceeded.
  @ImcField('Timeout', 'timeout', ImcType.typeUInt16, units: 's')
  int get timeout;

  /// WGS-84 Latitude coordinate.
  @ImcField('Latitude WGS-84', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  /// WGS-84 Longitude coordinate.
  @ImcField('Longitude WGS-84', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;

  /// Maneuver reference in the z axis. Use z_units to specify
  /// whether z represents depth, altitude or other.
  @ImcField('Z Reference', 'z', ImcType.typeFp32, units: 'm')
  double get z;

  /// Units of the z reference.
  @ImcField('Z Units', 'z_units', ImcType.typeUInt8)
  ZUnitsEnum get zUnits;

  /// The duration of this maneuver. Use '0' for unlimited duration
  /// time.
  @ImcField('Duration', 'duration', ImcType.typeUInt16, units: 's')
  int get duration;

  /// Maneuver speed reference.
  @ImcField('Speed', 'speed', ImcType.typeFp32)
  double get speed;

  /// Speed units.
  @ImcField('Speed Units', 'speed_units', ImcType.typeUInt8)
  SpeedUnitsEnum get speedUnits;

  /// Loiter maneuver type.
  @ImcField('Loiter Type', 'type', ImcType.typeUInt8)
  LoiterEnumType get type;

  /// Radius of the maneuver.
  @ImcField('Radius', 'radius', ImcType.typeFp32, units: 'm')
  double get radius;

  /// Length of the maneuver.
  @ImcField('Length', 'length', ImcType.typeFp32, units: 'm')
  double get length;

  /// Bearing of the maneuver.
  @ImcField('Bearing', 'bearing', ImcType.typeFp64, units: 'rad')
  double get bearing;

  /// Desired direction.
  @ImcField('Direction', 'direction', ImcType.typeUInt8)
  LoiterEnumDirection get direction;

  /// Custom settings for maneuver.
  @ImcField('Custom settings for maneuver', 'custom', ImcType.typePlaintext, units: 'TupleList')
  String get custom;
}

/// Idle Maneuver class
///
/// Causes the vehicle to stay idle for some time.
abstract class IdleManeuver extends Maneuver implements Built<IdleManeuver, IdleManeuverBuilder> {
  static const static_id = 454;
  IdleManeuver._();
  factory IdleManeuver([void Function(IdleManeuverBuilder b) updates]) = _$IdleManeuver;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'IdleManeuver';

  /// Optional duration of the Idle maneuver. Use '0' for unlimited
  /// duration time (maneuver will have to be explicitly stopped).
  @ImcField('Duration', 'duration', ImcType.typeUInt16, units: 's')
  int get duration;

  /// Custom settings for maneuver.
  @ImcField('Custom settings for maneuver', 'custom', ImcType.typePlaintext, units: 'TupleList')
  String get custom;
}

/// Low Level Control Maneuver class
///
/// Low level maneuver that sends a (heading, roll, speed, ...)
/// reference to a controller of the vehicle and then optionally
/// lingers for some time.
abstract class LowLevelControl extends Maneuver implements Built<LowLevelControl, LowLevelControlBuilder> {
  static const static_id = 455;
  LowLevelControl._();
  factory LowLevelControl([void Function(LowLevelControlBuilder b) updates]) = _$LowLevelControl;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'LowLevelControl';

  /// Control command: can be of type DesiredZ, DesiredHeading,
  /// DesiredRoll, DesiredPitch, DesiredSpeed, DesiredThrottle or DesiredPath.
  @ImcField('Control', 'control', ImcType.typeMessage)
  ControlCommand get control;

  /// Duration of the control.
  @ImcField('Duration', 'duration', ImcType.typeUInt16, units: 's')
  int get duration;

  /// Custom settings for maneuver.
  @ImcField('Custom settings for maneuver', 'custom', ImcType.typePlaintext, units: 'TupleList')
  String get custom;
}

/// Rows Maneuver class
///
/// Rows maneuver (i.e: lawn mower type maneuver)
abstract class Rows extends Maneuver implements Built<Rows, RowsBuilder> {
  static const static_id = 456;
  Rows._();
  factory Rows([void Function(RowsBuilder b) updates]) = _$Rows;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Rows';

  /// The amount of time the maneuver is allowed to run.
  @ImcField('Timeout', 'timeout', ImcType.typeUInt16, units: 's')
  int get timeout;

  /// WGS-84 Latitude of target waypoint.
  @ImcField('Latitude WGS-84', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  /// WGS-84 Longitude of target waypoint.
  @ImcField('Longitude WGS-84', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;

  /// Maneuver reference in the z axis. Use z_units to specify
  /// whether z represents depth, altitude or other.
  @ImcField('Z Reference', 'z', ImcType.typeFp32, units: 'm')
  double get z;

  /// Units of the z reference.
  @ImcField('Z Units', 'z_units', ImcType.typeUInt8)
  ZUnitsEnum get zUnits;

  /// Maneuver speed reference.
  @ImcField('Speed', 'speed', ImcType.typeFp32)
  double get speed;

  /// Speed units.
  @ImcField('Speed Units', 'speed_units', ImcType.typeUInt8)
  SpeedUnitsEnum get speedUnits;

  /// Rows bearing angle.
  @ImcField('Bearing', 'bearing', ImcType.typeFp64, units: 'rad')
  double get bearing;

  /// Rows cross angle reference.
  @ImcField('Cross Angle', 'cross_angle', ImcType.typeFp64, units: 'rad')
  double get crossAngle;

  /// Width of the maneuver.
  @ImcField('Width', 'width', ImcType.typeFp32, units: 'm')
  double get width;

  /// Length of the maneuver.
  @ImcField('Length', 'length', ImcType.typeFp32, units: 'm')
  double get length;

  /// Horizontal step.
  @ImcField('Horizontal Step', 'hstep', ImcType.typeFp32, units: 'm')
  double get hstep;

  /// Desired curve offset.
  @ImcField('Curve Offset', 'coff', ImcType.typeUInt8, units: 'm')
  int get coff;

  /// Alternation parameter.
  @ImcField('Alternation Parameter', 'alternation', ImcType.typeUInt8, units: '%')
  int get alternation;

  /// Maneuver flags.
  @ImcField('Flags', 'flags', ImcType.typeUInt8)
  RowsBitfieldFlags get flags;

  /// Custom settings for maneuver.
  @ImcField('Custom settings for maneuver', 'custom', ImcType.typePlaintext, units: 'TupleList')
  String get custom;
}

/// Follow Path Maneuver class
///
/// Maneuver constituted by a list of Path Points.
abstract class FollowPath extends Maneuver implements Built<FollowPath, FollowPathBuilder> {
  static const static_id = 457;
  FollowPath._();
  factory FollowPath([void Function(FollowPathBuilder b) updates]) = _$FollowPath;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'FollowPath';

  /// The amount of time the maneuver is allowed to run.
  @ImcField('Timeout', 'timeout', ImcType.typeUInt16, units: 's')
  int get timeout;

  /// WGS-84 Latitude of start point.
  @ImcField('Latitude WGS-84', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  /// WGS-84 Longitude of start point.
  @ImcField('Longitude WGS-84', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;

  /// Maneuver reference in the z axis. Use z_units to specify
  /// whether z represents depth, altitude or other.
  @ImcField('Z Reference', 'z', ImcType.typeFp32, units: 'm')
  double get z;

  /// Units of the z reference.
  @ImcField('Z Units', 'z_units', ImcType.typeUInt8)
  ZUnitsEnum get zUnits;

  /// Maneuver speed reference.
  @ImcField('Speed', 'speed', ImcType.typeFp32)
  double get speed;

  /// Speed units.
  @ImcField('Speed Units', 'speed_units', ImcType.typeUInt8)
  SpeedUnitsEnum get speedUnits;

  /// List of PathPoint messages, encoding the path points.
  @ImcField('Path Points', 'points', ImcType.typeMessageList)
  List<PathPoint> get points;

  /// Custom settings for maneuver.
  @ImcField('Custom settings for maneuver', 'custom', ImcType.typePlaintext, units: 'TupleList')
  String get custom;
}

/// Path Point class
///
/// Waypoint coordinate of a Follow Path maneuver.
abstract class PathPoint extends ImcMessage implements Built<PathPoint, PathPointBuilder> {
  static const static_id = 458;
  PathPoint._();
  factory PathPoint([void Function(PathPointBuilder b) updates]) = _$PathPoint;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'PathPoint';

  /// The North offset of the North/East/Down coordinate of this
  /// point in relation to the path start point.
  @ImcField('North Offset (m)', 'x', ImcType.typeFp32, units: 'm')
  double get x;

  /// The East offset of the North/East/Down coordinate of this
  /// point in relation to the path start point.
  @ImcField('East Offset (m)', 'y', ImcType.typeFp32, units: 'm')
  double get y;

  /// The Down offset of the North/East/Down coordinate of this
  /// point in relation to the path start point.
  @ImcField('Down Offset (m)', 'z', ImcType.typeFp32, units: 'm')
  double get z;
}

/// Yo-Yo Maneuver class
///
/// A "yo-yo" is a maneuver specifying a vehicle movement to a
/// target waypoint in which depth/altitude varies along the way
/// between two values with a desired pitch angle.
abstract class YoYo extends Maneuver implements Built<YoYo, YoYoBuilder> {
  static const static_id = 459;
  YoYo._();
  factory YoYo([void Function(YoYoBuilder b) updates]) = _$YoYo;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'YoYo';

  /// The amount of time the maneuver is allowed to run.
  @ImcField('Timeout', 'timeout', ImcType.typeUInt16, units: 's')
  int get timeout;

  /// WGS-84 Latitude of target waypoint.
  @ImcField('Latitude WGS-84', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  /// WGS-84 Longitude of target waypoint.
  @ImcField('Longitude WGS-84', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;

  /// Maneuver reference in the z axis.
  /// Use z_units to specify whether z represents depth, altitude or other.
  @ImcField('Z Reference', 'z', ImcType.typeFp32, units: 'm')
  double get z;

  /// Units of the z reference.
  @ImcField('Z Units', 'z_units', ImcType.typeUInt8)
  ZUnitsEnum get zUnits;

  /// Amplitude.
  @ImcField('Amplitude', 'amplitude', ImcType.typeFp32, units: 'm')
  double get amplitude;

  /// Pitch angle for use in ascent/descent.
  @ImcField('Pitch Angle', 'pitch', ImcType.typeFp32, units: 'rad')
  double get pitch;

  /// Maneuver speed reference.
  @ImcField('Speed', 'speed', ImcType.typeFp32)
  double get speed;

  /// Speed units.
  @ImcField('Speed Units', 'speed_units', ImcType.typeUInt8)
  SpeedUnitsEnum get speedUnits;

  /// Custom settings for maneuver.
  @ImcField('Custom settings for maneuver', 'custom', ImcType.typePlaintext, units: 'TupleList')
  String get custom;
}

/// Teleoperation Done class
///
/// Notification of completion of a Teleoperation maneuver.
abstract class TeleoperationDone extends ImcMessage implements Built<TeleoperationDone, TeleoperationDoneBuilder> {
  static const static_id = 460;
  TeleoperationDone._();
  factory TeleoperationDone([void Function(TeleoperationDoneBuilder b) updates]) = _$TeleoperationDone;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'TeleoperationDone';
}

/// Station Keeping class
///
/// The Station Keeping maneuver makes the vehicle come to the surface
/// and then enter a given circular perimeter around a waypoint coordinate
/// for a certain amount of time.
abstract class StationKeeping extends Maneuver implements Built<StationKeeping, StationKeepingBuilder> {
  static const static_id = 461;
  StationKeeping._();
  factory StationKeeping([void Function(StationKeepingBuilder b) updates]) = _$StationKeeping;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'StationKeeping';

  /// WGS-84 Latitude.
  @ImcField('Latitude WGS-84', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  /// WGS-84 Longitude.
  @ImcField('Longitude WGS-84', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;

  /// Maneuver reference in the z axis. Use z_units to specify
  /// whether z represents depth, altitude or other.
  @ImcField('Z Reference', 'z', ImcType.typeFp32, units: 'm')
  double get z;

  /// Units of the z reference.
  @ImcField('Z Units', 'z_units', ImcType.typeUInt8)
  ZUnitsEnum get zUnits;

  /// Radius.
  @ImcField('Radius', 'radius', ImcType.typeFp32, units: 'm')
  double get radius;

  /// Duration (0 for unlimited).
  @ImcField('Duration', 'duration', ImcType.typeUInt16, units: 's')
  int get duration;

  /// The value of the desired speed, in the scale specified
  /// by the "Speed Units" field.
  @ImcField('Speed', 'speed', ImcType.typeFp32)
  double get speed;

  /// Indicates the units used for the speed value.
  @ImcField('Speed Units', 'speed_units', ImcType.typeUInt8)
  SpeedUnitsEnum get speedUnits;

  /// Custom settings for maneuver.
  @ImcField('Custom settings for maneuver', 'custom', ImcType.typePlaintext, units: 'TupleList')
  String get custom;
}

/// Elevator Maneuver class
///
/// The Elevator maneuver specifies a vehicle to reach a target
/// waypoint using a cruise altitude/depth and then ascend or
/// descend to another target altitude/depth. The ascent/descent
/// slope and radius can also be optionally specified.
abstract class Elevator extends Maneuver implements Built<Elevator, ElevatorBuilder> {
  static const static_id = 462;
  Elevator._();
  factory Elevator([void Function(ElevatorBuilder b) updates]) = _$Elevator;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Elevator';

  /// The amount of time the maneuver is allowed to run. If the
  /// maneuver is not completed in the amount of time specified an
  /// error will be generated.
  @ImcField('Timeout', 'timeout', ImcType.typeUInt16, units: 's')
  int get timeout;

  /// Flags of the maneuver.
  @ImcField('Flags', 'flags', ImcType.typeUInt8)
  ElevatorBitfieldFlags get flags;

  /// WGS-84 Latitude.
  @ImcField('Latitude WGS-84', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  /// WGS-84 Longitude.
  @ImcField('Longitude WGS-84', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;

  /// Altitude or depth of start point. This parameter will be
  /// ignored if the 'NO_Z' flag is set, or if the 'START' flag is
  /// not set.
  @ImcField('Start Point -- Z Reference', 'start_z', ImcType.typeFp32, units: 'm')
  double get startZ;

  /// Units of the start point's z reference.
  @ImcField('Start Point -- Z Units', 'start_z_units', ImcType.typeUInt8)
  ZUnitsEnum get startZUnits;

  /// Depth or altitude for the end point.  This parameter will be
  /// ignored if the 'NO_Z' flag is set.
  @ImcField('End Point -- Z Reference', 'end_z', ImcType.typeFp32, units: 'm')
  double get endZ;

  /// Units of the end point's z reference.
  @ImcField('End Point -- Z Units', 'end_z_units', ImcType.typeUInt8)
  ZUnitsEnum get endZUnits;

  /// Radius for use in ascent/descent. If 0 the controller to
  /// should use a custom control strategy.
  @ImcField('Radius', 'radius', ImcType.typeFp32, units: 'm')
  double get radius;

  /// Maneuver speed.
  @ImcField('Speed', 'speed', ImcType.typeFp32)
  double get speed;

  /// Speed units.
  @ImcField('Speed Units', 'speed_units', ImcType.typeUInt8)
  SpeedUnitsEnum get speedUnits;

  /// Custom settings for maneuver.
  @ImcField('Custom settings for maneuver', 'custom', ImcType.typePlaintext, units: 'TupleList')
  String get custom;
}

/// Follow Trajectory class
///
/// Maneuver constituted by a list of Trajectory Points.
abstract class FollowTrajectory extends Maneuver implements Built<FollowTrajectory, FollowTrajectoryBuilder> {
  static const static_id = 463;
  FollowTrajectory._();
  factory FollowTrajectory([void Function(FollowTrajectoryBuilder b) updates]) = _$FollowTrajectory;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'FollowTrajectory';

  /// The amount of time the maneuver is allowed to run.
  @ImcField('Timeout', 'timeout', ImcType.typeUInt16, units: 's')
  int get timeout;

  /// WGS-84 Latitude for start point.
  @ImcField('Latitude WGS-84', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  /// WGS-84 Longitude for start point.
  @ImcField('Longitude WGS-84', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;

  /// Maneuver reference in the z axis. Use z_units to specify
  /// whether z represents depth, altitude or other.
  @ImcField('Z Reference', 'z', ImcType.typeFp32, units: 'm')
  double get z;

  /// Units of the z reference.
  @ImcField('Z Units', 'z_units', ImcType.typeUInt8)
  ZUnitsEnum get zUnits;

  /// Maneuver speed.
  @ImcField('Speed', 'speed', ImcType.typeFp32)
  double get speed;

  /// Speed units.
  @ImcField('Speed Units', 'speed_units', ImcType.typeUInt8)
  SpeedUnitsEnum get speedUnits;

  /// List of trajectory points.
  @ImcField('Trajectory Points', 'points', ImcType.typeMessageList)
  List<TrajectoryPoint> get points;

  /// Custom settings for maneuver.
  @ImcField('Custom settings for maneuver', 'custom', ImcType.typePlaintext, units: 'TupleList')
  String get custom;
}

/// Trajectory Point class
///
/// Waypoint coordinate of a Follow Trajectory maneuver.
abstract class TrajectoryPoint extends ImcMessage implements Built<TrajectoryPoint, TrajectoryPointBuilder> {
  static const static_id = 464;
  TrajectoryPoint._();
  factory TrajectoryPoint([void Function(TrajectoryPointBuilder b) updates]) = _$TrajectoryPoint;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'TrajectoryPoint';

  /// The North offset of the North/East/Down coordinate of this
  /// point in relation to the trajectory start point.
  @ImcField('North Offset (m)', 'x', ImcType.typeFp32, units: 'm')
  double get x;

  /// The East offset of the North/East/Down coordinate of this
  /// point in relation to the trajectory start point.
  @ImcField('East Offset (m)', 'y', ImcType.typeFp32, units: 'm')
  double get y;

  /// The Down offset of the North/East/Down coordinate of this
  /// point in relation to the trajectory start point.
  @ImcField('Down Offset (m)', 'z', ImcType.typeFp32, units: 'm')
  double get z;

  /// The time offset relative to the previous trajectory point.
  @ImcField('Time Offset (s)', 't', ImcType.typeFp32, units: 's')
  double get t;
}

/// Custom Maneuver class
///
/// The Custom Maneuver message may be used as specification of a
/// very specific maneuver not covered by the IMC scope. The
/// settings of the maneuver are just its id, timeout and other
/// settings encoded as a tuple list.
abstract class CustomManeuver extends Maneuver implements Built<CustomManeuver, CustomManeuverBuilder> {
  static const static_id = 465;
  CustomManeuver._();
  factory CustomManeuver([void Function(CustomManeuverBuilder b) updates]) = _$CustomManeuver;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'CustomManeuver';

  /// The amount of time the maneuver is allowed to run. If the
  /// maneuver is not completed in the amount of time specified an
  /// error will be generated.
  @ImcField('Timeout', 'timeout', ImcType.typeUInt16, units: 's')
  int get timeout;

  /// The maneuver name, used as key by an implementation to bind
  /// the maneuver to the corresponding controller.
  @ImcField('Maneuver Name', 'name', ImcType.typePlaintext)
  String get name;

  /// Custom settings for maneuver.
  @ImcField('Custom settings for maneuver', 'custom', ImcType.typePlaintext, units: 'TupleList')
  String get custom;
}

/// Vehicle Formation class
///
/// Coordinate maneuver using two or more cooperating systems.
abstract class VehicleFormation extends Maneuver implements Built<VehicleFormation, VehicleFormationBuilder> {
  static const static_id = 466;
  VehicleFormation._();
  factory VehicleFormation([void Function(VehicleFormationBuilder b) updates]) = _$VehicleFormation;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'VehicleFormation';

  /// WGS-84 Latitude for start point.
  @ImcField('Latitude WGS-84', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  /// WGS-84 Longitude for start point.
  @ImcField('Longitude WGS-84', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;

  /// Maneuver reference in the z axis. Use z_units to specify
  /// whether z represents depth, altitude or other.
  @ImcField('Z Reference', 'z', ImcType.typeFp32, units: 'm')
  double get z;

  /// Units of the z reference.
  @ImcField('Z Units', 'z_units', ImcType.typeUInt8)
  ZUnitsEnum get zUnits;

  /// Reference speed.
  @ImcField('Speed', 'speed', ImcType.typeFp32)
  double get speed;

  /// Reference speed units.
  @ImcField('Speed Units', 'speed_units', ImcType.typeUInt8)
  SpeedUnitsEnum get speedUnits;

  /// List of trajectory points.
  @ImcField('Trajectory Points', 'points', ImcType.typeMessageList)
  List<TrajectoryPoint> get points;

  /// List of formation participants.
  @ImcField('Formation Participants', 'participants', ImcType.typeMessageList)
  List<VehicleFormationParticipant> get participants;

  /// Optional start time hint for vehicle formation.
  @ImcField('Start Time', 'start_time', ImcType.typeFp64, units: 's')
  double get startTime;

  /// Custom settings for maneuver.
  @ImcField('Custom settings for maneuver', 'custom', ImcType.typePlaintext, units: 'TupleList')
  String get custom;
}

/// Vehicle Formation Participant class
///
/// Definition of a vehicle participant in a VehicleFormation maneuver.
abstract class VehicleFormationParticipant extends ImcMessage implements Built<VehicleFormationParticipant, VehicleFormationParticipantBuilder> {
  static const static_id = 467;
  VehicleFormationParticipant._();
  factory VehicleFormationParticipant([void Function(VehicleFormationParticipantBuilder b) updates]) = _$VehicleFormationParticipant;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'VehicleFormationParticipant';

  /// IMC address of vehicle.
  @ImcField('ID (IMC address)', 'vid', ImcType.typeUInt16)
  int get vid;

  /// Distance that the system must respect along the xx axis.
  @ImcField('Formation offset -- Along-track', 'off_x', ImcType.typeFp32, units: 'm')
  double get offX;

  /// Distance that the system must respect along the yy axis.
  @ImcField('Formation offset -- Cross-track', 'off_y', ImcType.typeFp32, units: 'm')
  double get offY;

  /// Distance that the system must respect along the zz axis.
  @ImcField('Formation offset -- Depth/Altitude', 'off_z', ImcType.typeFp32, units: 'm')
  double get offZ;
}

/// Stop Maneuver class
///
/// Command used to stop currently executing maneuver.
abstract class StopManeuver extends ImcMessage implements Built<StopManeuver, StopManeuverBuilder> {
  static const static_id = 468;
  StopManeuver._();
  factory StopManeuver([void Function(StopManeuverBuilder b) updates]) = _$StopManeuver;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'StopManeuver';
}

/// Register Maneuver class
///
/// Command used to indicate maneuver can be executed in the
/// vehicle.
abstract class RegisterManeuver extends ImcMessage implements Built<RegisterManeuver, RegisterManeuverBuilder> {
  static const static_id = 469;
  RegisterManeuver._();
  factory RegisterManeuver([void Function(RegisterManeuverBuilder b) updates]) = _$RegisterManeuver;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'RegisterManeuver';

  /// IMC serialization ID of maneuver type.
  @ImcField('Maneuver ID', 'mid', ImcType.typeUInt16)
  int get mid;
}

/// Maneuver Control State class
///
/// Maneuver control state.
abstract class ManeuverControlState extends ImcMessage implements Built<ManeuverControlState, ManeuverControlStateBuilder> {
  static const static_id = 470;
  ManeuverControlState._();
  factory ManeuverControlState([void Function(ManeuverControlStateBuilder b) updates]) = _$ManeuverControlState;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'ManeuverControlState';

  /// Code indicating maneuver state.
  @ImcField('State', 'state', ImcType.typeUInt8)
  ManeuverControlStateEnumState get state;

  /// Estimated time to completion of the maneuver, when executing.
  /// The value will be 65535 if the time is unknown or undefined.
  @ImcField('Completion Time', 'eta', ImcType.typeUInt16, units: 's')
  int get eta;

  /// Complementary information, e.g., regarding errors.
  @ImcField('Info', 'info', ImcType.typePlaintext)
  String get info;
}

/// Follow System class
///
/// System-following maneuver.
abstract class FollowSystem extends ImcMessage implements Built<FollowSystem, FollowSystemBuilder> {
  static const static_id = 471;
  FollowSystem._();
  factory FollowSystem([void Function(FollowSystemBuilder b) updates]) = _$FollowSystem;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'FollowSystem';

  /// IMC address of system to follow.
  @ImcField('System To Follow', 'system', ImcType.typeUInt16)
  int get system;

  /// Duration of maneuver, 0 for unlimited duration.
  @ImcField('Duration', 'duration', ImcType.typeUInt16, units: 's')
  int get duration;

  /// Reference speed.
  @ImcField('Speed', 'speed', ImcType.typeFp32)
  double get speed;

  /// Reference speed units.
  @ImcField('Speed Units', 'speed_units', ImcType.typeUInt8)
  SpeedUnitsEnum get speedUnits;

  /// Along-track offset.
  @ImcField('Offset -- X', 'x', ImcType.typeFp32)
  double get x;

  /// Cross-track offset.
  @ImcField('Offset -- Y', 'y', ImcType.typeFp32)
  double get y;

  /// Coordinate z during follow maneuver. Use z_units to specify
  /// whether z represents depth, altitude or other.
  @ImcField('Coordinate -- Z', 'z', ImcType.typeFp32)
  double get z;

  /// Units of the z reference.
  @ImcField('Z Units', 'z_units', ImcType.typeUInt8)
  ZUnitsEnum get zUnits;
}

/// Communications Relay class
///
/// In this maneuver, a vehicle drives to the center of two other
/// systems (a, b) in order to be used as a communications relay.
abstract class CommsRelay extends Maneuver implements Built<CommsRelay, CommsRelayBuilder> {
  static const static_id = 472;
  CommsRelay._();
  factory CommsRelay([void Function(CommsRelayBuilder b) updates]) = _$CommsRelay;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'CommsRelay';

  /// WGS-84 Latitude for start point.
  @ImcField('Latitude WGS-84', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  /// WGS-84 Longitude for start point.
  @ImcField('Longitude WGS-84', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;

  /// Reference speed.
  @ImcField('Speed', 'speed', ImcType.typeFp32)
  double get speed;

  /// Reference speed units.
  @ImcField('Speed Units', 'speed_units', ImcType.typeUInt8)
  SpeedUnitsEnum get speedUnits;

  /// Duration of maneuver, 0 for unlimited duration.
  @ImcField('Duration', 'duration', ImcType.typeUInt16, units: 's')
  int get duration;

  /// The IMC id of the system A.
  @ImcField('System A', 'sys_a', ImcType.typeUInt16)
  int get sysA;

  /// The IMC id of the system B.
  @ImcField('System B', 'sys_b', ImcType.typeUInt16)
  int get sysB;

  /// Move only if the distance to the target is bigger than this
  /// threshold.
  @ImcField('Move threshold', 'move_threshold', ImcType.typeFp32, units: 'm')
  double get moveThreshold;
}

/// Cover Area class
///
/// Given a polygonal area, generates trajectories to cover the
/// area.
abstract class CoverArea extends Maneuver implements Built<CoverArea, CoverAreaBuilder> {
  static const static_id = 473;
  CoverArea._();
  factory CoverArea([void Function(CoverAreaBuilder b) updates]) = _$CoverArea;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'CoverArea';

  /// WGS-84 Latitude for start point.
  @ImcField('Latitude WGS-84', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  /// WGS-84 Longitude for start point.
  @ImcField('Longitude WGS-84', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;

  /// Maneuver reference in the z axis. Use z_units to specify
  /// whether z represents depth, altitude or other.
  @ImcField('Z Reference', 'z', ImcType.typeFp32, units: 'm')
  double get z;

  /// Units of the z reference.
  @ImcField('Z Units', 'z_units', ImcType.typeUInt8)
  ZUnitsEnum get zUnits;

  /// Reference speed.
  @ImcField('Speed', 'speed', ImcType.typeFp32)
  double get speed;

  /// Reference speed units.
  @ImcField('Speed Units', 'speed_units', ImcType.typeUInt8)
  SpeedUnitsEnum get speedUnits;

  /// Message list of type PolygonVertex.
  @ImcField('Polygon', 'polygon', ImcType.typeMessageList)
  List<PolygonVertex> get polygon;

  /// Additional parameters to be used by the controller.
  @ImcField('CustomParameters', 'custom', ImcType.typePlaintext, units: 'TupleList')
  String get custom;
}

/// Polygon Vertex class
///
/// This message is used to store the various polygon vertices for
/// CoverArea maneuvers.
abstract class PolygonVertex extends ImcMessage implements Built<PolygonVertex, PolygonVertexBuilder> {
  static const static_id = 474;
  PolygonVertex._();
  factory PolygonVertex([void Function(PolygonVertexBuilder b) updates]) = _$PolygonVertex;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'PolygonVertex';

  /// WGS-84 Latitude for start point.
  @ImcField('Latitude WGS-84', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  /// WGS-84 Longitude for start point.
  @ImcField('Longitude WGS-84', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;
}

/// Compass Calibration Maneuver class
///
/// This maneuver is a mix between the Loiter maneuver and the YoYo maneuver.
/// The vehicle cirlcles around a specific waypoint with a variable Z
/// reference between a minimum and maximum value.
abstract class CompassCalibration extends Maneuver implements Built<CompassCalibration, CompassCalibrationBuilder> {
  static const static_id = 475;
  CompassCalibration._();
  factory CompassCalibration([void Function(CompassCalibrationBuilder b) updates]) = _$CompassCalibration;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'CompassCalibration';

  /// The timeout indicates the time that an error should occur if
  /// exceeded.
  @ImcField('Timeout', 'timeout', ImcType.typeUInt16, units: 's')
  int get timeout;

  /// WGS-84 Latitude coordinate.
  @ImcField('Latitude WGS-84', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  /// WGS-84 Longitude coordinate.
  @ImcField('Longitude WGS-84', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;

  /// Maneuver reference in the z axis. Use z_units to specify
  /// whether z represents depth, altitude or other.
  @ImcField('Z Reference', 'z', ImcType.typeFp32, units: 'm')
  double get z;

  /// Units of the z reference.
  @ImcField('Z Units', 'z_units', ImcType.typeUInt8)
  ZUnitsEnum get zUnits;

  /// Pitch angle used to perform the maneuver.
  @ImcField('Pitch', 'pitch', ImcType.typeFp32, units: 'rad')
  double get pitch;

  /// Yoyo motion amplitude.
  @ImcField('Amplitude', 'amplitude', ImcType.typeFp32, units: 'm')
  double get amplitude;

  /// The duration of this maneuver. Use '0' for unlimited duration time.
  @ImcField('Duration', 'duration', ImcType.typeUInt16, units: 's')
  int get duration;

  /// Maneuver speed.
  @ImcField('Speed', 'speed', ImcType.typeFp32)
  double get speed;

  /// Speed units.
  @ImcField('Speed Units', 'speed_units', ImcType.typeUInt8)
  SpeedUnitsEnum get speedUnits;

  /// Radius of the maneuver.
  @ImcField('Radius', 'radius', ImcType.typeFp32, units: 'm')
  double get radius;

  /// Direction of the maneuver.
  @ImcField('Direction', 'direction', ImcType.typeUInt8)
  CompassCalibrationEnumDirection get direction;

  /// Custom settings for maneuver.
  @ImcField('Custom settings for maneuver', 'custom', ImcType.typePlaintext, units: 'TupleList')
  String get custom;
}

/// Formation Parameters class
///
/// A "Formation" is defined by the relative positions of the vehicles
/// inside the formation, and the reference frame where this positions are defined.
/// 
/// The formation reference frame may be:
/// - Earth Fixed: Where the vehicles relative position do not depend on the followed path.
/// This results in all UAVs following the same path with an offset relative to each other;
/// - Path Fixed:  Where the vehicles relative position depends on the followed path,
/// changing the inter-vehicle offset direction with the path direction.
/// - Path Curved:  Where the vehicles relative position depends on the followed path,
/// changing the inter-vehicle offset direction with the path direction and direction
/// change rate.
/// An offset in the xx axis results in a distance over the curved path line.
/// An offset in the yy axis results in an offset of the vehicle path line relative to the
/// formation center path line.
abstract class FormationParameters extends ImcMessage implements Built<FormationParameters, FormationParametersBuilder> {
  static const static_id = 476;
  FormationParameters._();
  factory FormationParameters([void Function(FormationParametersBuilder b) updates]) = _$FormationParameters;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'FormationParameters';

  /// Name of the formation configuration.
  @ImcField('Formation Name', 'formation_name', ImcType.typePlaintext)
  String get formationName;

  /// Formation reference frame
  @ImcField('Formation Reference Frame', 'reference_frame', ImcType.typeUInt8)
  FormationParametersEnumReferenceFrame get referenceFrame;

  /// List of formation participants.
  @ImcField('Formation Participants', 'participants', ImcType.typeMessageList)
  List<VehicleFormationParticipant> get participants;

  /// Custom settings for the formation configuration.
  @ImcField('Custom settings for formation', 'custom', ImcType.typePlaintext, units: 'TupleList')
  String get custom;
}

/// Formation Plan Execution class
///
/// A "Formation Plan" is a maneuver specifying a plan for a team of vehicles.
/// The maneuver defines:
/// - Vehicles included in the formation group
/// - Formation shape configuration
/// - Plan (set of maneuvers) to be followed by the formation center
/// - Speed at which that plan is followed
/// - Path contrains (virtual leader bank limit)
/// - Supervision settings
abstract class FormationPlanExecution extends Maneuver implements Built<FormationPlanExecution, FormationPlanExecutionBuilder> {
  static const static_id = 477;
  FormationPlanExecution._();
  factory FormationPlanExecution([void Function(FormationPlanExecutionBuilder b) updates]) = _$FormationPlanExecution;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'FormationPlanExecution';

  /// Target group for the formation plan.
  @ImcField('Target Group Name', 'group_name', ImcType.typePlaintext)
  String get groupName;

  /// Name of the formation configuration.
  @ImcField('Formation Name', 'formation_name', ImcType.typePlaintext)
  String get formationName;

  /// The flight plan's identifier.
  /// Flight plan defined to be tracked by the formation leader.
  @ImcField('Formation Plan ID', 'plan_id', ImcType.typePlaintext)
  String get planId;

  /// Verbose text description of plan.
  @ImcField('Plan Description', 'description', ImcType.typePlaintext)
  String get description;

  /// Formation leader flight airspeed during the plan tracking.
  @ImcField('Formation Leader Flight Airspeed', 'leader_speed', ImcType.typeFp32, units: 'm/s')
  double get leaderSpeed;

  /// Formation leader flight bank limit during the plan tracking.
  @ImcField('Formation leader flight bank limit', 'leader_bank_lim', ImcType.typeFp32, units: 'm/s')
  double get leaderBankLim;

  /// Limit for the position mismatch between real and simulated position, before a maneuver abort is asserted.
  @ImcField('Position mismatch limit', 'pos_sim_err_lim', ImcType.typeFp32, units: 'm')
  double get posSimErrLim;

  /// Warning threshold for the position mismatch between real and simulated position.
  /// Above this threshold a time-out limit is evaluated to assert a maneuver abort state.
  @ImcField('Position mismatch threshold', 'pos_sim_err_wrn', ImcType.typeFp32, units: 'm')
  double get posSimErrWrn;

  /// The amount of time the maneuver is allowed to run after the position mismatch threshold is surpassed.
  @ImcField('Position mismatch time-out', 'pos_sim_err_timeout', ImcType.typeUInt16, units: 's')
  int get posSimErrTimeout;

  /// Threshold for the convergence measure, above which a time-out limit
  /// is evaluated to assert a maneuver abort state.
  @ImcField('Convergence threshold', 'converg_max', ImcType.typeFp32, units: 'm')
  double get convergMax;

  /// The amount of time the maneuver is allowed to run after the convergence threshold is surpassed.
  @ImcField('Convergence time-out', 'converg_timeout', ImcType.typeUInt16, units: 's')
  int get convergTimeout;

  /// The amount of time the maneuver is allowed to run without any update on the other formation vehicles states.
  @ImcField('Communications time-out', 'comms_timeout', ImcType.typeUInt16, units: 's')
  int get commsTimeout;

  /// Turbulence limit above which a maneuver abort is asserted.
  @ImcField('Turbulence limit', 'turb_lim', ImcType.typeFp32, units: 'm/s')
  double get turbLim;

  /// Custom settings for maneuver.
  @ImcField('Custom settings for maneuver', 'custom', ImcType.typePlaintext, units: 'TupleList')
  String get custom;
}

/// Follow Reference Maneuver class
///
/// This maneuver follows a reference given by an external entity.
abstract class FollowReference extends Maneuver implements Built<FollowReference, FollowReferenceBuilder> {
  static const static_id = 478;
  FollowReference._();
  factory FollowReference([void Function(FollowReferenceBuilder b) updates]) = _$FollowReference;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'FollowReference';

  /// The IMC identifier of the source system that is allowed to provide references to this maneuver.
  /// If the value ''0xFFFF'' is used, any system is allowed to command references.
  @ImcField('Controlling Source', 'control_src', ImcType.typeUInt16)
  int get controlSrc;

  /// The entity identifier of the entity that is allowed to provide references to this maneuver.
  /// If the value ''0xFF'' is used, any entity is allowed to command references.
  @ImcField('Controlling Entity', 'control_ent', ImcType.typeUInt8)
  int get controlEnt;

  /// The ammount of time, in seconds, after which the maneuver will be terminated if no reference has
  /// been received. In other words, the controlling entity should send reference updates in shorter periods than
  /// 'timeout'.
  @ImcField('Reference Update Timeout', 'timeout', ImcType.typeFp32)
  double get timeout;

  /// Whenever an intended reference is achieved, this maneuver will maintain the vehicle in vaticiny of that
  /// location. The loiter radius is used to define the radius of this (xy) area.
  @ImcField('Loiter Radius', 'loiter_radius', ImcType.typeFp32)
  double get loiterRadius;

  /// Similarly to Loiter Radius, this field is used to define the "z" distance considered to be inside the vacitiny of
  /// the target location. An AUV may, for instance, be floating until it more than z units above the current reference,
  /// in which case it actively changes its position in order to achieve the desired depth / altitude.
  @ImcField('Altitude Interval', 'altitude_interval', ImcType.typeFp32)
  double get altitudeInterval;
}

/// Reference To Follow class
///
abstract class Reference extends ImcMessage implements Built<Reference, ReferenceBuilder> {
  static const static_id = 479;
  Reference._();
  factory Reference([void Function(ReferenceBuilder b) updates]) = _$Reference;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Reference';

  @ImcField('Flags', 'flags', ImcType.typeUInt8)
  ReferenceBitfieldFlags get flags;

  @ImcField('Speed Reference', 'speed', ImcType.typeMessage)
  DesiredSpeed get speed;

  @ImcField('Z Reference', 'z', ImcType.typeMessage)
  DesiredZ get z;

  @ImcField('Latitude Reference', 'lat', ImcType.typeFp64)
  double get lat;

  @ImcField('Longitude Reference', 'lon', ImcType.typeFp64)
  double get lon;

  @ImcField('Radius', 'radius', ImcType.typeFp32)
  double get radius;
}

/// Follow Reference State class
///
abstract class FollowRefState extends ImcMessage implements Built<FollowRefState, FollowRefStateBuilder> {
  static const static_id = 480;
  FollowRefState._();
  factory FollowRefState([void Function(FollowRefStateBuilder b) updates]) = _$FollowRefState;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'FollowRefState';

  /// The IMC identifier of the source system that is allowed to control the vehicle.
  /// If the value ''0xFFFF'' is used, any system is allowed to command references.
  @ImcField('Controlling Source', 'control_src', ImcType.typeUInt16)
  int get controlSrc;

  /// The entity identifier of the entity that is allowed to control the vehicle.
  /// If the value ''0xFF'' is used, any entity is allowed to command references.
  @ImcField('Controlling Entity', 'control_ent', ImcType.typeUInt8)
  int get controlEnt;

  /// Reference currently being followed.
  @ImcField('Reference', 'reference', ImcType.typeMessage)
  Reference get reference;

  @ImcField('State', 'state', ImcType.typeUInt8)
  FollowRefStateEnumState get state;

  @ImcField('Proximity', 'proximity', ImcType.typeUInt8)
  FollowRefStateBitfieldProximity get proximity;
}

/// Formation Monitoring Data class
///
/// Monitoring variables for the formation state and performance.
abstract class FormationMonitor extends ImcMessage implements Built<FormationMonitor, FormationMonitorBuilder> {
  static const static_id = 481;
  FormationMonitor._();
  factory FormationMonitor([void Function(FormationMonitorBuilder b) updates]) = _$FormationMonitor;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'FormationMonitor';

  /// Commanded acceleration computed by the formation controller: northward direction.
  /// On the vehicle directional reference frame.
  /// Constrained by the vehicle operational limits.
  @ImcField('Commanded X Acceleration (North)', 'ax_cmd', ImcType.typeFp32)
  double get axCmd;

  /// Commanded acceleration computed by the formation controller: eastward direction.
  /// On the vehicle directional reference frame.
  /// Constrained by the vehicle operational limits.
  @ImcField('Commanded Y Acceleration (East)', 'ay_cmd', ImcType.typeFp32)
  double get ayCmd;

  /// Commanded acceleration computed by the formation controller: downward direction.
  /// On the vehicle directional reference frame.
  /// Constrained by the vehicle operational limits.
  @ImcField('Commanded Z Acceleration (Down)', 'az_cmd', ImcType.typeFp32)
  double get azCmd;

  /// Desired acceleration computed by the formation controller: northward direction.
  /// On the fixed reference frame.
  @ImcField('Desired X Acceleration (North)', 'ax_des', ImcType.typeFp32)
  double get axDes;

  /// Desired acceleration computed by the formation controller: eastward direction.
  /// On the fixed reference frame.
  @ImcField('Desired Y Acceleration (East)', 'ay_des', ImcType.typeFp32)
  double get ayDes;

  /// Desired acceleration computed by the formation controller: downward direction.
  /// On the fixed reference frame.
  @ImcField('Desired Z Acceleration (Down)', 'az_des', ImcType.typeFp32)
  double get azDes;

  /// Components of the vehicle desired acceleration.
  /// Overall formation combined virtual error: northward direction.
  /// On the fixed reference frame.
  @ImcField('X Virtual Error (North)', 'virt_err_x', ImcType.typeFp32)
  double get virtErrX;

  /// Components of the vehicle desired acceleration.
  /// Overall formation combined virtual error: eastward direction.
  /// On the fixed reference frame.
  @ImcField('Y Virtual Error (East)', 'virt_err_y', ImcType.typeFp32)
  double get virtErrY;

  /// Components of the vehicle desired acceleration.
  /// Overall formation combined virtual error: downward direction.
  /// On the fixed reference frame.
  @ImcField('Z Virtual Error (Down)', 'virt_err_z', ImcType.typeFp32)
  double get virtErrZ;

  /// Components of the vehicle desired acceleration.
  /// Overall formation combined sliding surface feedback: northward direction.
  /// On the fixed reference frame.
  @ImcField('X Sliding Surface Feedback (North)', 'surf_fdbk_x', ImcType.typeFp32)
  double get surfFdbkX;

  /// Components of the vehicle desired acceleration.
  /// Overall formation combined sliding surface feedback: eastward direction.
  /// On the fixed reference frame.
  @ImcField('Y Sliding Surface Feedback (East)', 'surf_fdbk_y', ImcType.typeFp32)
  double get surfFdbkY;

  /// Components of the vehicle desired acceleration.
  /// Overall formation combined sliding surface feedback: downward direction.
  /// On the fixed reference frame.
  @ImcField('Z Sliding Surface Feedback (Down)', 'surf_fdbk_z', ImcType.typeFp32)
  double get surfFdbkZ;

  /// Components of the vehicle desired acceleration.
  /// Dynamics uncertainty compensation: northward direction.
  @ImcField('X Uncertainty Compensation (North)', 'surf_unkn_x', ImcType.typeFp32)
  double get surfUnknX;

  /// Components of the vehicle desired acceleration.
  /// Dynamics uncertainty compensation: eastward direction.
  @ImcField('Y Uncertainty Compensation (East)', 'surf_unkn_y', ImcType.typeFp32)
  double get surfUnknY;

  /// Components of the vehicle desired acceleration.
  /// Dynamics uncertainty compensation: downward direction.
  @ImcField('Z Uncertainty Compensation (Down)', 'surf_unkn_z', ImcType.typeFp32)
  double get surfUnknZ;

  /// Combined deviation from convergence (sliding surface): North component.
  @ImcField('X Convergence Deviation (North)', 'ss_x', ImcType.typeFp32)
  double get ssX;

  /// Combined deviation from convergence (sliding surface): East component.
  @ImcField('Y Convergence Deviation (East)', 'ss_y', ImcType.typeFp32)
  double get ssY;

  /// Combined deviation from convergence (sliding surface): Down component.
  @ImcField('Z Convergence Deviation (Down)', 'ss_z', ImcType.typeFp32)
  double get ssZ;

  /// List of RelativeState messages, encoding the inter-vehicle formation state.
  @ImcField('Relative State', 'rel_state', ImcType.typeMessageList)
  List<RelativeState> get relState;
}

/// Relative State class
///
/// Inter-vehicle formation state.
abstract class RelativeState extends ImcMessage implements Built<RelativeState, RelativeStateBuilder> {
  static const static_id = 482;
  RelativeState._();
  factory RelativeState([void Function(RelativeStateBuilder b) updates]) = _$RelativeState;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'RelativeState';

  /// The identifier of the vehicle whose relative state is being reported.
  @ImcField('System Identifier', 's_id', ImcType.typePlaintext)
  String get sId;

  /// Distance between vehicles.
  @ImcField('Distance', 'dist', ImcType.typeFp32)
  double get dist;

  /// Relative position error norm.
  @ImcField('Position Error', 'err', ImcType.typeFp32)
  double get err;

  /// Weight in the computation of the desired acceleration.
  @ImcField('Control Importance', 'ctrl_imp', ImcType.typeFp32)
  double get ctrlImp;

  /// Inter-vehicle direction vector: North component.
  @ImcField('Relative Direction X (North)', 'rel_dir_x', ImcType.typeFp32)
  double get relDirX;

  /// Inter-vehicle direction vector: East component.
  @ImcField('Relative Direction Y (East)', 'rel_dir_y', ImcType.typeFp32)
  double get relDirY;

  /// Inter-vehicle direction vector: Down component.
  @ImcField('Relative Direction Z (Down)', 'rel_dir_z', ImcType.typeFp32)
  double get relDirZ;

  /// Relative position error: North component.
  @ImcField('X Position Error (North)', 'err_x', ImcType.typeFp32)
  double get errX;

  /// Relative position error: East component.
  @ImcField('Y Position Error (East)', 'err_y', ImcType.typeFp32)
  double get errY;

  /// Relative position error: Down component.
  @ImcField('Z Position Error (Down)', 'err_z', ImcType.typeFp32)
  double get errZ;

  /// Relative position error: X component on the inter-vehicle reference frame.
  @ImcField('X Position Error In Relative Frame (North)', 'rf_err_x', ImcType.typeFp32)
  double get rfErrX;

  /// Relative position error: Y component on the inter-vehicle reference frame.
  @ImcField('Y Position Error In Relative Frame (East)', 'rf_err_y', ImcType.typeFp32)
  double get rfErrY;

  /// Relative position error: Z component on the inter-vehicle reference frame.
  @ImcField('Z Position Error In Relative Frame (Down)', 'rf_err_z', ImcType.typeFp32)
  double get rfErrZ;

  /// Relative veloctity error: X component in the inter-vehicle reference frame.
  @ImcField('X Velocity Error In Relative Frame (North)', 'rf_err_vx', ImcType.typeFp32)
  double get rfErrVx;

  /// Relative velocity error: Y component on the inter-vehicle reference frame.
  @ImcField('Y Velocity Error In Relative Frame (East)', 'rf_err_vy', ImcType.typeFp32)
  double get rfErrVy;

  /// Relative velocity error: Z component on the inter-vehicle reference frame.
  @ImcField('Z Velocity Error In Relative Frame (Down)', 'rf_err_vz', ImcType.typeFp32)
  double get rfErrVz;

  /// Deviation from convergence (sliding surface): X component on the inter-vehicle reference frame.
  @ImcField('X Convergence Deviation (North)', 'ss_x', ImcType.typeFp32)
  double get ssX;

  /// Deviation from convergence (sliding surface): Y component on the inter-vehicle reference frame.
  @ImcField('Y Convergence Deviation (East)', 'ss_y', ImcType.typeFp32)
  double get ssY;

  /// Deviation from convergence (sliding surface): Z component on the inter-vehicle reference frame.
  @ImcField('Z Convergence Deviation (Down)', 'ss_z', ImcType.typeFp32)
  double get ssZ;

  /// Components of the vehicle desired acceleration.
  /// Relative virtual error: northward direction.
  @ImcField('X Virtual Error (North)', 'virt_err_x', ImcType.typeFp32)
  double get virtErrX;

  /// Components of the vehicle desired acceleration.
  /// Relative virtual error: eastward direction.
  @ImcField('Y Virtual Error (East)', 'virt_err_y', ImcType.typeFp32)
  double get virtErrY;

  /// Components of the vehicle desired acceleration.
  /// Relative virtual error: downward direction.
  @ImcField('Z Virtual Error (Down)', 'virt_err_z', ImcType.typeFp32)
  double get virtErrZ;
}

/// Dislodge Maneuver class
///
/// A "Dislodge" is a maneuver ordering the vehicle to attempt a
/// series of thruster operations that will hopefully get it
/// unstuck from an entangled condition.
/// 
/// Parameters are RPMs for the motor when attempting dislodge and
/// and a flag specifying whether the thrust burst should be attempted
/// forward, backward or auto (letting the vehicle decide).
abstract class Dislodge extends Maneuver implements Built<Dislodge, DislodgeBuilder> {
  static const static_id = 483;
  Dislodge._();
  factory Dislodge([void Function(DislodgeBuilder b) updates]) = _$Dislodge;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Dislodge';

  /// The amount of time the maneuver is allowed to run.
  @ImcField('Timeout', 'timeout', ImcType.typeUInt16, units: 's')
  int get timeout;

  /// Maneuver RPM reference.
  @ImcField('RPM', 'rpm', ImcType.typeFp32)
  double get rpm;

  /// Direction to which the vehicle should attempt to unstuck.
  @ImcField('Direction', 'direction', ImcType.typeUInt8)
  DislodgeEnumDirection get direction;

  /// Custom settings for maneuver.
  @ImcField('Custom settings for maneuver', 'custom', ImcType.typePlaintext, units: 'TupleList')
  String get custom;
}

/// Formation class
///
/// The "Formation" is a controller to execute a maneuver with a team of vehicles.
/// It defines the:
/// - Vehicles included in the formation group
/// - Vehicles relative positions inside the formation
/// - Reference frame where the relative positions are defined
/// - Formation shape configuration
/// - Plan (set of maneuvers) to be followed by the formation center
/// - Plan contrains (virtual leader speed and bank limits)
/// - Supervision settings
/// 
/// The formation reference frame may be:
/// - Earth Fixed: Where the vehicles relative position do not depend on the followed path.
/// This results in all UAVs following the same path with an offset relative to each other;
/// - Path Fixed:  Where the vehicles relative position depends on the followed path,
/// changing the inter-vehicle offset direction with the path direction.
/// - Path Curved:  Where the vehicles relative position depends on the followed path,
/// changing the inter-vehicle offset direction with the path direction and direction
/// change rate.
/// An offset in the xx axis results in a distance over the curved path line.
/// An offset in the yy axis results in an offset of the vehicle path line relative to the
/// formation center path line.
abstract class Formation extends ImcMessage implements Built<Formation, FormationBuilder> {
  static const static_id = 484;
  Formation._();
  factory Formation([void Function(FormationBuilder b) updates]) = _$Formation;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Formation';

  /// Name of the formation configuration.
  @ImcField('Formation Name', 'formation_name', ImcType.typePlaintext)
  String get formationName;

  /// Indicates if the message is a request, or a reply to a previous request.
  @ImcField('Type', 'type', ImcType.typeUInt8)
  FormationEnumType get type;

  /// Operation to perform.
  @ImcField('Operation', 'op', ImcType.typeUInt8)
  FormationEnumOp get op;

  /// Target group for the formation plan.
  @ImcField('Target Group Name', 'group_name', ImcType.typePlaintext)
  String get groupName;

  /// The flight plan's identifier.
  /// Flight plan defined to be tracked by the formation leader.
  @ImcField('Formation Plan ID', 'plan_id', ImcType.typePlaintext)
  String get planId;

  /// Verbose text description of plan.
  @ImcField('Plan Description', 'description', ImcType.typePlaintext)
  String get description;

  /// Formation reference frame
  @ImcField('Formation Reference Frame', 'reference_frame', ImcType.typeUInt8)
  FormationEnumReferenceFrame get referenceFrame;

  /// List of formation participants.
  @ImcField('Formation Participants', 'participants', ImcType.typeMessageList)
  List<VehicleFormationParticipant> get participants;

  /// Maximum absolute bank allowed for the formation leader.
  @ImcField('Formation Leader Bank Limit', 'leader_bank_lim', ImcType.typeFp32, units: 'rad')
  double get leaderBankLim;

  /// Minimum speed allowed for the formation leader flight.
  @ImcField('Formation Leader Minimum Speed', 'leader_speed_min', ImcType.typeFp32, units: 'm/s')
  double get leaderSpeedMin;

  /// Maximum speed allowed for the formation leader flight.
  @ImcField('Formation Leader Maximum Speed', 'leader_speed_max', ImcType.typeFp32, units: 'm/s')
  double get leaderSpeedMax;

  /// Minimum altitude allowed for the formation leader flight.
  @ImcField('Formation Leader Minimum Altitude', 'leader_alt_min', ImcType.typeFp32, units: 'm')
  double get leaderAltMin;

  /// Maximum altitude allowed for the formation leader flight.
  @ImcField('Formation Leader Maximum Altitude', 'leader_alt_max', ImcType.typeFp32, units: 'm')
  double get leaderAltMax;

  /// Limit for the position mismatch between real and simulated position, before a maneuver abort is asserted.
  @ImcField('Position mismatch limit', 'pos_sim_err_lim', ImcType.typeFp32, units: 'm')
  double get posSimErrLim;

  /// Warning threshold for the position mismatch between real and simulated position.
  /// Above this threshold a time-out limit is evaluated to assert a maneuver abort state.
  @ImcField('Position mismatch threshold', 'pos_sim_err_wrn', ImcType.typeFp32, units: 'm')
  double get posSimErrWrn;

  /// The amount of time the maneuver is allowed to run after the position mismatch threshold is surpassed.
  @ImcField('Position mismatch time-out', 'pos_sim_err_timeout', ImcType.typeUInt16, units: 's')
  int get posSimErrTimeout;

  /// Threshold for the convergence measure, above which a time-out limit
  /// is evaluated to assert a maneuver abort state.
  @ImcField('Convergence threshold', 'converg_max', ImcType.typeFp32, units: 'm')
  double get convergMax;

  /// The amount of time the maneuver is allowed to run after the convergence threshold is surpassed.
  @ImcField('Convergence time-out', 'converg_timeout', ImcType.typeUInt16, units: 's')
  int get convergTimeout;

  /// The amount of time the maneuver is allowed to run without any update on the other formation vehicles states.
  @ImcField('Communications time-out', 'comms_timeout', ImcType.typeUInt16, units: 's')
  int get commsTimeout;

  /// Turbulence limit above which a maneuver abort is asserted.
  @ImcField('Turbulence limit', 'turb_lim', ImcType.typeFp32, units: 'm/s')
  double get turbLim;

  /// Custom settings for maneuver.
  @ImcField('Custom settings for maneuver', 'custom', ImcType.typePlaintext, units: 'TupleList')
  String get custom;
}

/// Launch Maneuver class
///
/// A "Launch" is a maneuver specifying a movement of the vehicle to a
/// target waypoint after being launched from a ship or pier.
/// The waypoint is described by the WGS-84 waypoint coordinate and
/// target Z reference.
/// 
/// Mandatory parameters defined for a "Launch" are
/// timeout, speed and speed units.
abstract class Launch extends Maneuver implements Built<Launch, LaunchBuilder> {
  static const static_id = 485;
  Launch._();
  factory Launch([void Function(LaunchBuilder b) updates]) = _$Launch;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Launch';

  /// The amount of time the maneuver is allowed to run.
  @ImcField('Timeout', 'timeout', ImcType.typeUInt16, units: 's')
  int get timeout;

  /// WGS-84 Latitude of target waypoint.
  @ImcField('Latitude WGS-84', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  /// WGS-84 Longitude of target waypoint.
  @ImcField('Longitude WGS-84', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;

  /// Target reference in the z axis. Use z_units to specify
  /// whether z represents depth, altitude or other.
  @ImcField('Z Reference', 'z', ImcType.typeFp32, units: 'm')
  double get z;

  /// Units of the z reference.
  @ImcField('Z Units', 'z_units', ImcType.typeUInt8)
  ZUnitsEnum get zUnits;

  /// Maneuver speed reference.
  @ImcField('Speed', 'speed', ImcType.typeFp32)
  double get speed;

  /// Speed units.
  @ImcField('Speed Units', 'speed_units', ImcType.typeUInt8)
  SpeedUnitsEnum get speedUnits;

  /// Custom settings for maneuver.
  @ImcField('Custom settings for maneuver', 'custom', ImcType.typePlaintext, units: 'TupleList')
  String get custom;
}

/// Drop Maneuver class
///
/// A "Drop" is a maneuver specifying a movement of the vehicle to a
/// target waypoint. The waypoint is described by the WGS-84
/// waypoint coordinate and target Z reference.
/// 
/// Mandatory parameters defined for a "Goto" are
/// timeout, speed and speed units.
abstract class Drop extends Maneuver implements Built<Drop, DropBuilder> {
  static const static_id = 486;
  Drop._();
  factory Drop([void Function(DropBuilder b) updates]) = _$Drop;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Drop';

  /// The amount of time the maneuver is allowed to run.
  @ImcField('Timeout', 'timeout', ImcType.typeUInt16, units: 's')
  int get timeout;

  /// WGS-84 Latitude of target waypoint.
  @ImcField('Latitude WGS-84', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  /// WGS-84 Longitude of target waypoint.
  @ImcField('Longitude WGS-84', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;

  /// Target reference in the z axis. Use z_units to specify
  /// whether z represents depth, altitude or other.
  @ImcField('Z Reference', 'z', ImcType.typeFp32, units: 'm')
  double get z;

  /// Units of the z reference.
  @ImcField('Z Units', 'z_units', ImcType.typeUInt8)
  ZUnitsEnum get zUnits;

  /// Maneuver speed reference.
  @ImcField('Speed', 'speed', ImcType.typeFp32)
  double get speed;

  /// Speed units.
  @ImcField('Speed Units', 'speed_units', ImcType.typeUInt8)
  SpeedUnitsEnum get speedUnits;

  /// Custom settings for maneuver.
  @ImcField('Custom settings for maneuver', 'custom', ImcType.typePlaintext, units: 'TupleList')
  String get custom;
}

/// Scheduled Goto class
///
/// This maneuver is used to command the vehicle to arrive at some destination at
/// a specified absolute time.
/// 
/// The vehicle's speed will vary according to environment conditions and/or maneuver start time.
abstract class ScheduledGoto extends Maneuver implements Built<ScheduledGoto, ScheduledGotoBuilder> {
  static const static_id = 487;
  ScheduledGoto._();
  factory ScheduledGoto([void Function(ScheduledGotoBuilder b) updates]) = _$ScheduledGoto;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'ScheduledGoto';

  /// Unix timestamp, in seconds, for the arrival at the destination.
  @ImcField('Time of arrival', 'arrival_time', ImcType.typeFp64, units: 's')
  double get arrivalTime;

  /// WGS-84 Latitude of target waypoint.
  @ImcField('Destination Latitude WGS-84', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  /// WGS-84 Longitude of target waypoint.
  @ImcField('Destination Longitude WGS-84', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;

  /// Target reference in the z axis. Use z_units to specify
  /// whether z represents depth, altitude or other.
  @ImcField('Destination Z Reference', 'z', ImcType.typeFp32, units: 'm')
  double get z;

  /// Units of the destination z reference.
  @ImcField('Z Units', 'z_units', ImcType.typeUInt8)
  ZUnitsEnum get zUnits;

  /// Z reference to use while travelling to the destination.
  @ImcField('Travel Z Reference', 'travel_z', ImcType.typeFp32, units: 'm')
  double get travelZ;

  /// Z reference units to use while travelling to the destination.
  @ImcField('Travel Z Units', 'travel_z_units', ImcType.typeUInt8)
  ZUnitsEnum get travelZUnits;

  /// What to do if the vehicle fails to arrive before or at the requested time.
  @ImcField('Delayed Behavior', 'delayed', ImcType.typeUInt8)
  ScheduledGotoEnumDelayed get delayed;
}

/// Rows Coverage class
///
/// Rows coverage (i.e: lawn mower type maneuver) but with adaptive cover
abstract class RowsCoverage extends Maneuver implements Built<RowsCoverage, RowsCoverageBuilder> {
  static const static_id = 488;
  RowsCoverage._();
  factory RowsCoverage([void Function(RowsCoverageBuilder b) updates]) = _$RowsCoverage;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'RowsCoverage';

  /// WGS-84 Latitude of target waypoint.
  @ImcField('Latitude WGS-84', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  /// WGS-84 Longitude of target waypoint.
  @ImcField('Longitude WGS-84', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;

  /// Maneuver reference in the z axis. Use z_units to specify
  /// whether z represents depth, altitude or other.
  @ImcField('Z Reference', 'z', ImcType.typeFp32, units: 'm')
  double get z;

  /// Units of the z reference.
  @ImcField('Z Units', 'z_units', ImcType.typeUInt8)
  ZUnitsEnum get zUnits;

  /// Maneuver speed reference.
  @ImcField('Speed', 'speed', ImcType.typeFp32)
  double get speed;

  /// Speed units.
  @ImcField('Speed Units', 'speed_units', ImcType.typeUInt8)
  SpeedUnitsEnum get speedUnits;

  /// Rows bearing angle.
  @ImcField('Bearing', 'bearing', ImcType.typeFp64, units: 'rad')
  double get bearing;

  /// Rows cross angle reference.
  @ImcField('Cross Angle', 'cross_angle', ImcType.typeFp64, units: 'rad')
  double get crossAngle;

  /// Width of the maneuver.
  @ImcField('Width', 'width', ImcType.typeFp32, units: 'm')
  double get width;

  /// Length of the maneuver.
  @ImcField('Length', 'length', ImcType.typeFp32, units: 'm')
  double get length;

  /// Desired curve offset.
  @ImcField('Curve Offset', 'coff', ImcType.typeUInt8, units: 'm')
  int get coff;

  /// Angular aperture of the sensor (looking downwards).
  @ImcField('Angular Aperture', 'angAperture', ImcType.typeFp32, units: 'rad')
  double get angAperture;

  /// Maximum range of the sensor (in meters downwards from the vehicle's position).
  @ImcField('Range', 'range', ImcType.typeUInt16, units: 'm')
  int get range;

  /// Amount of overlap among different transect surveys.
  @ImcField('Overlap', 'overlap', ImcType.typeUInt8, units: '%')
  int get overlap;

  /// Maneuver optional flags.
  @ImcField('Flags', 'flags', ImcType.typeUInt8)
  RowsCoverageBitfieldFlags get flags;

  /// Custom settings for maneuver.
  @ImcField('Custom settings for maneuver', 'custom', ImcType.typePlaintext, units: 'TupleList')
  String get custom;
}

/// Sample Maneuver class
///
/// A "Sample" is a maneuver specifying a movement of the vehicle to a
/// target waypoint. The waypoint is described by the WGS-84
/// waypoint coordinate and target Z reference.
/// 
/// Mandatory parameters defined for a "Goto" are
/// timeout, speed and speed units.
abstract class Sample extends Maneuver implements Built<Sample, SampleBuilder> {
  static const static_id = 489;
  Sample._();
  factory Sample([void Function(SampleBuilder b) updates]) = _$Sample;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Sample';

  /// The amount of time the maneuver is allowed to run.
  @ImcField('Timeout', 'timeout', ImcType.typeUInt16, units: 's')
  int get timeout;

  /// WGS-84 Latitude of target waypoint.
  @ImcField('Latitude WGS-84', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  /// WGS-84 Longitude of target waypoint.
  @ImcField('Longitude WGS-84', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;

  /// Target reference in the z axis. Use z_units to specify
  /// whether z represents depth, altitude or other.
  @ImcField('Z Reference', 'z', ImcType.typeFp32, units: 'm')
  double get z;

  /// Units of the z reference.
  @ImcField('Z Units', 'z_units', ImcType.typeUInt8)
  ZUnitsEnum get zUnits;

  /// Maneuver speed reference.
  @ImcField('Speed', 'speed', ImcType.typeFp32)
  double get speed;

  /// Speed units.
  @ImcField('Speed Units', 'speed_units', ImcType.typeUInt8)
  SpeedUnitsEnum get speedUnits;

  /// True when sampling with servo 0.
  @ImcField('Syringe0', 'syringe0', ImcType.typeUInt8)
  BooleanEnum get syringe0;

  /// True when sampling with servo 1.
  @ImcField('Syringe1', 'syringe1', ImcType.typeUInt8)
  BooleanEnum get syringe1;

  /// True when sampling with servo 2.
  @ImcField('Syringe2', 'syringe2', ImcType.typeUInt8)
  BooleanEnum get syringe2;

  /// Custom settings for maneuver.
  @ImcField('Custom settings for maneuver', 'custom', ImcType.typePlaintext, units: 'TupleList')
  String get custom;
}

/// Image Tracking class
///
/// A "ImageTracking" is a maneuver specifying a particular heading to the
/// detected object.
abstract class ImageTracking extends Maneuver implements Built<ImageTracking, ImageTrackingBuilder> {
  static const static_id = 490;
  ImageTracking._();
  factory ImageTracking([void Function(ImageTrackingBuilder b) updates]) = _$ImageTracking;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'ImageTracking';
}

/// Takeoff Maneuver class
///
/// Automatic takeoff for UAVs.
/// This maneuver specifies a target waypoint where to takeoff.
/// 
/// Takeoff direction is set from the direction the plane is pointing when the auto takeoff command is started.
/// It will remain that way until the vehicle reaches the target z reference. After that it will go to the target waypoint.
abstract class Takeoff extends Maneuver implements Built<Takeoff, TakeoffBuilder> {
  static const static_id = 491;
  Takeoff._();
  factory Takeoff([void Function(TakeoffBuilder b) updates]) = _$Takeoff;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Takeoff';

  /// WGS-84 Latitude of target waypoint.
  @ImcField('Latitude WGS-84', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  /// WGS-84 Longitude of target waypoint.
  @ImcField('Longitude WGS-84', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;

  /// Target altitude or height for the automatic takeoff.
  @ImcField('Z Reference', 'z', ImcType.typeFp32, units: 'm')
  double get z;

  /// Units of the z reference.
  @ImcField('Z Units', 'z_units', ImcType.typeUInt8)
  ZUnitsEnum get zUnits;

  /// Maneuver speed reference.
  @ImcField('Speed', 'speed', ImcType.typeFp32)
  double get speed;

  /// Speed units.
  @ImcField('Speed Units', 'speed_units', ImcType.typeUInt8)
  SpeedUnitsEnum get speedUnits;

  /// Minimum pitch angle during automatic takeoff.
  @ImcField('Pitch Angle', 'takeoff_pitch', ImcType.typeFp32, units: 'rad')
  double get takeoffPitch;

  /// Custom settings for maneuver.
  @ImcField('Custom settings for maneuver', 'custom', ImcType.typePlaintext, units: 'TupleList')
  String get custom;
}

/// Land Maneuver class
///
/// Automatic landing on the ground, for UAVs.
/// This maneuver specifies the target touchdown location and sets the final approach based on the maneuver bearing and glide slope parameters.
abstract class Land extends Maneuver implements Built<Land, LandBuilder> {
  static const static_id = 492;
  Land._();
  factory Land([void Function(LandBuilder b) updates]) = _$Land;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Land';

  /// WGS-84 Latitude of touchdown waypoint.
  @ImcField('Latitude WGS-84', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  /// WGS-84 Longitude of touchdown waypoint.
  @ImcField('Longitude WGS-84', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;

  /// Target altitude or height for the automatic landing.
  @ImcField('Z Reference', 'z', ImcType.typeFp32, units: 'm')
  double get z;

  /// Units of the z reference and abort z reference.
  @ImcField('Z Units', 'z_units', ImcType.typeUInt8)
  ZUnitsEnum get zUnits;

  /// Maneuver speed reference.
  @ImcField('Speed', 'speed', ImcType.typeFp32)
  double get speed;

  /// Speed units.
  @ImcField('Speed Units', 'speed_units', ImcType.typeUInt8)
  SpeedUnitsEnum get speedUnits;

  /// Abort altitude or height. If landing is aborted while executing, the UAV will maintain its course and attempt to climb to the abort z reference.
  @ImcField('Abort Z Reference', 'abort_z', ImcType.typeFp32, units: 'm')
  double get abortZ;

  /// Land bearing angle.
  @ImcField('Bearing', 'bearing', ImcType.typeFp64, units: 'rad')
  double get bearing;

  /// Ratio of the distance from the last waypoint to the landing point (touchdown) and the height difference between them.
  @ImcField('Glide Slope', 'glide_slope', ImcType.typeUInt8, units: '%')
  int get glideSlope;

  /// Height difference between the last waypoint to the landing point (touchdown).
  @ImcField('Glide Slope Altitude', 'glide_slope_alt', ImcType.typeFp32, units: 'm')
  double get glideSlopeAlt;

  /// Custom settings for maneuver.
  @ImcField('Custom settings for maneuver', 'custom', ImcType.typePlaintext, units: 'TupleList')
  String get custom;
}

/// Autonomous Section class
///
/// This maneuver triggers an external controller that will guide the vehicle during a specified duration
/// of time or until it relinquishes control using (ManeuverDone). The external controller is allowed to
/// drive the vehicle only inside the specified boundaries.
abstract class AutonomousSection extends Maneuver implements Built<AutonomousSection, AutonomousSectionBuilder> {
  static const static_id = 493;
  AutonomousSection._();
  factory AutonomousSection([void Function(AutonomousSectionBuilder b) updates]) = _$AutonomousSection;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'AutonomousSection';

  /// WGS-84 Latitude of the initial location.
  @ImcField('Latitude WGS-84', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  /// WGS-84 Longitude of the initial location.
  @ImcField('Longitude WGS-84', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;

  /// Maneuver speed reference.
  @ImcField('Speed', 'speed', ImcType.typeFp32)
  double get speed;

  /// Speed units.
  @ImcField('Speed Units', 'speed_units', ImcType.typeUInt8)
  SpeedUnitsEnum get speedUnits;

  @ImcField('Enforced Limits', 'limits', ImcType.typeUInt8)
  AutonomousSectionBitfieldLimits get limits;

  /// Maximum depth the autonomous controller is allowed to drive to.
  @ImcField('Maximum depth', 'max_depth', ImcType.typeFp64, units: 'm')
  double get maxDepth;

  /// Minimum altitude the autonomous controller is allowed to drive to.
  @ImcField('Minimum altitude', 'min_alt', ImcType.typeFp64, units: 'm')
  double get minAlt;

  /// The time after which this maneuver should be stopped (if still active and TIMEOUT is enforced).
  @ImcField('Time Limit', 'time_limit', ImcType.typeFp64, units: 's')
  double get timeLimit;

  /// The boundaries of the admissable area for this autonomous section.
  @ImcField('Area Limits', 'area_limits', ImcType.typeMessageList)
  List<PolygonVertex> get areaLimits;

  /// The name of the controlling agent that will be allowed to guide the vehicle during the AutononousSection.
  @ImcField('Controller', 'controller', ImcType.typePlaintext)
  String get controller;

  /// Custom settings for maneuver.
  @ImcField('Custom settings for maneuver', 'custom', ImcType.typePlaintext, units: 'TupleList')
  String get custom;
}

/// Follow Point Maneuver class
///
/// This maneuver behaves by following a point.
abstract class FollowPoint extends Maneuver implements Built<FollowPoint, FollowPointBuilder> {
  static const static_id = 494;
  FollowPoint._();
  factory FollowPoint([void Function(FollowPointBuilder b) updates]) = _$FollowPoint;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'FollowPoint';

  /// The identifier of the point source to follow (via RemoteSensorInfo or EstimatedState).
  @ImcField('Source To Follow', 'target', ImcType.typePlaintext)
  String get target;

  /// Use this speed when travelling from afar.
  @ImcField('Maximum Speed', 'max_speed', ImcType.typeFp32, units: 'm/s')
  double get maxSpeed;

  /// Indicates the units used for the maximum speed value.
  @ImcField('Speed Units', 'speed_units', ImcType.typeUInt8)
  SpeedUnitsEnum get speedUnits;

  /// WGS-84 Latitude of maneuver in the map. Ignored during execution.
  @ImcField('Latitude WGS-84', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  /// WGS-84 Longitude of maneuver in the map. Ignored during execution.
  @ImcField('Longitude WGS-84', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;

  /// Use z_units to specify whether z represents depth, altitude or other.
  @ImcField('Z', 'z', ImcType.typeFp32, units: 'm')
  double get z;

  /// Units of the z reference.
  @ImcField('Z Units', 'z_units', ImcType.typeUInt8)
  ZUnitsEnum get zUnits;

  /// Custom settings for maneuver.
  @ImcField('Custom settings for maneuver', 'custom', ImcType.typePlaintext, units: 'TupleList')
  String get custom;
}

/// Alignment Maneuver class
///
/// An "Alignment" is a maneuver specifying a movement of the vehicle to a
/// target waypoint intended to control activation of an IMU/INS in order
/// to start aligning navigation for more precise dead reckoning operation.
abstract class Alignment extends Maneuver implements Built<Alignment, AlignmentBuilder> {
  static const static_id = 495;
  Alignment._();
  factory Alignment([void Function(AlignmentBuilder b) updates]) = _$Alignment;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Alignment';

  /// The amount of time the maneuver is allowed to run.
  @ImcField('Timeout', 'timeout', ImcType.typeUInt16, units: 's')
  int get timeout;

  /// WGS-84 Latitude of target waypoint.
  @ImcField('Latitude WGS-84', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  /// WGS-84 Longitude of target waypoint.
  @ImcField('Longitude WGS-84', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;

  /// Maneuver speed reference.
  @ImcField('Speed', 'speed', ImcType.typeFp32)
  double get speed;

  /// Speed units.
  @ImcField('Speed Units', 'speed_units', ImcType.typeUInt8)
  SpeedUnitsEnum get speedUnits;

  /// Custom settings for maneuver.
  @ImcField('Custom settings for maneuver', 'custom', ImcType.typePlaintext, units: 'TupleList')
  String get custom;
}

/// Station Keeping Extended class
///
/// The Station Keeping Extended maneuver makes the vehicle come to the surface
/// and then enter a given circular perimeter around a waypoint coordinate
/// for a certain amount of time. It extends the Station Keeping maneuver with the feature
/// 'Keep Safe', which allows for the vehicle to hold position underwater and popup periodically
/// to communicate.
abstract class StationKeepingExtended extends Maneuver implements Built<StationKeepingExtended, StationKeepingExtendedBuilder> {
  static const static_id = 496;
  StationKeepingExtended._();
  factory StationKeepingExtended([void Function(StationKeepingExtendedBuilder b) updates]) = _$StationKeepingExtended;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'StationKeepingExtended';

  /// WGS-84 Latitude.
  @ImcField('Latitude WGS-84', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  /// WGS-84 Longitude.
  @ImcField('Longitude WGS-84', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;

  /// Maneuver reference in the z axis. Use z_units to specify
  /// whether z represents depth, altitude or other.
  @ImcField('Z Reference', 'z', ImcType.typeFp32, units: 'm')
  double get z;

  /// Units of the z reference.
  @ImcField('Z Units', 'z_units', ImcType.typeUInt8)
  ZUnitsEnum get zUnits;

  /// Radius.
  @ImcField('Radius', 'radius', ImcType.typeFp32, units: 'm')
  double get radius;

  /// Duration (0 for unlimited).
  @ImcField('Duration', 'duration', ImcType.typeUInt16, units: 's')
  int get duration;

  /// The value of the desired speed, in the scale specified
  /// by the "Speed Units" field.
  @ImcField('Speed', 'speed', ImcType.typeFp32)
  double get speed;

  /// Indicates the units used for the speed value.
  @ImcField('Speed Units', 'speed_units', ImcType.typeUInt8)
  SpeedUnitsEnum get speedUnits;

  /// The period at which the vehicle will popup to report its position.
  /// Only used if flag KEEP_SAFE is on.
  @ImcField('PopUp Period', 'popup_period', ImcType.typeUInt16, units: 's')
  int get popupPeriod;

  /// The duration of the station keeping at surface level when it pops up.
  /// Only used if flag KEEP_SAFE is on.
  @ImcField('PopUp Duration', 'popup_duration', ImcType.typeUInt16, units: 's')
  int get popupDuration;

  /// Flags of the maneuver.
  @ImcField('Flags', 'flags', ImcType.typeUInt8)
  StationKeepingExtendedBitfieldFlags get flags;

  /// Custom settings for maneuver.
  @ImcField('Custom settings for maneuver', 'custom', ImcType.typePlaintext, units: 'TupleList')
  String get custom;
}

/// Magnetometer Maneuver class
///
/// Magnetometer calibration maneuver (i.e: one square pattern
/// in one direction, a second square in the opposite direction)
abstract class Magnetometer extends Maneuver implements Built<Magnetometer, MagnetometerBuilder> {
  static const static_id = 499;
  Magnetometer._();
  factory Magnetometer([void Function(MagnetometerBuilder b) updates]) = _$Magnetometer;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Magnetometer';

  /// The amount of time the maneuver is allowed to run.
  @ImcField('Timeout', 'timeout', ImcType.typeUInt16, units: 's')
  int get timeout;

  /// WGS-84 Latitude of target waypoint.
  @ImcField('Latitude WGS-84', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  /// WGS-84 Longitude of target waypoint.
  @ImcField('Longitude WGS-84', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;

  /// Maneuver reference in the z axis. Use z_units to specify
  /// whether z represents depth, altitude or other.
  @ImcField('Z Reference', 'z', ImcType.typeFp32, units: 'm')
  double get z;

  /// Units of the z reference.
  @ImcField('Z Units', 'z_units', ImcType.typeUInt8)
  ZUnitsEnum get zUnits;

  /// Maneuver speed reference.
  @ImcField('Speed', 'speed', ImcType.typeFp32)
  double get speed;

  /// Speed units.
  @ImcField('Speed Units', 'speed_units', ImcType.typeUInt8)
  SpeedUnitsEnum get speedUnits;

  /// Rows bearing angle.
  @ImcField('Bearing', 'bearing', ImcType.typeFp64, units: 'rad')
  double get bearing;

  /// Width of the maneuver.
  @ImcField('Width', 'width', ImcType.typeFp32, units: 'm')
  double get width;

  /// Desired direction.
  @ImcField('Direction', 'direction', ImcType.typeUInt8)
  MagnetometerEnumDirection get direction;

  /// Custom settings for maneuver.
  @ImcField('Custom settings for maneuver', 'custom', ImcType.typePlaintext, units: 'TupleList')
  String get custom;
}

/// Vehicle State class
///
/// This message summarizes the overall state of the vehicle. It can
/// contains information regarding:
/// 
/// - The overall operation mode.
/// - Any error conditions.
/// - Current maneuver execution.
/// - Active control loops.
abstract class VehicleState extends ImcMessage implements Built<VehicleState, VehicleStateBuilder> {
  static const static_id = 500;
  VehicleState._();
  factory VehicleState([void Function(VehicleStateBuilder b) updates]) = _$VehicleState;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'VehicleState';

  /// The overall operation mode.
  @ImcField('Operation Mode', 'op_mode', ImcType.typeUInt8)
  VehicleStateEnumOpMode get opMode;

  /// Error count for monitored entitites.
  @ImcField('Errors -- Count', 'error_count', ImcType.typeUInt8)
  int get errorCount;

  /// The monitored entities with error conditions. This is a comma
  /// separated list of entity names.
  @ImcField('Errors -- Entities', 'error_ents', ImcType.typePlaintext)
  String get errorEnts;

  /// Type of maneuver being executed, when in MANEUVER mode. The
  /// value is the IMC serialization ID of the corresponding
  /// maneuver.
  @ImcField('Maneuver -- Type', 'maneuver_type', ImcType.typeUInt16)
  int get maneuverType;

  /// Start time of maneuver being executed (Epoch time), when in
  /// MANEUVER mode.
  @ImcField('Maneuver -- Start Time', 'maneuver_stime', ImcType.typeFp64, units: 's')
  double get maneuverStime;

  /// Estimated time for maneuver completion. The value will be
  /// 65535 if the time is unknown or undefined.
  @ImcField('Maneuver -- ETA', 'maneuver_eta', ImcType.typeUInt16, units: 's')
  int get maneuverEta;

  /// Enabled control loops.
  @ImcField('Control Loops', 'control_loops', ImcType.typeUint32)
  CLoopsMaskBitfield get controlLoops;

  @ImcField('Flags', 'flags', ImcType.typeUInt8)
  VehicleStateBitfieldFlags get flags;

  /// Description of last error.
  @ImcField('Last Error -- Description', 'last_error', ImcType.typePlaintext)
  String get lastError;

  /// Time of last error (Epoch time).
  @ImcField('Last Error -- Time', 'last_error_time', ImcType.typeFp64, units: 's')
  double get lastErrorTime;
}

/// Vehicle Command class
///
/// Vehicle command.
abstract class VehicleCommand extends ImcMessage implements Built<VehicleCommand, VehicleCommandBuilder> {
  static const static_id = 501;
  VehicleCommand._();
  factory VehicleCommand([void Function(VehicleCommandBuilder b) updates]) = _$VehicleCommand;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'VehicleCommand';

  @ImcField('Type', 'type', ImcType.typeUInt8)
  VehicleCommandEnumType get type;

  /// Request ID
  @ImcField('Request ID', 'request_id', ImcType.typeUInt16)
  int get requestId;

  /// The type of command/action to be performed
  @ImcField('Command', 'command', ImcType.typeUInt8)
  VehicleCommandEnumCommand get command;

  /// Maneuver to be executed (for 'EXEC_MANEUVER' command)
  @ImcField('Maneuver', 'maneuver', ImcType.typeMessage)
  Maneuver get maneuver;

  /// Amount of time to calibrate
  @ImcField('Calibration Time', 'calib_time', ImcType.typeUInt16, units: 's')
  int get calibTime;

  /// Complementary human-readable information for replies.
  @ImcField('Info', 'info', ImcType.typePlaintext)
  String get info;
}

/// Monitor Entity State class
///
/// Controls monitoring of entity states in the vehicle.
abstract class MonitorEntityState extends ImcMessage implements Built<MonitorEntityState, MonitorEntityStateBuilder> {
  static const static_id = 502;
  MonitorEntityState._();
  factory MonitorEntityState([void Function(MonitorEntityStateBuilder b) updates]) = _$MonitorEntityState;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'MonitorEntityState';

  /// Command.
  @ImcField('Command', 'command', ImcType.typeUInt8)
  MonitorEntityStateEnumCommand get command;

  /// Comma separated list of entity names.
  @ImcField('Entity Names', 'entities', ImcType.typePlaintext)
  String get entities;
}

/// Entity Monitoring State class
///
abstract class EntityMonitoringState extends ImcMessage implements Built<EntityMonitoringState, EntityMonitoringStateBuilder> {
  static const static_id = 503;
  EntityMonitoringState._();
  factory EntityMonitoringState([void Function(EntityMonitoringStateBuilder b) updates]) = _$EntityMonitoringState;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'EntityMonitoringState';

  /// Number of entitities being monitored.
  @ImcField('Entities monitored - Count', 'mcount', ImcType.typeUInt8)
  int get mcount;

  /// Comma separated list of all entity names being monitored.
  @ImcField('Entities monitored - Names', 'mnames', ImcType.typePlaintext)
  String get mnames;

  /// Number of entitities with non-critical errors.
  @ImcField('Entities with errors - Count', 'ecount', ImcType.typeUInt8)
  int get ecount;

  /// Comma separated list of all entity names with non-critical
  /// errors.
  @ImcField('Entities with errors - Names', 'enames', ImcType.typePlaintext)
  String get enames;

  /// Number of entitities with critical errors.
  @ImcField('Entities with critical errors - Count', 'ccount', ImcType.typeUInt8)
  int get ccount;

  /// Comma separated list of all entity names with critical errors.
  @ImcField('Entities with critical errors - Names', 'cnames', ImcType.typePlaintext)
  String get cnames;

  /// Description of last error.
  @ImcField('Last Error -- Description', 'last_error', ImcType.typePlaintext)
  String get lastError;

  /// Time of last error (Epoch time).
  @ImcField('Last Error -- Time', 'last_error_time', ImcType.typeFp64, units: 's')
  double get lastErrorTime;
}

/// Operational Limits class
///
/// Definition of operational limits.
abstract class OperationalLimits extends ImcMessage implements Built<OperationalLimits, OperationalLimitsBuilder> {
  static const static_id = 504;
  OperationalLimits._();
  factory OperationalLimits([void Function(OperationalLimitsBuilder b) updates]) = _$OperationalLimits;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'OperationalLimits';

  @ImcField('Field Indicator Mask', 'mask', ImcType.typeUInt8)
  OpLimitsMaskBitfield get mask;

  @ImcField('Maximum Depth', 'max_depth', ImcType.typeFp32, units: 'm')
  double get maxDepth;

  @ImcField('Minimum Altitude', 'min_altitude', ImcType.typeFp32, units: 'm')
  double get minAltitude;

  @ImcField('Maximum Altitude', 'max_altitude', ImcType.typeFp32, units: 'm')
  double get maxAltitude;

  @ImcField('Minimum Speed', 'min_speed', ImcType.typeFp32, units: 'm/s')
  double get minSpeed;

  @ImcField('Maximum Speed', 'max_speed', ImcType.typeFp32, units: 'm/s')
  double get maxSpeed;

  @ImcField('Maximum Vertical Rate', 'max_vrate', ImcType.typeFp32, units: 'm/s')
  double get maxVrate;

  @ImcField('Area -- WGS-84 Latitude', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  @ImcField('Area -- WGS-84 Longitude', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;

  @ImcField('Area -- Orientation', 'orientation', ImcType.typeFp32, units: 'rad')
  double get orientation;

  @ImcField('Area -- Width', 'width', ImcType.typeFp32, units: 'm')
  double get width;

  @ImcField('Area -- Length', 'length', ImcType.typeFp32, units: 'm')
  double get length;
}

/// Get Operational Limits class
///
/// Command to obtain the operational limits in use by the vehicle.
abstract class GetOperationalLimits extends ImcMessage implements Built<GetOperationalLimits, GetOperationalLimitsBuilder> {
  static const static_id = 505;
  GetOperationalLimits._();
  factory GetOperationalLimits([void Function(GetOperationalLimitsBuilder b) updates]) = _$GetOperationalLimits;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'GetOperationalLimits';
}

/// Calibration class
///
/// Initiate overall calibration of a vehicle.
abstract class Calibration extends ImcMessage implements Built<Calibration, CalibrationBuilder> {
  static const static_id = 506;
  Calibration._();
  factory Calibration([void Function(CalibrationBuilder b) updates]) = _$Calibration;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Calibration';

  /// Duration of calibration.
  @ImcField('Duration', 'duration', ImcType.typeUInt16, units: 's')
  int get duration;
}

/// Control Loops class
///
/// Enable or disable control loops.
abstract class ControlLoops extends ImcMessage implements Built<ControlLoops, ControlLoopsBuilder> {
  static const static_id = 507;
  ControlLoops._();
  factory ControlLoops([void Function(ControlLoopsBuilder b) updates]) = _$ControlLoops;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'ControlLoops';

  @ImcField('Enable', 'enable', ImcType.typeUInt8)
  ControlLoopsEnumEnable get enable;

  /// Control loop mask.
  @ImcField('Control Loop Mask', 'mask', ImcType.typeUint32)
  CLoopsMaskBitfield get mask;

  /// Unsigned integer reference for the scope of the control loop message.
  /// Scope reference should only be set by a maneuver.
  /// Should be set to an always increasing reference at the time of dispatching this message.
  /// Lower level controllers must inherit the same scope reference sent by maneuver.
  /// This same scope reference must be sent down to lower control layers.
  @ImcField('Scope Time Reference', 'scope_ref', ImcType.typeUint32)
  int get scopeRef;
}

/// Vehicle Medium class
///
/// Detect current vehicle medium.
abstract class VehicleMedium extends ImcMessage implements Built<VehicleMedium, VehicleMediumBuilder> {
  static const static_id = 508;
  VehicleMedium._();
  factory VehicleMedium([void Function(VehicleMediumBuilder b) updates]) = _$VehicleMedium;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'VehicleMedium';

  /// Current medium.
  @ImcField('Medium', 'medium', ImcType.typeUInt8)
  VehicleMediumEnumMedium get medium;
}

/// Collision class
///
/// Detected collision.
abstract class Collision extends ImcMessage implements Built<Collision, CollisionBuilder> {
  static const static_id = 509;
  Collision._();
  factory Collision([void Function(CollisionBuilder b) updates]) = _$Collision;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Collision';

  /// Estimated collision acceleration value.
  @ImcField('Collision value', 'value', ImcType.typeFp32, units: 'm/s/s')
  double get value;

  /// Collision flags.
  @ImcField('Type', 'type', ImcType.typeUInt8)
  CollisionBitfieldType get type;
}

/// Formation Tracking State class
///
/// Monitoring variables to assert the formation tracking state, i.e., the mismatch between the real and the simulated aircraft position, the convergence state, etc.
abstract class FormState extends ImcMessage implements Built<FormState, FormStateBuilder> {
  static const static_id = 510;
  FormState._();
  factory FormState([void Function(FormStateBuilder b) updates]) = _$FormState;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'FormState';

  /// Mismatch between the real and the simulated aircraft position.
  @ImcField('Position Mismatch', 'PosSimErr', ImcType.typeFp32, units: 'm')
  double get posSimErr;

  /// Convergence evalution variable.
  /// Value indicates the position error to which the system is converging, tacking into account the aircraft current position error and velocity.
  @ImcField('Convergence', 'Converg', ImcType.typeFp32, units: 'm')
  double get converg;

  /// Evaluation of the stream turbulence level, through the stream acceleration.
  @ImcField('Stream Turbulence', 'Turbulence', ImcType.typeFp32, units: 'm/s/s')
  double get turbulence;

  /// Position mismatch monitoring flag.
  @ImcField('Position Mismatch Monitor', 'PosSimMon', ImcType.typeUInt8)
  FormStateEnumPosSimMon get posSimMon;

  /// Communications monitoring flag.
  @ImcField('Communications Monitor', 'CommMon', ImcType.typeUInt8)
  FormStateEnumCommMon get commMon;

  /// Convergence monitoring flag.
  @ImcField('Convergence', 'ConvergMon', ImcType.typeUInt8)
  FormStateEnumConvergMon get convergMon;
}

/// Autopilot Mode class
///
/// Reports autopilot mode.
abstract class AutopilotMode extends ImcMessage implements Built<AutopilotMode, AutopilotModeBuilder> {
  static const static_id = 511;
  AutopilotMode._();
  factory AutopilotMode([void Function(AutopilotModeBuilder b) updates]) = _$AutopilotMode;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'AutopilotMode';

  /// Current mode autonomy level.
  @ImcField('Autonomy Level', 'autonomy', ImcType.typeUInt8)
  AutopilotModeEnumAutonomy get autonomy;

  /// Current mode name.
  @ImcField('Mode', 'mode', ImcType.typePlaintext)
  String get mode;
}

/// Formation Tracking State class
///
/// Monitoring variables to assert the formation tracking state, i.e., the mismatch between the real and the simulated aircraft position, the convergence state, etc.
abstract class FormationState extends ImcMessage implements Built<FormationState, FormationStateBuilder> {
  static const static_id = 512;
  FormationState._();
  factory FormationState([void Function(FormationStateBuilder b) updates]) = _$FormationState;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'FormationState';

  /// Indicates if the message is a request, or a reply to a previous request.
  @ImcField('Type', 'type', ImcType.typeUInt8)
  FormationStateEnumType get type;

  /// Operation to perform.
  @ImcField('Operation', 'op', ImcType.typeUInt8)
  FormationStateEnumOp get op;

  /// Mismatch between the real and the simulated aircraft position.
  @ImcField('Position Mismatch', 'PosSimErr', ImcType.typeFp32, units: 'm')
  double get posSimErr;

  /// Convergence evalution variable.
  /// Value indicates the position error to which the system is converging, tacking into account the aircraft current position error and velocity.
  @ImcField('Convergence', 'Converg', ImcType.typeFp32, units: 'm')
  double get converg;

  /// Evaluation of the stream turbulence level, through the stream acceleration.
  @ImcField('Stream Turbulence', 'Turbulence', ImcType.typeFp32, units: 'm/s/s')
  double get turbulence;

  /// Position mismatch monitoring flag.
  @ImcField('Position Mismatch Monitor', 'PosSimMon', ImcType.typeUInt8)
  FormationStateEnumPosSimMon get posSimMon;

  /// Communications monitoring flag.
  @ImcField('Communications Monitor', 'CommMon', ImcType.typeUInt8)
  FormationStateEnumCommMon get commMon;

  /// Convergence monitoring flag.
  @ImcField('Convergence', 'ConvergMon', ImcType.typeUInt8)
  FormationStateEnumConvergMon get convergMon;
}

/// Report Control class
///
/// This message is sent to trigger reports to a destination system.
abstract class ReportControl extends ImcMessage implements Built<ReportControl, ReportControlBuilder> {
  static const static_id = 513;
  ReportControl._();
  factory ReportControl([void Function(ReportControlBuilder b) updates]) = _$ReportControl;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'ReportControl';

  /// Operation to perform.
  @ImcField('Operation', 'op', ImcType.typeUInt8)
  ReportControlEnumOp get op;

  /// Communication interface to be used for reports.
  @ImcField('Communication Interface', 'comm_interface', ImcType.typeUInt8)
  ReportControlBitfieldCommInterface get commInterface;

  /// Desired periodicity for scheduled reports.
  @ImcField('Period', 'period', ImcType.typeUInt16, units: 's')
  int get period;

  /// Destination Address to be filled where applicable. It should be
  /// interpreted differently depending on communication interface.
  @ImcField('Destination System', 'sys_dst', ImcType.typePlaintext)
  String get sysDst;
}

/// State Report class
///
/// Concise representation of entire system state.
abstract class StateReport extends ImcMessage implements Built<StateReport, StateReportBuilder> {
  static const static_id = 514;
  StateReport._();
  factory StateReport([void Function(StateReportBuilder b) updates]) = _$StateReport;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'StateReport';

  /// Time, in seconds, since January 1st 1970.
  @ImcField('Time Stamp', 'stime', ImcType.typeUint32, units: 's')
  int get stime;

  /// Latitude of the system, in degrees.
  @ImcField('Latitude', 'latitude', ImcType.typeFp32, units: '°')
  double get latitude;

  /// Longitude of the system, in degrees.
  @ImcField('Longitude', 'longitude', ImcType.typeFp32, units: '°')
  double get longitude;

  /// Altitude of the system, in decimeters.
  /// * *0xFFFF* used for unknown / not applicable value.
  @ImcField('Altitude', 'altitude', ImcType.typeUInt16, units: 'dm')
  int get altitude;

  /// Depth of the system, in decimeters.
  /// * *0xFFFF* used for unknown / not applicable value.
  @ImcField('Depth', 'depth', ImcType.typeUInt16, units: 'dm')
  int get depth;

  /// Calculated as `(rads * (0xFFFF / (2 * PI))`
  @ImcField('Heading', 'heading', ImcType.typeUInt16)
  int get heading;

  /// Speed of the system in centimeters per second.
  @ImcField('Speed', 'speed', ImcType.typeInt16, units: 'cm/s')
  int get speed;

  /// System fuel gauge.
  /// * *-1* means unknown fuel level.
  @ImcField('Fuel', 'fuel', ImcType.typeInt8, units: '%')
  int get fuel;

  /// Progress of execution or idle state.
  /// * *-1* means Service mode
  /// * *-2* means Boot mode
  /// * *-3* means Calibration mode
  /// * *-4* means Error mode
  @ImcField('Execution State', 'exec_state', ImcType.typeInt8, units: '%')
  int get execState;

  /// Checksum of the plan being executed.
  @ImcField('Plan Checksum', 'plan_checksum', ImcType.typeUInt16)
  int get planChecksum;
}

/// Transmission Request class
///
/// Request data to be sent over a specified communication mean.
abstract class TransmissionRequest extends ImcMessage implements Built<TransmissionRequest, TransmissionRequestBuilder> {
  static const static_id = 515;
  TransmissionRequest._();
  factory TransmissionRequest([void Function(TransmissionRequestBuilder b) updates]) = _$TransmissionRequest;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'TransmissionRequest';

  /// The unique identifier for this request.
  @ImcField('Request Identifier', 'req_id', ImcType.typeUInt16)
  int get reqId;

  /// Communication mean to be used to transfer these data.
  @ImcField('Communication Mean', 'comm_mean', ImcType.typeUInt8)
  TransmissionRequestEnumCommMean get commMean;

  /// The name of the system where to send this message.
  @ImcField('Destination System', 'destination', ImcType.typePlaintext)
  String get destination;

  /// Deadline for message transmission (seconds since epoch).
  @ImcField('Deadline', 'deadline', ImcType.typeFp64)
  double get deadline;

  /// Type of data to be transmitted.
  @ImcField('Data Mode', 'data_mode', ImcType.typeUInt8)
  TransmissionRequestEnumDataMode get dataMode;

  /// Data to be transmitted if selected *data_mode* is *INLINEMSG*.
  @ImcField('Message Data', 'msg_data', ImcType.typeMessage)
  ImcMessage get msgData;

  /// Data to be transmitted if selected *data_mode* is *TEXT*.
  @ImcField('Text Data', 'txt_data', ImcType.typePlaintext)
  String get txtData;

  /// Data to be transmitted if selected *data_mode* is *RAW*.
  @ImcField('Raw Data', 'raw_data', ImcType.typeRawdata)
  List<int> get rawData;
}

/// Transmission Status class
///
/// Reply sent in response to a communications request.
abstract class TransmissionStatus extends ImcMessage implements Built<TransmissionStatus, TransmissionStatusBuilder> {
  static const static_id = 516;
  TransmissionStatus._();
  factory TransmissionStatus([void Function(TransmissionStatusBuilder b) updates]) = _$TransmissionStatus;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'TransmissionStatus';

  @ImcField('Request Identifier', 'req_id', ImcType.typeUInt16)
  int get reqId;

  @ImcField('Status', 'status', ImcType.typeUInt8)
  TransmissionStatusEnumStatus get status;

  @ImcField('Information', 'info', ImcType.typePlaintext)
  String get info;
}

/// SMS Transmission Request class
///
/// Request SMS Text sending.
abstract class SmsRequest extends ImcMessage implements Built<SmsRequest, SmsRequestBuilder> {
  static const static_id = 517;
  SmsRequest._();
  factory SmsRequest([void Function(SmsRequestBuilder b) updates]) = _$SmsRequest;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'SmsRequest';

  @ImcField('Request Identifier', 'req_id', ImcType.typeUInt16)
  int get reqId;

  /// Recipient identifier (number or name).
  @ImcField('Destination', 'destination', ImcType.typePlaintext)
  String get destination;

  /// Period of time to send message (in seconds).
  @ImcField('Timeout', 'timeout', ImcType.typeFp64, units: 's')
  double get timeout;

  @ImcField('SMS Text', 'sms_text', ImcType.typePlaintext)
  String get smsText;
}

/// SMS Transmission Status class
///
/// Reply sent in response to a SMS sending request.
abstract class SmsStatus extends ImcMessage implements Built<SmsStatus, SmsStatusBuilder> {
  static const static_id = 518;
  SmsStatus._();
  factory SmsStatus([void Function(SmsStatusBuilder b) updates]) = _$SmsStatus;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'SmsStatus';

  @ImcField('Request Identifier', 'req_id', ImcType.typeUInt16)
  int get reqId;

  @ImcField('Status', 'status', ImcType.typeUInt8)
  SmsStatusEnumStatus get status;

  /// Error description.
  @ImcField('Information', 'info', ImcType.typePlaintext)
  String get info;
}

/// VTOL State class
///
/// Reports VTOL current state.
abstract class VtolState extends ImcMessage implements Built<VtolState, VtolStateBuilder> {
  static const static_id = 519;
  VtolState._();
  factory VtolState([void Function(VtolStateBuilder b) updates]) = _$VtolState;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'VtolState';

  @ImcField('State', 'state', ImcType.typeUInt8)
  VtolStateEnumState get state;
}

/// Arming State class
///
/// Reports if motors are currently armed or disarmed.
abstract class ArmingState extends ImcMessage implements Built<ArmingState, ArmingStateBuilder> {
  static const static_id = 520;
  ArmingState._();
  factory ArmingState([void Function(ArmingStateBuilder b) updates]) = _$ArmingState;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'ArmingState';

  @ImcField('State', 'state', ImcType.typeUInt8)
  ArmingStateEnumState get state;
}

/// Abort class
///
/// Stops any executing actions and put the system in a standby mode.
abstract class Abort extends ImcMessage implements Built<Abort, AbortBuilder> {
  static const static_id = 550;
  Abort._();
  factory Abort([void Function(AbortBuilder b) updates]) = _$Abort;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Abort';
}

/// Plan Specification class
///
/// Identity and description of a plan's general parameters,
/// associated with plan loading (i.e. load plan command in
/// *PlanCommand*).
/// 
/// A plan specification is defined by a plan identifier, a set of
/// maneuver specifications and a start maneuver from that set.
/// 
/// See the :ref:`PlanManeuver` message for details on maneuver
/// specification.
abstract class PlanSpecification extends ImcMessage implements Built<PlanSpecification, PlanSpecificationBuilder> {
  static const static_id = 551;
  PlanSpecification._();
  factory PlanSpecification([void Function(PlanSpecificationBuilder b) updates]) = _$PlanSpecification;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'PlanSpecification';

  /// The plan's identifier.
  @ImcField('Plan ID', 'plan_id', ImcType.typePlaintext)
  String get planId;

  /// Verbose text description of plan.
  @ImcField('Plan Description', 'description', ImcType.typePlaintext)
  String get description;

  /// Namespace for plan variables.
  @ImcField('Namespace', 'vnamespace', ImcType.typePlaintext)
  String get vnamespace;

  /// Plan variables.
  @ImcField('Plan Variables', 'variables', ImcType.typeMessageList)
  List<PlanVariable> get variables;

  /// Indicates the id of the starting maneuver for this plan.
  @ImcField('Starting maneuver', 'start_man_id', ImcType.typePlaintext)
  String get startManId;

  /// List of maneuver specifications.
  @ImcField('Maneuvers', 'maneuvers', ImcType.typeMessageList)
  List<PlanManeuver> get maneuvers;

  /// List of maneuver specifications.
  @ImcField('Transitions', 'transitions', ImcType.typeMessageList)
  List<PlanTransition> get transitions;

  /// Contains an optionally defined 'MessageList' for actions fired
  /// on plan activation.
  @ImcField('Start Actions', 'start_actions', ImcType.typeMessageList)
  List<ImcMessage> get startActions;

  /// Contains an optionally defined 'MessageList' for actions fired
  /// on plan termination.
  @ImcField('End Actions', 'end_actions', ImcType.typeMessageList)
  List<ImcMessage> get endActions;
}

/// Plan Maneuver class
///
/// Named plan maneuver.
abstract class PlanManeuver extends ImcMessage implements Built<PlanManeuver, PlanManeuverBuilder> {
  static const static_id = 552;
  PlanManeuver._();
  factory PlanManeuver([void Function(PlanManeuverBuilder b) updates]) = _$PlanManeuver;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'PlanManeuver';

  /// The maneuver ID.
  @ImcField('Maneuver ID', 'maneuver_id', ImcType.typePlaintext)
  String get maneuverId;

  /// The maneuver specification.
  @ImcField('Maneuver Specification', 'data', ImcType.typeMessage)
  Maneuver get data;

  /// Contains an optionally defined 'MessageList' for actions fired
  /// on plan activation.
  @ImcField('Start Actions', 'start_actions', ImcType.typeMessageList)
  List<ImcMessage> get startActions;

  /// Contains an optionally defined 'MessageList' for actions fired
  /// on plan termination.
  @ImcField('End Actions', 'end_actions', ImcType.typeMessageList)
  List<ImcMessage> get endActions;
}

/// Plan Transition class
///
/// Describes a plan transition within a plan specification. A
/// transition states the vehicle conditions that must be met to
/// signal the transition, the maneuver that should be started as a
/// result, and an optional set of actions triggered by the
/// transition.
abstract class PlanTransition extends ImcMessage implements Built<PlanTransition, PlanTransitionBuilder> {
  static const static_id = 553;
  PlanTransition._();
  factory PlanTransition([void Function(PlanTransitionBuilder b) updates]) = _$PlanTransition;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'PlanTransition';

  /// Comma separated list of maneuver IDs, or the special value '.'
  /// to identify a global plan transition.
  @ImcField('Source', 'source_man', ImcType.typePlaintext)
  String get sourceMan;

  /// Target maneuver name.
  /// If it equals the special value '_done_' then plan should
  /// terminate with a success status.
  /// If it equals the special value '_error_' then the plan should
  /// terminate with an error status.
  @ImcField('Destination Maneuver Name', 'dest_man', ImcType.typePlaintext)
  String get destMan;

  /// Comma separated list of conditions for transition. Each
  /// condition identifier corresponds to a known predicate which is
  /// interpreted and tested internally by the vehicle.
  @ImcField('Transition conditions', 'conditions', ImcType.typePlaintext)
  String get conditions;

  /// Messages processed when the transition is triggered.
  @ImcField('Transition actions', 'actions', ImcType.typeMessageList)
  List<ImcMessage> get actions;
}

/// Emergency Control class
///
abstract class EmergencyControl extends ImcMessage implements Built<EmergencyControl, EmergencyControlBuilder> {
  static const static_id = 554;
  EmergencyControl._();
  factory EmergencyControl([void Function(EmergencyControlBuilder b) updates]) = _$EmergencyControl;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'EmergencyControl';

  @ImcField('Command', 'command', ImcType.typeUInt8)
  EmergencyControlEnumCommand get command;

  @ImcField('Plan Specification', 'plan', ImcType.typeMessage)
  PlanSpecification get plan;
}

/// Emergency Control State class
///
abstract class EmergencyControlState extends ImcMessage implements Built<EmergencyControlState, EmergencyControlStateBuilder> {
  static const static_id = 555;
  EmergencyControlState._();
  factory EmergencyControlState([void Function(EmergencyControlStateBuilder b) updates]) = _$EmergencyControlState;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'EmergencyControlState';

  @ImcField('State', 'state', ImcType.typeUInt8)
  EmergencyControlStateEnumState get state;

  @ImcField('Plan Id', 'plan_id', ImcType.typePlaintext)
  String get planId;

  @ImcField('Communications Level', 'comm_level', ImcType.typeUInt8, units: '%')
  int get commLevel;
}

/// Plan DB class
///
/// Request/reply to plan database.
abstract class PlanDB extends ImcMessage implements Built<PlanDB, PlanDBBuilder> {
  static const static_id = 556;
  PlanDB._();
  factory PlanDB([void Function(PlanDBBuilder b) updates]) = _$PlanDB;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'PlanDB';

  /// Indicates if the message is a request, or a reply to a
  /// previous request.
  @ImcField('Type', 'type', ImcType.typeUInt8)
  PlanDBEnumType get type;

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
  @ImcField('Operation', 'op', ImcType.typeUInt8)
  PlanDBEnumOp get op;

  /// Request ID. This may be used by interfacing modules,
  /// e.g. using sequence counters, to annotate requests and
  /// appropriately identify replies
  @ImcField('Request ID', 'request_id', ImcType.typeUInt16)
  int get requestId;

  /// Plan identifier for the operation, if one is required.
  @ImcField('Plan ID', 'plan_id', ImcType.typePlaintext)
  String get planId;

  /// Request or reply argument.
  @ImcField('Argument', 'arg', ImcType.typeMessage)
  ImcMessage get arg;

  /// Human-readable complementary information. For example this
  /// may be used to detail reasons for failure, or to report
  /// in-progress information.
  @ImcField('Complementary Information', 'info', ImcType.typePlaintext)
  String get info;
}

/// Plan DB State class
///
/// Characterizes the state of the entire plan database.
abstract class PlanDBState extends ImcMessage implements Built<PlanDBState, PlanDBStateBuilder> {
  static const static_id = 557;
  PlanDBState._();
  factory PlanDBState([void Function(PlanDBStateBuilder b) updates]) = _$PlanDBState;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'PlanDBState';

  /// Number of stored plans.
  @ImcField('Plan -- Count', 'plan_count', ImcType.typeUInt16)
  int get planCount;

  /// Size of all plans.The value equals the sum of the IMC payload
  /// sizes for 'PlanSpecification' stored in the DB.
  @ImcField('Plan -- Size of all plans', 'plan_size', ImcType.typeUint32)
  int get planSize;

  /// Time of last change (Epoch time).
  @ImcField('Last Change -- Time', 'change_time', ImcType.typeFp64, units: 's')
  double get changeTime;

  /// IMC address for source of last DB change.
  @ImcField('Last Change -- Source Address', 'change_sid', ImcType.typeUInt16)
  int get changeSid;

  /// IMC node name for source of last DB change.
  @ImcField('Last Change -- Source Name', 'change_sname', ImcType.typePlaintext)
  String get changeSname;

  /// MD5 database verification code. The MD5 hash sum is computed
  /// over the stream formed by the MD5 of all plans, ordered by
  /// plan id, in compliance with RFC 1321.
  @ImcField('MD5', 'md5', ImcType.typeRawdata)
  List<int> get md5;

  /// Individual information for plans.
  @ImcField('Plan info', 'plans_info', ImcType.typeMessageList)
  List<PlanDBInformation> get plansInfo;
}

/// Plan DB Information class
///
abstract class PlanDBInformation extends ImcMessage implements Built<PlanDBInformation, PlanDBInformationBuilder> {
  static const static_id = 558;
  PlanDBInformation._();
  factory PlanDBInformation([void Function(PlanDBInformationBuilder b) updates]) = _$PlanDBInformation;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'PlanDBInformation';

  /// Plan identifier.
  @ImcField('Plan ID', 'plan_id', ImcType.typePlaintext)
  String get planId;

  /// Plan size. The value equals the IMC message payload of the
  /// associated 'PlanSpecification' message in bytes.
  @ImcField('Plan Size', 'plan_size', ImcType.typeUInt16)
  int get planSize;

  /// Time of last change to the plan (Epoch time).
  @ImcField('Last Changed -- Time', 'change_time', ImcType.typeFp64)
  double get changeTime;

  /// IMC address for source of last change to the plan.
  @ImcField('Last Change -- Source Address', 'change_sid', ImcType.typeUInt16)
  int get changeSid;

  /// IMC node name for source of last change to the plan.
  @ImcField('Last Change -- Source Name', 'change_sname', ImcType.typePlaintext)
  String get changeSname;

  /// MD5 plan verification code. The value is calculated over the
  /// message payload of the 'PlanSpecification', in compliance with
  /// RFC 1321.
  @ImcField('MD5', 'md5', ImcType.typeRawdata)
  List<int> get md5;
}

/// Plan Control class
///
/// Plan control request/reply.
abstract class PlanControl extends ImcMessage implements Built<PlanControl, PlanControlBuilder> {
  static const static_id = 559;
  PlanControl._();
  factory PlanControl([void Function(PlanControlBuilder b) updates]) = _$PlanControl;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'PlanControl';

  /// Indicates if the message is a request or a reply to a
  /// previous request. The *op*, *request_id* and *plan_id* fields
  /// of a request will be echoed in one or more responses to that
  /// request.
  @ImcField('Type', 'type', ImcType.typeUInt8)
  PlanControlEnumType get type;

  /// Plan control operation.
  @ImcField('Operation', 'op', ImcType.typeUInt8)
  PlanControlEnumOp get op;

  /// Request ID. This may be used by interfacing modules e.g. using
  /// sequence counters.  to annotate requests and appropriately
  /// identify replies.
  @ImcField('Request ID', 'request_id', ImcType.typeUInt16)
  int get requestId;

  /// The identifier for the plan to be stopped / started / loaded /
  /// retrieved according to the command requested (*op* field).
  @ImcField('Plan Identifier', 'plan_id', ImcType.typePlaintext)
  String get planId;

  @ImcField('Flags', 'flags', ImcType.typeUInt16)
  PlanControlBitfieldFlags get flags;

  /// Complementary message argument for requests/replies.
  @ImcField('Request/Reply Argument', 'arg', ImcType.typeMessage)
  ImcMessage get arg;

  /// Complementary human-readable information. This is used
  /// in association to replies.
  @ImcField('Complementary Info', 'info', ImcType.typePlaintext)
  String get info;
}

/// Plan Control State class
///
/// State of plan control.
abstract class PlanControlState extends ImcMessage implements Built<PlanControlState, PlanControlStateBuilder> {
  static const static_id = 560;
  PlanControlState._();
  factory PlanControlState([void Function(PlanControlStateBuilder b) updates]) = _$PlanControlState;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'PlanControlState';

  /// Describes overall state.
  @ImcField('State', 'state', ImcType.typeUInt8)
  PlanControlStateEnumState get state;

  /// Identifier of plan currently loaded.
  @ImcField('Plan -- ID', 'plan_id', ImcType.typePlaintext)
  String get planId;

  /// Current plan estimated time to completion.
  /// The value will be -1 if the time is unknown or undefined.
  @ImcField('Plan -- ETA', 'plan_eta', ImcType.typeInt32, units: 's')
  int get planEta;

  /// Current plan estimated progress in percent.
  /// The value will be negative if unknown or undefined.
  @ImcField('Plan -- Progress', 'plan_progress', ImcType.typeFp32, units: '%')
  double get planProgress;

  /// Current node ID, when executing a plan.
  @ImcField('Maneuver -- ID', 'man_id', ImcType.typePlaintext)
  String get manId;

  /// Type of maneuver being executed (IMC serialization id),
  /// when executing a plan.
  @ImcField('Maneuver -- Type', 'man_type', ImcType.typeUInt16)
  int get manType;

  /// Current node estimated time to completion, when executing a plan.
  /// The value will be -1 if the time is unknown or undefined.
  @ImcField('Maneuver -- ETA', 'man_eta', ImcType.typeInt32, units: 's')
  int get manEta;

  /// Outcome of the last executed plan.
  @ImcField('Last Plan Outcome', 'last_outcome', ImcType.typeUInt8)
  PlanControlStateEnumLastOutcome get lastOutcome;
}

/// Plan Variable class
///
/// A plan variable.
abstract class PlanVariable extends ImcMessage implements Built<PlanVariable, PlanVariableBuilder> {
  static const static_id = 561;
  PlanVariable._();
  factory PlanVariable([void Function(PlanVariableBuilder b) updates]) = _$PlanVariable;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'PlanVariable';

  @ImcField('Name', 'name', ImcType.typePlaintext)
  String get name;

  @ImcField('Value', 'value', ImcType.typePlaintext)
  String get value;

  @ImcField('Type', 'type', ImcType.typeUInt8)
  PlanVariableEnumType get type;

  @ImcField('Access Type', 'access', ImcType.typeUInt8)
  PlanVariableEnumAccess get access;
}

/// Plan Generation class
///
/// This message is used to order the generation of plans based on
/// id and set of parameters.
abstract class PlanGeneration extends ImcMessage implements Built<PlanGeneration, PlanGenerationBuilder> {
  static const static_id = 562;
  PlanGeneration._();
  factory PlanGeneration([void Function(PlanGenerationBuilder b) updates]) = _$PlanGeneration;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'PlanGeneration';

  @ImcField('Command', 'cmd', ImcType.typeUInt8)
  PlanGenerationEnumCmd get cmd;

  @ImcField('Operation', 'op', ImcType.typeUInt8)
  PlanGenerationEnumOp get op;

  /// The name of the plan to be generated.
  @ImcField('Plan Identifier', 'plan_id', ImcType.typePlaintext)
  String get planId;

  /// An optional list of parameters to be used by the plan
  /// generation module.
  @ImcField('Parameters', 'params', ImcType.typePlaintext, units: 'TupleList')
  String get params;
}

/// Leader State class
///
/// This message defines the formation leader state.
/// 
/// LeaderState is a complete description of the leader state
/// in terms of parameters such as position, orientation and
/// velocities at a particular moment in time.
/// 
/// The system position is given by a North-East-Down (NED)
/// local tangent plane displacement (x, y, z) relative to
/// an absolute WGS-84 coordinate (latitude, longitude,
/// height above ellipsoid).
/// 
/// The symbols for position and attitude as well as linear and
/// angular velocities were chosen according to SNAME's notation (1950).
/// The body-fixed reference frame and Euler angles are depicted
/// next:
/// 
/// .. figure:: ../images/euler-lauv.png
/// 
/// :align:  center
/// 
/// Euler angles
abstract class LeaderState extends ImcMessage implements Built<LeaderState, LeaderStateBuilder> {
  static const static_id = 563;
  LeaderState._();
  factory LeaderState([void Function(LeaderStateBuilder b) updates]) = _$LeaderState;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'LeaderState';

  /// Name for the formation group.
  @ImcField('Group Name', 'group_name', ImcType.typePlaintext)
  String get groupName;

  /// Action on the formation leader state variables
  @ImcField('Action on the leader state', 'op', ImcType.typeUInt8)
  LeaderStateEnumOp get op;

  /// WGS-84 Latitude.
  @ImcField('Latitude (WGS-84)', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  /// WGS-84 Longitude.
  @ImcField('Longitude (WGS-84)', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;

  /// Height above the WGS-84 ellipsoid.
  @ImcField('Height (WGS-84)', 'height', ImcType.typeFp32, units: 'm')
  double get height;

  /// The North offset of the North/East/Down field with respect to
  /// LLH.
  @ImcField('Offset north', 'x', ImcType.typeFp32, units: 'm')
  double get x;

  /// The East offset of the North/East/Down field with respect to
  /// LLH.
  @ImcField('Offset east', 'y', ImcType.typeFp32, units: 'm')
  double get y;

  /// The Down offset of the North/East/Down field with respect to
  /// LLH.
  @ImcField('Offset down', 'z', ImcType.typeFp32, units: 'm')
  double get z;

  /// The phi Euler angle from the vehicle's attitude.
  @ImcField('Rotation over x axis', 'phi', ImcType.typeFp32, units: 'rad')
  double get phi;

  /// The theta Euler angle from the vehicle's attitude.
  @ImcField('Rotation over y axis', 'theta', ImcType.typeFp32, units: 'rad')
  double get theta;

  /// The psi Euler angle from the vehicle's attitude.
  @ImcField('Rotation over z axis', 'psi', ImcType.typeFp32, units: 'rad')
  double get psi;

  /// Ground Velocity xx axis velocity component.
  @ImcField('Ground Velocity X (North)', 'vx', ImcType.typeFp32, units: 'm/s')
  double get vx;

  /// Ground Velocity yy axis velocity component.
  @ImcField('Ground Velocity Y (East)', 'vy', ImcType.typeFp32, units: 'm/s')
  double get vy;

  /// Ground Velocity zz axis velocity component.
  @ImcField('Ground Velocity Z (Down)', 'vz', ImcType.typeFp32, units: 'm/s')
  double get vz;

  /// The angular velocity over body-fixed xx axis (roll).
  @ImcField('Angular Velocity in x', 'p', ImcType.typeFp32, units: 'rad/s')
  double get p;

  /// The angular velocity over body-fixed yy axis (pitch).
  @ImcField('Angular Velocity in y', 'q', ImcType.typeFp32, units: 'rad/s')
  double get q;

  /// The angular velocity over body-fixed zz axis (yaw).
  @ImcField('Angular Velocity in z', 'r', ImcType.typeFp32, units: 'rad/s')
  double get r;

  /// Stream Velocity xx axis velocity component.
  @ImcField('Stream Velocity X (North)', 'svx', ImcType.typeFp32, units: 'm/s')
  double get svx;

  /// Stream Velocity yy axis velocity component.
  @ImcField('Stream Velocity Y (East)', 'svy', ImcType.typeFp32, units: 'm/s')
  double get svy;

  /// Stream Velocity zz axis velocity component.
  @ImcField('Stream Velocity Z (Down)', 'svz', ImcType.typeFp32, units: 'm/s')
  double get svz;
}

/// Plan Statistics class
///
abstract class PlanStatistics extends ImcMessage implements Built<PlanStatistics, PlanStatisticsBuilder> {
  static const static_id = 564;
  PlanStatistics._();
  factory PlanStatistics([void Function(PlanStatisticsBuilder b) updates]) = _$PlanStatistics;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'PlanStatistics';

  /// The name of the plan to be generated.
  @ImcField('Plan Identifier', 'plan_id', ImcType.typePlaintext)
  String get planId;

  /// Type of plan statistics, if they are launched before, during or after the plan execution.
  @ImcField('Type', 'type', ImcType.typeUInt8)
  PlanStatisticsEnumType get type;

  @ImcField('Properties', 'properties', ImcType.typeUInt8)
  PlanStatisticsBitfieldProperties get properties;

  /// Maneuver and plan duration statistics in seconds, for example: “Total=1000,Goto1=20,Rows=980”
  @ImcField('Durations', 'durations', ImcType.typePlaintext, units: 'TupleList')
  String get durations;

  /// Distances travelled in meters in each maneuver and/or total: “Total=2000,Rows=1800,Elevator=200”
  @ImcField('Distances', 'distances', ImcType.typePlaintext, units: 'TupleList')
  String get distances;

  /// List of components active by plan actions during the plan and time active in seconds: “Sidescan=100,Camera Module=150”
  @ImcField('Actions', 'actions', ImcType.typePlaintext, units: 'TupleList')
  String get actions;

  /// Amount of fuel spent, in battery percentage, by different parcels (if applicable): “Total=35,Hotel=5,Payload=10,Motion=20,IMU=0”
  @ImcField('Fuel', 'fuel', ImcType.typePlaintext, units: 'TupleList')
  String get fuel;
}

/// Reported State class
///
/// A vehicle state that is reported to other consoles (including PDAConsole). Source can be acoustic tracker, SMS, Wi-Fi, etc...
abstract class ReportedState extends ImcMessage implements Built<ReportedState, ReportedStateBuilder> {
  static const static_id = 600;
  ReportedState._();
  factory ReportedState([void Function(ReportedStateBuilder b) updates]) = _$ReportedState;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'ReportedState';

  @ImcField('Latitude', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  @ImcField('Longitude', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;

  /// The reported depth. In the case of not knowing the depth 0 will be reported.
  /// Airplanes usually have negative values (por positive altitude).
  @ImcField('Depth', 'depth', ImcType.typeFp64, units: 'm')
  double get depth;

  /// The phi Euler angle from the vehicle's attitude.
  @ImcField('Roll', 'roll', ImcType.typeFp64, units: 'rad')
  double get roll;

  /// The theta Euler angle from the vehicle's attitude.
  @ImcField('Pitch', 'pitch', ImcType.typeFp64, units: 'rad')
  double get pitch;

  /// The psi Euler angle from the vehicle's attitude.
  @ImcField('Yaw', 'yaw', ImcType.typeFp64, units: 'rad')
  double get yaw;

  /// The time when the packet was sent, as seen by the packet
  /// dispatcher. The number of seconds is represented in Universal
  /// Coordinated Time (UCT) in seconds since Jan 1, 1970 using IEEE
  /// double precision floating point numbers.
  @ImcField('Reception Time', 'rcp_time', ImcType.typeFp64, units: 's')
  double get rcpTime;

  /// The id of the system whose position is being reported (it can be a vehicle's id, a boat name, etc)
  @ImcField('System Identifier', 'sid', ImcType.typePlaintext)
  String get sid;

  /// How the position was received/calculated
  @ImcField('Source Type', 's_type', ImcType.typeUInt8)
  ReportedStateEnumSType get sType;
}

/// Remote Sensor Info class
///
/// Whenever the CUCS receives a message from one of the existing sensors (through SMS, ZigBee, Acoustic Comms, ...) it disseminates that info recurring to this message.
abstract class RemoteSensorInfo extends ImcMessage implements Built<RemoteSensorInfo, RemoteSensorInfoBuilder> {
  static const static_id = 601;
  RemoteSensorInfo._();
  factory RemoteSensorInfo([void Function(RemoteSensorInfoBuilder b) updates]) = _$RemoteSensorInfo;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'RemoteSensorInfo';

  /// An unique string that identifies the sensor. Used mostly for logging/presentation.
  @ImcField('Id', 'id', ImcType.typePlaintext)
  String get id;

  /// The class of a sensor tells the type of sensor originating this message. It will determine how the sensor is to be shown and (optionally) how the custom data (tuplelist) is to be interpreted.
  @ImcField('Class', 'sensor_class', ImcType.typePlaintext)
  String get sensorClass;

  @ImcField('Latitude', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  @ImcField('Longitude', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;

  @ImcField('Altitude', 'alt', ImcType.typeFp32, units: 'm')
  double get alt;

  @ImcField('Heading', 'heading', ImcType.typeFp32, units: 'rad')
  double get heading;

  @ImcField('Custom Data', 'data', ImcType.typePlaintext, units: 'TupleList')
  String get data;
}

/// Map class
///
/// This message represents a simple map that is transferred between CCU consoles (from Neptus to ACCU)
abstract class Map extends ImcMessage implements Built<Map, MapBuilder> {
  static const static_id = 602;
  Map._();
  factory Map([void Function(MapBuilder b) updates]) = _$Map;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Map';

  /// The id of the map
  @ImcField('Identifier', 'id', ImcType.typePlaintext)
  String get id;

  /// A list of map features.
  @ImcField('Features', 'features', ImcType.typeMessageList)
  List<MapFeature> get features;
}

/// Map Feature class
///
/// A feature to appear on the map
abstract class MapFeature extends ImcMessage implements Built<MapFeature, MapFeatureBuilder> {
  static const static_id = 603;
  MapFeature._();
  factory MapFeature([void Function(MapFeatureBuilder b) updates]) = _$MapFeature;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'MapFeature';

  /// The unique identifier for this feature (used as the name for points of interest)
  @ImcField('Identifier', 'id', ImcType.typePlaintext)
  String get id;

  /// The type of feature
  @ImcField('FeatureType', 'feature_type', ImcType.typeUInt8)
  MapFeatureEnumFeatureType get featureType;

  /// The red component of the color for this point
  @ImcField('RedComponent', 'rgb_red', ImcType.typeUInt8)
  int get rgbRed;

  /// The green component of the color for this point
  @ImcField('GreenComponent', 'rgb_green', ImcType.typeUInt8)
  int get rgbGreen;

  /// The blue component of the color for this point
  @ImcField('BlueComponent', 'rgb_blue', ImcType.typeUInt8)
  int get rgbBlue;

  /// The enclosing feature definition.
  @ImcField('Feature', 'feature', ImcType.typeMessageList)
  List<MapPoint> get feature;
}

/// MapPoint class
///
/// This message represents a point in the world.
abstract class MapPoint extends ImcMessage implements Built<MapPoint, MapPointBuilder> {
  static const static_id = 604;
  MapPoint._();
  factory MapPoint([void Function(MapPointBuilder b) updates]) = _$MapPoint;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'MapPoint';

  @ImcField('Latitude', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  @ImcField('Longitude', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;

  @ImcField('Altitude', 'alt', ImcType.typeFp32, units: 'm')
  double get alt;
}

/// CCU Event class
///
/// This message is used to signal events among running CCUs.
abstract class CcuEvent extends ImcMessage implements Built<CcuEvent, CcuEventBuilder> {
  static const static_id = 606;
  CcuEvent._();
  factory CcuEvent([void Function(CcuEventBuilder b) updates]) = _$CcuEvent;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'CcuEvent';

  @ImcField('Event Type', 'type', ImcType.typeUInt8)
  CcuEventEnumType get type;

  @ImcField('Identifier', 'id', ImcType.typePlaintext)
  String get id;

  @ImcField('Additional Data', 'arg', ImcType.typeMessage)
  ImcMessage get arg;
}

/// Vehicle Links class
///
/// This message is sent by the TREX task which gives further information to a TREX instance about connected IMC nodes
abstract class VehicleLinks extends ImcMessage implements Built<VehicleLinks, VehicleLinksBuilder> {
  static const static_id = 650;
  VehicleLinks._();
  factory VehicleLinks([void Function(VehicleLinksBuilder b) updates]) = _$VehicleLinks;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'VehicleLinks';

  /// The name of the vehicle being controlled
  @ImcField('Local Name', 'localname', ImcType.typePlaintext)
  String get localname;

  /// A list of Announce messages with last announces heard
  @ImcField('Active Links', 'links', ImcType.typeMessageList)
  List<Announce> get links;
}

/// TREX Observation class
///
/// This message is sent to TREX to post timeline observations
abstract class TrexObservation extends ImcMessage implements Built<TrexObservation, TrexObservationBuilder> {
  static const static_id = 651;
  TrexObservation._();
  factory TrexObservation([void Function(TrexObservationBuilder b) updates]) = _$TrexObservation;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'TrexObservation';

  @ImcField('Timeline', 'timeline', ImcType.typePlaintext)
  String get timeline;

  @ImcField('Predicate', 'predicate', ImcType.typePlaintext)
  String get predicate;

  @ImcField('Attributes', 'attributes', ImcType.typePlaintext, units: 'TupleList')
  String get attributes;
}

/// TREX Command class
///
/// This message is used to control TREX execution
abstract class TrexCommand extends ImcMessage implements Built<TrexCommand, TrexCommandBuilder> {
  static const static_id = 652;
  TrexCommand._();
  factory TrexCommand([void Function(TrexCommandBuilder b) updates]) = _$TrexCommand;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'TrexCommand';

  @ImcField('Command', 'command', ImcType.typeUInt8)
  TrexCommandEnumCommand get command;

  /// The id of the goal, if applicable (OP == POST_GOAL || OP == RECALL_GOAL)
  @ImcField('Goal Id', 'goal_id', ImcType.typePlaintext)
  String get goalId;

  /// The goal encoded as XML, if applicable (OP == POST_GOAL)
  @ImcField('Goal XML', 'goal_xml', ImcType.typePlaintext)
  String get goalXml;
}

/// TREX Operation class
///
/// This message is used to control TREX execution
abstract class TrexOperation extends ImcMessage implements Built<TrexOperation, TrexOperationBuilder> {
  static const static_id = 655;
  TrexOperation._();
  factory TrexOperation([void Function(TrexOperationBuilder b) updates]) = _$TrexOperation;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'TrexOperation';

  @ImcField('Operation', 'op', ImcType.typeUInt8)
  TrexOperationEnumOp get op;

  /// The id of the goal, if applicable (OP == POST_GOAL || OP == RECALL_GOAL)
  @ImcField('Goal Id', 'goal_id', ImcType.typePlaintext)
  String get goalId;

  /// Goal / observation to post, if applicable (OP == POST_GOAL || OP == POST_TOKEN)
  @ImcField('Token', 'token', ImcType.typeMessage)
  TrexToken get token;
}

/// TREX Attribute class
///
abstract class TrexAttribute extends ImcMessage implements Built<TrexAttribute, TrexAttributeBuilder> {
  static const static_id = 656;
  TrexAttribute._();
  factory TrexAttribute([void Function(TrexAttributeBuilder b) updates]) = _$TrexAttribute;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'TrexAttribute';

  /// Name of this attribute.
  @ImcField('Attribute Name', 'name', ImcType.typePlaintext)
  String get name;

  @ImcField('Attribute type', 'attr_type', ImcType.typeUInt8)
  TrexAttributeEnumAttrType get attrType;

  /// Lower bound of this interval. Empty text means no bound.
  @ImcField('Minimum', 'min', ImcType.typePlaintext)
  String get min;

  /// Upper bound of this interval. Empty text means no bound.
  @ImcField('Maximum', 'max', ImcType.typePlaintext)
  String get max;
}

/// TREX Token class
///
abstract class TrexToken extends ImcMessage implements Built<TrexToken, TrexTokenBuilder> {
  static const static_id = 657;
  TrexToken._();
  factory TrexToken([void Function(TrexTokenBuilder b) updates]) = _$TrexToken;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'TrexToken';

  @ImcField('Timeline', 'timeline', ImcType.typePlaintext)
  String get timeline;

  @ImcField('Predicate', 'predicate', ImcType.typePlaintext)
  String get predicate;

  @ImcField('Attributes', 'attributes', ImcType.typeMessageList)
  List<TrexAttribute> get attributes;
}

/// TREX Plan class
///
abstract class TrexPlan extends ImcMessage implements Built<TrexPlan, TrexPlanBuilder> {
  static const static_id = 658;
  TrexPlan._();
  factory TrexPlan([void Function(TrexPlanBuilder b) updates]) = _$TrexPlan;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'TrexPlan';

  @ImcField('Reactor name', 'reactor', ImcType.typePlaintext)
  String get reactor;

  @ImcField('Tokens', 'tokens', ImcType.typeMessageList)
  List<TrexToken> get tokens;
}

/// Event class
///
/// This message is used for signaling asynchronous events between different (sub) systems.
abstract class Event extends ImcMessage implements Built<Event, EventBuilder> {
  static const static_id = 660;
  Event._();
  factory Event([void Function(EventBuilder b) updates]) = _$Event;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Event';

  /// The name or type of this event
  @ImcField('Topic', 'topic', ImcType.typePlaintext)
  String get topic;

  /// A map with additional event information.
  @ImcField('Data', 'data', ImcType.typePlaintext, units: 'TupleList')
  String get data;
}

/// Compressed Image class
///
/// 
abstract class CompressedImage extends ImcMessage implements Built<CompressedImage, CompressedImageBuilder> {
  static const static_id = 702;
  CompressedImage._();
  factory CompressedImage([void Function(CompressedImageBuilder b) updates]) = _$CompressedImage;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'CompressedImage';

  @ImcField('Frame Id', 'frameid', ImcType.typeUInt8)
  int get frameid;

  @ImcField('Data', 'data', ImcType.typeRawdata)
  List<int> get data;
}

/// Image Transmission Settings class
///
/// 
abstract class ImageTxSettings extends ImcMessage implements Built<ImageTxSettings, ImageTxSettingsBuilder> {
  static const static_id = 703;
  ImageTxSettings._();
  factory ImageTxSettings([void Function(ImageTxSettingsBuilder b) updates]) = _$ImageTxSettings;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'ImageTxSettings';

  @ImcField('Frames Per Second', 'fps', ImcType.typeUInt8)
  int get fps;

  @ImcField('Quality', 'quality', ImcType.typeUInt8)
  int get quality;

  @ImcField('Repetitions', 'reps', ImcType.typeUInt8)
  int get reps;

  @ImcField('Target Size', 'tsize', ImcType.typeUInt8)
  int get tsize;
}

/// Remote State class
///
/// State summary for a remote vehicle.
abstract class RemoteState extends ImcMessage implements Built<RemoteState, RemoteStateBuilder> {
  static const static_id = 750;
  RemoteState._();
  factory RemoteState([void Function(RemoteStateBuilder b) updates]) = _$RemoteState;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'RemoteState';

  /// WGS-84 Latitude.
  @ImcField('Latitude WGS-84', 'lat', ImcType.typeFp32, units: 'rad')
  double get lat;

  /// WGS-84 Longitude.
  @ImcField('Longitude WGS-84', 'lon', ImcType.typeFp32, units: 'rad')
  double get lon;

  /// Depth.
  @ImcField('Depth', 'depth', ImcType.typeUInt8, units: 'm')
  int get depth;

  /// Speed.
  @ImcField('Speed', 'speed', ImcType.typeFp32, units: 'm/s')
  double get speed;

  /// Heading.
  @ImcField('Heading', 'psi', ImcType.typeFp32, units: 'rad')
  double get psi;
}

/// Target class
///
/// Target.
abstract class Target extends ImcMessage implements Built<Target, TargetBuilder> {
  static const static_id = 800;
  Target._();
  factory Target([void Function(TargetBuilder b) updates]) = _$Target;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Target';

  /// Target identifier.
  @ImcField('Label', 'label', ImcType.typePlaintext)
  String get label;

  /// WGS-84 Latitude coordinate.
  @ImcField('Latitude WGS-84', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  /// WGS-84 Longitude coordinate.
  @ImcField('Longitude WGS-84', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;

  /// Z axis reference. Use z_units to specify whether z represents
  /// depth, altitude or other.
  @ImcField('Z Reference', 'z', ImcType.typeFp32, units: 'm')
  double get z;

  /// Units of the z reference.
  @ImcField('Z Units', 'z_units', ImcType.typeUInt8)
  ZUnitsEnum get zUnits;

  /// Course Over Ground (true).
  @ImcField('Course Over Ground', 'cog', ImcType.typeFp32, units: 'rad')
  double get cog;

  /// Speed Over Ground.
  @ImcField('Speed Over Ground', 'sog', ImcType.typeFp32, units: 'm/s')
  double get sog;
}

/// EntityParameter class
///
/// Entity parameter.
abstract class EntityParameter extends ImcMessage implements Built<EntityParameter, EntityParameterBuilder> {
  static const static_id = 801;
  EntityParameter._();
  factory EntityParameter([void Function(EntityParameterBuilder b) updates]) = _$EntityParameter;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'EntityParameter';

  /// Name of the parameter.
  @ImcField('Name', 'name', ImcType.typePlaintext)
  String get name;

  /// Current value of the parameter.
  @ImcField('Value', 'value', ImcType.typePlaintext)
  String get value;
}

/// EntityParameters class
///
/// List of entity parameters.
abstract class EntityParameters extends ImcMessage implements Built<EntityParameters, EntityParametersBuilder> {
  static const static_id = 802;
  EntityParameters._();
  factory EntityParameters([void Function(EntityParametersBuilder b) updates]) = _$EntityParameters;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'EntityParameters';

  /// Name of the entity.
  @ImcField('Entity Name', 'name', ImcType.typePlaintext)
  String get name;

  /// List of parameters.
  @ImcField('Parameters', 'params', ImcType.typeMessageList)
  List<EntityParameter> get params;
}

/// QueryEntityParameters class
///
abstract class QueryEntityParameters extends ImcMessage implements Built<QueryEntityParameters, QueryEntityParametersBuilder> {
  static const static_id = 803;
  QueryEntityParameters._();
  factory QueryEntityParameters([void Function(QueryEntityParametersBuilder b) updates]) = _$QueryEntityParameters;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'QueryEntityParameters';

  @ImcField('Entity Name', 'name', ImcType.typePlaintext)
  String get name;

  @ImcField('Visibility', 'visibility', ImcType.typePlaintext)
  String get visibility;

  @ImcField('Scope', 'scope', ImcType.typePlaintext)
  String get scope;
}

/// SetEntityParameters class
///
abstract class SetEntityParameters extends ImcMessage implements Built<SetEntityParameters, SetEntityParametersBuilder> {
  static const static_id = 804;
  SetEntityParameters._();
  factory SetEntityParameters([void Function(SetEntityParametersBuilder b) updates]) = _$SetEntityParameters;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'SetEntityParameters';

  @ImcField('Entity Name', 'name', ImcType.typePlaintext)
  String get name;

  @ImcField('Parameters', 'params', ImcType.typeMessageList)
  List<EntityParameter> get params;
}

/// SaveEntityParameters class
///
abstract class SaveEntityParameters extends ImcMessage implements Built<SaveEntityParameters, SaveEntityParametersBuilder> {
  static const static_id = 805;
  SaveEntityParameters._();
  factory SaveEntityParameters([void Function(SaveEntityParametersBuilder b) updates]) = _$SaveEntityParameters;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'SaveEntityParameters';

  @ImcField('Entity Name', 'name', ImcType.typePlaintext)
  String get name;
}

/// Create Session class
///
/// Request creating a new session with this remote peer. Example
/// session sequence is shown in the following diagram.
/// 
/// .. figure:: ../images/session_sequence.png
/// 
/// :align:  center
abstract class CreateSession extends ImcMessage implements Built<CreateSession, CreateSessionBuilder> {
  static const static_id = 806;
  CreateSession._();
  factory CreateSession([void Function(CreateSessionBuilder b) updates]) = _$CreateSession;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'CreateSession';

  /// Session timeout, in seconds. If no messages are received from
  /// the remote peer, the session will be closed after this ammount
  /// of seconds have ellapsed.
  @ImcField('Session Timeout', 'timeout', ImcType.typeUint32)
  int get timeout;
}

/// Close Session class
///
/// Request closing of an ongoing session
abstract class CloseSession extends ImcMessage implements Built<CloseSession, CloseSessionBuilder> {
  static const static_id = 807;
  CloseSession._();
  factory CloseSession([void Function(CloseSessionBuilder b) updates]) = _$CloseSession;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'CloseSession';

  @ImcField('Session Identifier', 'sessid', ImcType.typeUint32)
  int get sessid;
}

/// Session Subscription class
///
abstract class SessionSubscription extends ImcMessage implements Built<SessionSubscription, SessionSubscriptionBuilder> {
  static const static_id = 808;
  SessionSubscription._();
  factory SessionSubscription([void Function(SessionSubscriptionBuilder b) updates]) = _$SessionSubscription;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'SessionSubscription';

  @ImcField('Session Identifier', 'sessid', ImcType.typeUint32)
  int get sessid;

  /// Comma-separated list of messages to subscribe. Example:
  /// "EstimatedState,EulerAngles,Temperature"
  @ImcField('Messages to subscribe', 'messages', ImcType.typePlaintext)
  String get messages;
}

/// Session Keep-Alive class
///
/// Message exchanged to prevent a session from timing out
abstract class SessionKeepAlive extends ImcMessage implements Built<SessionKeepAlive, SessionKeepAliveBuilder> {
  static const static_id = 809;
  SessionKeepAlive._();
  factory SessionKeepAlive([void Function(SessionKeepAliveBuilder b) updates]) = _$SessionKeepAlive;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'SessionKeepAlive';

  @ImcField('Session Identifier', 'sessid', ImcType.typeUint32)
  int get sessid;
}

/// Session Status class
///
/// Message transmitted periodically to inform the state of a communication session
abstract class SessionStatus extends ImcMessage implements Built<SessionStatus, SessionStatusBuilder> {
  static const static_id = 810;
  SessionStatus._();
  factory SessionStatus([void Function(SessionStatusBuilder b) updates]) = _$SessionStatus;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'SessionStatus';

  @ImcField('Session Identifier', 'sessid', ImcType.typeUint32)
  int get sessid;

  @ImcField('Status', 'status', ImcType.typeUInt8)
  SessionStatusEnumStatus get status;
}

/// Push Entity Parameters class
///
abstract class PushEntityParameters extends ImcMessage implements Built<PushEntityParameters, PushEntityParametersBuilder> {
  static const static_id = 811;
  PushEntityParameters._();
  factory PushEntityParameters([void Function(PushEntityParametersBuilder b) updates]) = _$PushEntityParameters;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'PushEntityParameters';

  @ImcField('Entity Name', 'name', ImcType.typePlaintext)
  String get name;
}

/// Pop Entity Parameters class
///
abstract class PopEntityParameters extends ImcMessage implements Built<PopEntityParameters, PopEntityParametersBuilder> {
  static const static_id = 812;
  PopEntityParameters._();
  factory PopEntityParameters([void Function(PopEntityParametersBuilder b) updates]) = _$PopEntityParameters;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'PopEntityParameters';

  @ImcField('Entity Name', 'name', ImcType.typePlaintext)
  String get name;
}

/// I/O Event class
///
/// Notification of an I/O event.
abstract class IoEvent extends ImcMessage implements Built<IoEvent, IoEventBuilder> {
  static const static_id = 813;
  IoEvent._();
  factory IoEvent([void Function(IoEventBuilder b) updates]) = _$IoEvent;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'IoEvent';

  /// Event type.
  @ImcField('Type', 'type', ImcType.typeUInt8)
  IoEventEnumType get type;

  /// Human-readable error message.
  @ImcField('Error Message', 'error', ImcType.typePlaintext)
  String get error;
}

/// UamTxFrame class
///
abstract class UamTxFrame extends ImcMessage implements Built<UamTxFrame, UamTxFrameBuilder> {
  static const static_id = 814;
  UamTxFrame._();
  factory UamTxFrame([void Function(UamTxFrameBuilder b) updates]) = _$UamTxFrame;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'UamTxFrame';

  @ImcField('Sequence Id', 'seq', ImcType.typeUInt16)
  int get seq;

  @ImcField('Destination System', 'sys_dst', ImcType.typePlaintext)
  String get sysDst;

  @ImcField('Flags', 'flags', ImcType.typeUInt8)
  UamTxFrameBitfieldFlags get flags;

  @ImcField('Data', 'data', ImcType.typeRawdata)
  List<int> get data;
}

/// UamRxFrame class
///
abstract class UamRxFrame extends ImcMessage implements Built<UamRxFrame, UamRxFrameBuilder> {
  static const static_id = 815;
  UamRxFrame._();
  factory UamRxFrame([void Function(UamRxFrameBuilder b) updates]) = _$UamRxFrame;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'UamRxFrame';

  @ImcField('Source System', 'sys_src', ImcType.typePlaintext)
  String get sysSrc;

  @ImcField('Destination System', 'sys_dst', ImcType.typePlaintext)
  String get sysDst;

  @ImcField('Flags', 'flags', ImcType.typeUInt8)
  UamRxFrameBitfieldFlags get flags;

  @ImcField('Data', 'data', ImcType.typeRawdata)
  List<int> get data;
}

/// UamTxStatus class
///
abstract class UamTxStatus extends ImcMessage implements Built<UamTxStatus, UamTxStatusBuilder> {
  static const static_id = 816;
  UamTxStatus._();
  factory UamTxStatus([void Function(UamTxStatusBuilder b) updates]) = _$UamTxStatus;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'UamTxStatus';

  @ImcField('Sequence Id', 'seq', ImcType.typeUInt16)
  int get seq;

  @ImcField('Value', 'value', ImcType.typeUInt8)
  UamTxStatusEnumValue get value;

  @ImcField('Error Message', 'error', ImcType.typePlaintext)
  String get error;
}

/// UamRxRange class
///
abstract class UamRxRange extends ImcMessage implements Built<UamRxRange, UamRxRangeBuilder> {
  static const static_id = 817;
  UamRxRange._();
  factory UamRxRange([void Function(UamRxRangeBuilder b) updates]) = _$UamRxRange;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'UamRxRange';

  @ImcField('Sequence Id', 'seq', ImcType.typeUInt16)
  int get seq;

  @ImcField('System', 'sys', ImcType.typePlaintext)
  String get sys;

  @ImcField('Value', 'value', ImcType.typeFp32)
  double get value;
}

/// Formation Control Parameters class
///
/// Formation controller paramenters, as: trajectory gains, control boundary layer thickness, and formation shape gains.
abstract class FormCtrlParam extends ImcMessage implements Built<FormCtrlParam, FormCtrlParamBuilder> {
  static const static_id = 820;
  FormCtrlParam._();
  factory FormCtrlParam([void Function(FormCtrlParamBuilder b) updates]) = _$FormCtrlParam;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'FormCtrlParam';

  /// Action on the vehicle formation control parameters.
  @ImcField('Action', 'Action', ImcType.typeUInt8)
  FormCtrlParamEnumAction get action;

  /// Trajectory gain over the vehicle longitudinal direction.
  @ImcField('Longitudinal Gain', 'LonGain', ImcType.typeFp32)
  double get lonGain;

  /// Trajectory gain over the vehicle lateral direction.
  @ImcField('Lateral Gain', 'LatGain', ImcType.typeFp32)
  double get latGain;

  /// Control sliding surface boundary layer thickness.
  @ImcField('Boundary Layer Thickness', 'BondThick', ImcType.typeUint32)
  int get bondThick;

  /// Formation shape gain (absolute vehicle position tracking).
  /// Leader control importance gain (relative to the sum of every other formation vehicle).
  @ImcField('Leader Gain', 'LeadGain', ImcType.typeFp32)
  double get leadGain;

  /// Collision avoidance and formation shape gain (position tracking relative to the other formation vehicles).
  /// Individual vehicle importance gain (relative to the leader), when the relative position or the velocity state indicate higher probability of collision.
  @ImcField('Deconfliction Gain', 'DeconflGain', ImcType.typeFp32)
  double get deconflGain;
}

/// Formation Evaluation Data class
///
/// Formation control performance evaluation variables.
abstract class FormationEval extends ImcMessage implements Built<FormationEval, FormationEvalBuilder> {
  static const static_id = 821;
  FormationEval._();
  factory FormationEval([void Function(FormationEvalBuilder b) updates]) = _$FormationEval;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'FormationEval';

  /// Mean position error relative to the formation reference.
  @ImcField('Mean position error', 'err_mean', ImcType.typeFp32)
  double get errMean;

  /// Overall minimum distance to any other vehicle in the formation.
  @ImcField('Absolute minimum distance', 'dist_min_abs', ImcType.typeFp32)
  double get distMinAbs;

  /// Mean minimum distance to any other vehicle in the formation.
  @ImcField('Mean minimum distance', 'dist_min_mean', ImcType.typeFp32)
  double get distMinMean;
}

/// Formation Control Parameters class
///
/// Formation controller paramenters, as: trajectory gains,
/// control boundary layer thickness, and formation shape gains.
abstract class FormationControlParams extends ImcMessage implements Built<FormationControlParams, FormationControlParamsBuilder> {
  static const static_id = 822;
  FormationControlParams._();
  factory FormationControlParams([void Function(FormationControlParamsBuilder b) updates]) = _$FormationControlParams;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'FormationControlParams';

  /// Action on the vehicle formation control parameters.
  @ImcField('Action', 'Action', ImcType.typeUInt8)
  FormationControlParamsEnumAction get action;

  /// Trajectory gain over the vehicle longitudinal direction.
  @ImcField('Longitudinal Gain', 'lon_gain', ImcType.typeFp32)
  double get lonGain;

  /// Trajectory gain over the vehicle lateral direction.
  @ImcField('Lateral Gain', 'lat_gain', ImcType.typeFp32)
  double get latGain;

  /// Control sliding surface boundary layer thickness.
  @ImcField('Boundary Layer Thickness', 'bond_thick', ImcType.typeFp32)
  double get bondThick;

  /// Formation shape gain (absolute vehicle position tracking).
  /// Leader control importance gain (relative to the sum of every other formation vehicle).
  @ImcField('Leader Gain', 'lead_gain', ImcType.typeFp32)
  double get leadGain;

  /// Collision avoidance and formation shape gain (position tracking relative to the other formation vehicles).
  /// Individual vehicle importance gain (relative to the leader), when the relative position or the velocity state indicate higher probability of collision.
  @ImcField('Deconfliction Gain', 'deconfl_gain', ImcType.typeFp32)
  double get deconflGain;

  /// Switch gain to compensate the worst case of the wind flow acceleration.
  @ImcField('Acceleration Switch Gain', 'accel_switch_gain', ImcType.typeFp32)
  double get accelSwitchGain;

  /// Inter-vehicle safety distance.
  @ImcField('Safety Distance', 'safe_dist', ImcType.typeFp32)
  double get safeDist;

  /// Distance offset which defines the buffer area beyond the safety distace.
  @ImcField('Deconfliction Offset', 'deconflict_offset', ImcType.typeFp32)
  double get deconflictOffset;

  /// Safety margin to compensate for possible shortfalls from the predicted maximum acceleration that a vehicle can generate.
  @ImcField('Acceleration Safety Margin', 'accel_safe_margin', ImcType.typeFp32)
  double get accelSafeMargin;

  /// Maximum predicted longitudinal acceleration a vehicle can generate.
  @ImcField('Maximum Longitudinal Acceleration', 'accel_lim_x', ImcType.typeFp32)
  double get accelLimX;
}

/// Formation Evaluation Data class
///
/// Formation control performance evaluation variables.
abstract class FormationEvaluation extends ImcMessage implements Built<FormationEvaluation, FormationEvaluationBuilder> {
  static const static_id = 823;
  FormationEvaluation._();
  factory FormationEvaluation([void Function(FormationEvaluationBuilder b) updates]) = _$FormationEvaluation;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'FormationEvaluation';

  /// Indicates if the message is a request, or a reply to a previous request.
  @ImcField('Type', 'type', ImcType.typeUInt8)
  FormationEvaluationEnumType get type;

  /// Operation to perform.
  @ImcField('Operation', 'op', ImcType.typeUInt8)
  FormationEvaluationEnumOp get op;

  /// Mean position error relative to the formation reference.
  @ImcField('Mean Position Error', 'err_mean', ImcType.typeFp32)
  double get errMean;

  /// Overall minimum distance to any other vehicle in the formation.
  @ImcField('Absolute Minimum Distance', 'dist_min_abs', ImcType.typeFp32)
  double get distMinAbs;

  /// Mean minimum distance to any other vehicle in the formation.
  @ImcField('Mean Minimum Distance', 'dist_min_mean', ImcType.typeFp32)
  double get distMinMean;

  /// Mean minimum distance to any other vehicle in the formation.
  @ImcField('Mean Roll Rate', 'roll_rate_mean', ImcType.typeFp32)
  double get rollRateMean;

  /// Period over which the evaluation data is averaged.
  @ImcField('Evaluation Time', 'time', ImcType.typeFp32)
  double get time;

  /// Formation controller paramenters during the evaluation period.
  @ImcField('Formation Control Parameters', 'ControlParams', ImcType.typeMessage)
  FormationControlParams get controlParams;
}

/// SOI Waypoint class
///
abstract class SoiWaypoint extends ImcMessage implements Built<SoiWaypoint, SoiWaypointBuilder> {
  static const static_id = 850;
  SoiWaypoint._();
  factory SoiWaypoint([void Function(SoiWaypointBuilder b) updates]) = _$SoiWaypoint;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'SoiWaypoint';

  @ImcField('Latitude', 'lat', ImcType.typeFp32, units: '°')
  double get lat;

  @ImcField('Longitude', 'lon', ImcType.typeFp32, units: '°')
  double get lon;

  @ImcField('Time Of Arrival', 'eta', ImcType.typeUint32)
  int get eta;

  @ImcField('Duration', 'duration', ImcType.typeUInt16, units: 's')
  int get duration;
}

/// SOI Plan class
///
abstract class SoiPlan extends ImcMessage implements Built<SoiPlan, SoiPlanBuilder> {
  static const static_id = 851;
  SoiPlan._();
  factory SoiPlan([void Function(SoiPlanBuilder b) updates]) = _$SoiPlan;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'SoiPlan';

  @ImcField('Plan Identifier', 'plan_id', ImcType.typeUInt16)
  int get planId;

  @ImcField('Waypoints', 'waypoints', ImcType.typeMessageList)
  List<SoiWaypoint> get waypoints;
}

/// SOI Command class
///
abstract class SoiCommand extends ImcMessage implements Built<SoiCommand, SoiCommandBuilder> {
  static const static_id = 852;
  SoiCommand._();
  factory SoiCommand([void Function(SoiCommandBuilder b) updates]) = _$SoiCommand;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'SoiCommand';

  @ImcField('Type', 'type', ImcType.typeUInt8)
  SoiCommandEnumType get type;

  @ImcField('Command', 'command', ImcType.typeUInt8)
  SoiCommandEnumCommand get command;

  @ImcField('Settings', 'settings', ImcType.typePlaintext, units: 'TupleList')
  String get settings;

  @ImcField('Plan', 'plan', ImcType.typeMessage)
  SoiPlan get plan;

  @ImcField('Extra Information', 'info', ImcType.typePlaintext)
  String get info;
}

/// SOI State class
///
abstract class SoiState extends ImcMessage implements Built<SoiState, SoiStateBuilder> {
  static const static_id = 853;
  SoiState._();
  factory SoiState([void Function(SoiStateBuilder b) updates]) = _$SoiState;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'SoiState';

  @ImcField('State', 'state', ImcType.typeUInt8)
  SoiStateEnumState get state;

  @ImcField('Plan Identifier', 'plan_id', ImcType.typeUInt16)
  int get planId;

  @ImcField('Waypoint Identifier', 'wpt_id', ImcType.typeUInt8)
  int get wptId;

  @ImcField('Settings Checksum', 'settings_chk', ImcType.typeUInt16)
  int get settingsChk;
}

/// Message Fragment class
///
abstract class MessagePart extends ImcMessage implements Built<MessagePart, MessagePartBuilder> {
  static const static_id = 877;
  MessagePart._();
  factory MessagePart([void Function(MessagePartBuilder b) updates]) = _$MessagePart;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'MessagePart';

  @ImcField('Transmission Unique Id', 'uid', ImcType.typeUInt8)
  int get uid;

  @ImcField('Fragment Number', 'frag_number', ImcType.typeUInt8)
  int get fragNumber;

  @ImcField('Total Number of fragments', 'num_frags', ImcType.typeUInt8)
  int get numFrags;

  @ImcField('Fragment Data', 'data', ImcType.typeRawdata)
  List<int> get data;
}

/// Neptus Blob class
///
abstract class NeptusBlob extends ImcMessage implements Built<NeptusBlob, NeptusBlobBuilder> {
  static const static_id = 888;
  NeptusBlob._();
  factory NeptusBlob([void Function(NeptusBlobBuilder b) updates]) = _$NeptusBlob;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'NeptusBlob';

  @ImcField('ContentType', 'content_type', ImcType.typePlaintext)
  String get contentType;

  @ImcField('Content', 'content', ImcType.typeRawdata)
  List<int> get content;
}

/// Aborted class
///
/// This message signals that an :ref:`Abort` message was received and acted upon.
abstract class Aborted extends ImcMessage implements Built<Aborted, AbortedBuilder> {
  static const static_id = 889;
  Aborted._();
  factory Aborted([void Function(AbortedBuilder b) updates]) = _$Aborted;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Aborted';
}

/// USBL Angles class
///
/// This message contains information, collected using USBL, about the
/// bearing and elevation of a target.
abstract class UsblAngles extends ImcMessage implements Built<UsblAngles, UsblAnglesBuilder> {
  static const static_id = 890;
  UsblAngles._();
  factory UsblAngles([void Function(UsblAnglesBuilder b) updates]) = _$UsblAngles;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'UsblAngles';

  /// Target's IMC address.
  @ImcField('Target', 'target', ImcType.typeUInt16)
  int get target;

  /// Target's bearing.
  @ImcField('Bearing', 'bearing', ImcType.typeFp32, units: 'rad')
  double get bearing;

  /// Target's elevation.
  @ImcField('Elevation', 'elevation', ImcType.typeFp32, units: 'rad')
  double get elevation;
}

/// USBL Position class
///
/// This message contains information, collected using USBL, about a
/// target's position.
abstract class UsblPosition extends ImcMessage implements Built<UsblPosition, UsblPositionBuilder> {
  static const static_id = 891;
  UsblPosition._();
  factory UsblPosition([void Function(UsblPositionBuilder b) updates]) = _$UsblPosition;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'UsblPosition';

  /// Target's IMC address.
  @ImcField('Target', 'target', ImcType.typeUInt16)
  int get target;

  /// X coordinate of the target in the local device's reference frame.
  @ImcField('X', 'x', ImcType.typeFp32, units: 'm')
  double get x;

  /// Y coordinate of the target in the local device's reference frame.
  @ImcField('Y', 'y', ImcType.typeFp32, units: 'm')
  double get y;

  /// Z coordinate of the target in the local device's reference frame.
  @ImcField('Z', 'z', ImcType.typeFp32, units: 'm')
  double get z;
}

/// USBL Fix class
///
/// This message contains the WGS-84 position of a target computed using
/// USBL.
abstract class UsblFix extends ImcMessage implements Built<UsblFix, UsblFixBuilder> {
  static const static_id = 892;
  UsblFix._();
  factory UsblFix([void Function(UsblFixBuilder b) updates]) = _$UsblFix;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'UsblFix';

  /// Target's IMC address.
  @ImcField('Target', 'target', ImcType.typeUInt16)
  int get target;

  /// WGS-84 Latitude.
  @ImcField('Latitude (WGS-84)', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  /// WGS-84 Longitude.
  @ImcField('Longitude (WGS-84)', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;

  /// Units of the z reference.
  @ImcField('Z Units', 'z_units', ImcType.typeUInt8)
  ZUnitsEnum get zUnits;

  /// Target reference in the z axis. Use z_units to specify
  /// whether z represents depth, altitude or other.
  @ImcField('Z Reference', 'z', ImcType.typeFp32, units: 'm')
  double get z;
}

/// Parameters XML class
///
/// Message containing the parameters XML of the source system.
abstract class ParametersXml extends ImcMessage implements Built<ParametersXml, ParametersXmlBuilder> {
  static const static_id = 893;
  ParametersXml._();
  factory ParametersXml([void Function(ParametersXmlBuilder b) updates]) = _$ParametersXml;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'ParametersXml';

  /// The locale used to produce this parameters XML.
  @ImcField('Locale', 'locale', ImcType.typePlaintext)
  String get locale;

  /// The parameters XML file compressed using the GNU zip (gzip) format.
  @ImcField('Configuration Data', 'config', ImcType.typeRawdata)
  List<int> get config;
}

/// Get Parameters XML class
///
/// Request the destination system to send its parameters XML file via a
/// :ref:`ParametersXml` message.
abstract class GetParametersXml extends ImcMessage implements Built<GetParametersXml, GetParametersXmlBuilder> {
  static const static_id = 894;
  GetParametersXml._();
  factory GetParametersXml([void Function(GetParametersXmlBuilder b) updates]) = _$GetParametersXml;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'GetParametersXml';
}

/// Set Image Coordinates class
///
/// Message containing the x and y coordinates of object to track in remote peer.
abstract class SetImageCoords extends ImcMessage implements Built<SetImageCoords, SetImageCoordsBuilder> {
  static const static_id = 895;
  SetImageCoords._();
  factory SetImageCoords([void Function(SetImageCoordsBuilder b) updates]) = _$SetImageCoords;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'SetImageCoords';

  /// Camera identifier.
  @ImcField('Camera Identifier', 'camId', ImcType.typeUInt8)
  int get camId;

  /// X coordinate of the target in the image frame.
  @ImcField('X', 'x', ImcType.typeUInt16, units: 'px')
  int get x;

  /// Y coordinate of the target in the image frame.
  @ImcField('Y', 'y', ImcType.typeUInt16, units: 'px')
  int get y;
}

/// Get Image Coordinates class
///
/// Message containing the x and y coordinates of object to track in image slave.
abstract class GetImageCoords extends ImcMessage implements Built<GetImageCoords, GetImageCoordsBuilder> {
  static const static_id = 896;
  GetImageCoords._();
  factory GetImageCoords([void Function(GetImageCoordsBuilder b) updates]) = _$GetImageCoords;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'GetImageCoords';

  /// Camera identifier.
  @ImcField('Camera Identifier', 'camId', ImcType.typeUInt8)
  int get camId;

  /// X coordinate of the target in the image frame.
  @ImcField('X', 'x', ImcType.typeUInt16, units: 'px')
  int get x;

  /// Y coordinate of the target in the image frame.
  @ImcField('Y', 'y', ImcType.typeUInt16, units: 'px')
  int get y;
}

/// Get World Coordinates class
///
/// Message containing the x, y and z coordinates of object in the real world.
abstract class GetWorldCoordinates extends ImcMessage implements Built<GetWorldCoordinates, GetWorldCoordinatesBuilder> {
  static const static_id = 897;
  GetWorldCoordinates._();
  factory GetWorldCoordinates([void Function(GetWorldCoordinatesBuilder b) updates]) = _$GetWorldCoordinates;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'GetWorldCoordinates';

  /// True when system is tracking.
  @ImcField('Tracking', 'tracking', ImcType.typeUInt8)
  BooleanEnum get tracking;

  /// Latitude of the real world frame origin.
  @ImcField('Latitude', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  /// Longitude of the real world frame origin.
  @ImcField('Longitude', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;

  /// X offsets of the target in the real world frame.
  @ImcField('X', 'x', ImcType.typeFp32, units: 'm')
  double get x;

  /// Y offsets of the target in the real world frame.
  @ImcField('Y', 'y', ImcType.typeFp32, units: 'm')
  double get y;

  /// Z offsets of the target in the real world frame.
  @ImcField('Z', 'z', ImcType.typeFp32, units: 'm')
  double get z;
}

/// USBL Angles Extended class
///
/// This message contains information, collected using USBL, about the
/// bearing and elevation of a target.
abstract class UsblAnglesExtended extends ImcMessage implements Built<UsblAnglesExtended, UsblAnglesExtendedBuilder> {
  static const static_id = 898;
  UsblAnglesExtended._();
  factory UsblAnglesExtended([void Function(UsblAnglesExtendedBuilder b) updates]) = _$UsblAnglesExtended;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'UsblAnglesExtended';

  /// Target's system name.
  @ImcField('Target', 'target', ImcType.typePlaintext)
  String get target;

  /// Target's bearing in the local device's reference frame.
  @ImcField('Local Bearing', 'lbearing', ImcType.typeFp32, units: 'rad')
  double get lbearing;

  /// Target's elevation in the local device's reference frame.
  @ImcField('Local Elevation', 'lelevation', ImcType.typeFp32, units: 'rad')
  double get lelevation;

  /// Target's bearing in the navigation reference frame.
  @ImcField('Bearing', 'bearing', ImcType.typeFp32, units: 'rad')
  double get bearing;

  /// Target's elevation in the navigation reference frame.
  @ImcField('Elevation', 'elevation', ImcType.typeFp32, units: 'rad')
  double get elevation;

  /// Rotation around the device longitudinal axis.
  @ImcField('Roll Angle', 'phi', ImcType.typeFp32, units: 'rad')
  double get phi;

  /// Rotation around the device lateral or transverse axis.
  @ImcField('Pitch Angle', 'theta', ImcType.typeFp32, units: 'rad')
  double get theta;

  /// Rotation around the device vertical axis.
  @ImcField('Yaw Angle', 'psi', ImcType.typeFp32, units: 'rad')
  double get psi;

  /// Accuracy of the fix.
  @ImcField('Accuracy', 'accuracy', ImcType.typeFp32, units: 'rad')
  double get accuracy;
}

/// USBL Position Extended class
///
/// This message contains information, collected using USBL, about a
/// target's position.
abstract class UsblPositionExtended extends ImcMessage implements Built<UsblPositionExtended, UsblPositionExtendedBuilder> {
  static const static_id = 899;
  UsblPositionExtended._();
  factory UsblPositionExtended([void Function(UsblPositionExtendedBuilder b) updates]) = _$UsblPositionExtended;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'UsblPositionExtended';

  /// Target's system name.
  @ImcField('Target', 'target', ImcType.typePlaintext)
  String get target;

  /// X coordinate of the target in the local device's reference frame.
  @ImcField('X', 'x', ImcType.typeFp32, units: 'm')
  double get x;

  /// Y coordinate of the target in the local device's reference frame.
  @ImcField('Y', 'y', ImcType.typeFp32, units: 'm')
  double get y;

  /// Z coordinate of the target in the local device's reference frame.
  @ImcField('Z', 'z', ImcType.typeFp32, units: 'm')
  double get z;

  /// X coordinate of the target in the navigation reference frame.
  @ImcField('N', 'n', ImcType.typeFp32, units: 'm')
  double get n;

  /// Y coordinate of the target in the navigation reference frame.
  @ImcField('E', 'e', ImcType.typeFp32, units: 'm')
  double get e;

  /// Z coordinate of the target in the navigation reference frame.
  @ImcField('D', 'd', ImcType.typeFp32, units: 'm')
  double get d;

  /// Rotation around the device longitudinal axis.
  @ImcField('Roll Angle', 'phi', ImcType.typeFp32, units: 'rad')
  double get phi;

  /// Rotation around the device lateral or transverse axis.
  @ImcField('Pitch Angle', 'theta', ImcType.typeFp32, units: 'rad')
  double get theta;

  /// Rotation around the device vertical axis.
  @ImcField('Yaw Angle', 'psi', ImcType.typeFp32, units: 'rad')
  double get psi;

  /// Accuracy of the position fix.
  @ImcField('Accuracy', 'accuracy', ImcType.typeFp32, units: 'm')
  double get accuracy;
}

/// USBL Fix Extended class
///
/// This message contains the WGS-84 position of a target computed using
/// USBL.
abstract class UsblFixExtended extends ImcMessage implements Built<UsblFixExtended, UsblFixExtendedBuilder> {
  static const static_id = 900;
  UsblFixExtended._();
  factory UsblFixExtended([void Function(UsblFixExtendedBuilder b) updates]) = _$UsblFixExtended;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'UsblFixExtended';

  /// Target's system name.
  @ImcField('Target', 'target', ImcType.typePlaintext)
  String get target;

  /// WGS-84 Latitude.
  @ImcField('Latitude (WGS-84)', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  /// WGS-84 Longitude.
  @ImcField('Longitude (WGS-84)', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;

  /// Units of the z reference.
  @ImcField('Z Units', 'z_units', ImcType.typeUInt8)
  ZUnitsEnum get zUnits;

  /// Target reference in the z axis. Use z_units to specify
  /// whether z represents depth, altitude or other.
  @ImcField('Z Reference', 'z', ImcType.typeFp32, units: 'm')
  double get z;

  /// Accuracy of the position fix.
  @ImcField('Accuracy', 'accuracy', ImcType.typeFp32, units: 'm')
  double get accuracy;
}

/// USBL Modem Configuration class
///
/// Position and configuration of an Ultra-Short Base Line modem.
abstract class UsblModem extends ImcMessage implements Built<UsblModem, UsblModemBuilder> {
  static const static_id = 901;
  UsblModem._();
  factory UsblModem([void Function(UsblModemBuilder b) updates]) = _$UsblModem;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'UsblModem';

  /// Name/Label of the acoustic modem.
  @ImcField('Modem Name', 'name', ImcType.typePlaintext)
  String get name;

  /// WGS-84 Latitude coordinate.
  @ImcField('Latitude WGS-84', 'lat', ImcType.typeFp64, units: 'rad')
  double get lat;

  /// WGS-84 Longitude coordinate.
  @ImcField('Longitude WGS-84', 'lon', ImcType.typeFp64, units: 'rad')
  double get lon;

  /// Target reference in the z axis. Use z_units to specify
  /// whether z represents depth, altitude or other.
  @ImcField('Z Reference', 'z', ImcType.typeFp32, units: 'm')
  double get z;

  /// Units of the z reference.
  @ImcField('Z Units', 'z_units', ImcType.typeUInt8)
  ZUnitsEnum get zUnits;
}

/// USBL Configuration class
///
/// Ultra-Short Base Line configuration.
abstract class UsblConfig extends ImcMessage implements Built<UsblConfig, UsblConfigBuilder> {
  static const static_id = 902;
  UsblConfig._();
  factory UsblConfig([void Function(UsblConfigBuilder b) updates]) = _$UsblConfig;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'UsblConfig';

  /// Used to define the type of the operation this message holds.
  @ImcField('Operation', 'op', ImcType.typeUInt8)
  UsblConfigEnumOp get op;

  /// A list of USBL modem configuration messages.
  @ImcField('Modems', 'modems', ImcType.typeMessageList)
  List<UsblModem> get modems;
}

/// Dissolved Organic Matter class
///
/// Dissolved Organic Matter measurement.
abstract class DissolvedOrganicMatter extends ImcMessage implements Built<DissolvedOrganicMatter, DissolvedOrganicMatterBuilder> {
  static const static_id = 903;
  DissolvedOrganicMatter._();
  factory DissolvedOrganicMatter([void Function(DissolvedOrganicMatterBuilder b) updates]) = _$DissolvedOrganicMatter;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'DissolvedOrganicMatter';

  /// Dissolved Organic Matter reading.
  @ImcField('Value', 'value', ImcType.typeFp32, units: 'PPB')
  double get value;

  /// Type of measurement.
  @ImcField('Type of measurement', 'type', ImcType.typeUInt8)
  DissolvedOrganicMatterEnumType get type;
}

/// Optical Backscattering Coefficient class
///
/// The optical backscattering coefficient refers to all the photons that have been redirected in the backward directions
/// when a photon of light propagates in water and interacts with a "particle" (varying from water molecules to fish).
abstract class OpticalBackscatter extends ImcMessage implements Built<OpticalBackscatter, OpticalBackscatterBuilder> {
  static const static_id = 904;
  OpticalBackscatter._();
  factory OpticalBackscatter([void Function(OpticalBackscatterBuilder b) updates]) = _$OpticalBackscatter;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'OpticalBackscatter';

  /// Optical Backscattering Coefficient.
  @ImcField('Value', 'value', ImcType.typeFp32, units: '1/m')
  double get value;
}

/// Tachograph class
///
/// This messages is used to record system activity parameters. These
/// parameters are mainly used for used for maintenance purposes.
abstract class Tachograph extends ImcMessage implements Built<Tachograph, TachographBuilder> {
  static const static_id = 905;
  Tachograph._();
  factory Tachograph([void Function(TachographBuilder b) updates]) = _$Tachograph;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'Tachograph';

  /// The time when the last service was performed. The number of
  /// seconds is represented in Universal Coordinated Time (UCT) in
  /// seconds since Jan 1, 1970.
  @ImcField('Last Service Timestamp', 'timestamp_last_service', ImcType.typeFp64, units: 's')
  double get timestampLastService;

  /// Amount of time until the next recommended service.
  @ImcField('Time - Next Service', 'time_next_service', ImcType.typeFp32, units: 's')
  double get timeNextService;

  /// Amount of time the motor can run until the next recommended service.
  @ImcField('Time Motor - Next Service', 'time_motor_next_service', ImcType.typeFp32, units: 's')
  double get timeMotorNextService;

  /// Amount of time the system spent idle on the ground.
  @ImcField('Time Idle - Ground', 'time_idle_ground', ImcType.typeFp32, units: 's')
  double get timeIdleGround;

  /// Amount of time the system spent idle in the air.
  @ImcField('Time Idle - Air', 'time_idle_air', ImcType.typeFp32, units: 's')
  double get timeIdleAir;

  /// Amount of time the system spent idle on the water (not submerged).
  @ImcField('Time Idle - Water', 'time_idle_water', ImcType.typeFp32, units: 's')
  double get timeIdleWater;

  /// Amount of time the system spent idle underwater.
  @ImcField('Time Idle - Underwater', 'time_idle_underwater', ImcType.typeFp32, units: 's')
  double get timeIdleUnderwater;

  /// Amount of time the system spent idle in an unknown medium.
  @ImcField('Time Idle - Unknown', 'time_idle_unknown', ImcType.typeFp32, units: 's')
  double get timeIdleUnknown;

  /// Amount of time the system spent on the ground with the motor running.
  @ImcField('Time Motor - Ground', 'time_motor_ground', ImcType.typeFp32, units: 's')
  double get timeMotorGround;

  /// Amount of time the system spent in the air with the motor running.
  @ImcField('Time Motor - Air', 'time_motor_air', ImcType.typeFp32, units: 's')
  double get timeMotorAir;

  /// Amount of time the system spent on the water (not submerged) with the motor running.
  @ImcField('Time Motor - Water', 'time_motor_water', ImcType.typeFp32, units: 's')
  double get timeMotorWater;

  /// Amount of time the system spent underwater with the motor running.
  @ImcField('Time Motor - Underwater', 'time_motor_underwater', ImcType.typeFp32, units: 's')
  double get timeMotorUnderwater;

  /// Amount of time the system spent in an unknown medium with the motor running.
  @ImcField('Time Motor - Unknown', 'time_motor_unknown', ImcType.typeFp32, units: 's')
  double get timeMotorUnknown;

  /// The minimum recorded RPM value.
  @ImcField('Recorded RPMs - Minimum', 'rpm_min', ImcType.typeInt16, units: 'rpm')
  int get rpmMin;

  /// The maximum recorded RPM value.
  @ImcField('Recorded RPMs - Maximum', 'rpm_max', ImcType.typeInt16, units: 'rpm')
  int get rpmMax;

  /// The maximum recorded depth value.
  @ImcField('Recorded Depth - Maximum', 'depth_max', ImcType.typeFp32, units: 'm')
  double get depthMax;
}

/// APM Status class
///
/// StatusText message from ardupilot.
abstract class ApmStatus extends ImcMessage implements Built<ApmStatus, ApmStatusBuilder> {
  static const static_id = 906;
  ApmStatus._();
  factory ApmStatus([void Function(ApmStatusBuilder b) updates]) = _$ApmStatus;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'ApmStatus';

  /// Severity of status.
  @ImcField('Severity', 'severity', ImcType.typeUInt8)
  ApmStatusEnumSeverity get severity;

  /// Status text message.
  @ImcField('Text', 'text', ImcType.typePlaintext)
  String get text;
}

/// SADC Readings class
///
/// Readings from SADC board.
abstract class SadcReadings extends ImcMessage implements Built<SadcReadings, SadcReadingsBuilder> {
  static const static_id = 907;
  SadcReadings._();
  factory SadcReadings([void Function(SadcReadingsBuilder b) updates]) = _$SadcReadings;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'SadcReadings';

  /// Channel of SADC to read.
  @ImcField('Channel', 'channel', ImcType.typeInt8)
  int get channel;

  /// Value raw of sadc channel.
  @ImcField('Value', 'value', ImcType.typeInt32)
  int get value;

  /// Gain value of readings.
  @ImcField('Gain', 'gain', ImcType.typeUInt8)
  SadcReadingsEnumGain get gain;
}

/// DMS Detection class
///
/// Presence of DMS (Dimethyl Sulphide).
/// If the value of the channel is greater than zero, it means DMS was detected.
abstract class DmsDetection extends ImcMessage implements Built<DmsDetection, DmsDetectionBuilder> {
  static const static_id = 908;
  DmsDetection._();
  factory DmsDetection([void Function(DmsDetectionBuilder b) updates]) = _$DmsDetection;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'DmsDetection';

  @ImcField('Channel 1', 'ch01', ImcType.typeFp32)
  double get ch01;

  @ImcField('Channel 2', 'ch02', ImcType.typeFp32)
  double get ch02;

  @ImcField('Channel 3', 'ch03', ImcType.typeFp32)
  double get ch03;

  @ImcField('Channel 4', 'ch04', ImcType.typeFp32)
  double get ch04;

  @ImcField('Channel 5', 'ch05', ImcType.typeFp32)
  double get ch05;

  @ImcField('Channel 6', 'ch06', ImcType.typeFp32)
  double get ch06;

  @ImcField('Channel 7', 'ch07', ImcType.typeFp32)
  double get ch07;

  @ImcField('Channel 8', 'ch08', ImcType.typeFp32)
  double get ch08;

  @ImcField('Channel 9', 'ch09', ImcType.typeFp32)
  double get ch09;

  @ImcField('Channel 10', 'ch10', ImcType.typeFp32)
  double get ch10;

  @ImcField('Channel 11', 'ch11', ImcType.typeFp32)
  double get ch11;

  @ImcField('Channel 12', 'ch12', ImcType.typeFp32)
  double get ch12;

  @ImcField('Channel 13', 'ch13', ImcType.typeFp32)
  double get ch13;

  @ImcField('Channel 14', 'ch14', ImcType.typeFp32)
  double get ch14;

  @ImcField('Channel 15', 'ch15', ImcType.typeFp32)
  double get ch15;

  @ImcField('Channel 16', 'ch16', ImcType.typeFp32)
  double get ch16;
}

/// Total Magnetic Field Intensity class
///
abstract class TotalMagIntensity extends ImcMessage implements Built<TotalMagIntensity, TotalMagIntensityBuilder> {
  static const static_id = 2006;
  TotalMagIntensity._();
  factory TotalMagIntensity([void Function(TotalMagIntensityBuilder b) updates]) = _$TotalMagIntensity;

  @override
  int get msgId => static_id;
  @override
  String get abbrev => 'TotalMagIntensity';

  /// Total Magnetic Field Intensity (TMI)
  @ImcField('Value', 'value', ImcType.typeFp64)
  double get value;
}

