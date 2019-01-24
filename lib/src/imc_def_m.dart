// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// IMC Code Generator
// **************************************************************************

part of 'imc_def.dart';

const String VERSION = "5.4.11";
const int SYNC_NUMBER = 0xFE54;
const String MD5_SUM = "cdc4c6dfe2baed8395138f0b1b8e1910";

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
  EntityState._();
  @override
  int get msgId => 1;
  @override
  String get abbrev => "EntityState";

  /// State of entity.
  @ImcField("State", "state", ImcType.typeUInt8)
  EntityStateEnumState get state;

  /// Complementary entity state flags.
  @ImcField("Flags", "flags", ImcType.typeUInt8)
  EntityStateBitfieldFlags get flags;

  /// Complementary human-readable description of entity state.
  @ImcField("Complementary description", "description", ImcType.typePlaintext)
  String get description;
}

/// Query Entity State class
///
/// Request entities to report their state. Entities should respond
/// by issuing an appropriate EntityState message.
abstract class QueryEntityState extends ImcMessage implements Built<QueryEntityState, QueryEntityStateBuilder> {
  QueryEntityState._();
  @override
  int get msgId => 2;
  @override
  String get abbrev => "QueryEntityState";
}

/// Entity Information class
///
/// This message describes an entity.
abstract class EntityInfo extends ImcMessage implements Built<EntityInfo, EntityInfoBuilder> {
  EntityInfo._();
  @override
  int get msgId => 3;
  @override
  String get abbrev => "EntityInfo";

  /// Entity identifier.
  @ImcField("Entity Identifier", "id", ImcType.typeUInt8)
  int get id;

  /// Entity label or empty if the entity id is not valid.
  @ImcField("Label", "label", ImcType.typePlaintext)
  String get label;

  /// Name of the plugin/component/subsystem associated with this
  /// entity.
  @ImcField("Component name", "component", ImcType.typePlaintext)
  String get component;

  /// Amount of time needed to properly activate the entity.
  @ImcField("Activation Time", "act_time", ImcType.typeUInt16, units: "s")
  int get act_time;

  /// Amount of time needed to properly deactivate the entity.
  @ImcField("Deactivation Time", "deact_time", ImcType.typeUInt16, units: "s")
  int get deact_time;
}

/// Query Entity Information class
///
/// Request information about an entity identifier. The receiving
/// system shall reply with an EntityInfo message with the details
/// of that entity.
abstract class QueryEntityInfo extends ImcMessage implements Built<QueryEntityInfo, QueryEntityInfoBuilder> {
  QueryEntityInfo._();
  @override
  int get msgId => 4;
  @override
  String get abbrev => "QueryEntityInfo";

  /// Entity identifier.
  @ImcField("Entity Identifier", "id", ImcType.typeUInt8)
  int get id;
}

/// Entity List class
///
/// This message describes the names and identification numbers of
/// all entities in the system.
abstract class EntityList extends ImcMessage implements Built<EntityList, EntityListBuilder> {
  EntityList._();
  @override
  int get msgId => 5;
  @override
  String get abbrev => "EntityList";

  /// Operation to perform.
  @ImcField("operation", "op", ImcType.typeUInt8)
  EntityListEnumOp get op;

  /// Example: "Battery=11;CTD=3"
  @ImcField("list", "list", ImcType.typePlaintext, units: "TupleList")
  String get list;
}

/// CPU Usage class
///
/// Report of software CPU usage.
abstract class CpuUsage extends ImcMessage implements Built<CpuUsage, CpuUsageBuilder> {
  CpuUsage._();
  @override
  int get msgId => 7;
  @override
  String get abbrev => "CpuUsage";

  /// The CPU usage, in percentage, of the sending software.
  @ImcField("Usage percentage", "value", ImcType.typeUInt8, units: "%")
  int get value;
}

/// Transport Bindings class
///
/// Message generated when tasks bind to messages.
abstract class TransportBindings extends ImcMessage implements Built<TransportBindings, TransportBindingsBuilder> {
  TransportBindings._();
  @override
  int get msgId => 8;
  @override
  String get abbrev => "TransportBindings";

  /// The name of the consumer (e.g. task name).
  @ImcField("Consumer name", "consumer", ImcType.typePlaintext)
  String get consumer;

  /// The id of the message to be listened to.
  @ImcField("Message Identifier", "message_id", ImcType.typeUInt16)
  int get message_id;
}

/// Restart System class
///
/// Request the destination system to restart itself.
abstract class RestartSystem extends ImcMessage implements Built<RestartSystem, RestartSystemBuilder> {
  RestartSystem._();
  @override
  int get msgId => 9;
  @override
  String get abbrev => "RestartSystem";

  @ImcField("Restart Type", "type", ImcType.typeUInt8)
  RestartSystemEnumType get type;
}

/// Device Calibration Control class
///
/// This message controls the calibration procedure of a given
/// device. The destination device is selected using the destination
/// entity identification number.
abstract class DevCalibrationControl extends ImcMessage implements Built<DevCalibrationControl, DevCalibrationControlBuilder> {
  DevCalibrationControl._();
  @override
  int get msgId => 12;
  @override
  String get abbrev => "DevCalibrationControl";

  /// Operation to perform.
  @ImcField("Operation", "op", ImcType.typeUInt8)
  DevCalibrationControlEnumOp get op;
}

/// Device Calibration State class
///
/// State of the calibration procedure.
abstract class DevCalibrationState extends ImcMessage implements Built<DevCalibrationState, DevCalibrationStateBuilder> {
  DevCalibrationState._();
  @override
  int get msgId => 13;
  @override
  String get abbrev => "DevCalibrationState";

  /// Total number of steps of the calibration procedure.
  @ImcField("Total Steps", "total_steps", ImcType.typeUInt8)
  int get total_steps;

  /// Number of the current step being performed.
  @ImcField("Current Step Number", "step_number", ImcType.typeUInt8)
  int get step_number;

  /// Human-readable description of the current step.
  @ImcField("Description", "step", ImcType.typePlaintext)
  String get step;

  /// Additional flags.
  @ImcField("Flags", "flags", ImcType.typeUInt8)
  DevCalibrationStateBitfieldFlags get flags;
}

/// Entity Activation State class
///
/// State of entity activation/deactivation.
abstract class EntityActivationState extends ImcMessage implements Built<EntityActivationState, EntityActivationStateBuilder> {
  EntityActivationState._();
  @override
  int get msgId => 14;
  @override
  String get abbrev => "EntityActivationState";

  /// Current state.
  @ImcField("State", "state", ImcType.typeUInt8)
  EntityActivationStateEnumState get state;

  /// Human-readable error message.
  @ImcField("Error", "error", ImcType.typePlaintext)
  String get error;
}

/// Query Entity Activation State class
///
/// Query the activation/deactivation state of an entity. The
/// recipient shall reply with an EntityActivationState message.
abstract class QueryEntityActivationState extends ImcMessage implements Built<QueryEntityActivationState, QueryEntityActivationStateBuilder> {
  QueryEntityActivationState._();
  @override
  int get msgId => 15;
  @override
  String get abbrev => "QueryEntityActivationState";
}

/// Vehicle Operational Limits class
///
/// Vehicle opertional limits.
/// For aircraft this should represent the flight envelope and the dynamic contraints.
abstract class VehicleOperationalLimits extends ImcMessage implements Built<VehicleOperationalLimits, VehicleOperationalLimitsBuilder> {
  VehicleOperationalLimits._();
  @override
  int get msgId => 16;
  @override
  String get abbrev => "VehicleOperationalLimits";

  /// Action on the vehicle operation limits
  @ImcField("Action on the vehicle operational limits", "op", ImcType.typeUInt8)
  VehicleOperationalLimitsEnumOp get op;

  /// Minimum operation speed.
  /// For aircraft this is equal or larger then the stall speed.
  @ImcField("Minimum speed", "speed_min", ImcType.typeFp32, units: "m/s")
  double get speed_min;

  /// Maximum operation speed.
  /// For aircraft this is limited by the engine power or structural contrains.
  @ImcField("Maximum speed", "speed_max", ImcType.typeFp32, units: "m/s")
  double get speed_max;

  /// Maximum longitudinal acceleration.
  @ImcField("Longitudinal maximum acceleration", "long_accel", ImcType.typeFp32, units: "m/s/s")
  double get long_accel;

  /// Maximum altitude above mean-sea-level.
  @ImcField("Maximum MSL altitude", "alt_max_msl", ImcType.typeFp32, units: "m")
  double get alt_max_msl;

  /// Maximum dive rate (negative vertical speed) as a fraction of the longitudinal speed.
  @ImcField("Maximum Dive Rate Speed Fraction", "dive_fraction_max", ImcType.typeFp32)
  double get dive_fraction_max;

  /// Maximum climb rate (positive vertical speed) as a fraction of the longitudinal speed.
  @ImcField("Maximum Climb Rate Speed Fraction", "climb_fraction_max", ImcType.typeFp32)
  double get climb_fraction_max;

  /// Limit to the bank angle (roll; angle over the xx body-axis).
  @ImcField("Bank limit", "bank_max", ImcType.typeFp32, units: "rad")
  double get bank_max;

  /// Limit to the bank angular rate (roll; angle over the xx body-axis).
  @ImcField("Bank rate limit", "p_max", ImcType.typeFp32, units: "rad/s")
  double get p_max;

  /// Minimum pitch angle (angle over the xx body-axis).
  @ImcField("Minimum pitch angle", "pitch_min", ImcType.typeFp32, units: "rad")
  double get pitch_min;

  /// Maximum pitch angle (angle over the xx body-axis).
  @ImcField("Maximum pitch angle", "pitch_max", ImcType.typeFp32, units: "rad")
  double get pitch_max;

  /// Maximum pitch angular rate (angle over the xx body-axis).
  @ImcField("Maximum pitch rate", "q_max", ImcType.typeFp32, units: "rad/s")
  double get q_max;

  /// Minimum load factor, i.e., maximum positive acceleration in the zz body-axis
  /// as a factor of the gravity acceleration at mean-sea-level.
  @ImcField("Minimum load factor", "g_min", ImcType.typeFp32, units: "g")
  double get g_min;

  /// Maximum load factor, i.e., maximum negative acceleration in the zz body-axis
  /// as a factor of the gravity acceleration at mean-sea-level.
  @ImcField("Maximum load factor", "g_max", ImcType.typeFp32, units: "g")
  double get g_max;

  /// Maximum lateral load factor, i.e., maximum acceleration in the yy body-axis
  /// as a factor of the gravity acceleration at mean-sea-level.
  @ImcField("Maximum lateral load factor", "g_lat_max", ImcType.typeFp32, units: "g")
  double get g_lat_max;

  /// Minimum motor RPMs.
  @ImcField("Minimum RPMs", "rpm_min", ImcType.typeFp32, units: "rpm")
  double get rpm_min;

  /// Maximum motor RPMs.
  @ImcField("Maximum RPMs", "rpm_max", ImcType.typeFp32, units: "rpm")
  double get rpm_max;

  /// Maximum motor RPMs' rate of change.
  @ImcField("Maximum RPM rate", "rpm_rate_max", ImcType.typeFp32, units: "rpm/s")
  double get rpm_rate_max;
}

/// Message List class
///
abstract class MsgList extends ImcMessage implements Built<MsgList, MsgListBuilder> {
  MsgList._();
  @override
  int get msgId => 20;
  @override
  String get abbrev => "MsgList";

  @ImcField("Messages", "msgs", ImcType.typeMessageList)
  List<ImcMessage> get msgs;
}

/// Simulated State class
///
/// This message presents the simulated state of the vehicle. The simulated
/// state attempts to provide a realistic state interpretation of operating
/// various kinds of vehicles.
abstract class SimulatedState extends ImcMessage implements Built<SimulatedState, SimulatedStateBuilder> {
  SimulatedState._();
  @override
  int get msgId => 50;
  @override
  String get abbrev => "SimulatedState";

  /// WGS-84 Latitude.
  @ImcField("Latitude (WGS-84)", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  /// WGS-84 Longitude.
  @ImcField("Longitude (WGS-84)", "lon", ImcType.typeFp64, units: "rad")
  double get lon;

  /// Height above the WGS-84 ellipsoid.
  @ImcField("Height (WGS-84)", "height", ImcType.typeFp32, units: "m")
  double get height;

  /// The North offset of the North/East/Down field.
  @ImcField("Offset north (m)", "x", ImcType.typeFp32, units: "m")
  double get x;

  /// The East offset of the North/East/Down field.
  @ImcField("Offset east (m)", "y", ImcType.typeFp32, units: "m")
  double get y;

  /// The Down offset of the North/East/Down field.
  @ImcField("Offset down (m)", "z", ImcType.typeFp32, units: "m")
  double get z;

  /// The phi Euler angle from the vehicle's attitude.
  @ImcField("Rotation over x axis", "phi", ImcType.typeFp32, units: "rad")
  double get phi;

  /// The theta Euler angle from the vehicle's attitude.
  @ImcField("Rotation over y axis", "theta", ImcType.typeFp32, units: "rad")
  double get theta;

  /// The psi Euler angle from the vehicle's attitude.
  @ImcField("Rotation over z axis", "psi", ImcType.typeFp32, units: "rad")
  double get psi;

  /// Body-fixed frame xx axis linear velocity component.
  @ImcField("Body-Fixed xx Linear Velocity", "u", ImcType.typeFp32, units: "m/s")
  double get u;

  /// Body-fixed frame yy axis linear velocity component.
  @ImcField("Body-Fixed yy Linear Velocity", "v", ImcType.typeFp32, units: "m/s")
  double get v;

  /// Body-fixed frame zz axis linear velocity component.
  @ImcField("Body-Fixed zz Linear Velocity", "w", ImcType.typeFp32, units: "m/s")
  double get w;

  /// The angular velocity over body-fixed xx axis (roll rate).
  @ImcField("Angular Velocity in x", "p", ImcType.typeFp32, units: "rad/s")
  double get p;

  /// The angular velocity over body-fixed yy axis (pitch rate).
  @ImcField("Angular Velocity in y", "q", ImcType.typeFp32, units: "rad/s")
  double get q;

  /// The angular velocity over body-fixed zz axis (yaw rate).
  @ImcField("Angular Velocity in z", "r", ImcType.typeFp32, units: "rad/s")
  double get r;

  /// Stream Velocity xx axis velocity component.
  @ImcField("Stream Velocity X (North)", "svx", ImcType.typeFp32, units: "m/s")
  double get svx;

  /// Stream Velocity yy axis velocity component.
  @ImcField("Stream Velocity Y (East)", "svy", ImcType.typeFp32, units: "m/s")
  double get svy;

  /// Stream Velocity zz axis velocity component.
  @ImcField("Stream Velocity Z (Down)", "svz", ImcType.typeFp32, units: "m/s")
  double get svz;
}

/// Leak Simulation class
///
/// Simulate leak behavior.
abstract class LeakSimulation extends ImcMessage implements Built<LeakSimulation, LeakSimulationBuilder> {
  LeakSimulation._();
  @override
  int get msgId => 51;
  @override
  String get abbrev => "LeakSimulation";

  /// Indicates whether leaks have been detected or not.
  @ImcField("Operation", "op", ImcType.typeUInt8)
  LeakSimulationEnumOp get op;

  /// Comma separated list of leak entities (empty for all leaks
  /// configured).
  @ImcField("Leak Entities", "entities", ImcType.typePlaintext)
  String get entities;
}

/// Underwater Acoustics Simulation class
///
/// Underwater acoustics simulation request.
abstract class UASimulation extends ImcMessage implements Built<UASimulation, UASimulationBuilder> {
  UASimulation._();
  @override
  int get msgId => 52;
  @override
  String get abbrev => "UASimulation";

  /// Type of request.
  @ImcField("Type", "type", ImcType.typeUInt8)
  UASimulationEnumType get type;

  /// Transmission speed.
  @ImcField("Transmission Speed", "speed", ImcType.typeUInt16, units: "bps")
  int get speed;

  /// Data for transmission requests.
  @ImcField("Data", "data", ImcType.typeRawdata)
  List<int> get data;
}

/// Dynamics Simulation Parameters class
///
/// Vehicle dynamics parameters for 3DOF, 4DOF or 5DOF simulations.
abstract class DynamicsSimParam extends ImcMessage implements Built<DynamicsSimParam, DynamicsSimParamBuilder> {
  DynamicsSimParam._();
  @override
  int get msgId => 53;
  @override
  String get abbrev => "DynamicsSimParam";

  /// Action on the vehicle simulation parameters for the formation control
  @ImcField("Action on the Vehicle Simulation Parameters", "op", ImcType.typeUInt8)
  DynamicsSimParamEnumOp get op;

  /// Proportional gain from the TAS (True Airspeed) error to the longitudinal acceleration.
  @ImcField("TAS to Longitudinal Acceleration Gain", "tas2acc_pgain", ImcType.typeFp32)
  double get tas2acc_pgain;

  /// Proportional gain from the bank angle error to the bank angular rate.
  @ImcField("Bank to Bank Rate Gain", "bank2p_pgain", ImcType.typeFp32)
  double get bank2p_pgain;
}

/// Storage Usage class
///
/// Report of storage usage.
abstract class StorageUsage extends ImcMessage implements Built<StorageUsage, StorageUsageBuilder> {
  StorageUsage._();
  @override
  int get msgId => 100;
  @override
  String get abbrev => "StorageUsage";

  /// The available storage of the reporting device.
  @ImcField("Available", "available", ImcType.typeUint32, units: "MiB")
  int get available;

  /// The percentage of storage used by the reporting device.
  @ImcField("Usage", "value", ImcType.typeUInt8, units: "%")
  int get value;
}

/// Cache Control class
///
/// Control caching of messages to persistent storage.
abstract class CacheControl extends ImcMessage implements Built<CacheControl, CacheControlBuilder> {
  CacheControl._();
  @override
  int get msgId => 101;
  @override
  String get abbrev => "CacheControl";

  /// Operation to perform.
  @ImcField("Control Operation", "op", ImcType.typeUInt8)
  CacheControlEnumOp get op;

  /// Destination for the cache snapshot file.
  @ImcField("Snapshot destination", "snapshot", ImcType.typePlaintext)
  String get snapshot;

  /// Message to store.
  @ImcField("Message", "message", ImcType.typeMessage)
  ImcMessage get message;
}

/// Logging Control class
///
/// Control logging of messages to persistent storage.
abstract class LoggingControl extends ImcMessage implements Built<LoggingControl, LoggingControlBuilder> {
  LoggingControl._();
  @override
  int get msgId => 102;
  @override
  String get abbrev => "LoggingControl";

  /// Operation to perform.
  @ImcField("Control Operation", "op", ImcType.typeUInt8)
  LoggingControlEnumOp get op;

  /// The meaning of this field depends on the operation and is
  /// explained in the operation's description.
  @ImcField("Log Label / Path", "name", ImcType.typePlaintext)
  String get name;
}

/// Log Book Entry class
///
/// Human readable message reporting an event of interest.
abstract class LogBookEntry extends ImcMessage implements Built<LogBookEntry, LogBookEntryBuilder> {
  LogBookEntry._();
  @override
  int get msgId => 103;
  @override
  String get abbrev => "LogBookEntry";

  /// Type of message.
  @ImcField("Type", "type", ImcType.typeUInt8)
  LogBookEntryEnumType get type;

  /// Timestamp (Epoch time).
  @ImcField("Timestamp", "htime", ImcType.typeFp64, units: "s")
  double get htime;

  /// Message context.
  @ImcField("Context", "context", ImcType.typePlaintext)
  String get context;

  /// Message text.
  @ImcField("Text", "text", ImcType.typePlaintext)
  String get text;
}

/// Log Book Control class
///
/// Control history log.
abstract class LogBookControl extends ImcMessage implements Built<LogBookControl, LogBookControlBuilder> {
  LogBookControl._();
  @override
  int get msgId => 104;
  @override
  String get abbrev => "LogBookControl";

  /// Command to perform.
  @ImcField("Command", "command", ImcType.typeUInt8)
  LogBookControlEnumCommand get command;

  /// Timestamp for command (Epoch time).
  @ImcField("Timestamp", "htime", ImcType.typeFp64, units: "s")
  double get htime;

  /// Argument, currently used only for 'REPLY'.
  @ImcField("Messages", "msg", ImcType.typeMessageList)
  List<LogBookEntry> get msg;
}

/// Replay Control class
///
/// Control replay of LSF logged data.
abstract class ReplayControl extends ImcMessage implements Built<ReplayControl, ReplayControlBuilder> {
  ReplayControl._();
  @override
  int get msgId => 105;
  @override
  String get abbrev => "ReplayControl";

  /// Operation to perform.
  @ImcField("Operation", "op", ImcType.typeUInt8)
  ReplayControlEnumOp get op;

  /// Pathname of file to replay.
  @ImcField("File To Replay", "file", ImcType.typePlaintext)
  String get file;
}

/// Clock Control class
///
/// Clock control.
abstract class ClockControl extends ImcMessage implements Built<ClockControl, ClockControlBuilder> {
  ClockControl._();
  @override
  int get msgId => 106;
  @override
  String get abbrev => "ClockControl";

  /// Operation to perform.
  @ImcField("Operation", "op", ImcType.typeUInt8)
  ClockControlEnumOp get op;

  /// Clock value (Epoch time).
  @ImcField("Clock", "clock", ImcType.typeFp64, units: "s")
  double get clock;

  /// Timezone.
  @ImcField("Timezone", "tz", ImcType.typeInt8)
  int get tz;
}

/// Historic CTD class
///
/// This message is used to store historic (transmitted afterwards) CTD data .
abstract class HistoricCTD extends ImcMessage implements Built<HistoricCTD, HistoricCTDBuilder> {
  HistoricCTD._();
  @override
  int get msgId => 107;
  @override
  String get abbrev => "HistoricCTD";

  @ImcField("Conductivity", "conductivity", ImcType.typeFp32, units: "S/m")
  double get conductivity;

  @ImcField("Temperature", "temperature", ImcType.typeFp32, units: "°C")
  double get temperature;

  @ImcField("Depth", "depth", ImcType.typeFp32, units: "m")
  double get depth;
}

/// Historic Telemetry class
///
/// This message is used to store historic (transmitted afterwards) telemetry information.
abstract class HistoricTelemetry extends ImcMessage implements Built<HistoricTelemetry, HistoricTelemetryBuilder> {
  HistoricTelemetry._();
  @override
  int get msgId => 108;
  @override
  String get abbrev => "HistoricTelemetry";

  @ImcField("Altitude", "altitude", ImcType.typeFp32, units: "m")
  double get altitude;

  /// Roll encoded as α.(65535/(2.π))
  @ImcField("Roll", "roll", ImcType.typeUInt16)
  int get roll;

  /// Pitch encoded as α.(65535/(2.π))
  @ImcField("Pitch", "pitch", ImcType.typeUInt16)
  int get pitch;

  /// Yaw encoded as α.(65535/(2.π))
  @ImcField("Yaw", "yaw", ImcType.typeUInt16)
  int get yaw;

  @ImcField("Speed", "speed", ImcType.typeInt16, units: "dm")
  int get speed;
}

/// Historic Sonar Data class
///
/// This message is used to store historic (transmitted afterwards) sonar data.
abstract class HistoricSonarData extends ImcMessage implements Built<HistoricSonarData, HistoricSonarDataBuilder> {
  HistoricSonarData._();
  @override
  int get msgId => 109;
  @override
  String get abbrev => "HistoricSonarData";

  @ImcField("Altitude", "altitude", ImcType.typeFp32, units: "m")
  double get altitude;

  @ImcField("Width", "width", ImcType.typeFp32, units: "m")
  double get width;

  @ImcField("Length", "length", ImcType.typeFp32, units: "m")
  double get length;

  @ImcField("Bearing", "bearing", ImcType.typeFp32)
  double get bearing;

  /// The number of pixels per line as the data in 'sonar_data' may
  /// correspond to more than one sequential sidescan lines.
  @ImcField("Pixels Per Line", "pxl", ImcType.typeInt16)
  int get pxl;

  @ImcField("Encoding", "encoding", ImcType.typeUInt8)
  HistoricSonarDataEnumEncoding get encoding;

  /// Sonar data encoded as in 'encoding'.
  @ImcField("SonarData", "sonar_data", ImcType.typeRawdata)
  List<int> get sonar_data;
}

/// Historic Event class
///
/// This message is used to store historic event log entries.
abstract class HistoricEvent extends ImcMessage implements Built<HistoricEvent, HistoricEventBuilder> {
  HistoricEvent._();
  @override
  int get msgId => 110;
  @override
  String get abbrev => "HistoricEvent";

  @ImcField("Event", "text", ImcType.typePlaintext)
  String get text;

  /// Type of event.
  @ImcField("Event Type", "type", ImcType.typeUInt8)
  HistoricEventEnumType get type;
}

/// Vertical Profile class
///
/// This message is used to store historic profiles for water parameters: Temperature, Salinity, Chlorophyll...
abstract class VerticalProfile extends ImcMessage implements Built<VerticalProfile, VerticalProfileBuilder> {
  VerticalProfile._();
  @override
  int get msgId => 111;
  @override
  String get abbrev => "VerticalProfile";

  /// Water parameter used to calculate the vertical profile.
  @ImcField("Parameter", "parameter", ImcType.typeUInt8)
  VerticalProfileEnumParameter get parameter;

  @ImcField("Number of Samples", "numSamples", ImcType.typeUInt8)
  int get numSamples;

  @ImcField("Samples", "samples", ImcType.typeMessageList)
  List<ProfileSample> get samples;

  /// Latitude where the profile was calculated.
  @ImcField("Latitude", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  /// Longitude where the profile was calculated.
  @ImcField("Longitude", "lon", ImcType.typeFp64, units: "rad")
  double get lon;
}

/// Profile Sample class
///
/// Samples to calculate a vertical profile.
abstract class ProfileSample extends ImcMessage implements Built<ProfileSample, ProfileSampleBuilder> {
  ProfileSample._();
  @override
  int get msgId => 112;
  @override
  String get abbrev => "ProfileSample";

  @ImcField("Depth", "depth", ImcType.typeUInt16, units: "dm")
  int get depth;

  @ImcField("Average", "avg", ImcType.typeFp32)
  double get avg;
}

/// Heartbeat class
///
/// The Heartbeat message is used to inform other modules that the
/// sending entity's system is running normally and communications
/// are alive.
abstract class Heartbeat extends ImcMessage implements Built<Heartbeat, HeartbeatBuilder> {
  Heartbeat._();
  @override
  int get msgId => 150;
  @override
  String get abbrev => "Heartbeat";
}

/// Announce class
///
/// A system description that is to be broadcasted to other systems.
abstract class Announce extends ImcMessage implements Built<Announce, AnnounceBuilder> {
  Announce._();
  @override
  int get msgId => 151;
  @override
  String get abbrev => "Announce";

  /// System name.
  @ImcField("System Name", "sys_name", ImcType.typePlaintext)
  String get sys_name;

  /// System type.
  @ImcField("System Type", "sys_type", ImcType.typeUInt8)
  SystemTypeEnum get sys_type;

  /// The owner IMC system ID.
  @ImcField("Control Owner", "owner", ImcType.typeUInt16)
  int get owner;

  /// WGS-84 Latitude. If lat=0 and lon=0 means location value is unknown.
  @ImcField("Latitude WGS-84", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  /// WGS-84 Longitude. If lat=0 and lon=0 means location value is unknown.
  @ImcField("Longitude WGS-84", "lon", ImcType.typeFp64, units: "rad")
  double get lon;

  /// Height above WGS-84 ellipsoid.
  @ImcField("Height WGS-84", "height", ImcType.typeFp32, units: "m")
  double get height;

  /// Semicolon separated list of URLs. Examples of such URLs are:
  /// 
  /// - *imc+udp://192.168.106.34:6002/*
  /// - *dune://0.0.0.0/uid/1294925553839635/*
  /// - *http://192.168.106.34/dune/*.
  @ImcField("Services", "services", ImcType.typePlaintext)
  String get services;
}

/// Announce Service class
///
/// Announcement about the existence of a service.
abstract class AnnounceService extends ImcMessage implements Built<AnnounceService, AnnounceServiceBuilder> {
  AnnounceService._();
  @override
  int get msgId => 152;
  @override
  String get abbrev => "AnnounceService";

  /// Semicolon separated list of URLs (see :ref:`Announce`).
  @ImcField("Service", "service", ImcType.typePlaintext)
  String get service;

  /// Informs about the availability of the service on internal and
  /// external networks.
  @ImcField("ServiceType", "service_type", ImcType.typeUInt8)
  AnnounceServiceBitfieldService_type get service_type;
}

/// Receive Signal Strength Information class
///
/// Measure of the RSSI by a networking device.
/// Indicates the gain or loss in the signal strength due to the transmission and reception equipment and the transmission medium and distance.
abstract class RSSI extends ImcMessage implements Built<RSSI, RSSIBuilder> {
  RSSI._();
  @override
  int get msgId => 153;
  @override
  String get abbrev => "RSSI";

  /// RSSI measurement.
  @ImcField("Value", "value", ImcType.typeFp32, units: "%")
  double get value;
}

/// Voltage Standing Wave Ratio class
///
/// Measure of the VSWR by a networking device.
abstract class VSWR extends ImcMessage implements Built<VSWR, VSWRBuilder> {
  VSWR._();
  @override
  int get msgId => 154;
  @override
  String get abbrev => "VSWR";

  /// VSWR measurement.
  @ImcField("Value", "value", ImcType.typeFp32)
  double get value;
}

/// Link Level class
///
/// Measurement of link level quality. For instance, this may
/// correspond to the acknowledgment ratio of a link. But,
/// generally, the measure is link-dependent.
abstract class LinkLevel extends ImcMessage implements Built<LinkLevel, LinkLevelBuilder> {
  LinkLevel._();
  @override
  int get msgId => 155;
  @override
  String get abbrev => "LinkLevel";

  /// Link level value.
  @ImcField("Value", "value", ImcType.typeFp32)
  double get value;
}

/// SMS class
///
/// Send a SMS message.
abstract class Sms extends ImcMessage implements Built<Sms, SmsBuilder> {
  Sms._();
  @override
  int get msgId => 156;
  @override
  String get abbrev => "Sms";

  /// Target mobile device number.
  @ImcField("Number", "number", ImcType.typePlaintext)
  String get number;

  /// Timeout for sending message.
  @ImcField("Timeout", "timeout", ImcType.typeUInt16)
  int get timeout;

  /// Message contents.
  @ImcField("Contents", "contents", ImcType.typePlaintext)
  String get contents;
}

/// SMS Transmit class
///
/// Request to send SMS.
abstract class SmsTx extends ImcMessage implements Built<SmsTx, SmsTxBuilder> {
  SmsTx._();
  @override
  int get msgId => 157;
  @override
  String get abbrev => "SmsTx";

  /// Sequence number.
  @ImcField("Sequence Number", "seq", ImcType.typeUint32)
  int get seq;

  /// Number or name of the recipient.
  @ImcField("Destination", "destination", ImcType.typePlaintext)
  String get destination;

  /// Timeout for sending message.
  @ImcField("Timeout", "timeout", ImcType.typeUInt16, units: "s")
  int get timeout;

  /// Message data.
  @ImcField("Data", "data", ImcType.typeRawdata)
  List<int> get data;
}

/// SMS Receive class
///
/// Received SMS data.
abstract class SmsRx extends ImcMessage implements Built<SmsRx, SmsRxBuilder> {
  SmsRx._();
  @override
  int get msgId => 158;
  @override
  String get abbrev => "SmsRx";

  /// Number of name of the sender.
  @ImcField("Source", "source", ImcType.typePlaintext)
  String get source;

  /// Message data.
  @ImcField("Data", "data", ImcType.typeRawdata)
  List<int> get data;
}

/// SMS State class
///
abstract class SmsState extends ImcMessage implements Built<SmsState, SmsStateBuilder> {
  SmsState._();
  @override
  int get msgId => 159;
  @override
  String get abbrev => "SmsState";

  /// Sequence number.
  @ImcField("Sequence Number", "seq", ImcType.typeUint32)
  int get seq;

  /// Current state of an SMS transaction.
  @ImcField("State", "state", ImcType.typeUInt8)
  SmsStateEnumState get state;

  @ImcField("Error Message", "error", ImcType.typePlaintext)
  String get error;
}

/// Text Message class
///
/// A text message has been received.
abstract class TextMessage extends ImcMessage implements Built<TextMessage, TextMessageBuilder> {
  TextMessage._();
  @override
  int get msgId => 160;
  @override
  String get abbrev => "TextMessage";

  /// Message origin (if known).
  @ImcField("Origin", "origin", ImcType.typePlaintext)
  String get origin;

  /// Message contents.
  @ImcField("Text", "text", ImcType.typePlaintext)
  String get text;
}

/// Received Iridium Message class
///
abstract class IridiumMsgRx extends ImcMessage implements Built<IridiumMsgRx, IridiumMsgRxBuilder> {
  IridiumMsgRx._();
  @override
  int get msgId => 170;
  @override
  String get abbrev => "IridiumMsgRx";

  /// The unique identifier of this message's origin device (e.g. lauv-xtreme-2, manta-0).
  @ImcField("Origin Identifier", "origin", ImcType.typePlaintext)
  String get origin;

  /// Timestamp (Epoch time).
  @ImcField("Timestamp", "htime", ImcType.typeFp64, units: "s")
  double get htime;

  @ImcField("Latitude Reference", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  @ImcField("Longitude Reference", "lon", ImcType.typeFp64, units: "rad")
  double get lon;

  /// Message data.
  @ImcField("Data", "data", ImcType.typeRawdata)
  List<int> get data;
}

/// Transmit Iridium Message class
///
abstract class IridiumMsgTx extends ImcMessage implements Built<IridiumMsgTx, IridiumMsgTxBuilder> {
  IridiumMsgTx._();
  @override
  int get msgId => 171;
  @override
  String get abbrev => "IridiumMsgTx";

  /// The request identifier used to receive transmission updates.
  @ImcField("Request Identifier", "req_id", ImcType.typeUInt16)
  int get req_id;

  /// Time, in seconds, after which there will be no more atempts to transmit the message.
  @ImcField("Time to live", "ttl", ImcType.typeUInt16, units: "s")
  int get ttl;

  /// The unique identifier of this message's destination (e.g. lauv-xtreme-2, manta-0).
  @ImcField("Destination Identifier", "destination", ImcType.typePlaintext)
  String get destination;

  /// Message data.
  @ImcField("Data", "data", ImcType.typeRawdata)
  List<int> get data;
}

/// Iridium Transmission Status class
///
abstract class IridiumTxStatus extends ImcMessage implements Built<IridiumTxStatus, IridiumTxStatusBuilder> {
  IridiumTxStatus._();
  @override
  int get msgId => 172;
  @override
  String get abbrev => "IridiumTxStatus";

  /// The request identifier used to receive transmission updates
  @ImcField("Request Identifier", "req_id", ImcType.typeUInt16)
  int get req_id;

  @ImcField("Status Code", "status", ImcType.typeUInt8)
  IridiumTxStatusEnumStatus get status;

  @ImcField("Status Text", "text", ImcType.typePlaintext)
  String get text;
}

/// Group Membership State class
///
/// Group communication link assertion.
abstract class GroupMembershipState extends ImcMessage implements Built<GroupMembershipState, GroupMembershipStateBuilder> {
  GroupMembershipState._();
  @override
  int get msgId => 180;
  @override
  String get abbrev => "GroupMembershipState";

  /// Name of the group of systems.
  @ImcField("Group Name", "group_name", ImcType.typePlaintext)
  String get group_name;

  /// Communication link assertion for each group member.
  /// One bit to assert each system communication link state.
  @ImcField("Communication Links Assertion", "links", ImcType.typeUint32)
  int get links;
}

/// System Group class
///
/// Group of systems configuration.
abstract class SystemGroup extends ImcMessage implements Built<SystemGroup, SystemGroupBuilder> {
  SystemGroup._();
  @override
  int get msgId => 181;
  @override
  String get abbrev => "SystemGroup";

  /// Name of the group of systems.
  @ImcField("Group Name", "GroupName", ImcType.typePlaintext)
  String get GroupName;

  /// Actions on the group list.
  @ImcField("Group List Action", "Action", ImcType.typeUInt8)
  SystemGroupEnumAction get Action;

  /// List of names of system in the group, separated by commas.
  @ImcField("Systems Name List", "GroupList", ImcType.typePlaintext)
  String get GroupList;
}

/// Link Latency class
///
/// Communications latency between two systems.
abstract class LinkLatency extends ImcMessage implements Built<LinkLatency, LinkLatencyBuilder> {
  LinkLatency._();
  @override
  int get msgId => 182;
  @override
  String get abbrev => "LinkLatency";

  /// Time taken between the communications package/message is sent
  /// from the source until it arrives to the destination.
  @ImcField("Value", "value", ImcType.typeFp32, units: "s")
  double get value;

  /// ID of system that was the source of the communication package.
  @ImcField("Communications Source System ID", "sys_src", ImcType.typeUInt16)
  int get sys_src;
}

/// Extended Receive Signal Strength Information class
///
/// Measure of the RSSI by a networking device.
/// Indicates the gain or loss in the signal strenght due to the transmission
/// and reception equipment and the transmission medium and distance.
abstract class ExtendedRSSI extends ImcMessage implements Built<ExtendedRSSI, ExtendedRSSIBuilder> {
  ExtendedRSSI._();
  @override
  int get msgId => 183;
  @override
  String get abbrev => "ExtendedRSSI";

  /// RSSI measurement.
  @ImcField("Value", "value", ImcType.typeFp32)
  double get value;

  /// Indicates the units used for the RSSI value.
  @ImcField("RSSI Units", "units", ImcType.typeUInt8)
  RSSIUnitsEnum get units;
}

/// Historic Data Series class
///
/// This message holds a list of inline data samples produced by one or more vehicles in the past.
/// It is used to transfer data over disruption tolerant networks.
abstract class HistoricData extends ImcMessage implements Built<HistoricData, HistoricDataBuilder> {
  HistoricData._();
  @override
  int get msgId => 184;
  @override
  String get abbrev => "HistoricData";

  /// All data sent inside this message will have offsets relative to this latitude.
  @ImcField("Base Latitude", "base_lat", ImcType.typeFp32, units: "°")
  double get base_lat;

  /// All data sent inside this message will have offsets relative to this longitude.
  @ImcField("Base Longitude", "base_lon", ImcType.typeFp32, units: "°")
  double get base_lon;

  /// All data sent inside this message will use this time as the origin (0).
  @ImcField("Base Timestamp", "base_time", ImcType.typeFp32, units: "s")
  double get base_time;

  @ImcField("Data", "data", ImcType.typeMessageList)
  List<RemoteData> get data;
}

/// Compressed Historic Data Series class
///
/// This message holds a list of inline data samples produced by one or more vehicles in the past.
/// It is used to transfer data over disruption tolerant networks.
abstract class CompressedHistory extends ImcMessage implements Built<CompressedHistory, CompressedHistoryBuilder> {
  CompressedHistory._();
  @override
  int get msgId => 185;
  @override
  String get abbrev => "CompressedHistory";

  /// All data sent inside this message will have offsets relative to this latitude.
  @ImcField("Base Latitude", "base_lat", ImcType.typeFp32, units: "°")
  double get base_lat;

  /// All data sent inside this message will have offsets relative to this longitude.
  @ImcField("Base Longitude", "base_lon", ImcType.typeFp32, units: "°")
  double get base_lon;

  /// All data sent inside this message will use this time as the origin (0).
  @ImcField("Base Timestamp", "base_time", ImcType.typeFp32, units: "s")
  double get base_time;

  /// A message-list of HistoricSample messages compressed with GZip algorithm.
  @ImcField("Data", "data", ImcType.typeRawdata)
  List<int> get data;
}

/// Historic Data Sample class
///
abstract class HistoricSample extends RemoteData implements Built<HistoricSample, HistoricSampleBuilder> {
  HistoricSample._();
  @override
  int get msgId => 186;
  @override
  String get abbrev => "HistoricSample";

  /// The IMC identifier of the system that produced this sample.
  @ImcField("Original System Id", "sys_id", ImcType.typeUInt16)
  int get sys_id;

  /// The priority for this data sample. Default priority is 0. Samples with
  /// higher priorities will *always* be transmitted before samples with lower
  /// priorities. Samples with -127 priority will not be transmitted but just
  /// logged to disk locally.
  @ImcField("Priority", "priority", ImcType.typeInt8)
  int get priority;

  /// Northing offsets relative to base latitude / longitude expressed in the enclosing `HistoricData` message.
  @ImcField("X offset", "x", ImcType.typeInt16, units: "m")
  int get x;

  /// Easting offsets relative to base latitude / longitude expressed in the enclosing `HistoricData` message.
  @ImcField("Y offset", "y", ImcType.typeInt16, units: "m")
  int get y;

  /// Altitude / depth offsets relative to sea level expressed in decimeters.
  /// Negative values mean depth and positive values mean altitude.
  @ImcField("Z offset", "z", ImcType.typeInt16, units: "dm")
  int get z;

  /// Time offset in seconds relative to the base time expressed in the enclosing `HistoricData` message.
  @ImcField("Time offset", "t", ImcType.typeInt16, units: "s")
  int get t;

  @ImcField("Data Sample", "sample", ImcType.typeMessage)
  ImcMessage get sample;
}

/// Historic Data Query class
///
abstract class HistoricDataQuery extends ImcMessage implements Built<HistoricDataQuery, HistoricDataQueryBuilder> {
  HistoricDataQuery._();
  @override
  int get msgId => 187;
  @override
  String get abbrev => "HistoricDataQuery";

  @ImcField("Request Id", "req_id", ImcType.typeUInt16)
  int get req_id;

  @ImcField("Request Type", "type", ImcType.typeUInt8)
  HistoricDataQueryEnumType get type;

  @ImcField("Maximum Size", "max_size", ImcType.typeUInt16)
  int get max_size;

  @ImcField("Data", "data", ImcType.typeMessage)
  HistoricData get data;
}

/// Remote Command class
///
/// Command to remote system. If a system receives a RemoteCommand and it isn't the intended recipient, then it should
/// resend it.
abstract class RemoteCommand extends RemoteData implements Built<RemoteCommand, RemoteCommandBuilder> {
  RemoteCommand._();
  @override
  int get msgId => 188;
  @override
  String get abbrev => "RemoteCommand";

  /// IMC id of the original sender.
  @ImcField("Original Source", "original_source", ImcType.typeUInt16)
  int get original_source;

  /// IMC id of the recipient.
  @ImcField("Destination", "destination", ImcType.typeUInt16)
  int get destination;

  /// Expiration time of the message (Epoch Time), in seconds. If the message doesn't reach the destination within timeout,
  /// the validity of the message expires and there will be no more attempts to transmit the message.
  @ImcField("Timeout", "timeout", ImcType.typeFp64, units: "s")
  double get timeout;

  /// Command to be unpacked by the recipient.
  @ImcField("Command", "cmd", ImcType.typeMessage)
  ImcMessage get cmd;
}

/// Communication Systems Query class
///
/// Presence of Communication Interfaces query.
abstract class CommSystemsQuery extends ImcMessage implements Built<CommSystemsQuery, CommSystemsQueryBuilder> {
  CommSystemsQuery._();
  @override
  int get msgId => 189;
  @override
  String get abbrev => "CommSystemsQuery";

  @ImcField("Type", "type", ImcType.typeUInt8)
  CommSystemsQueryBitfieldType get type;

  /// Communication interface to be used for reports.
  @ImcField("Communication Interface", "comm_interface", ImcType.typeUInt16)
  CommSystemsQueryBitfieldComm_interface get comm_interface;

  @ImcField("Model", "model", ImcType.typeUInt16)
  CommSystemsQueryEnumModel get model;

  /// Comma separated list of known Radio system names.
  @ImcField("System List", "list", ImcType.typePlaintext, units: "List")
  String get list;
}

/// Telemetry Message class
///
/// Message to handle telemetry transmissions.
abstract class TelemetryMsg extends ImcMessage implements Built<TelemetryMsg, TelemetryMsgBuilder> {
  TelemetryMsg._();
  @override
  int get msgId => 190;
  @override
  String get abbrev => "TelemetryMsg";

  /// Type of telemetry transmissions.
  @ImcField("Type", "type", ImcType.typeUInt8)
  TelemetryMsgEnumType get type;

  /// The request identifier used to receive transmission updates.
  @ImcField("Request Identifier", "req_id", ImcType.typeUint32)
  int get req_id;

  /// Time, in seconds, which will be considered a non-transmitted message.
  @ImcField("Time to live", "ttl", ImcType.typeUInt16, units: "s")
  int get ttl;

  /// Type of telemetry transmissions.
  @ImcField("Code", "code", ImcType.typeUInt8)
  TelemetryMsgEnumCode get code;

  /// The unique identifier of this message's destination (e.g. lauv-xtreme-2, manta-0).
  @ImcField("Destination Identifier", "destination", ImcType.typePlaintext)
  String get destination;

  /// The unique identifier of this message's destination (e.g. lauv-xtreme-2, manta-0).
  @ImcField("Source Identifier", "Source", ImcType.typePlaintext)
  String get Source;

  /// Type of telemetry transmissions.
  @ImcField("Acknowledge", "acknowledge", ImcType.typeUInt8)
  TelemetryMsgBitfieldAcknowledge get acknowledge;

  /// State of the transmitted message.
  @ImcField("Status", "status", ImcType.typeUInt8)
  TelemetryMsgEnumStatus get status;

  @ImcField("Data", "data", ImcType.typeRawdata)
  List<int> get data;
}

/// LBL Range class
///
/// When the vehicle uses Long Base Line navigation, this message
/// notifies that a new range was received from one of the acoustics
/// transponders. The message fields are used to identify the range
/// value and the transponder name.
abstract class LblRange extends ImcMessage implements Built<LblRange, LblRangeBuilder> {
  LblRange._();
  @override
  int get msgId => 200;
  @override
  String get abbrev => "LblRange";

  /// Identification number of the acoustic transponder from which
  /// the range information was received.
  @ImcField("Beacon Identification Number", "id", ImcType.typeUInt8)
  int get id;

  /// Distance to the acoustic transponder.
  @ImcField("Range", "range", ImcType.typeFp32, units: "m")
  double get range;
}

/// LBL Beacon Configuration class
///
/// Position and configuration of an LBL transponder (beacon).
abstract class LblBeacon extends ImcMessage implements Built<LblBeacon, LblBeaconBuilder> {
  LblBeacon._();
  @override
  int get msgId => 202;
  @override
  String get abbrev => "LblBeacon";

  /// Name/Label of the acoustic transponder.
  @ImcField("Beacon Name", "beacon", ImcType.typePlaintext)
  String get beacon;

  /// WGS-84 Latitude coordinate.
  @ImcField("Latitude WGS-84", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  /// WGS-84 Longitude coordinate.
  @ImcField("Longitude WGS-84", "lon", ImcType.typeFp64, units: "rad")
  double get lon;

  /// The beacon's depth.
  @ImcField("Depth", "depth", ImcType.typeFp32, units: "m")
  double get depth;

  /// Interrogation channel.
  @ImcField("Interrogation channel", "query_channel", ImcType.typeUInt8)
  int get query_channel;

  /// Reply channel.
  @ImcField("Reply channel", "reply_channel", ImcType.typeUInt8)
  int get reply_channel;

  /// Transponder delay.
  @ImcField("Transponder delay", "transponder_delay", ImcType.typeUInt8, units: "ms")
  int get transponder_delay;
}

/// LBL Configuration class
///
/// Long Base Line configuration.
abstract class LblConfig extends ImcMessage implements Built<LblConfig, LblConfigBuilder> {
  LblConfig._();
  @override
  int get msgId => 203;
  @override
  String get abbrev => "LblConfig";

  /// Used to define the type of the operation this message holds.
  @ImcField("Operation", "op", ImcType.typeUInt8)
  LblConfigEnumOp get op;

  /// A list of LBL beacon configuration messages.
  @ImcField("Beacons", "beacons", ImcType.typeMessageList)
  List<LblBeacon> get beacons;
}

/// Acoustic Message class
///
/// Send an acoustic message.
abstract class AcousticMessage extends ImcMessage implements Built<AcousticMessage, AcousticMessageBuilder> {
  AcousticMessage._();
  @override
  int get msgId => 206;
  @override
  String get abbrev => "AcousticMessage";

  /// Message to send.
  @ImcField("Message to send", "message", ImcType.typeMessage)
  ImcMessage get message;
}

/// Acoustic Operation class
///
/// Acoustic operation.
abstract class AcousticOperation extends ImcMessage implements Built<AcousticOperation, AcousticOperationBuilder> {
  AcousticOperation._();
  @override
  int get msgId => 211;
  @override
  String get abbrev => "AcousticOperation";

  /// Operation type.
  @ImcField("Operation", "op", ImcType.typeUInt8)
  AcousticOperationEnumOp get op;

  /// The meaning of this field depends on the operation and is
  /// explained in the operation's description.
  @ImcField("System", "system", ImcType.typePlaintext)
  String get system;

  /// The meaning of this field depends on the operation and is
  /// explained in the operation's description.
  @ImcField("Range", "range", ImcType.typeFp32, units: "m")
  double get range;

  /// Argument for message send ('MSG') requests.
  @ImcField("Message To Send", "msg", ImcType.typeMessage)
  ImcMessage get msg;
}

/// Acoustic Systems Query class
///
/// Request a list of known underwater acoustic systems. The
/// recipient of this message shall reply with an AcousticSystems
/// message.
abstract class AcousticSystemsQuery extends ImcMessage implements Built<AcousticSystemsQuery, AcousticSystemsQueryBuilder> {
  AcousticSystemsQuery._();
  @override
  int get msgId => 212;
  @override
  String get abbrev => "AcousticSystemsQuery";
}

/// Acoustic Systems class
///
/// This message is sent in reply to an AcousticSystemsQuery message
/// and lists all known underwater acoustic systems (modems, narrow
/// band transponders, etc).
abstract class AcousticSystems extends ImcMessage implements Built<AcousticSystems, AcousticSystemsBuilder> {
  AcousticSystems._();
  @override
  int get msgId => 213;
  @override
  String get abbrev => "AcousticSystems";

  /// Comma separated list of known acoustic system names.
  @ImcField("System List", "list", ImcType.typePlaintext, units: "List")
  String get list;
}

/// Acoustic Link Quality class
///
/// This message is used to report the perceived link quality to other
/// acoustic peers.
abstract class AcousticLink extends ImcMessage implements Built<AcousticLink, AcousticLinkBuilder> {
  AcousticLink._();
  @override
  int get msgId => 214;
  @override
  String get abbrev => "AcousticLink";

  /// The name of the peer on the other side of this link.
  @ImcField("Peer Name", "peer", ImcType.typePlaintext)
  String get peer;

  /// RSSI is a signed floating point number. Higher RSSI values correspond to
  /// stronger signals.
  /// The signal strength is acceptable when measured RSSI values lie between
  /// -20 dB and -85 dB.
  @ImcField("Received Signal Strength Indicator", "rssi", ImcType.typeFp32, units: "dB")
  double get rssi;

  /// Signal Integrity value illustrates distortion of the last received
  /// acoustic signal. It is calculated based on cross-correlation
  /// measurements.
  /// Higher *Signal Integrity Level* values correspond to less distorted
  /// signals. An acoustic link is considered weak if the *Signal Integrity
  /// Level* value is less than 100.
  @ImcField("Signal Integrity Level", "integrity", ImcType.typeUInt16)
  int get integrity;
}

/// Revolutions Per Minute class
///
/// Number of revolutions per minute.
abstract class Rpm extends ImcMessage implements Built<Rpm, RpmBuilder> {
  Rpm._();
  @override
  int get msgId => 250;
  @override
  String get abbrev => "Rpm";

  /// Number of revolutions per minute.
  @ImcField("Value", "value", ImcType.typeInt16, units: "rpm")
  int get value;
}

/// Voltage class
///
/// Report of electrical voltage.
abstract class Voltage extends ImcMessage implements Built<Voltage, VoltageBuilder> {
  Voltage._();
  @override
  int get msgId => 251;
  @override
  String get abbrev => "Voltage";

  /// The value of the internal electrical voltage as measured by
  /// the sensor.
  @ImcField("Measured Voltage Value", "value", ImcType.typeFp32, units: "V")
  double get value;
}

/// Current class
///
/// Report of electrical current.
abstract class Current extends ImcMessage implements Built<Current, CurrentBuilder> {
  Current._();
  @override
  int get msgId => 252;
  @override
  String get abbrev => "Current";

  /// The value of the internal electrical current as measured by
  /// the sensor.
  @ImcField("Measured Current Value", "value", ImcType.typeFp32, units: "A")
  double get value;
}

/// GPS Fix class
///
/// Report of a GPS fix.
abstract class GpsFix extends ImcMessage implements Built<GpsFix, GpsFixBuilder> {
  GpsFix._();
  @override
  int get msgId => 253;
  @override
  String get abbrev => "GpsFix";

  /// Validity of fields.
  @ImcField("Validity", "validity", ImcType.typeUInt16)
  GpsFixBitfieldValidity get validity;

  /// Type of fix.
  @ImcField("Type", "type", ImcType.typeUInt8)
  GpsFixEnumType get type;

  /// UTC year.
  @ImcField("UTC Year", "utc_year", ImcType.typeUInt16)
  int get utc_year;

  /// UTC month.
  @ImcField("UTC Month", "utc_month", ImcType.typeUInt8)
  int get utc_month;

  /// UTC day.
  @ImcField("UTC Day", "utc_day", ImcType.typeUInt8)
  int get utc_day;

  /// UTC time of the GPS fix measured in seconds since 00:00:00 (midnight).
  @ImcField("UTC Time of Fix", "utc_time", ImcType.typeFp32, units: "s")
  double get utc_time;

  /// WGS-84 Latitude coordinate.
  @ImcField("Latitude WGS-84", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  /// WGS-84 Longitude coordinate.
  @ImcField("Longitude WGS-84", "lon", ImcType.typeFp64, units: "rad")
  double get lon;

  /// Height above WGS-84 ellipsoid.
  @ImcField("Height above WGS-84 ellipsoid", "height", ImcType.typeFp32, units: "m")
  double get height;

  /// Number of satellites used by the GPS device to compute the
  /// solution.
  @ImcField("Number of Satellites", "satellites", ImcType.typeUInt8)
  int get satellites;

  /// Course Over Ground (true).
  @ImcField("Course Over Ground", "cog", ImcType.typeFp32, units: "rad")
  double get cog;

  /// Speed Over Ground.
  @ImcField("Speed Over Ground", "sog", ImcType.typeFp32, units: "m/s")
  double get sog;

  /// Horizontal dilution of precision.
  @ImcField("Horizontal Dilution of Precision", "hdop", ImcType.typeFp32)
  double get hdop;

  /// Vertical dilution of precision.
  @ImcField("Vertical Dilution of Precision", "vdop", ImcType.typeFp32)
  double get vdop;

  /// Horizontal Accuracy Estimate.
  @ImcField("Horizontal Accuracy Estimate", "hacc", ImcType.typeFp32, units: "m")
  double get hacc;

  /// Vertical Accuracy Estimate.
  @ImcField("Vertical Accuracy Estimate", "vacc", ImcType.typeFp32, units: "m")
  double get vacc;
}

/// Euler Angles class
///
/// Report of spatial orientation according to SNAME's notation
/// (1950).
abstract class EulerAngles extends ImcMessage implements Built<EulerAngles, EulerAnglesBuilder> {
  EulerAngles._();
  @override
  int get msgId => 254;
  @override
  String get abbrev => "EulerAngles";

  /// The device time.
  @ImcField("Device Time", "time", ImcType.typeFp64, units: "s")
  double get time;

  /// Rotation around the vehicle longitudinal axis.
  @ImcField("Roll Angle", "phi", ImcType.typeFp64, units: "rad")
  double get phi;

  /// Rotation around the vehicle lateral or transverse axis.
  @ImcField("Pitch Angle", "theta", ImcType.typeFp64, units: "rad")
  double get theta;

  /// Rotation around the vehicle vertical axis. A value of 0 means
  /// the vehicle is oriented towards true north. In cases where the
  /// sensor cannot measure the true heading, this field will have
  /// the same value as Yaw (Magnetic).
  @ImcField("Yaw Angle (True)", "psi", ImcType.typeFp64, units: "rad")
  double get psi;

  /// Rotation around the vehicle vertical axis. A value of 0 means
  /// the vehicle is oriented towards magnetic north. In cases where
  /// the sensor cannot measure the magnetic heading, this field
  /// will have the same value as Yaw (True).
  @ImcField("Yaw Angle (Magnetic)", "psi_magnetic", ImcType.typeFp64, units: "rad")
  double get psi_magnetic;
}

/// Euler Angles Delta class
///
/// Component of incremetal orientation vector over a period of time.
abstract class EulerAnglesDelta extends ImcMessage implements Built<EulerAnglesDelta, EulerAnglesDeltaBuilder> {
  EulerAnglesDelta._();
  @override
  int get msgId => 255;
  @override
  String get abbrev => "EulerAnglesDelta";

  /// The device time.
  @ImcField("Device Time", "time", ImcType.typeFp64, units: "s")
  double get time;

  /// X component.
  @ImcField("X", "x", ImcType.typeFp64, units: "rad")
  double get x;

  /// Y component.
  @ImcField("Y", "y", ImcType.typeFp64, units: "rad")
  double get y;

  /// Z component.
  @ImcField("Z", "z", ImcType.typeFp64, units: "rad")
  double get z;

  /// Period of time of the orientation vector increments.
  @ImcField("Timestep", "timestep", ImcType.typeFp32, units: "s")
  double get timestep;
}

/// Angular Velocity class
///
/// Vector quantifying the direction and magnitude of the measured
/// angular velocity that a device is exposed to.
abstract class AngularVelocity extends ImcMessage implements Built<AngularVelocity, AngularVelocityBuilder> {
  AngularVelocity._();
  @override
  int get msgId => 256;
  @override
  String get abbrev => "AngularVelocity";

  /// The device time.
  @ImcField("Device Time", "time", ImcType.typeFp64, units: "s")
  double get time;

  /// X component.
  @ImcField("X", "x", ImcType.typeFp64, units: "rad/s")
  double get x;

  /// Y component.
  @ImcField("Y", "y", ImcType.typeFp64, units: "rad/s")
  double get y;

  /// Z component.
  @ImcField("Z", "z", ImcType.typeFp64, units: "rad/s")
  double get z;
}

/// Acceleration class
///
/// Vector quantifying the direction and magnitude of the measured
/// acceleration that a device is exposed to.
abstract class Acceleration extends ImcMessage implements Built<Acceleration, AccelerationBuilder> {
  Acceleration._();
  @override
  int get msgId => 257;
  @override
  String get abbrev => "Acceleration";

  /// The device time.
  @ImcField("Device Time", "time", ImcType.typeFp64, units: "s")
  double get time;

  /// X component.
  @ImcField("X", "x", ImcType.typeFp64, units: "m/s/s")
  double get x;

  /// Y component.
  @ImcField("Y", "y", ImcType.typeFp64, units: "m/s/s")
  double get y;

  /// Z component.
  @ImcField("Z", "z", ImcType.typeFp64, units: "m/s/s")
  double get z;
}

/// Magnetic Field class
///
/// Vector quantifying the direction and magnitude of the measured
/// magnetic field that a device is exposed to.
abstract class MagneticField extends ImcMessage implements Built<MagneticField, MagneticFieldBuilder> {
  MagneticField._();
  @override
  int get msgId => 258;
  @override
  String get abbrev => "MagneticField";

  /// The device time.
  @ImcField("Device Time", "time", ImcType.typeFp64, units: "s")
  double get time;

  /// X component.
  @ImcField("X", "x", ImcType.typeFp64, units: "G")
  double get x;

  /// Y component.
  @ImcField("Y", "y", ImcType.typeFp64, units: "G")
  double get y;

  /// Z component.
  @ImcField("Z", "z", ImcType.typeFp64, units: "G")
  double get z;
}

/// Ground Velocity class
///
/// Vector quantifying the direction and magnitude of the measured
/// velocity relative to the ground that a device is exposed to.
abstract class GroundVelocity extends ImcMessage implements Built<GroundVelocity, GroundVelocityBuilder> {
  GroundVelocity._();
  @override
  int get msgId => 259;
  @override
  String get abbrev => "GroundVelocity";

  /// Each bit of this field represents if a given velocity
  /// component is valid.
  @ImcField("Validity", "validity", ImcType.typeUInt8)
  GroundVelocityBitfieldValidity get validity;

  /// X component.
  @ImcField("X", "x", ImcType.typeFp64, units: "m/s")
  double get x;

  /// Y component.
  @ImcField("Y", "y", ImcType.typeFp64, units: "m/s")
  double get y;

  /// Z component.
  @ImcField("Z", "z", ImcType.typeFp64, units: "m/s")
  double get z;
}

/// Water Velocity class
///
/// Vector quantifying the direction and magnitude of the measured
/// velocity relative to the water that a device is exposed to.
abstract class WaterVelocity extends ImcMessage implements Built<WaterVelocity, WaterVelocityBuilder> {
  WaterVelocity._();
  @override
  int get msgId => 260;
  @override
  String get abbrev => "WaterVelocity";

  /// Each bit of this field represents if a given velocity
  /// component is valid.
  @ImcField("Validity", "validity", ImcType.typeUInt8)
  WaterVelocityBitfieldValidity get validity;

  /// X component.
  @ImcField("X", "x", ImcType.typeFp64, units: "m/s")
  double get x;

  /// Y component.
  @ImcField("Y", "y", ImcType.typeFp64, units: "m/s")
  double get y;

  /// Z component.
  @ImcField("Z", "z", ImcType.typeFp64, units: "m/s")
  double get z;
}

/// Velocity Delta class
///
/// Component of incremetal velocity vector.
abstract class VelocityDelta extends ImcMessage implements Built<VelocityDelta, VelocityDeltaBuilder> {
  VelocityDelta._();
  @override
  int get msgId => 261;
  @override
  String get abbrev => "VelocityDelta";

  /// The device time.
  @ImcField("Device Time", "time", ImcType.typeFp64, units: "s")
  double get time;

  /// X component.
  @ImcField("X", "x", ImcType.typeFp64, units: "m/s")
  double get x;

  /// Y component.
  @ImcField("Y", "y", ImcType.typeFp64, units: "m/s")
  double get y;

  /// Z component.
  @ImcField("Z", "z", ImcType.typeFp64, units: "m/s")
  double get z;
}

/// Distance class
///
/// Distance measurement detected by the device.
abstract class Distance extends ImcMessage implements Built<Distance, DistanceBuilder> {
  Distance._();
  @override
  int get msgId => 262;
  @override
  String get abbrev => "Distance";

  /// Validity of the measurement.
  @ImcField("Validity", "validity", ImcType.typeUInt8)
  DistanceEnumValidity get validity;

  /// Device Location in the system.
  @ImcField("Location", "location", ImcType.typeMessageList)
  List<DeviceState> get location;

  /// Beam configuration of the device.
  @ImcField("Beam Configuration", "beam_config", ImcType.typeMessageList)
  List<BeamConfig> get beam_config;

  /// Measured distance.
  @ImcField("Measured Distance", "value", ImcType.typeFp32, units: "m")
  double get value;
}

/// Temperature class
///
/// Report of temperature.
abstract class Temperature extends ImcMessage implements Built<Temperature, TemperatureBuilder> {
  Temperature._();
  @override
  int get msgId => 263;
  @override
  String get abbrev => "Temperature";

  /// The value of the temperature as measured by the sensor.
  @ImcField("Measured Temperature", "value", ImcType.typeFp32, units: "°C")
  double get value;
}

/// Pressure class
///
/// Report of external pressure.
abstract class Pressure extends ImcMessage implements Built<Pressure, PressureBuilder> {
  Pressure._();
  @override
  int get msgId => 264;
  @override
  String get abbrev => "Pressure";

  /// The value of the pressure as measured by the sensor.
  @ImcField("Measured Pressure", "value", ImcType.typeFp64, units: "hPa")
  double get value;
}

/// Depth class
///
/// Depth report.
abstract class Depth extends ImcMessage implements Built<Depth, DepthBuilder> {
  Depth._();
  @override
  int get msgId => 265;
  @override
  String get abbrev => "Depth";

  /// Depth value measured by a sensor.
  @ImcField("Measured Depth", "value", ImcType.typeFp32, units: "m")
  double get value;
}

/// Depth Offset class
///
/// Report of Depth Offset.
abstract class DepthOffset extends ImcMessage implements Built<DepthOffset, DepthOffsetBuilder> {
  DepthOffset._();
  @override
  int get msgId => 266;
  @override
  String get abbrev => "DepthOffset";

  /// Depth offset.
  @ImcField("Measured Offset", "value", ImcType.typeFp32, units: "m")
  double get value;
}

/// Sound Speed class
///
/// Sound Speed report.
abstract class SoundSpeed extends ImcMessage implements Built<SoundSpeed, SoundSpeedBuilder> {
  SoundSpeed._();
  @override
  int get msgId => 267;
  @override
  String get abbrev => "SoundSpeed";

  /// Estimated sound speed. Negative values denote invalid estimates.
  @ImcField("Computed Sound Speed", "value", ImcType.typeFp32, units: "m/s")
  double get value;
}

/// Water Density class
///
/// Water Density report.
abstract class WaterDensity extends ImcMessage implements Built<WaterDensity, WaterDensityBuilder> {
  WaterDensity._();
  @override
  int get msgId => 268;
  @override
  String get abbrev => "WaterDensity";

  /// Computed Water Density.
  @ImcField("Computed Water Density", "value", ImcType.typeFp32, units: "kg/m/m/m")
  double get value;
}

/// Conductivity class
///
/// Report of conductivity.
abstract class Conductivity extends ImcMessage implements Built<Conductivity, ConductivityBuilder> {
  Conductivity._();
  @override
  int get msgId => 269;
  @override
  String get abbrev => "Conductivity";

  /// The value of the conductivity as measured by the sensor.
  @ImcField("Measured Conductivity", "value", ImcType.typeFp32, units: "S/m")
  double get value;
}

/// Salinity class
///
/// Report of salinity.
abstract class Salinity extends ImcMessage implements Built<Salinity, SalinityBuilder> {
  Salinity._();
  @override
  int get msgId => 270;
  @override
  String get abbrev => "Salinity";

  /// The value of the salinity as measured by the sensor.
  @ImcField("Measured Salinity", "value", ImcType.typeFp32)
  double get value;
}

/// Wind Speed class
///
/// Measurement of wind speed.
abstract class WindSpeed extends ImcMessage implements Built<WindSpeed, WindSpeedBuilder> {
  WindSpeed._();
  @override
  int get msgId => 271;
  @override
  String get abbrev => "WindSpeed";

  /// Direction of the measured wind speed.
  @ImcField("Direction", "direction", ImcType.typeFp32, units: "rad")
  double get direction;

  /// The value of the wind speed as measured by the sensor.
  @ImcField("Speed", "speed", ImcType.typeFp32, units: "m/s")
  double get speed;

  /// Wind turbulence intensity.
  @ImcField("Turbulence", "turbulence", ImcType.typeFp32, units: "m/s")
  double get turbulence;
}

/// Relative Humidity class
///
/// Measurement of relative humidity.
abstract class RelativeHumidity extends ImcMessage implements Built<RelativeHumidity, RelativeHumidityBuilder> {
  RelativeHumidity._();
  @override
  int get msgId => 272;
  @override
  String get abbrev => "RelativeHumidity";

  /// Value of relative humidity.
  @ImcField("Relative Humidity Value", "value", ImcType.typeFp32)
  double get value;
}

/// Device Data (Text) class
///
/// Verbatim representation of device data in plain text format.
abstract class DevDataText extends ImcMessage implements Built<DevDataText, DevDataTextBuilder> {
  DevDataText._();
  @override
  int get msgId => 273;
  @override
  String get abbrev => "DevDataText";

  /// Plain text data as extracted directly from the device.
  @ImcField("Value", "value", ImcType.typePlaintext)
  String get value;
}

/// Device Data (Binary) class
///
/// Verbatim representation of device data in binary format.
abstract class DevDataBinary extends ImcMessage implements Built<DevDataBinary, DevDataBinaryBuilder> {
  DevDataBinary._();
  @override
  int get msgId => 274;
  @override
  String get abbrev => "DevDataBinary";

  /// Raw binary data as extracted directly from the device.
  @ImcField("Value", "value", ImcType.typeRawdata)
  List<int> get value;
}

/// Force class
///
/// Force measurement.
abstract class Force extends ImcMessage implements Built<Force, ForceBuilder> {
  Force._();
  @override
  int get msgId => 275;
  @override
  String get abbrev => "Force";

  /// Force magnitude.
  @ImcField("Measured Force", "value", ImcType.typeFp32, units: "N")
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
  SonarData._();
  @override
  int get msgId => 276;
  @override
  String get abbrev => "SonarData";

  /// Type of sonar.
  @ImcField("Type", "type", ImcType.typeUInt8)
  SonarDataEnumType get type;

  /// Operating frequency.
  @ImcField("Frequency", "frequency", ImcType.typeUint32, units: "Hz")
  int get frequency;

  /// Minimum range.
  @ImcField("Minimum Range", "min_range", ImcType.typeUInt16, units: "m")
  int get min_range;

  /// Maximum range.
  @ImcField("Maximum Range", "max_range", ImcType.typeUInt16, units: "m")
  int get max_range;

  /// Size of the data unit. (Should be multiple of 8)
  @ImcField("Bits Per Data Point", "bits_per_point", ImcType.typeUInt8, units: "bit")
  int get bits_per_point;

  /// Scaling factor used to multiply each data unit to restore the
  /// original floating point value.
  @ImcField("Scaling Factor", "scale_factor", ImcType.typeFp32)
  double get scale_factor;

  /// Beam configuration of the device.
  @ImcField("Beam Configuration", "beam_config", ImcType.typeMessageList)
  List<BeamConfig> get beam_config;

  /// Data acquired by the measurement.
  @ImcField("Data", "data", ImcType.typeRawdata)
  List<int> get data;
}

/// Pulse class
///
/// Hardware pulse detection.
abstract class Pulse extends ImcMessage implements Built<Pulse, PulseBuilder> {
  Pulse._();
  @override
  int get msgId => 277;
  @override
  String get abbrev => "Pulse";
}

/// Pulse Detection Control class
///
/// Control of hardware pulse detection.
abstract class PulseDetectionControl extends ImcMessage implements Built<PulseDetectionControl, PulseDetectionControlBuilder> {
  PulseDetectionControl._();
  @override
  int get msgId => 278;
  @override
  String get abbrev => "PulseDetectionControl";

  /// Activate or deactivate hardware pulse detection.
  @ImcField("Operation", "op", ImcType.typeUInt8)
  PulseDetectionControlEnumOp get op;
}

/// Fuel Level class
///
/// Report of fuel level.
abstract class FuelLevel extends ImcMessage implements Built<FuelLevel, FuelLevelBuilder> {
  FuelLevel._();
  @override
  int get msgId => 279;
  @override
  String get abbrev => "FuelLevel";

  /// Fuel level percentage of the system.
  @ImcField("Value", "value", ImcType.typeFp32, units: "%")
  double get value;

  /// Percentage level of confidence in the estimation of the amount
  /// of energy in the batteries.
  @ImcField("Confidence Level", "confidence", ImcType.typeFp32, units: "%")
  double get confidence;

  /// Operation mode name and the estimated time available in that
  /// mode in hours. Example: "Motion=1.5"
  @ImcField("Operation Modes", "opmodes", ImcType.typePlaintext, units: "TupleList")
  String get opmodes;
}

/// GPS Navigation Data class
///
/// Report of GPS navigation data.
abstract class GpsNavData extends ImcMessage implements Built<GpsNavData, GpsNavDataBuilder> {
  GpsNavData._();
  @override
  int get msgId => 280;
  @override
  String get abbrev => "GpsNavData";

  /// GPS Millisecond Time of Week.
  @ImcField("GPS Millisecond Time of Week", "itow", ImcType.typeUint32, units: "ms")
  int get itow;

  /// Latitude.
  @ImcField("Latitude", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  /// Longitude.
  @ImcField("Longitude", "lon", ImcType.typeFp64, units: "rad")
  double get lon;

  /// Height Above Ellipsoid.
  @ImcField("Height above ellipsoid", "height_ell", ImcType.typeFp32, units: "m")
  double get height_ell;

  /// Height Above Sea Level.
  @ImcField("Height above sea level", "height_sea", ImcType.typeFp32, units: "m")
  double get height_sea;

  /// Horizontal Accuracy Estimate.
  @ImcField("Horizontal Accuracy Estimate", "hacc", ImcType.typeFp32, units: "m")
  double get hacc;

  /// Vertical Accuracy Estimate.
  @ImcField("Vertical Accuracy Estimate", "vacc", ImcType.typeFp32, units: "m")
  double get vacc;

  /// NED North Velocity.
  @ImcField("NED North Velocity", "vel_n", ImcType.typeFp32, units: "m/s")
  double get vel_n;

  /// NED East Velocity.
  @ImcField("NED East Velocity", "vel_e", ImcType.typeFp32, units: "m/s")
  double get vel_e;

  /// NED Down Velocity.
  @ImcField("NED Down Velocity", "vel_d", ImcType.typeFp32, units: "m/s")
  double get vel_d;

  /// NED Down Velocity.
  @ImcField("Speed (3D)", "speed", ImcType.typeFp32, units: "m/s")
  double get speed;

  /// NED Down Velocity.
  @ImcField("Ground Speed (2D)", "gspeed", ImcType.typeFp32, units: "m/s")
  double get gspeed;

  /// NED Down Velocity.
  @ImcField("Heading (2D)", "heading", ImcType.typeFp32, units: "rad")
  double get heading;

  /// NED Down Velocity.
  @ImcField("Speed Accuracy Estimate", "sacc", ImcType.typeFp32, units: "m/s")
  double get sacc;

  /// Course / Heading Accuracy Estimate.
  @ImcField("Course / Heading Accuracy Estimate", "cacc", ImcType.typeFp32, units: "rad")
  double get cacc;
}

/// Servo Position class
///
/// Actual position of a servo.
abstract class ServoPosition extends ImcMessage implements Built<ServoPosition, ServoPositionBuilder> {
  ServoPosition._();
  @override
  int get msgId => 281;
  @override
  String get abbrev => "ServoPosition";

  /// Servo identifier.
  @ImcField("Identifier", "id", ImcType.typeUInt8)
  int get id;

  /// Value of the servo position.
  @ImcField("Position", "value", ImcType.typeFp32, units: "rad")
  double get value;
}

/// Device State class
///
/// Location of a specific device in the system infrastructure.
abstract class DeviceState extends ImcMessage implements Built<DeviceState, DeviceStateBuilder> {
  DeviceState._();
  @override
  int get msgId => 282;
  @override
  String get abbrev => "DeviceState";

  /// Device's position over the X axis.
  @ImcField("Device Position - X", "x", ImcType.typeFp32, units: "m")
  double get x;

  /// Device's position over the Y axis.
  @ImcField("Device Position - Y", "y", ImcType.typeFp32, units: "m")
  double get y;

  /// Device's position over the Z axis.
  @ImcField("Device Position - Z", "z", ImcType.typeFp32, units: "m")
  double get z;

  /// Device's rotation over the X axis.
  @ImcField("Device Rotation - X", "phi", ImcType.typeFp32, units: "rad")
  double get phi;

  /// Device's rotation over the Y axis.
  @ImcField("Device Rotation - Y", "theta", ImcType.typeFp32, units: "rad")
  double get theta;

  /// Device's rotation over the Z axis.
  @ImcField("Device Rotation - Z", "psi", ImcType.typeFp32, units: "rad")
  double get psi;
}

/// Beam Configuration class
///
/// Beam configuration of the device.
abstract class BeamConfig extends ImcMessage implements Built<BeamConfig, BeamConfigBuilder> {
  BeamConfig._();
  @override
  int get msgId => 283;
  @override
  String get abbrev => "BeamConfig";

  /// Beam width of the instrument. A negative number denotes that
  /// this information is not available or is not applicable.
  @ImcField("Beam Width", "beam_width", ImcType.typeFp32, units: "rad")
  double get beam_width;

  /// Beam height of the instrument. A negative number denotes that
  /// this information is not available or is not applicable.
  @ImcField("Beam Height", "beam_height", ImcType.typeFp32, units: "rad")
  double get beam_height;
}

/// Data Sanity class
///
/// Report sanity or lack of it in the data output by a sensor.
abstract class DataSanity extends ImcMessage implements Built<DataSanity, DataSanityBuilder> {
  DataSanity._();
  @override
  int get msgId => 284;
  @override
  String get abbrev => "DataSanity";

  /// Whether the data is sane or not sane.
  @ImcField("Sanity", "sane", ImcType.typeUInt8)
  DataSanityEnumSane get sane;
}

/// Rhodamine Dye class
///
/// Rhodamine Dye measurement.
abstract class RhodamineDye extends ImcMessage implements Built<RhodamineDye, RhodamineDyeBuilder> {
  RhodamineDye._();
  @override
  int get msgId => 285;
  @override
  String get abbrev => "RhodamineDye";

  /// Amount of rhodamine dye detected.
  @ImcField("Value", "value", ImcType.typeFp32, units: "PPB")
  double get value;
}

/// Crude Oil class
///
/// Crude oil measurement.
abstract class CrudeOil extends ImcMessage implements Built<CrudeOil, CrudeOilBuilder> {
  CrudeOil._();
  @override
  int get msgId => 286;
  @override
  String get abbrev => "CrudeOil";

  /// Amount of crude oil detected.
  @ImcField("Value", "value", ImcType.typeFp32, units: "PPB")
  double get value;
}

/// Fine Oil class
///
/// Fine oil measurement.
abstract class FineOil extends ImcMessage implements Built<FineOil, FineOilBuilder> {
  FineOil._();
  @override
  int get msgId => 287;
  @override
  String get abbrev => "FineOil";

  /// Amount of fine oil detected.
  @ImcField("Value", "value", ImcType.typeFp32, units: "PPB")
  double get value;
}

/// Turbidity class
///
/// Turbidity measurement.
abstract class Turbidity extends ImcMessage implements Built<Turbidity, TurbidityBuilder> {
  Turbidity._();
  @override
  int get msgId => 288;
  @override
  String get abbrev => "Turbidity";

  /// Turbidity reading.
  @ImcField("Value", "value", ImcType.typeFp32, units: "NTU")
  double get value;
}

/// Chlorophyll class
///
/// Chlorophyll measurement.
abstract class Chlorophyll extends ImcMessage implements Built<Chlorophyll, ChlorophyllBuilder> {
  Chlorophyll._();
  @override
  int get msgId => 289;
  @override
  String get abbrev => "Chlorophyll";

  /// Chlorophyll reading.
  @ImcField("Value", "value", ImcType.typeFp32, units: "µg/L")
  double get value;
}

/// Fluorescein class
///
/// Fluorescein measurement.
abstract class Fluorescein extends ImcMessage implements Built<Fluorescein, FluoresceinBuilder> {
  Fluorescein._();
  @override
  int get msgId => 290;
  @override
  String get abbrev => "Fluorescein";

  /// Fluorescein reading.
  @ImcField("Value", "value", ImcType.typeFp32, units: "PPB")
  double get value;
}

/// Phycocyanin class
///
/// Phycocyanin measurement.
abstract class Phycocyanin extends ImcMessage implements Built<Phycocyanin, PhycocyaninBuilder> {
  Phycocyanin._();
  @override
  int get msgId => 291;
  @override
  String get abbrev => "Phycocyanin";

  /// Phycocyanin reading.
  @ImcField("Value", "value", ImcType.typeFp32, units: "PPB")
  double get value;
}

/// Phycoerythrin class
///
/// Phycoerythrin measurement.
abstract class Phycoerythrin extends ImcMessage implements Built<Phycoerythrin, PhycoerythrinBuilder> {
  Phycoerythrin._();
  @override
  int get msgId => 292;
  @override
  String get abbrev => "Phycoerythrin";

  /// Phycoerythrin reading.
  @ImcField("Value", "value", ImcType.typeFp32, units: "PPB")
  double get value;
}

/// GPS Fix RTK class
///
/// Report of an RTK-GPS fix.
abstract class GpsFixRtk extends ImcMessage implements Built<GpsFixRtk, GpsFixRtkBuilder> {
  GpsFixRtk._();
  @override
  int get msgId => 293;
  @override
  String get abbrev => "GpsFixRtk";

  /// Validity of fields.
  @ImcField("Validity", "validity", ImcType.typeUInt16)
  GpsFixRtkBitfieldValidity get validity;

  /// Type of fix.
  @ImcField("Type", "type", ImcType.typeUInt8)
  GpsFixRtkEnumType get type;

  /// GPS Time of Week.
  @ImcField("GPS Time of Week", "tow", ImcType.typeUint32)
  int get tow;

  /// WGS-84 Latitude coordinate of the base.
  @ImcField("Base Latitude WGS-84", "base_lat", ImcType.typeFp64, units: "rad")
  double get base_lat;

  /// WGS-84 Longitude coordinate of the base.
  @ImcField("Base Longitude WGS-84", "base_lon", ImcType.typeFp64, units: "rad")
  double get base_lon;

  /// Height above WGS-84 ellipsoid of the base.
  @ImcField("Base Height above WGS-84 ellipsoid", "base_height", ImcType.typeFp32, units: "m")
  double get base_height;

  /// Baseline North coordinate.
  @ImcField("Position North", "n", ImcType.typeFp32, units: "m")
  double get n;

  /// Baseline East coordinate.
  @ImcField("Position East", "e", ImcType.typeFp32, units: "m")
  double get e;

  /// Baseline Down coordinate.
  @ImcField("Position Down", "d", ImcType.typeFp32, units: "m")
  double get d;

  /// Velocity North coordinate.
  @ImcField("Velocity North", "v_n", ImcType.typeFp32, units: "m/s")
  double get v_n;

  /// Velocity East coordinate.
  @ImcField("Velocity East", "v_e", ImcType.typeFp32, units: "m/s")
  double get v_e;

  /// Velocity Down coordinate.
  @ImcField("Velocity Down", "v_d", ImcType.typeFp32, units: "m/s")
  double get v_d;

  /// Number of satellites used in solution.
  @ImcField("Number of Satellites", "satellites", ImcType.typeUInt8)
  int get satellites;

  /// Number of hypotheses in the Integer Ambiguity Resolution (smaller is better).
  @ImcField("IAR Hypotheses", "iar_hyp", ImcType.typeUInt16)
  int get iar_hyp;

  /// Quality ratio of Integer Ambiguity Resolution (bigger is better).
  @ImcField("IAR Ratio", "iar_ratio", ImcType.typeFp32)
  double get iar_ratio;
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
  ExternalNavData._();
  @override
  int get msgId => 294;
  @override
  String get abbrev => "ExternalNavData";

  /// External Navigation Data.
  @ImcField("Estimated State", "state", ImcType.typeMessage)
  EstimatedState get state;

  /// The type of external navigation data
  @ImcField("Nav Data Type", "type", ImcType.typeUInt8)
  ExternalNavDataEnumType get type;
}

/// Dissolved Oxygen class
///
/// Dissolved Oxygen measurement.
abstract class DissolvedOxygen extends ImcMessage implements Built<DissolvedOxygen, DissolvedOxygenBuilder> {
  DissolvedOxygen._();
  @override
  int get msgId => 295;
  @override
  String get abbrev => "DissolvedOxygen";

  /// Dissolved Oxygen reading.
  @ImcField("Value", "value", ImcType.typeFp32, units: "µM")
  double get value;
}

/// Air Saturation class
///
/// Air Saturation measurement.
abstract class AirSaturation extends ImcMessage implements Built<AirSaturation, AirSaturationBuilder> {
  AirSaturation._();
  @override
  int get msgId => 296;
  @override
  String get abbrev => "AirSaturation";

  /// Air Saturation reading.
  @ImcField("Value", "value", ImcType.typeFp32, units: "%")
  double get value;
}

/// Throttle class
///
/// Throttle e.g. for Plane/Copter .
abstract class Throttle extends ImcMessage implements Built<Throttle, ThrottleBuilder> {
  Throttle._();
  @override
  int get msgId => 297;
  @override
  String get abbrev => "Throttle";

  /// The value of the desired throttle.
  @ImcField("Value", "value", ImcType.typeFp64, units: "%")
  double get value;
}

/// pH class
///
/// Report of pH.
abstract class PH extends ImcMessage implements Built<PH, PHBuilder> {
  PH._();
  @override
  int get msgId => 298;
  @override
  String get abbrev => "PH";

  /// The value of the pH as measured by the sensor.
  @ImcField("Value", "value", ImcType.typeFp32)
  double get value;
}

/// Redox Potential class
///
/// Report of Redox Potential.
abstract class Redox extends ImcMessage implements Built<Redox, RedoxBuilder> {
  Redox._();
  @override
  int get msgId => 299;
  @override
  String get abbrev => "Redox";

  /// The value of the Redox as measured by the sensor.
  @ImcField("Value", "value", ImcType.typeFp32, units: "V")
  double get value;
}

/// Camera Zoom class
///
/// Camera Zoom.
abstract class CameraZoom extends ImcMessage implements Built<CameraZoom, CameraZoomBuilder> {
  CameraZoom._();
  @override
  int get msgId => 300;
  @override
  String get abbrev => "CameraZoom";

  /// The identification number of the destination camera.
  @ImcField("Camera Number", "id", ImcType.typeUInt8)
  int get id;

  /// Absolute zoom level.
  @ImcField("Absolute Zoom Level", "zoom", ImcType.typeUInt8)
  int get zoom;

  /// The zoom action to perform.
  @ImcField("Action", "action", ImcType.typeUInt8)
  CameraZoomEnumAction get action;
}

/// Set Thruster Actuation class
///
/// Actuate directly on a thruster.
abstract class SetThrusterActuation extends ImcMessage implements Built<SetThrusterActuation, SetThrusterActuationBuilder> {
  SetThrusterActuation._();
  @override
  int get msgId => 301;
  @override
  String get abbrev => "SetThrusterActuation";

  /// The identification number of the destination thruster.
  @ImcField("Thruster Number", "id", ImcType.typeUInt8)
  int get id;

  /// Actuation magnitude.
  @ImcField("Actuation Value", "value", ImcType.typeFp32)
  double get value;
}

/// Set Servo Position class
///
/// Set the position of a servo.
abstract class SetServoPosition extends ImcMessage implements Built<SetServoPosition, SetServoPositionBuilder> {
  SetServoPosition._();
  @override
  int get msgId => 302;
  @override
  String get abbrev => "SetServoPosition";

  /// The identification number of the destination servo.
  @ImcField("Identifier", "id", ImcType.typeUInt8)
  int get id;

  /// Actuation magnitude.
  @ImcField("Position", "value", ImcType.typeFp32, units: "rad")
  double get value;
}

/// Set Control Surface Deflection class
///
/// Set the deflection angle of a control surface.
abstract class SetControlSurfaceDeflection extends ImcMessage implements Built<SetControlSurfaceDeflection, SetControlSurfaceDeflectionBuilder> {
  SetControlSurfaceDeflection._();
  @override
  int get msgId => 303;
  @override
  String get abbrev => "SetControlSurfaceDeflection";

  /// The identification number of the destination control surface.
  @ImcField("Identifier", "id", ImcType.typeUInt8)
  int get id;

  /// Actuation magnitude.
  @ImcField("Angle", "angle", ImcType.typeFp32, units: "rad")
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
  RemoteActionsRequest._();
  @override
  int get msgId => 304;
  @override
  String get abbrev => "RemoteActionsRequest";

  /// Operation to perform.
  @ImcField("operation", "op", ImcType.typeUInt8)
  RemoteActionsRequestEnumOp get op;

  /// Example: "Propulsion=Axis,PanTilt=Hat,Lights=Button"
  @ImcField("Actions", "actions", ImcType.typePlaintext, units: "TupleList")
  String get actions;
}

/// Remote Actions class
///
/// This message is used to send a periodic update of values for
/// each remote action. If the action is not on the list the assumed
/// value is 0.
abstract class RemoteActions extends ImcMessage implements Built<RemoteActions, RemoteActionsBuilder> {
  RemoteActions._();
  @override
  int get msgId => 305;
  @override
  String get abbrev => "RemoteActions";

  /// List of values for each remote action (e.g: "Propeller=0.6,PanTilt=0.75,Lights=1").
  @ImcField("Actions", "actions", ImcType.typePlaintext, units: "TupleList")
  String get actions;
}

/// Button Event class
///
/// Event of a specific hardware button.
abstract class ButtonEvent extends ImcMessage implements Built<ButtonEvent, ButtonEventBuilder> {
  ButtonEvent._();
  @override
  int get msgId => 306;
  @override
  String get abbrev => "ButtonEvent";

  /// Button identifier.
  @ImcField("Button", "button", ImcType.typeUInt8)
  int get button;

  /// Value of the button.
  @ImcField("Value", "value", ImcType.typeUInt8)
  int get value;
}

/// LCD Control class
///
/// Control LCD.
abstract class LcdControl extends ImcMessage implements Built<LcdControl, LcdControlBuilder> {
  LcdControl._();
  @override
  int get msgId => 307;
  @override
  String get abbrev => "LcdControl";

  /// The LCD action to perform
  @ImcField("Operation", "op", ImcType.typeUInt8)
  LcdControlEnumOp get op;

  /// Text to be written (if defined write operation).
  @ImcField("Text", "text", ImcType.typePlaintext)
  String get text;
}

/// Power Operation class
///
/// This message allows controlling the system's power lines.
abstract class PowerOperation extends ImcMessage implements Built<PowerOperation, PowerOperationBuilder> {
  PowerOperation._();
  @override
  int get msgId => 308;
  @override
  String get abbrev => "PowerOperation";

  /// Operation type.
  @ImcField("Operation", "op", ImcType.typeUInt8)
  PowerOperationEnumOp get op;

  /// Time remaining to complete operation.
  @ImcField("Time Remaining", "time_remain", ImcType.typeFp32, units: "s")
  double get time_remain;

  /// Scheduled time of operation.
  @ImcField("Scheduled Time", "sched_time", ImcType.typeFp64, units: "s")
  double get sched_time;
}

/// Power Channel Control class
///
/// This message allows controlling power channels.
abstract class PowerChannelControl extends ImcMessage implements Built<PowerChannelControl, PowerChannelControlBuilder> {
  PowerChannelControl._();
  @override
  int get msgId => 309;
  @override
  String get abbrev => "PowerChannelControl";

  /// The name of the power channel.
  @ImcField("Channel Name", "name", ImcType.typePlaintext)
  String get name;

  /// Operation to perform.
  @ImcField("Operation", "op", ImcType.typeUInt8)
  PowerChannelControlEnumOp get op;

  /// Scheduled time of operation.
  @ImcField("Scheduled Time", "sched_time", ImcType.typeFp64, units: "s")
  double get sched_time;
}

/// Query Power Channel State class
///
/// Request the state of power channels.
abstract class QueryPowerChannelState extends ImcMessage implements Built<QueryPowerChannelState, QueryPowerChannelStateBuilder> {
  QueryPowerChannelState._();
  @override
  int get msgId => 310;
  @override
  String get abbrev => "QueryPowerChannelState";
}

/// Power Channel State class
///
/// Message conveying the state of a power channel.
abstract class PowerChannelState extends ImcMessage implements Built<PowerChannelState, PowerChannelStateBuilder> {
  PowerChannelState._();
  @override
  int get msgId => 311;
  @override
  String get abbrev => "PowerChannelState";

  /// Power Channel Name.
  @ImcField("Name", "name", ImcType.typePlaintext)
  String get name;

  /// State of the Power Channel.
  @ImcField("State", "state", ImcType.typeUInt8)
  PowerChannelStateEnumState get state;
}

/// LED Brightness class
///
/// Brightness value of an LED (Light-Emitting Diode).
abstract class LedBrightness extends ImcMessage implements Built<LedBrightness, LedBrightnessBuilder> {
  LedBrightness._();
  @override
  int get msgId => 312;
  @override
  String get abbrev => "LedBrightness";

  /// LED name.
  @ImcField("Name", "name", ImcType.typePlaintext)
  String get name;

  /// Brightness value.
  @ImcField("Value", "value", ImcType.typeUInt8)
  int get value;
}

/// Query LED Brightness class
///
/// Query the brightness of an LED (Light-Emitting Diode). The
/// recipient of this message shall reply with 'LedBrightness'.
abstract class QueryLedBrightness extends ImcMessage implements Built<QueryLedBrightness, QueryLedBrightnessBuilder> {
  QueryLedBrightness._();
  @override
  int get msgId => 313;
  @override
  String get abbrev => "QueryLedBrightness";

  /// LED name.
  @ImcField("Name", "name", ImcType.typePlaintext)
  String get name;
}

/// Set LED Brightness class
///
/// Control the brightness of an LED (Light-Emitting Diode). The
/// recipient of this message shall set the intensity of the LED to
/// the desired 'value' and reply with 'LedBrightness'.
abstract class SetLedBrightness extends ImcMessage implements Built<SetLedBrightness, SetLedBrightnessBuilder> {
  SetLedBrightness._();
  @override
  int get msgId => 314;
  @override
  String get abbrev => "SetLedBrightness";

  /// LED name.
  @ImcField("Name", "name", ImcType.typePlaintext)
  String get name;

  /// Desired brightness value.
  @ImcField("Value", "value", ImcType.typeUInt8)
  int get value;
}

/// Set PWM class
///
/// Set properties of a PWM signal channel.
abstract class SetPWM extends ImcMessage implements Built<SetPWM, SetPWMBuilder> {
  SetPWM._();
  @override
  int get msgId => 315;
  @override
  String get abbrev => "SetPWM";

  /// PWM channel identifier.
  @ImcField("Channel Identifier", "id", ImcType.typeUInt8)
  int get id;

  /// The total period of the PWM signal (sum of active and inactive
  /// time of the PWM).
  @ImcField("Period", "period", ImcType.typeUint32, units: "µs")
  int get period;

  /// The active time of the PWM signal. The duty cycle value must
  /// be less or equal to the period.
  @ImcField("Duty Cycle", "duty_cycle", ImcType.typeUint32, units: "µs")
  int get duty_cycle;
}

/// PWM class
///
/// Properties of a PWM signal channel.
abstract class PWM extends ImcMessage implements Built<PWM, PWMBuilder> {
  PWM._();
  @override
  int get msgId => 316;
  @override
  String get abbrev => "PWM";

  /// PWM channel identifier.
  @ImcField("Channel Identifier", "id", ImcType.typeUInt8)
  int get id;

  /// The total period of the PWM signal (sum of active and inactive
  /// time of the PWM).
  @ImcField("Period", "period", ImcType.typeUint32, units: "µs")
  int get period;

  /// The active time of the PWM signal. The duty cycle value is
  /// less or equal to the period.
  @ImcField("Duty Cycle", "duty_cycle", ImcType.typeUint32, units: "µs")
  int get duty_cycle;
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
  EstimatedState._();
  @override
  int get msgId => 350;
  @override
  String get abbrev => "EstimatedState";

  /// WGS-84 Latitude.
  @ImcField("Latitude (WGS-84)", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  /// WGS-84 Longitude.
  @ImcField("Longitude (WGS-84)", "lon", ImcType.typeFp64, units: "rad")
  double get lon;

  /// Height above the WGS-84 ellipsoid.
  @ImcField("Height (WGS-84)", "height", ImcType.typeFp32, units: "m")
  double get height;

  /// The North offset of the North/East/Down field with respect to
  /// LLH.
  @ImcField("Offset north", "x", ImcType.typeFp32, units: "m")
  double get x;

  /// The East offset of the North/East/Down field with respect to
  /// LLH.
  @ImcField("Offset east", "y", ImcType.typeFp32, units: "m")
  double get y;

  /// The Down offset of the North/East/Down field with respect to
  /// LLH.
  @ImcField("Offset down", "z", ImcType.typeFp32, units: "m")
  double get z;

  /// The phi Euler angle from the vehicle's attitude.
  @ImcField("Rotation over x axis", "phi", ImcType.typeFp32, units: "rad")
  double get phi;

  /// The theta Euler angle from the vehicle's attitude.
  @ImcField("Rotation over y axis", "theta", ImcType.typeFp32, units: "rad")
  double get theta;

  /// The psi Euler angle from the vehicle's attitude.
  @ImcField("Rotation over z axis", "psi", ImcType.typeFp32, units: "rad")
  double get psi;

  /// Body-fixed frame xx axis velocity component.
  @ImcField("Body-Fixed xx Velocity", "u", ImcType.typeFp32, units: "m/s")
  double get u;

  /// Body-fixed frame yy axis velocity component.
  @ImcField("Body-Fixed yy Velocity", "v", ImcType.typeFp32, units: "m/s")
  double get v;

  /// Body-fixed frame zz axis velocity component.
  @ImcField("Body-Fixed zz Velocity", "w", ImcType.typeFp32, units: "m/s")
  double get w;

  /// Ground Velocity xx axis velocity component.
  @ImcField("Ground Velocity X (North)", "vx", ImcType.typeFp32, units: "m/s")
  double get vx;

  /// Ground Velocity yy axis velocity component.
  @ImcField("Ground Velocity Y (East)", "vy", ImcType.typeFp32, units: "m/s")
  double get vy;

  /// Ground Velocity zz axis velocity component.
  @ImcField("Ground Velocity Z (Down)", "vz", ImcType.typeFp32, units: "m/s")
  double get vz;

  /// The angular velocity over body-fixed xx axis (roll).
  @ImcField("Angular Velocity in x", "p", ImcType.typeFp32, units: "rad/s")
  double get p;

  /// The angular velocity over body-fixed yy axis (pitch).
  @ImcField("Angular Velocity in y", "q", ImcType.typeFp32, units: "rad/s")
  double get q;

  /// The angular velocity over body-fixed zz axis (yaw).
  @ImcField("Angular Velocity in z", "r", ImcType.typeFp32, units: "rad/s")
  double get r;

  /// Depth, in meters. To be used by underwater vehicles. Negative
  /// values denote invalid estimates.
  @ImcField("Depth", "depth", ImcType.typeFp32, units: "m")
  double get depth;

  /// Altitude, in meters. Negative values denote invalid estimates.
  @ImcField("Altitude", "alt", ImcType.typeFp32, units: "m")
  double get alt;
}

/// Estimated Stream Velocity class
///
/// The estimated stream velocity, typically for water or air
/// streams.
abstract class EstimatedStreamVelocity extends ImcMessage implements Built<EstimatedStreamVelocity, EstimatedStreamVelocityBuilder> {
  EstimatedStreamVelocity._();
  @override
  int get msgId => 351;
  @override
  String get abbrev => "EstimatedStreamVelocity";

  /// X component (North).
  @ImcField("X component (North)", "x", ImcType.typeFp64, units: "m/s")
  double get x;

  /// Y component (East).
  @ImcField("Y component (East)", "y", ImcType.typeFp64, units: "m/s")
  double get y;

  /// Z component (Down).
  @ImcField("Z component (Down)", "z", ImcType.typeFp64, units: "m/s")
  double get z;
}

/// Indicated Speed class
///
/// Speed measured by the navigation filter.
abstract class IndicatedSpeed extends ImcMessage implements Built<IndicatedSpeed, IndicatedSpeedBuilder> {
  IndicatedSpeed._();
  @override
  int get msgId => 352;
  @override
  String get abbrev => "IndicatedSpeed";

  @ImcField("Measured speed", "value", ImcType.typeFp64, units: "m/s")
  double get value;
}

/// True Speed class
///
/// Ground true speed.
abstract class TrueSpeed extends ImcMessage implements Built<TrueSpeed, TrueSpeedBuilder> {
  TrueSpeed._();
  @override
  int get msgId => 353;
  @override
  String get abbrev => "TrueSpeed";

  @ImcField("Estimated value", "value", ImcType.typeFp64, units: "m/s")
  double get value;
}

/// Navigation Uncertainty class
///
/// Report of navigation uncertainty.
/// This is usually given by the output of the state
/// covariance matrix of an Extended Kalman Filter.
abstract class NavigationUncertainty extends ImcMessage implements Built<NavigationUncertainty, NavigationUncertaintyBuilder> {
  NavigationUncertainty._();
  @override
  int get msgId => 354;
  @override
  String get abbrev => "NavigationUncertainty";

  /// The North offset variance of the North/East/Down
  /// field with respect to LLH.
  @ImcField("Variance - x Position", "x", ImcType.typeFp32, units: "m")
  double get x;

  /// The East offset variance of the North/East/Down
  /// field with respect to LLH.
  @ImcField("Variance - y Position", "y", ImcType.typeFp32, units: "m")
  double get y;

  /// The Down offset variance of the North/East/Down
  /// field with respect to LLH.
  @ImcField("Variance - z Position", "z", ImcType.typeFp32, units: "m")
  double get z;

  /// The phi Euler angle variance from the vehicle's attitude.
  @ImcField("Variance - Roll", "phi", ImcType.typeFp32, units: "rad")
  double get phi;

  /// The theta Euler angle variance from the vehicle's attitude.
  @ImcField("Variance - Pitch", "theta", ImcType.typeFp32, units: "rad")
  double get theta;

  /// The psi Euler angle variance from the vehicle's attitude.
  @ImcField("Variance - Yaw", "psi", ImcType.typeFp32, units: "rad")
  double get psi;

  /// The angular velocity variance over body-fixed xx axis (roll).
  @ImcField("Variance - Gyro. Roll Rate", "p", ImcType.typeFp32, units: "rad/s")
  double get p;

  /// The angular velocity variance over body-fixed yy axis (pitch).
  @ImcField("Variance - Gyro. Pitch Rate", "q", ImcType.typeFp32, units: "rad/s")
  double get q;

  /// The angular velocity variance over body-fixed zz axis (yaw).
  @ImcField("Variance - Gyro. Yaw Rate", "r", ImcType.typeFp32, units: "rad/s")
  double get r;

  /// Body-fixed frame xx axis velocity variance component.
  @ImcField("Variance - Body-Fixed xx Velocity", "u", ImcType.typeFp32, units: "m/s")
  double get u;

  /// Body-fixed frame yy axis velocity variance component.
  @ImcField("Variance - Body-Fixed yy Velocity", "v", ImcType.typeFp32, units: "m/s")
  double get v;

  /// Body-fixed frame zz axis velocity variance component.
  @ImcField("Variance - Body-Fixed ww Velocity", "w", ImcType.typeFp32, units: "m/s")
  double get w;

  /// The psi Euler angle bias variance from the vehicle's sensed attitude.
  @ImcField("Variance - Yaw Bias", "bias_psi", ImcType.typeFp32, units: "rad")
  double get bias_psi;

  /// The angular velocity over body-fixed zz axis bias variance from sensor.
  @ImcField("Variance - Gyro. Yaw Rate Bias", "bias_r", ImcType.typeFp32, units: "rad/s")
  double get bias_r;
}

/// Navigation Data class
///
/// Report of navigation data.
/// This is constituted by data which is not
/// part of the vehicle estimated state but
/// that the user may refer for more information.
abstract class NavigationData extends ImcMessage implements Built<NavigationData, NavigationDataBuilder> {
  NavigationData._();
  @override
  int get msgId => 355;
  @override
  String get abbrev => "NavigationData";

  /// The psi Euler angle bias from the vehicle's sensed attitude.
  @ImcField("Yaw Bias", "bias_psi", ImcType.typeFp32, units: "rad")
  double get bias_psi;

  /// The angular velocity over body-fixed zz axis bias from sensor.
  @ImcField("Gyro. Yaw Rate Bias", "bias_r", ImcType.typeFp32, units: "rad/s")
  double get bias_r;

  /// Course over ground given by NED ground velocity vectors.
  @ImcField("Course Over Ground", "cog", ImcType.typeFp32, units: "rad")
  double get cog;

  /// Continuous psi Euler angle (without normalizations).
  @ImcField("Continuous Yaw", "cyaw", ImcType.typeFp32, units: "rad")
  double get cyaw;

  /// GPS rejection filter level.
  @ImcField("GPS Rejection Filter Level", "lbl_rej_level", ImcType.typeFp32)
  double get lbl_rej_level;

  /// LBL rejection filter level.
  @ImcField("LBL Rejection Filter Level", "gps_rej_level", ImcType.typeFp32)
  double get gps_rej_level;

  /// Custom variable.
  @ImcField("Variance - Custom Variable X", "custom_x", ImcType.typeFp32)
  double get custom_x;

  /// Custom variable.
  @ImcField("Variance - Custom Variable Y", "custom_y", ImcType.typeFp32)
  double get custom_y;

  /// Custom variable.
  @ImcField("Variance - Custom Variable Z", "custom_z", ImcType.typeFp32)
  double get custom_z;
}

/// GPS Fix Rejection class
///
abstract class GpsFixRejection extends ImcMessage implements Built<GpsFixRejection, GpsFixRejectionBuilder> {
  GpsFixRejection._();
  @override
  int get msgId => 356;
  @override
  String get abbrev => "GpsFixRejection";

  /// UTC time of the rejected GPS fix measured in seconds since
  /// 00:00:00 (midnight).
  @ImcField("UTC Time of Fix", "utc_time", ImcType.typeFp32, units: "s")
  double get utc_time;

  /// Reason for rejection.
  @ImcField("Reason", "reason", ImcType.typeUInt8)
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
  LblRangeAcceptance._();
  @override
  int get msgId => 357;
  @override
  String get abbrev => "LblRangeAcceptance";

  /// Identification number of the acoustic transponder from which
  /// the range information was received.
  @ImcField("Beacon Identification Number", "id", ImcType.typeUInt8)
  int get id;

  /// Distance to the acoustic transponder.
  @ImcField("Range", "range", ImcType.typeFp32, units: "m")
  double get range;

  /// Reason for acceptance/rejection.
  @ImcField("Acceptance", "acceptance", ImcType.typeUInt8)
  LblRangeAcceptanceEnumAcceptance get acceptance;
}

/// DVL Rejection class
///
/// When the vehicle uses Doppler Velocity Log sensor, this message
/// notifies that a new measurement was locally rejected by the
/// navigation filter.
abstract class DvlRejection extends ImcMessage implements Built<DvlRejection, DvlRejectionBuilder> {
  DvlRejection._();
  @override
  int get msgId => 358;
  @override
  String get abbrev => "DvlRejection";

  /// This field represents the type of the rejected velocity.
  @ImcField("Type of velocity", "type", ImcType.typeUInt8)
  DvlRejectionBitfieldType get type;

  /// Reason for rejection. There are two types of DVL measurement
  /// filters. An Innovation filter checks the innovation between
  /// the current measurement and the previous measurement within a
  /// certain amount of time and an Absolute filter compares the
  /// measurement with an absolute threshold value. Those filters
  /// are tested using horizontal speed measurements, i.e.,
  /// measurements in the x-axis and in the y-axis.
  @ImcField("Reason", "reason", ImcType.typeUInt8)
  DvlRejectionEnumReason get reason;

  /// Value of the rejection.
  /// If it is an innovation rejection the value is
  /// the absolute difference between the previous
  /// accepted DVL measurement and the current one.
  /// If it is an absolute rejection the value is
  /// the current DVL measurement.
  @ImcField("Value", "value", ImcType.typeFp32, units: "m/s")
  double get value;

  /// Timestep of the rejection.
  /// The timestep is 0 for an absolute rejection
  /// since it is an instantaneous reading. For
  /// innovation rejection it is the time difference
  /// between the previous accepted DVL measurement
  /// and the current one.
  @ImcField("Timestep", "timestep", ImcType.typeFp32, units: "s")
  double get timestep;
}

/// LBL Beacon Position Estimate class
///
/// LBL Beacon position estimate.
abstract class LblEstimate extends ImcMessage implements Built<LblEstimate, LblEstimateBuilder> {
  LblEstimate._();
  @override
  int get msgId => 360;
  @override
  String get abbrev => "LblEstimate";

  /// LBL Beacon configuration estimate.
  @ImcField("LBL Beacon Configuration", "beacon", ImcType.typeMessage)
  LblBeacon get beacon;

  /// The North position offset of the NED field with respect to origin.
  @ImcField("North position", "x", ImcType.typeFp32, units: "m")
  double get x;

  /// The East position offset of the NED field with respect to origin.
  @ImcField("East position", "y", ImcType.typeFp32, units: "m")
  double get y;

  /// The North offset variance of the North/East/Down
  /// field with respect to LLH.
  @ImcField("North position variance", "var_x", ImcType.typeFp32, units: "m")
  double get var_x;

  /// The East offset variance of the North/East/Down
  /// field with respect to LLH.
  @ImcField("East position variance", "var_y", ImcType.typeFp32, units: "m")
  double get var_y;

  /// Distance between current LBL Beacon position and filter estimation.
  @ImcField("Distance", "distance", ImcType.typeFp32, units: "m")
  double get distance;
}

/// Alignment State class
///
/// This message notifies the vehicle is ready for dead-reckoning missions.
abstract class AlignmentState extends ImcMessage implements Built<AlignmentState, AlignmentStateBuilder> {
  AlignmentState._();
  @override
  int get msgId => 361;
  @override
  String get abbrev => "AlignmentState";

  /// Alignment State.
  @ImcField("State", "state", ImcType.typeUInt8)
  AlignmentStateEnumState get state;
}

/// GroupStreamVelocity class
///
/// The stream velocity estimated by a group of systems.
/// Typically for water or air streams.
abstract class GroupStreamVelocity extends ImcMessage implements Built<GroupStreamVelocity, GroupStreamVelocityBuilder> {
  GroupStreamVelocity._();
  @override
  int get msgId => 362;
  @override
  String get abbrev => "GroupStreamVelocity";

  /// X component (North).
  @ImcField("X component (North)", "x", ImcType.typeFp64, units: "m/s")
  double get x;

  /// Y component (East).
  @ImcField("Y component (East)", "y", ImcType.typeFp64, units: "m/s")
  double get y;

  /// Z component (Down).
  @ImcField("Z component (Down)", "z", ImcType.typeFp64, units: "m/s")
  double get z;
}

/// Airflow class
///
/// Airspeed along with airflow angles.
abstract class Airflow extends ImcMessage implements Built<Airflow, AirflowBuilder> {
  Airflow._();
  @override
  int get msgId => 363;
  @override
  String get abbrev => "Airflow";

  /// Airspeed, the 2-norm of the relative velocity.
  @ImcField("Airspeed", "va", ImcType.typeFp32, units: "m/s")
  double get va;

  /// Angle of attack.
  @ImcField("Angle of attack", "aoa", ImcType.typeFp32, units: "rad")
  double get aoa;

  /// Sideslip angle.
  @ImcField("Sideslip angle", "ssa", ImcType.typeFp32, units: "rad")
  double get ssa;
}

/// Desired Heading class
///
/// Desired Heading angle reference value for the control layer.
abstract class DesiredHeading extends ControlCommand implements Built<DesiredHeading, DesiredHeadingBuilder> {
  DesiredHeading._();
  @override
  int get msgId => 400;
  @override
  String get abbrev => "DesiredHeading";

  /// The value of the desired heading angle, relative to true
  /// north, in radians.
  @ImcField("Value", "value", ImcType.typeFp64, units: "rad")
  double get value;
}

/// Desired Z class
///
/// Desired Z reference value for the control layer.
abstract class DesiredZ extends ControlCommand implements Built<DesiredZ, DesiredZBuilder> {
  DesiredZ._();
  @override
  int get msgId => 401;
  @override
  String get abbrev => "DesiredZ";

  /// The value of the desired z reference in meters.
  @ImcField("Value", "value", ImcType.typeFp32, units: "m")
  double get value;

  /// Units of the z reference.
  @ImcField("Z Units", "z_units", ImcType.typeUInt8)
  ZUnitsEnum get z_units;
}

/// Desired Speed class
///
/// Desired Speed reference value for the control layer.
abstract class DesiredSpeed extends ControlCommand implements Built<DesiredSpeed, DesiredSpeedBuilder> {
  DesiredSpeed._();
  @override
  int get msgId => 402;
  @override
  String get abbrev => "DesiredSpeed";

  /// The value of the desired speed, in the scale specified by the
  /// "Speed Units" field.
  @ImcField("Value", "value", ImcType.typeFp64)
  double get value;

  /// Indicates the units used for the speed value.
  @ImcField("Speed Units", "speed_units", ImcType.typeUInt8)
  SpeedUnitsEnum get speed_units;
}

/// Desired Roll class
///
/// Desired Roll angle reference value for the control layer.
abstract class DesiredRoll extends ControlCommand implements Built<DesiredRoll, DesiredRollBuilder> {
  DesiredRoll._();
  @override
  int get msgId => 403;
  @override
  String get abbrev => "DesiredRoll";

  /// The value of the desired roll angle.
  @ImcField("Value", "value", ImcType.typeFp64, units: "rad")
  double get value;
}

/// Desired Pitch class
///
/// Desired Pitch angle reference value for the control layer.
abstract class DesiredPitch extends ControlCommand implements Built<DesiredPitch, DesiredPitchBuilder> {
  DesiredPitch._();
  @override
  int get msgId => 404;
  @override
  String get abbrev => "DesiredPitch";

  /// The value of the desired pitch angle.
  @ImcField("Value", "value", ImcType.typeFp64, units: "rad")
  double get value;
}

/// Desired Vertical Rate class
///
/// Desired Vertical Rate speed reference value for the control layer.
abstract class DesiredVerticalRate extends ImcMessage implements Built<DesiredVerticalRate, DesiredVerticalRateBuilder> {
  DesiredVerticalRate._();
  @override
  int get msgId => 405;
  @override
  String get abbrev => "DesiredVerticalRate";

  /// The value of the desired vertical rate speed in meters per
  /// second.
  @ImcField("Value", "value", ImcType.typeFp64, units: "m/s")
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
  DesiredPath._();
  @override
  int get msgId => 406;
  @override
  String get abbrev => "DesiredPath";

  /// Unsigned integer reference for the scope of the desired path message.
  /// Path reference should only be set by a maneuver.
  /// Should be set to an always increasing reference at the time of dispatching this message.
  /// Lower level path controllers must inherit the same path reference sent by maneuver.
  @ImcField("Path Reference", "path_ref", ImcType.typeUint32)
  int get path_ref;

  /// WGS-84 latitude of start point. This will be ignored unless
  /// the 'START' flag is set.
  @ImcField("Start Point -- Latitude WGS-84", "start_lat", ImcType.typeFp64, units: "rad")
  double get start_lat;

  /// WGS-84 longitude of start point. This will be ignored unless
  /// the 'START' flag is set.
  @ImcField("Start Point -- WGS-84 Longitude", "start_lon", ImcType.typeFp64, units: "rad")
  double get start_lon;

  /// Altitude or depth of start point. This parameter will be
  /// ignored if the 'NO_Z' flag is set, or if the 'START' flag is
  /// not set.
  @ImcField("Start Point -- Z Reference", "start_z", ImcType.typeFp32, units: "m")
  double get start_z;

  /// Units of the start point's z reference.
  @ImcField("Start Point -- Z Units", "start_z_units", ImcType.typeUInt8)
  ZUnitsEnum get start_z_units;

  /// WGS-84 latitude of end point.
  @ImcField("End Point -- WGS84 Latitude", "end_lat", ImcType.typeFp64, units: "rad")
  double get end_lat;

  /// WGS-84 longitude of end point.
  @ImcField("End Point -- WGS-84 Longitude", "end_lon", ImcType.typeFp64, units: "rad")
  double get end_lon;

  /// Depth or altitude for the end point. This parameter will be
  /// ignored if the 'NO_Z' flag is set.
  @ImcField("End Point -- Z Reference", "end_z", ImcType.typeFp32, units: "m")
  double get end_z;

  /// Units of the end point's z reference.
  @ImcField("End Point -- Z Units", "end_z_units", ImcType.typeUInt8)
  ZUnitsEnum get end_z_units;

  /// Maneuver speed reference.
  @ImcField("Speed", "speed", ImcType.typeFp32)
  double get speed;

  /// Speed units.
  @ImcField("Speed Units", "speed_units", ImcType.typeUInt8)
  SpeedUnitsEnum get speed_units;

  /// Radius for loitering at end point. Specify less or equal to 0
  /// for no loitering.
  @ImcField("Loiter -- Radius", "lradius", ImcType.typeFp32, units: "m")
  double get lradius;

  /// Desired Path flags.
  @ImcField("Flags", "flags", ImcType.typeUInt8)
  DesiredPathBitfieldFlags get flags;
}

/// Desired Control class
///
/// Set the desired virtual forces and torques to be applied to the
/// vehicle.
abstract class DesiredControl extends ImcMessage implements Built<DesiredControl, DesiredControlBuilder> {
  DesiredControl._();
  @override
  int get msgId => 407;
  @override
  String get abbrev => "DesiredControl";

  /// Force X along the vehicle's x axis.
  @ImcField("Force along the x axis", "x", ImcType.typeFp64, units: "N")
  double get x;

  /// Force Y along the vehicle's y axis.
  @ImcField("Force along the y axis", "y", ImcType.typeFp64, units: "N")
  double get y;

  /// Force Z along the vehicle's z axis.
  @ImcField("Force along the z axis", "z", ImcType.typeFp64, units: "N")
  double get z;

  /// Torque K about the vehicle's x axis.
  @ImcField("Torque about the x axis", "k", ImcType.typeFp64, units: "Nm")
  double get k;

  /// Torque M about the vehicle's y axis.
  @ImcField("Torque about the y axis", "m", ImcType.typeFp64, units: "Nm")
  double get m;

  /// Torque N about the vehicle's z axis.
  @ImcField("Torque about the z axis", "n", ImcType.typeFp64, units: "Nm")
  double get n;

  /// Desired Control flags.
  @ImcField("Flags", "flags", ImcType.typeUInt8)
  DesiredControlBitfieldFlags get flags;
}

/// Desired Heading Rate class
///
/// Desired Heading Rate speed reference value for the control layer.
abstract class DesiredHeadingRate extends ImcMessage implements Built<DesiredHeadingRate, DesiredHeadingRateBuilder> {
  DesiredHeadingRate._();
  @override
  int get msgId => 408;
  @override
  String get abbrev => "DesiredHeadingRate";

  /// The value of the desired heading rate speed in radians per
  /// second.
  @ImcField("Value", "value", ImcType.typeFp64, units: "rad/s")
  double get value;
}

/// Desired Velocity class
///
/// Desired value for each linear and angular speeds.
abstract class DesiredVelocity extends ImcMessage implements Built<DesiredVelocity, DesiredVelocityBuilder> {
  DesiredVelocity._();
  @override
  int get msgId => 409;
  @override
  String get abbrev => "DesiredVelocity";

  /// Desired speed along the vehicle's x axis.
  @ImcField("Desired Linear Speed in xx", "u", ImcType.typeFp64, units: "m/s")
  double get u;

  /// Desired speed along the vehicle's y axis.
  @ImcField("Desired Linear Speed in yy", "v", ImcType.typeFp64, units: "m/s")
  double get v;

  /// Desired speed along the vehicle's z axis.
  @ImcField("Desired Linear Speed in zz", "w", ImcType.typeFp64, units: "m/s")
  double get w;

  /// Desired speed about the vehicle's x axis.
  @ImcField("Desired Angular Speed in xx", "p", ImcType.typeFp64, units: "m/s")
  double get p;

  /// Desired speed about the vehicle's y axis.
  @ImcField("Desired Angular Speed in yy", "q", ImcType.typeFp64, units: "m/s")
  double get q;

  /// Desired speed about the vehicle's z axis.
  @ImcField("Desired Angular Speed in zz", "r", ImcType.typeFp64, units: "m/s")
  double get r;

  /// Desired Velocity flags.
  @ImcField("Flags", "flags", ImcType.typeUInt8)
  DesiredVelocityBitfieldFlags get flags;
}

/// Path Control State class
///
/// Path control state issued by Path Controller.
abstract class PathControlState extends ImcMessage implements Built<PathControlState, PathControlStateBuilder> {
  PathControlState._();
  @override
  int get msgId => 410;
  @override
  String get abbrev => "PathControlState";

  /// Unsigned integer reference of the desired path message to which this
  /// PathControlState message refers to.
  /// Path reference should only be set by a maneuver, not by path controllers.
  @ImcField("Path Reference", "path_ref", ImcType.typeUint32)
  int get path_ref;

  /// WGS-84 latitude of start point.
  @ImcField("Start Point -- Latitude WGS-84", "start_lat", ImcType.typeFp64, units: "rad")
  double get start_lat;

  /// WGS-84 longitude of start point.
  @ImcField("Start Point -- WGS-84 Longitude", "start_lon", ImcType.typeFp64, units: "rad")
  double get start_lon;

  /// Altitude or depth of start point. This parameter will be
  /// ignored if the 'NO_Z' flag is set, or if the 'START' flag is
  /// not set.
  @ImcField("Start Point -- Z Reference", "start_z", ImcType.typeFp32, units: "m")
  double get start_z;

  /// Units of the start point's z reference.
  @ImcField("Start Point -- Z Units", "start_z_units", ImcType.typeUInt8)
  ZUnitsEnum get start_z_units;

  /// WGS-84 latitude of end point.
  @ImcField("End Point -- Latitude WGS-84", "end_lat", ImcType.typeFp64, units: "rad")
  double get end_lat;

  /// WGS-84 longitude of end point.
  @ImcField("End Point -- WGS-84 Longitude", "end_lon", ImcType.typeFp64, units: "rad")
  double get end_lon;

  /// Depth or altitude for the end point. This parameter should be
  /// ignored if the 'NO_Z' flag is set.
  @ImcField("End Point -- Z Reference", "end_z", ImcType.typeFp32, units: "m")
  double get end_z;

  /// Units of the end point's z reference.
  @ImcField("End Point -- Z Units", "end_z_units", ImcType.typeUInt8)
  ZUnitsEnum get end_z_units;

  /// Radius for loitering at end point.
  /// Will be 0 if no loitering is active.
  @ImcField("Loiter -- Radius", "lradius", ImcType.typeFp32, units: "m")
  double get lradius;

  /// Path control state flags.
  @ImcField("Flags", "flags", ImcType.typeUInt8)
  PathControlStateBitfieldFlags get flags;

  /// Along-Track position value.
  @ImcField("Along Track Position", "x", ImcType.typeFp32, units: "m")
  double get x;

  /// Cross-Track position value.
  @ImcField("Cross Track Position", "y", ImcType.typeFp32, units: "m")
  double get y;

  /// Vertical-Track position value.
  @ImcField("Vertical Track Position", "z", ImcType.typeFp32, units: "m")
  double get z;

  /// Along-Track velocity value.
  @ImcField("Along Track Velocity", "vx", ImcType.typeFp32, units: "m/s")
  double get vx;

  /// Cross-Track velocity value.
  @ImcField("Cross Track Velocity", "vy", ImcType.typeFp32, units: "m/s")
  double get vy;

  /// Vertical-Track velocity value.
  @ImcField("Vertical Track Velocity", "vz", ImcType.typeFp32, units: "m/s")
  double get vz;

  /// Course error value.
  @ImcField("Course Error", "course_error", ImcType.typeFp32, units: "rad")
  double get course_error;

  /// Estimated time to reach target waypoint. The value will be
  /// 65535 if the time is unknown or undefined, and 0 when
  /// loitering.
  @ImcField("Estimated Time to Arrival (ETA)", "eta", ImcType.typeUInt16, units: "s")
  int get eta;
}

/// Allocated Control Torques class
///
/// Control torques allocated to the actuators.
abstract class AllocatedControlTorques extends ImcMessage implements Built<AllocatedControlTorques, AllocatedControlTorquesBuilder> {
  AllocatedControlTorques._();
  @override
  int get msgId => 411;
  @override
  String get abbrev => "AllocatedControlTorques";

  /// Torque K about the vehicle's x axis.
  @ImcField("Torque about the x axis", "k", ImcType.typeFp64, units: "Nm")
  double get k;

  /// Torque M about the vehicle's y axis.
  @ImcField("Torque about the y axis", "m", ImcType.typeFp64, units: "Nm")
  double get m;

  /// Torque N about the vehicle's z axis.
  @ImcField("Torque about the x axis", "n", ImcType.typeFp64, units: "Nm")
  double get n;
}

/// Control Parcel class
///
/// Report of PID control parcels.
abstract class ControlParcel extends ImcMessage implements Built<ControlParcel, ControlParcelBuilder> {
  ControlParcel._();
  @override
  int get msgId => 412;
  @override
  String get abbrev => "ControlParcel";

  /// Proportional parcel value.
  @ImcField("Proportional Parcel", "p", ImcType.typeFp32)
  double get p;

  /// Integral parcel value.
  @ImcField("Integrative Parcel", "i", ImcType.typeFp32)
  double get i;

  /// Derivative parcel value.
  @ImcField("Derivative Parcel", "d", ImcType.typeFp32)
  double get d;

  /// Anti-windup parcel value.
  @ImcField("Anti-Windup Parcel", "a", ImcType.typeFp32)
  double get a;
}

/// Brake class
///
/// Brake the vehicle in some way, i. e., reduce forward speed.
abstract class Brake extends ImcMessage implements Built<Brake, BrakeBuilder> {
  Brake._();
  @override
  int get msgId => 413;
  @override
  String get abbrev => "Brake";

  /// Brake operation.
  @ImcField("Operation", "op", ImcType.typeUInt8)
  BrakeEnumOp get op;
}

/// Desired Linear State class
///
/// Position, velocity and acceleration setpoints in NED
abstract class DesiredLinearState extends ImcMessage implements Built<DesiredLinearState, DesiredLinearStateBuilder> {
  DesiredLinearState._();
  @override
  int get msgId => 414;
  @override
  String get abbrev => "DesiredLinearState";

  /// Desired pos in x.
  @ImcField("Desired pos in xx", "x", ImcType.typeFp64, units: "m")
  double get x;

  /// Desired pos in y.
  @ImcField("Desired pos in yy", "y", ImcType.typeFp64, units: "m")
  double get y;

  /// Desired pos in z.
  @ImcField("Desired pos in zz", "z", ImcType.typeFp64, units: "m")
  double get z;

  /// Desired speed along NED x axis.
  @ImcField("Desired Linear Speed in xx", "vx", ImcType.typeFp64, units: "m/s")
  double get vx;

  /// Desired speed along NED y axis.
  @ImcField("Desired Linear Speed in yy", "vy", ImcType.typeFp64, units: "m/s")
  double get vy;

  /// Desired speed along NED z axis.
  @ImcField("Desired Linear Speed in zz", "vz", ImcType.typeFp64, units: "m/s")
  double get vz;

  /// Desired acceleration along NED x axis.
  @ImcField("Desired Linear Acceleration in xx", "ax", ImcType.typeFp64, units: "m/s/s")
  double get ax;

  /// Desired acceleration along NED y axis.
  @ImcField("Desired Linear Acceleration in yy", "ay", ImcType.typeFp64, units: "m/s/s")
  double get ay;

  /// Desired acceleration along NED z axis.
  @ImcField("Desired Linear Acceleration in zz", "az", ImcType.typeFp64, units: "m/s/s")
  double get az;

  /// Setpoint Flags
  @ImcField("Flags", "flags", ImcType.typeUInt16)
  DesiredLinearStateBitfieldFlags get flags;
}

/// Desired Throttle class
///
/// Desired throttle e.g. for Plane in FBWA-mode.
abstract class DesiredThrottle extends ControlCommand implements Built<DesiredThrottle, DesiredThrottleBuilder> {
  DesiredThrottle._();
  @override
  int get msgId => 415;
  @override
  String get abbrev => "DesiredThrottle";

  /// The value of the desired throttle.
  @ImcField("Value", "value", ImcType.typeFp64, units: "%")
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
  Goto._();
  @override
  int get msgId => 450;
  @override
  String get abbrev => "Goto";

  /// The amount of time the maneuver is allowed to run.
  @ImcField("Timeout", "timeout", ImcType.typeUInt16, units: "s")
  int get timeout;

  /// WGS-84 Latitude of target waypoint.
  @ImcField("Latitude WGS-84", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  /// WGS-84 Longitude of target waypoint.
  @ImcField("Longitude WGS-84", "lon", ImcType.typeFp64, units: "rad")
  double get lon;

  /// Target reference in the z axis. Use z_units to specify
  /// whether z represents depth, altitude or other.
  @ImcField("Z Reference", "z", ImcType.typeFp32, units: "m")
  double get z;

  /// Units of the z reference.
  @ImcField("Z Units", "z_units", ImcType.typeUInt8)
  ZUnitsEnum get z_units;

  /// Maneuver speed reference.
  @ImcField("Speed", "speed", ImcType.typeFp32)
  double get speed;

  /// Speed units.
  @ImcField("Speed Units", "speed_units", ImcType.typeUInt8)
  SpeedUnitsEnum get speed_units;

  /// The phi Euler angle in which the vehicle should set its
  /// attitude. Use '-1' for this field to be
  /// unconsidered. Otherwise the value spans from 0 to 2 Pi.
  @ImcField("Roll", "roll", ImcType.typeFp64, units: "rad")
  double get roll;

  /// The theta Euler angle in which the vehicle should set its
  /// attitude. Use '-1' for this field to be
  /// disconcerted. Otherwise the value spans from 0 to 2 Pi.
  @ImcField("Pitch", "pitch", ImcType.typeFp64, units: "rad")
  double get pitch;

  /// The psi Euler angle in which the vehicle should set its
  /// attitude. Use '-1' for this field to be considered. Otherwise
  /// the value spans from 0 to 2 Pi.
  @ImcField("Yaw", "yaw", ImcType.typeFp64, units: "rad")
  double get yaw;

  /// Custom settings for maneuver.
  @ImcField("Custom settings for maneuver", "custom", ImcType.typePlaintext, units: "TupleList")
  String get custom;
}

/// PopUp Maneuver class
///
/// The Pop Up maneuver makes the vehicle come to the surface at a
/// specific waypoint. This maneuver is restricted to underwater vehicles.
abstract class PopUp extends Maneuver implements Built<PopUp, PopUpBuilder> {
  PopUp._();
  @override
  int get msgId => 451;
  @override
  String get abbrev => "PopUp";

  /// The amount of time the maneuver is allowed to run. If the
  /// maneuver is not completed in the amount of time specified an
  /// error will be generated.
  @ImcField("Timeout", "timeout", ImcType.typeUInt16, units: "s")
  int get timeout;

  /// WGS-84 Latitude.
  @ImcField("Latitude WGS-84", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  /// WGS-84 Longitude.
  @ImcField("Longitude WGS-84", "lon", ImcType.typeFp64, units: "rad")
  double get lon;

  /// Maneuver reference in the z axis. Use z_units to specify
  /// whether z represents depth, altitude or other.
  @ImcField("Z Reference", "z", ImcType.typeFp32, units: "m")
  double get z;

  /// Units of the z reference.
  @ImcField("Z Units", "z_units", ImcType.typeUInt8)
  ZUnitsEnum get z_units;

  /// Maneuver speed reference.
  @ImcField("Speed", "speed", ImcType.typeFp32)
  double get speed;

  /// Speed units.
  @ImcField("Speed Units", "speed_units", ImcType.typeUInt8)
  SpeedUnitsEnum get speed_units;

  /// The duration of this maneuver at surface level.
  /// Only used if flag WAIT_AT_SURFACE is on.
  @ImcField("Duration", "duration", ImcType.typeUInt16, units: "s")
  int get duration;

  /// Radius of the maneuver.
  /// Only used if flag STATION_KEEP is on.
  @ImcField("Radius", "radius", ImcType.typeFp32, units: "m")
  double get radius;

  /// Flags of the maneuver.
  @ImcField("Flags", "flags", ImcType.typeUInt8)
  PopUpBitfieldFlags get flags;

  /// Custom settings for maneuver.
  @ImcField("Custom settings for maneuver", "custom", ImcType.typePlaintext, units: "TupleList")
  String get custom;
}

/// Teleoperation Maneuver class
///
/// The Teleoperation Maneuver lets the vehicle be controlled by an
/// external human operator.
abstract class Teleoperation extends Maneuver implements Built<Teleoperation, TeleoperationBuilder> {
  Teleoperation._();
  @override
  int get msgId => 452;
  @override
  String get abbrev => "Teleoperation";

  /// Custom settings for maneuver.
  @ImcField("Custom settings for maneuver", "custom", ImcType.typePlaintext, units: "TupleList")
  String get custom;
}

/// Loiter Maneuver class
///
/// The Loiter maneuver makes the vehicle circle around a specific
/// waypoint with fixed depth reference.
abstract class Loiter extends Maneuver implements Built<Loiter, LoiterBuilder> {
  Loiter._();
  @override
  int get msgId => 453;
  @override
  String get abbrev => "Loiter";

  /// The timeout indicates the time that an error should occur if
  /// exceeded.
  @ImcField("Timeout", "timeout", ImcType.typeUInt16, units: "s")
  int get timeout;

  /// WGS-84 Latitude coordinate.
  @ImcField("Latitude WGS-84", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  /// WGS-84 Longitude coordinate.
  @ImcField("Longitude WGS-84", "lon", ImcType.typeFp64, units: "rad")
  double get lon;

  /// Maneuver reference in the z axis. Use z_units to specify
  /// whether z represents depth, altitude or other.
  @ImcField("Z Reference", "z", ImcType.typeFp32, units: "m")
  double get z;

  /// Units of the z reference.
  @ImcField("Z Units", "z_units", ImcType.typeUInt8)
  ZUnitsEnum get z_units;

  /// The duration of this maneuver. Use '0' for unlimited duration
  /// time.
  @ImcField("Duration", "duration", ImcType.typeUInt16, units: "s")
  int get duration;

  /// Maneuver speed reference.
  @ImcField("Speed", "speed", ImcType.typeFp32)
  double get speed;

  /// Speed units.
  @ImcField("Speed Units", "speed_units", ImcType.typeUInt8)
  SpeedUnitsEnum get speed_units;

  /// Loiter maneuver type.
  @ImcField("Loiter Type", "type", ImcType.typeUInt8)
  LoiterEnumType get type;

  /// Radius of the maneuver.
  @ImcField("Radius", "radius", ImcType.typeFp32, units: "m")
  double get radius;

  /// Length of the maneuver.
  @ImcField("Length", "length", ImcType.typeFp32, units: "m")
  double get length;

  /// Bearing of the maneuver.
  @ImcField("Bearing", "bearing", ImcType.typeFp64, units: "rad")
  double get bearing;

  /// Desired direction.
  @ImcField("Direction", "direction", ImcType.typeUInt8)
  LoiterEnumDirection get direction;

  /// Custom settings for maneuver.
  @ImcField("Custom settings for maneuver", "custom", ImcType.typePlaintext, units: "TupleList")
  String get custom;
}

/// Idle Maneuver class
///
/// Causes the vehicle to stay idle for some time.
abstract class IdleManeuver extends Maneuver implements Built<IdleManeuver, IdleManeuverBuilder> {
  IdleManeuver._();
  @override
  int get msgId => 454;
  @override
  String get abbrev => "IdleManeuver";

  /// Optional duration of the Idle maneuver. Use '0' for unlimited
  /// duration time (maneuver will have to be explicitly stopped).
  @ImcField("Duration", "duration", ImcType.typeUInt16, units: "s")
  int get duration;

  /// Custom settings for maneuver.
  @ImcField("Custom settings for maneuver", "custom", ImcType.typePlaintext, units: "TupleList")
  String get custom;
}

/// Low Level Control Maneuver class
///
/// Low level maneuver that sends a (heading, roll, speed, ...)
/// reference to a controller of the vehicle and then optionally
/// lingers for some time.
abstract class LowLevelControl extends Maneuver implements Built<LowLevelControl, LowLevelControlBuilder> {
  LowLevelControl._();
  @override
  int get msgId => 455;
  @override
  String get abbrev => "LowLevelControl";

  /// Control command: can be of type DesiredZ, DesiredHeading,
  /// DesiredRoll, DesiredPitch, DesiredSpeed, DesiredThrottle or DesiredPath.
  @ImcField("Control", "control", ImcType.typeMessage)
  ControlCommand get control;

  /// Duration of the control.
  @ImcField("Duration", "duration", ImcType.typeUInt16, units: "s")
  int get duration;

  /// Custom settings for maneuver.
  @ImcField("Custom settings for maneuver", "custom", ImcType.typePlaintext, units: "TupleList")
  String get custom;
}

/// Rows Maneuver class
///
/// Rows maneuver (i.e: lawn mower type maneuver)
abstract class Rows extends Maneuver implements Built<Rows, RowsBuilder> {
  Rows._();
  @override
  int get msgId => 456;
  @override
  String get abbrev => "Rows";

  /// The amount of time the maneuver is allowed to run.
  @ImcField("Timeout", "timeout", ImcType.typeUInt16, units: "s")
  int get timeout;

  /// WGS-84 Latitude of target waypoint.
  @ImcField("Latitude WGS-84", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  /// WGS-84 Longitude of target waypoint.
  @ImcField("Longitude WGS-84", "lon", ImcType.typeFp64, units: "rad")
  double get lon;

  /// Maneuver reference in the z axis. Use z_units to specify
  /// whether z represents depth, altitude or other.
  @ImcField("Z Reference", "z", ImcType.typeFp32, units: "m")
  double get z;

  /// Units of the z reference.
  @ImcField("Z Units", "z_units", ImcType.typeUInt8)
  ZUnitsEnum get z_units;

  /// Maneuver speed reference.
  @ImcField("Speed", "speed", ImcType.typeFp32)
  double get speed;

  /// Speed units.
  @ImcField("Speed Units", "speed_units", ImcType.typeUInt8)
  SpeedUnitsEnum get speed_units;

  /// Rows bearing angle.
  @ImcField("Bearing", "bearing", ImcType.typeFp64, units: "rad")
  double get bearing;

  /// Rows cross angle reference.
  @ImcField("Cross Angle", "cross_angle", ImcType.typeFp64, units: "rad")
  double get cross_angle;

  /// Width of the maneuver.
  @ImcField("Width", "width", ImcType.typeFp32, units: "m")
  double get width;

  /// Length of the maneuver.
  @ImcField("Length", "length", ImcType.typeFp32, units: "m")
  double get length;

  /// Horizontal step.
  @ImcField("Horizontal Step", "hstep", ImcType.typeFp32, units: "m")
  double get hstep;

  /// Desired curve offset.
  @ImcField("Curve Offset", "coff", ImcType.typeUInt8, units: "m")
  int get coff;

  /// Alternation parameter.
  @ImcField("Alternation Parameter", "alternation", ImcType.typeUInt8, units: "%")
  int get alternation;

  /// Maneuver flags.
  @ImcField("Flags", "flags", ImcType.typeUInt8)
  RowsBitfieldFlags get flags;

  /// Custom settings for maneuver.
  @ImcField("Custom settings for maneuver", "custom", ImcType.typePlaintext, units: "TupleList")
  String get custom;
}

/// Follow Path Maneuver class
///
/// Maneuver constituted by a list of Path Points.
abstract class FollowPath extends Maneuver implements Built<FollowPath, FollowPathBuilder> {
  FollowPath._();
  @override
  int get msgId => 457;
  @override
  String get abbrev => "FollowPath";

  /// The amount of time the maneuver is allowed to run.
  @ImcField("Timeout", "timeout", ImcType.typeUInt16, units: "s")
  int get timeout;

  /// WGS-84 Latitude of start point.
  @ImcField("Latitude WGS-84", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  /// WGS-84 Longitude of start point.
  @ImcField("Longitude WGS-84", "lon", ImcType.typeFp64, units: "rad")
  double get lon;

  /// Maneuver reference in the z axis. Use z_units to specify
  /// whether z represents depth, altitude or other.
  @ImcField("Z Reference", "z", ImcType.typeFp32, units: "m")
  double get z;

  /// Units of the z reference.
  @ImcField("Z Units", "z_units", ImcType.typeUInt8)
  ZUnitsEnum get z_units;

  /// Maneuver speed reference.
  @ImcField("Speed", "speed", ImcType.typeFp32)
  double get speed;

  /// Speed units.
  @ImcField("Speed Units", "speed_units", ImcType.typeUInt8)
  SpeedUnitsEnum get speed_units;

  /// List of PathPoint messages, encoding the path points.
  @ImcField("Path Points", "points", ImcType.typeMessageList)
  List<PathPoint> get points;

  /// Custom settings for maneuver.
  @ImcField("Custom settings for maneuver", "custom", ImcType.typePlaintext, units: "TupleList")
  String get custom;
}

/// Path Point class
///
/// Waypoint coordinate of a Follow Path maneuver.
abstract class PathPoint extends ImcMessage implements Built<PathPoint, PathPointBuilder> {
  PathPoint._();
  @override
  int get msgId => 458;
  @override
  String get abbrev => "PathPoint";

  /// The North offset of the North/East/Down coordinate of this
  /// point in relation to the path start point.
  @ImcField("North Offset (m)", "x", ImcType.typeFp32, units: "m")
  double get x;

  /// The East offset of the North/East/Down coordinate of this
  /// point in relation to the path start point.
  @ImcField("East Offset (m)", "y", ImcType.typeFp32, units: "m")
  double get y;

  /// The Down offset of the North/East/Down coordinate of this
  /// point in relation to the path start point.
  @ImcField("Down Offset (m)", "z", ImcType.typeFp32, units: "m")
  double get z;
}

/// Yo-Yo Maneuver class
///
/// A "yo-yo" is a maneuver specifying a vehicle movement to a
/// target waypoint in which depth/altitude varies along the way
/// between two values with a desired pitch angle.
abstract class YoYo extends Maneuver implements Built<YoYo, YoYoBuilder> {
  YoYo._();
  @override
  int get msgId => 459;
  @override
  String get abbrev => "YoYo";

  /// The amount of time the maneuver is allowed to run.
  @ImcField("Timeout", "timeout", ImcType.typeUInt16, units: "s")
  int get timeout;

  /// WGS-84 Latitude of target waypoint.
  @ImcField("Latitude WGS-84", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  /// WGS-84 Longitude of target waypoint.
  @ImcField("Longitude WGS-84", "lon", ImcType.typeFp64, units: "rad")
  double get lon;

  /// Maneuver reference in the z axis.
  /// Use z_units to specify whether z represents depth, altitude or other.
  @ImcField("Z Reference", "z", ImcType.typeFp32, units: "m")
  double get z;

  /// Units of the z reference.
  @ImcField("Z Units", "z_units", ImcType.typeUInt8)
  ZUnitsEnum get z_units;

  /// Amplitude.
  @ImcField("Amplitude", "amplitude", ImcType.typeFp32, units: "m")
  double get amplitude;

  /// Pitch angle for use in ascent/descent.
  @ImcField("Pitch Angle", "pitch", ImcType.typeFp32, units: "rad")
  double get pitch;

  /// Maneuver speed reference.
  @ImcField("Speed", "speed", ImcType.typeFp32)
  double get speed;

  /// Speed units.
  @ImcField("Speed Units", "speed_units", ImcType.typeUInt8)
  SpeedUnitsEnum get speed_units;

  /// Custom settings for maneuver.
  @ImcField("Custom settings for maneuver", "custom", ImcType.typePlaintext, units: "TupleList")
  String get custom;
}

/// Teleoperation Done class
///
/// Notification of completion of a Teleoperation maneuver.
abstract class TeleoperationDone extends ImcMessage implements Built<TeleoperationDone, TeleoperationDoneBuilder> {
  TeleoperationDone._();
  @override
  int get msgId => 460;
  @override
  String get abbrev => "TeleoperationDone";
}

/// Station Keeping class
///
/// The Station Keeping maneuver makes the vehicle come to the surface
/// and then enter a given circular perimeter around a waypoint coordinate
/// for a certain amount of time.
abstract class StationKeeping extends Maneuver implements Built<StationKeeping, StationKeepingBuilder> {
  StationKeeping._();
  @override
  int get msgId => 461;
  @override
  String get abbrev => "StationKeeping";

  /// WGS-84 Latitude.
  @ImcField("Latitude WGS-84", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  /// WGS-84 Longitude.
  @ImcField("Longitude WGS-84", "lon", ImcType.typeFp64, units: "rad")
  double get lon;

  /// Maneuver reference in the z axis. Use z_units to specify
  /// whether z represents depth, altitude or other.
  @ImcField("Z Reference", "z", ImcType.typeFp32, units: "m")
  double get z;

  /// Units of the z reference.
  @ImcField("Z Units", "z_units", ImcType.typeUInt8)
  ZUnitsEnum get z_units;

  /// Radius.
  @ImcField("Radius", "radius", ImcType.typeFp32, units: "m")
  double get radius;

  /// Duration (0 for unlimited).
  @ImcField("Duration", "duration", ImcType.typeUInt16, units: "s")
  int get duration;

  /// The value of the desired speed, in the scale specified
  /// by the "Speed Units" field.
  @ImcField("Speed", "speed", ImcType.typeFp32)
  double get speed;

  /// Indicates the units used for the speed value.
  @ImcField("Speed Units", "speed_units", ImcType.typeUInt8)
  SpeedUnitsEnum get speed_units;

  /// Custom settings for maneuver.
  @ImcField("Custom settings for maneuver", "custom", ImcType.typePlaintext, units: "TupleList")
  String get custom;
}

/// Elevator Maneuver class
///
/// The Elevator maneuver specifies a vehicle to reach a target
/// waypoint using a cruise altitude/depth and then ascend or
/// descend to another target altitude/depth. The ascent/descent
/// slope and radius can also be optionally specified.
abstract class Elevator extends Maneuver implements Built<Elevator, ElevatorBuilder> {
  Elevator._();
  @override
  int get msgId => 462;
  @override
  String get abbrev => "Elevator";

  /// The amount of time the maneuver is allowed to run. If the
  /// maneuver is not completed in the amount of time specified an
  /// error will be generated.
  @ImcField("Timeout", "timeout", ImcType.typeUInt16, units: "s")
  int get timeout;

  /// Flags of the maneuver.
  @ImcField("Flags", "flags", ImcType.typeUInt8)
  ElevatorBitfieldFlags get flags;

  /// WGS-84 Latitude.
  @ImcField("Latitude WGS-84", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  /// WGS-84 Longitude.
  @ImcField("Longitude WGS-84", "lon", ImcType.typeFp64, units: "rad")
  double get lon;

  /// Altitude or depth of start point. This parameter will be
  /// ignored if the 'NO_Z' flag is set, or if the 'START' flag is
  /// not set.
  @ImcField("Start Point -- Z Reference", "start_z", ImcType.typeFp32, units: "m")
  double get start_z;

  /// Units of the start point's z reference.
  @ImcField("Start Point -- Z Units", "start_z_units", ImcType.typeUInt8)
  ZUnitsEnum get start_z_units;

  /// Depth or altitude for the end point.  This parameter will be
  /// ignored if the 'NO_Z' flag is set.
  @ImcField("End Point -- Z Reference", "end_z", ImcType.typeFp32, units: "m")
  double get end_z;

  /// Units of the end point's z reference.
  @ImcField("End Point -- Z Units", "end_z_units", ImcType.typeUInt8)
  ZUnitsEnum get end_z_units;

  /// Radius for use in ascent/descent. If 0 the controller to
  /// should use a custom control strategy.
  @ImcField("Radius", "radius", ImcType.typeFp32, units: "m")
  double get radius;

  /// Maneuver speed.
  @ImcField("Speed", "speed", ImcType.typeFp32)
  double get speed;

  /// Speed units.
  @ImcField("Speed Units", "speed_units", ImcType.typeUInt8)
  SpeedUnitsEnum get speed_units;

  /// Custom settings for maneuver.
  @ImcField("Custom settings for maneuver", "custom", ImcType.typePlaintext, units: "TupleList")
  String get custom;
}

/// Follow Trajectory class
///
/// Maneuver constituted by a list of Trajectory Points.
abstract class FollowTrajectory extends Maneuver implements Built<FollowTrajectory, FollowTrajectoryBuilder> {
  FollowTrajectory._();
  @override
  int get msgId => 463;
  @override
  String get abbrev => "FollowTrajectory";

  /// The amount of time the maneuver is allowed to run.
  @ImcField("Timeout", "timeout", ImcType.typeUInt16, units: "s")
  int get timeout;

  /// WGS-84 Latitude for start point.
  @ImcField("Latitude WGS-84", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  /// WGS-84 Longitude for start point.
  @ImcField("Longitude WGS-84", "lon", ImcType.typeFp64, units: "rad")
  double get lon;

  /// Maneuver reference in the z axis. Use z_units to specify
  /// whether z represents depth, altitude or other.
  @ImcField("Z Reference", "z", ImcType.typeFp32, units: "m")
  double get z;

  /// Units of the z reference.
  @ImcField("Z Units", "z_units", ImcType.typeUInt8)
  ZUnitsEnum get z_units;

  /// Maneuver speed.
  @ImcField("Speed", "speed", ImcType.typeFp32)
  double get speed;

  /// Speed units.
  @ImcField("Speed Units", "speed_units", ImcType.typeUInt8)
  SpeedUnitsEnum get speed_units;

  /// List of trajectory points.
  @ImcField("Trajectory Points", "points", ImcType.typeMessageList)
  List<TrajectoryPoint> get points;

  /// Custom settings for maneuver.
  @ImcField("Custom settings for maneuver", "custom", ImcType.typePlaintext, units: "TupleList")
  String get custom;
}

/// Trajectory Point class
///
/// Waypoint coordinate of a Follow Trajectory maneuver.
abstract class TrajectoryPoint extends ImcMessage implements Built<TrajectoryPoint, TrajectoryPointBuilder> {
  TrajectoryPoint._();
  @override
  int get msgId => 464;
  @override
  String get abbrev => "TrajectoryPoint";

  /// The North offset of the North/East/Down coordinate of this
  /// point in relation to the trajectory start point.
  @ImcField("North Offset (m)", "x", ImcType.typeFp32, units: "m")
  double get x;

  /// The East offset of the North/East/Down coordinate of this
  /// point in relation to the trajectory start point.
  @ImcField("East Offset (m)", "y", ImcType.typeFp32, units: "m")
  double get y;

  /// The Down offset of the North/East/Down coordinate of this
  /// point in relation to the trajectory start point.
  @ImcField("Down Offset (m)", "z", ImcType.typeFp32, units: "m")
  double get z;

  /// The time offset relative to the previous trajectory point.
  @ImcField("Time Offset (s)", "t", ImcType.typeFp32, units: "s")
  double get t;
}

/// Custom Maneuver class
///
/// The Custom Maneuver message may be used as specification of a
/// very specific maneuver not covered by the IMC scope. The
/// settings of the maneuver are just its id, timeout and other
/// settings encoded as a tuple list.
abstract class CustomManeuver extends Maneuver implements Built<CustomManeuver, CustomManeuverBuilder> {
  CustomManeuver._();
  @override
  int get msgId => 465;
  @override
  String get abbrev => "CustomManeuver";

  /// The amount of time the maneuver is allowed to run. If the
  /// maneuver is not completed in the amount of time specified an
  /// error will be generated.
  @ImcField("Timeout", "timeout", ImcType.typeUInt16, units: "s")
  int get timeout;

  /// The maneuver name, used as key by an implementation to bind
  /// the maneuver to the corresponding controller.
  @ImcField("Maneuver Name", "name", ImcType.typePlaintext)
  String get name;

  /// Custom settings for maneuver.
  @ImcField("Custom settings for maneuver", "custom", ImcType.typePlaintext, units: "TupleList")
  String get custom;
}

/// Vehicle Formation class
///
/// Coordinate maneuver using two or more cooperating systems.
abstract class VehicleFormation extends Maneuver implements Built<VehicleFormation, VehicleFormationBuilder> {
  VehicleFormation._();
  @override
  int get msgId => 466;
  @override
  String get abbrev => "VehicleFormation";

  /// WGS-84 Latitude for start point.
  @ImcField("Latitude WGS-84", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  /// WGS-84 Longitude for start point.
  @ImcField("Longitude WGS-84", "lon", ImcType.typeFp64, units: "rad")
  double get lon;

  /// Maneuver reference in the z axis. Use z_units to specify
  /// whether z represents depth, altitude or other.
  @ImcField("Z Reference", "z", ImcType.typeFp32, units: "m")
  double get z;

  /// Units of the z reference.
  @ImcField("Z Units", "z_units", ImcType.typeUInt8)
  ZUnitsEnum get z_units;

  /// Reference speed.
  @ImcField("Speed", "speed", ImcType.typeFp32)
  double get speed;

  /// Reference speed units.
  @ImcField("Speed Units", "speed_units", ImcType.typeUInt8)
  SpeedUnitsEnum get speed_units;

  /// List of trajectory points.
  @ImcField("Trajectory Points", "points", ImcType.typeMessageList)
  List<TrajectoryPoint> get points;

  /// List of formation participants.
  @ImcField("Formation Participants", "participants", ImcType.typeMessageList)
  List<VehicleFormationParticipant> get participants;

  /// Optional start time hint for vehicle formation.
  @ImcField("Start Time", "start_time", ImcType.typeFp64, units: "s")
  double get start_time;

  /// Custom settings for maneuver.
  @ImcField("Custom settings for maneuver", "custom", ImcType.typePlaintext, units: "TupleList")
  String get custom;
}

/// Vehicle Formation Participant class
///
/// Definition of a vehicle participant in a VehicleFormation maneuver.
abstract class VehicleFormationParticipant extends ImcMessage implements Built<VehicleFormationParticipant, VehicleFormationParticipantBuilder> {
  VehicleFormationParticipant._();
  @override
  int get msgId => 467;
  @override
  String get abbrev => "VehicleFormationParticipant";

  /// IMC address of vehicle.
  @ImcField("ID (IMC address)", "vid", ImcType.typeUInt16)
  int get vid;

  /// Distance that the system must respect along the xx axis.
  @ImcField("Formation offset -- Along-track", "off_x", ImcType.typeFp32, units: "m")
  double get off_x;

  /// Distance that the system must respect along the yy axis.
  @ImcField("Formation offset -- Cross-track", "off_y", ImcType.typeFp32, units: "m")
  double get off_y;

  /// Distance that the system must respect along the zz axis.
  @ImcField("Formation offset -- Depth/Altitude", "off_z", ImcType.typeFp32, units: "m")
  double get off_z;
}

/// Stop Maneuver class
///
/// Command used to stop currently executing maneuver.
abstract class StopManeuver extends ImcMessage implements Built<StopManeuver, StopManeuverBuilder> {
  StopManeuver._();
  @override
  int get msgId => 468;
  @override
  String get abbrev => "StopManeuver";
}

/// Register Maneuver class
///
/// Command used to indicate maneuver can be executed in the
/// vehicle.
abstract class RegisterManeuver extends ImcMessage implements Built<RegisterManeuver, RegisterManeuverBuilder> {
  RegisterManeuver._();
  @override
  int get msgId => 469;
  @override
  String get abbrev => "RegisterManeuver";

  /// IMC serialization ID of maneuver type.
  @ImcField("Maneuver ID", "mid", ImcType.typeUInt16)
  int get mid;
}

/// Maneuver Control State class
///
/// Maneuver control state.
abstract class ManeuverControlState extends ImcMessage implements Built<ManeuverControlState, ManeuverControlStateBuilder> {
  ManeuverControlState._();
  @override
  int get msgId => 470;
  @override
  String get abbrev => "ManeuverControlState";

  /// Code indicating maneuver state.
  @ImcField("State", "state", ImcType.typeUInt8)
  ManeuverControlStateEnumState get state;

  /// Estimated time to completion of the maneuver, when executing.
  /// The value will be 65535 if the time is unknown or undefined.
  @ImcField("Completion Time", "eta", ImcType.typeUInt16, units: "s")
  int get eta;

  /// Complementary information, e.g., regarding errors.
  @ImcField("Info", "info", ImcType.typePlaintext)
  String get info;
}

/// Follow System class
///
/// System-following maneuver.
abstract class FollowSystem extends ImcMessage implements Built<FollowSystem, FollowSystemBuilder> {
  FollowSystem._();
  @override
  int get msgId => 471;
  @override
  String get abbrev => "FollowSystem";

  /// IMC address of system to follow.
  @ImcField("System To Follow", "system", ImcType.typeUInt16)
  int get system;

  /// Duration of maneuver, 0 for unlimited duration.
  @ImcField("Duration", "duration", ImcType.typeUInt16, units: "s")
  int get duration;

  /// Reference speed.
  @ImcField("Speed", "speed", ImcType.typeFp32)
  double get speed;

  /// Reference speed units.
  @ImcField("Speed Units", "speed_units", ImcType.typeUInt8)
  SpeedUnitsEnum get speed_units;

  /// Along-track offset.
  @ImcField("Offset -- X", "x", ImcType.typeFp32)
  double get x;

  /// Cross-track offset.
  @ImcField("Offset -- Y", "y", ImcType.typeFp32)
  double get y;

  /// Coordinate z during follow maneuver. Use z_units to specify
  /// whether z represents depth, altitude or other.
  @ImcField("Coordinate -- Z", "z", ImcType.typeFp32)
  double get z;

  /// Units of the z reference.
  @ImcField("Z Units", "z_units", ImcType.typeUInt8)
  ZUnitsEnum get z_units;
}

/// Communications Relay class
///
/// In this maneuver, a vehicle drives to the center of two other
/// systems (a, b) in order to be used as a communications relay.
abstract class CommsRelay extends Maneuver implements Built<CommsRelay, CommsRelayBuilder> {
  CommsRelay._();
  @override
  int get msgId => 472;
  @override
  String get abbrev => "CommsRelay";

  /// WGS-84 Latitude for start point.
  @ImcField("Latitude WGS-84", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  /// WGS-84 Longitude for start point.
  @ImcField("Longitude WGS-84", "lon", ImcType.typeFp64, units: "rad")
  double get lon;

  /// Reference speed.
  @ImcField("Speed", "speed", ImcType.typeFp32)
  double get speed;

  /// Reference speed units.
  @ImcField("Speed Units", "speed_units", ImcType.typeUInt8)
  SpeedUnitsEnum get speed_units;

  /// Duration of maneuver, 0 for unlimited duration.
  @ImcField("Duration", "duration", ImcType.typeUInt16, units: "s")
  int get duration;

  /// The IMC id of the system A.
  @ImcField("System A", "sys_a", ImcType.typeUInt16)
  int get sys_a;

  /// The IMC id of the system B.
  @ImcField("System B", "sys_b", ImcType.typeUInt16)
  int get sys_b;

  /// Move only if the distance to the target is bigger than this
  /// threshold.
  @ImcField("Move threshold", "move_threshold", ImcType.typeFp32, units: "m")
  double get move_threshold;
}

/// Cover Area class
///
/// Given a polygonal area, generates trajectories to cover the
/// area.
abstract class CoverArea extends Maneuver implements Built<CoverArea, CoverAreaBuilder> {
  CoverArea._();
  @override
  int get msgId => 473;
  @override
  String get abbrev => "CoverArea";

  /// WGS-84 Latitude for start point.
  @ImcField("Latitude WGS-84", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  /// WGS-84 Longitude for start point.
  @ImcField("Longitude WGS-84", "lon", ImcType.typeFp64, units: "rad")
  double get lon;

  /// Maneuver reference in the z axis. Use z_units to specify
  /// whether z represents depth, altitude or other.
  @ImcField("Z Reference", "z", ImcType.typeFp32, units: "m")
  double get z;

  /// Units of the z reference.
  @ImcField("Z Units", "z_units", ImcType.typeUInt8)
  ZUnitsEnum get z_units;

  /// Reference speed.
  @ImcField("Speed", "speed", ImcType.typeFp32)
  double get speed;

  /// Reference speed units.
  @ImcField("Speed Units", "speed_units", ImcType.typeUInt8)
  SpeedUnitsEnum get speed_units;

  /// Message list of type PolygonVertex.
  @ImcField("Polygon", "polygon", ImcType.typeMessageList)
  List<PolygonVertex> get polygon;

  /// Additional parameters to be used by the controller.
  @ImcField("CustomParameters", "custom", ImcType.typePlaintext, units: "TupleList")
  String get custom;
}

/// Polygon Vertex class
///
/// This message is used to store the various polygon vertices for
/// CoverArea maneuvers.
abstract class PolygonVertex extends ImcMessage implements Built<PolygonVertex, PolygonVertexBuilder> {
  PolygonVertex._();
  @override
  int get msgId => 474;
  @override
  String get abbrev => "PolygonVertex";

  /// WGS-84 Latitude for start point.
  @ImcField("Latitude WGS-84", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  /// WGS-84 Longitude for start point.
  @ImcField("Longitude WGS-84", "lon", ImcType.typeFp64, units: "rad")
  double get lon;
}

/// Compass Calibration Maneuver class
///
/// This maneuver is a mix between the Loiter maneuver and the YoYo maneuver.
/// The vehicle cirlcles around a specific waypoint with a variable Z
/// reference between a minimum and maximum value.
abstract class CompassCalibration extends Maneuver implements Built<CompassCalibration, CompassCalibrationBuilder> {
  CompassCalibration._();
  @override
  int get msgId => 475;
  @override
  String get abbrev => "CompassCalibration";

  /// The timeout indicates the time that an error should occur if
  /// exceeded.
  @ImcField("Timeout", "timeout", ImcType.typeUInt16, units: "s")
  int get timeout;

  /// WGS-84 Latitude coordinate.
  @ImcField("Latitude WGS-84", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  /// WGS-84 Longitude coordinate.
  @ImcField("Longitude WGS-84", "lon", ImcType.typeFp64, units: "rad")
  double get lon;

  /// Maneuver reference in the z axis. Use z_units to specify
  /// whether z represents depth, altitude or other.
  @ImcField("Z Reference", "z", ImcType.typeFp32, units: "m")
  double get z;

  /// Units of the z reference.
  @ImcField("Z Units", "z_units", ImcType.typeUInt8)
  ZUnitsEnum get z_units;

  /// Pitch angle used to perform the maneuver.
  @ImcField("Pitch", "pitch", ImcType.typeFp32, units: "rad")
  double get pitch;

  /// Yoyo motion amplitude.
  @ImcField("Amplitude", "amplitude", ImcType.typeFp32, units: "m")
  double get amplitude;

  /// The duration of this maneuver. Use '0' for unlimited duration time.
  @ImcField("Duration", "duration", ImcType.typeUInt16, units: "s")
  int get duration;

  /// Maneuver speed.
  @ImcField("Speed", "speed", ImcType.typeFp32)
  double get speed;

  /// Speed units.
  @ImcField("Speed Units", "speed_units", ImcType.typeUInt8)
  SpeedUnitsEnum get speed_units;

  /// Radius of the maneuver.
  @ImcField("Radius", "radius", ImcType.typeFp32, units: "m")
  double get radius;

  /// Direction of the maneuver.
  @ImcField("Direction", "direction", ImcType.typeUInt8)
  CompassCalibrationEnumDirection get direction;

  /// Custom settings for maneuver.
  @ImcField("Custom settings for maneuver", "custom", ImcType.typePlaintext, units: "TupleList")
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
  FormationParameters._();
  @override
  int get msgId => 476;
  @override
  String get abbrev => "FormationParameters";

  /// Name of the formation configuration.
  @ImcField("Formation Name", "formation_name", ImcType.typePlaintext)
  String get formation_name;

  /// Formation reference frame
  @ImcField("Formation Reference Frame", "reference_frame", ImcType.typeUInt8)
  FormationParametersEnumReference_frame get reference_frame;

  /// List of formation participants.
  @ImcField("Formation Participants", "participants", ImcType.typeMessageList)
  List<VehicleFormationParticipant> get participants;

  /// Custom settings for the formation configuration.
  @ImcField("Custom settings for formation", "custom", ImcType.typePlaintext, units: "TupleList")
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
  FormationPlanExecution._();
  @override
  int get msgId => 477;
  @override
  String get abbrev => "FormationPlanExecution";

  /// Target group for the formation plan.
  @ImcField("Target Group Name", "group_name", ImcType.typePlaintext)
  String get group_name;

  /// Name of the formation configuration.
  @ImcField("Formation Name", "formation_name", ImcType.typePlaintext)
  String get formation_name;

  /// The flight plan's identifier.
  /// Flight plan defined to be tracked by the formation leader.
  @ImcField("Formation Plan ID", "plan_id", ImcType.typePlaintext)
  String get plan_id;

  /// Verbose text description of plan.
  @ImcField("Plan Description", "description", ImcType.typePlaintext)
  String get description;

  /// Formation leader flight airspeed during the plan tracking.
  @ImcField("Formation Leader Flight Airspeed", "leader_speed", ImcType.typeFp32, units: "m/s")
  double get leader_speed;

  /// Formation leader flight bank limit during the plan tracking.
  @ImcField("Formation leader flight bank limit", "leader_bank_lim", ImcType.typeFp32, units: "m/s")
  double get leader_bank_lim;

  /// Limit for the position mismatch between real and simulated position, before a maneuver abort is asserted.
  @ImcField("Position mismatch limit", "pos_sim_err_lim", ImcType.typeFp32, units: "m")
  double get pos_sim_err_lim;

  /// Warning threshold for the position mismatch between real and simulated position.
  /// Above this threshold a time-out limit is evaluated to assert a maneuver abort state.
  @ImcField("Position mismatch threshold", "pos_sim_err_wrn", ImcType.typeFp32, units: "m")
  double get pos_sim_err_wrn;

  /// The amount of time the maneuver is allowed to run after the position mismatch threshold is surpassed.
  @ImcField("Position mismatch time-out", "pos_sim_err_timeout", ImcType.typeUInt16, units: "s")
  int get pos_sim_err_timeout;

  /// Threshold for the convergence measure, above which a time-out limit
  /// is evaluated to assert a maneuver abort state.
  @ImcField("Convergence threshold", "converg_max", ImcType.typeFp32, units: "m")
  double get converg_max;

  /// The amount of time the maneuver is allowed to run after the convergence threshold is surpassed.
  @ImcField("Convergence time-out", "converg_timeout", ImcType.typeUInt16, units: "s")
  int get converg_timeout;

  /// The amount of time the maneuver is allowed to run without any update on the other formation vehicles states.
  @ImcField("Communications time-out", "comms_timeout", ImcType.typeUInt16, units: "s")
  int get comms_timeout;

  /// Turbulence limit above which a maneuver abort is asserted.
  @ImcField("Turbulence limit", "turb_lim", ImcType.typeFp32, units: "m/s")
  double get turb_lim;

  /// Custom settings for maneuver.
  @ImcField("Custom settings for maneuver", "custom", ImcType.typePlaintext, units: "TupleList")
  String get custom;
}

/// Follow Reference Maneuver class
///
/// This maneuver follows a reference given by an external entity.
abstract class FollowReference extends Maneuver implements Built<FollowReference, FollowReferenceBuilder> {
  FollowReference._();
  @override
  int get msgId => 478;
  @override
  String get abbrev => "FollowReference";

  /// The IMC identifier of the source system that is allowed to provide references to this maneuver.
  /// If the value ''0xFFFF'' is used, any system is allowed to command references.
  @ImcField("Controlling Source", "control_src", ImcType.typeUInt16)
  int get control_src;

  /// The entity identifier of the entity that is allowed to provide references to this maneuver.
  /// If the value ''0xFF'' is used, any entity is allowed to command references.
  @ImcField("Controlling Entity", "control_ent", ImcType.typeUInt8)
  int get control_ent;

  /// The ammount of time, in seconds, after which the maneuver will be terminated if no reference has
  /// been received. In other words, the controlling entity should send reference updates in shorter periods than
  /// 'timeout'.
  @ImcField("Reference Update Timeout", "timeout", ImcType.typeFp32)
  double get timeout;

  /// Whenever an intended reference is achieved, this maneuver will maintain the vehicle in vaticiny of that
  /// location. The loiter radius is used to define the radius of this (xy) area.
  @ImcField("Loiter Radius", "loiter_radius", ImcType.typeFp32)
  double get loiter_radius;

  /// Similarly to Loiter Radius, this field is used to define the "z" distance considered to be inside the vacitiny of
  /// the target location. An AUV may, for instance, be floating until it more than z units above the current reference,
  /// in which case it actively changes its position in order to achieve the desired depth / altitude.
  @ImcField("Altitude Interval", "altitude_interval", ImcType.typeFp32)
  double get altitude_interval;
}

/// Reference To Follow class
///
abstract class Reference extends ImcMessage implements Built<Reference, ReferenceBuilder> {
  Reference._();
  @override
  int get msgId => 479;
  @override
  String get abbrev => "Reference";

  @ImcField("Flags", "flags", ImcType.typeUInt8)
  ReferenceBitfieldFlags get flags;

  @ImcField("Speed Reference", "speed", ImcType.typeMessage)
  DesiredSpeed get speed;

  @ImcField("Z Reference", "z", ImcType.typeMessage)
  DesiredZ get z;

  @ImcField("Latitude Reference", "lat", ImcType.typeFp64)
  double get lat;

  @ImcField("Longitude Reference", "lon", ImcType.typeFp64)
  double get lon;

  @ImcField("Radius", "radius", ImcType.typeFp32)
  double get radius;
}

/// Follow Reference State class
///
abstract class FollowRefState extends ImcMessage implements Built<FollowRefState, FollowRefStateBuilder> {
  FollowRefState._();
  @override
  int get msgId => 480;
  @override
  String get abbrev => "FollowRefState";

  /// The IMC identifier of the source system that is allowed to control the vehicle.
  /// If the value ''0xFFFF'' is used, any system is allowed to command references.
  @ImcField("Controlling Source", "control_src", ImcType.typeUInt16)
  int get control_src;

  /// The entity identifier of the entity that is allowed to control the vehicle.
  /// If the value ''0xFF'' is used, any entity is allowed to command references.
  @ImcField("Controlling Entity", "control_ent", ImcType.typeUInt8)
  int get control_ent;

  /// Reference currently being followed.
  @ImcField("Reference", "reference", ImcType.typeMessage)
  Reference get reference;

  @ImcField("State", "state", ImcType.typeUInt8)
  FollowRefStateEnumState get state;

  @ImcField("Proximity", "proximity", ImcType.typeUInt8)
  FollowRefStateBitfieldProximity get proximity;
}

/// Formation Monitoring Data class
///
/// Monitoring variables for the formation state and performance.
abstract class FormationMonitor extends ImcMessage implements Built<FormationMonitor, FormationMonitorBuilder> {
  FormationMonitor._();
  @override
  int get msgId => 481;
  @override
  String get abbrev => "FormationMonitor";

  /// Commanded acceleration computed by the formation controller: northward direction.
  /// On the vehicle directional reference frame.
  /// Constrained by the vehicle operational limits.
  @ImcField("Commanded X Acceleration (North)", "ax_cmd", ImcType.typeFp32)
  double get ax_cmd;

  /// Commanded acceleration computed by the formation controller: eastward direction.
  /// On the vehicle directional reference frame.
  /// Constrained by the vehicle operational limits.
  @ImcField("Commanded Y Acceleration (East)", "ay_cmd", ImcType.typeFp32)
  double get ay_cmd;

  /// Commanded acceleration computed by the formation controller: downward direction.
  /// On the vehicle directional reference frame.
  /// Constrained by the vehicle operational limits.
  @ImcField("Commanded Z Acceleration (Down)", "az_cmd", ImcType.typeFp32)
  double get az_cmd;

  /// Desired acceleration computed by the formation controller: northward direction.
  /// On the fixed reference frame.
  @ImcField("Desired X Acceleration (North)", "ax_des", ImcType.typeFp32)
  double get ax_des;

  /// Desired acceleration computed by the formation controller: eastward direction.
  /// On the fixed reference frame.
  @ImcField("Desired Y Acceleration (East)", "ay_des", ImcType.typeFp32)
  double get ay_des;

  /// Desired acceleration computed by the formation controller: downward direction.
  /// On the fixed reference frame.
  @ImcField("Desired Z Acceleration (Down)", "az_des", ImcType.typeFp32)
  double get az_des;

  /// Components of the vehicle desired acceleration.
  /// Overall formation combined virtual error: northward direction.
  /// On the fixed reference frame.
  @ImcField("X Virtual Error (North)", "virt_err_x", ImcType.typeFp32)
  double get virt_err_x;

  /// Components of the vehicle desired acceleration.
  /// Overall formation combined virtual error: eastward direction.
  /// On the fixed reference frame.
  @ImcField("Y Virtual Error (East)", "virt_err_y", ImcType.typeFp32)
  double get virt_err_y;

  /// Components of the vehicle desired acceleration.
  /// Overall formation combined virtual error: downward direction.
  /// On the fixed reference frame.
  @ImcField("Z Virtual Error (Down)", "virt_err_z", ImcType.typeFp32)
  double get virt_err_z;

  /// Components of the vehicle desired acceleration.
  /// Overall formation combined sliding surface feedback: northward direction.
  /// On the fixed reference frame.
  @ImcField("X Sliding Surface Feedback (North)", "surf_fdbk_x", ImcType.typeFp32)
  double get surf_fdbk_x;

  /// Components of the vehicle desired acceleration.
  /// Overall formation combined sliding surface feedback: eastward direction.
  /// On the fixed reference frame.
  @ImcField("Y Sliding Surface Feedback (East)", "surf_fdbk_y", ImcType.typeFp32)
  double get surf_fdbk_y;

  /// Components of the vehicle desired acceleration.
  /// Overall formation combined sliding surface feedback: downward direction.
  /// On the fixed reference frame.
  @ImcField("Z Sliding Surface Feedback (Down)", "surf_fdbk_z", ImcType.typeFp32)
  double get surf_fdbk_z;

  /// Components of the vehicle desired acceleration.
  /// Dynamics uncertainty compensation: northward direction.
  @ImcField("X Uncertainty Compensation (North)", "surf_unkn_x", ImcType.typeFp32)
  double get surf_unkn_x;

  /// Components of the vehicle desired acceleration.
  /// Dynamics uncertainty compensation: eastward direction.
  @ImcField("Y Uncertainty Compensation (East)", "surf_unkn_y", ImcType.typeFp32)
  double get surf_unkn_y;

  /// Components of the vehicle desired acceleration.
  /// Dynamics uncertainty compensation: downward direction.
  @ImcField("Z Uncertainty Compensation (Down)", "surf_unkn_z", ImcType.typeFp32)
  double get surf_unkn_z;

  /// Combined deviation from convergence (sliding surface): North component.
  @ImcField("X Convergence Deviation (North)", "ss_x", ImcType.typeFp32)
  double get ss_x;

  /// Combined deviation from convergence (sliding surface): East component.
  @ImcField("Y Convergence Deviation (East)", "ss_y", ImcType.typeFp32)
  double get ss_y;

  /// Combined deviation from convergence (sliding surface): Down component.
  @ImcField("Z Convergence Deviation (Down)", "ss_z", ImcType.typeFp32)
  double get ss_z;

  /// List of RelativeState messages, encoding the inter-vehicle formation state.
  @ImcField("Relative State", "rel_state", ImcType.typeMessageList)
  List<RelativeState> get rel_state;
}

/// Relative State class
///
/// Inter-vehicle formation state.
abstract class RelativeState extends ImcMessage implements Built<RelativeState, RelativeStateBuilder> {
  RelativeState._();
  @override
  int get msgId => 482;
  @override
  String get abbrev => "RelativeState";

  /// The identifier of the vehicle whose relative state is being reported.
  @ImcField("System Identifier", "s_id", ImcType.typePlaintext)
  String get s_id;

  /// Distance between vehicles.
  @ImcField("Distance", "dist", ImcType.typeFp32)
  double get dist;

  /// Relative position error norm.
  @ImcField("Position Error", "err", ImcType.typeFp32)
  double get err;

  /// Weight in the computation of the desired acceleration.
  @ImcField("Control Importance", "ctrl_imp", ImcType.typeFp32)
  double get ctrl_imp;

  /// Inter-vehicle direction vector: North component.
  @ImcField("Relative Direction X (North)", "rel_dir_x", ImcType.typeFp32)
  double get rel_dir_x;

  /// Inter-vehicle direction vector: East component.
  @ImcField("Relative Direction Y (East)", "rel_dir_y", ImcType.typeFp32)
  double get rel_dir_y;

  /// Inter-vehicle direction vector: Down component.
  @ImcField("Relative Direction Z (Down)", "rel_dir_z", ImcType.typeFp32)
  double get rel_dir_z;

  /// Relative position error: North component.
  @ImcField("X Position Error (North)", "err_x", ImcType.typeFp32)
  double get err_x;

  /// Relative position error: East component.
  @ImcField("Y Position Error (East)", "err_y", ImcType.typeFp32)
  double get err_y;

  /// Relative position error: Down component.
  @ImcField("Z Position Error (Down)", "err_z", ImcType.typeFp32)
  double get err_z;

  /// Relative position error: X component on the inter-vehicle reference frame.
  @ImcField("X Position Error In Relative Frame (North)", "rf_err_x", ImcType.typeFp32)
  double get rf_err_x;

  /// Relative position error: Y component on the inter-vehicle reference frame.
  @ImcField("Y Position Error In Relative Frame (East)", "rf_err_y", ImcType.typeFp32)
  double get rf_err_y;

  /// Relative position error: Z component on the inter-vehicle reference frame.
  @ImcField("Z Position Error In Relative Frame (Down)", "rf_err_z", ImcType.typeFp32)
  double get rf_err_z;

  /// Relative veloctity error: X component in the inter-vehicle reference frame.
  @ImcField("X Velocity Error In Relative Frame (North)", "rf_err_vx", ImcType.typeFp32)
  double get rf_err_vx;

  /// Relative velocity error: Y component on the inter-vehicle reference frame.
  @ImcField("Y Velocity Error In Relative Frame (East)", "rf_err_vy", ImcType.typeFp32)
  double get rf_err_vy;

  /// Relative velocity error: Z component on the inter-vehicle reference frame.
  @ImcField("Z Velocity Error In Relative Frame (Down)", "rf_err_vz", ImcType.typeFp32)
  double get rf_err_vz;

  /// Deviation from convergence (sliding surface): X component on the inter-vehicle reference frame.
  @ImcField("X Convergence Deviation (North)", "ss_x", ImcType.typeFp32)
  double get ss_x;

  /// Deviation from convergence (sliding surface): Y component on the inter-vehicle reference frame.
  @ImcField("Y Convergence Deviation (East)", "ss_y", ImcType.typeFp32)
  double get ss_y;

  /// Deviation from convergence (sliding surface): Z component on the inter-vehicle reference frame.
  @ImcField("Z Convergence Deviation (Down)", "ss_z", ImcType.typeFp32)
  double get ss_z;

  /// Components of the vehicle desired acceleration.
  /// Relative virtual error: northward direction.
  @ImcField("X Virtual Error (North)", "virt_err_x", ImcType.typeFp32)
  double get virt_err_x;

  /// Components of the vehicle desired acceleration.
  /// Relative virtual error: eastward direction.
  @ImcField("Y Virtual Error (East)", "virt_err_y", ImcType.typeFp32)
  double get virt_err_y;

  /// Components of the vehicle desired acceleration.
  /// Relative virtual error: downward direction.
  @ImcField("Z Virtual Error (Down)", "virt_err_z", ImcType.typeFp32)
  double get virt_err_z;
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
  Dislodge._();
  @override
  int get msgId => 483;
  @override
  String get abbrev => "Dislodge";

  /// The amount of time the maneuver is allowed to run.
  @ImcField("Timeout", "timeout", ImcType.typeUInt16, units: "s")
  int get timeout;

  /// Maneuver RPM reference.
  @ImcField("RPM", "rpm", ImcType.typeFp32)
  double get rpm;

  /// Direction to which the vehicle should attempt to unstuck.
  @ImcField("Direction", "direction", ImcType.typeUInt8)
  DislodgeEnumDirection get direction;

  /// Custom settings for maneuver.
  @ImcField("Custom settings for maneuver", "custom", ImcType.typePlaintext, units: "TupleList")
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
  Formation._();
  @override
  int get msgId => 484;
  @override
  String get abbrev => "Formation";

  /// Name of the formation configuration.
  @ImcField("Formation Name", "formation_name", ImcType.typePlaintext)
  String get formation_name;

  /// Indicates if the message is a request, or a reply to a previous request.
  @ImcField("Type", "type", ImcType.typeUInt8)
  FormationEnumType get type;

  /// Operation to perform.
  @ImcField("Operation", "op", ImcType.typeUInt8)
  FormationEnumOp get op;

  /// Target group for the formation plan.
  @ImcField("Target Group Name", "group_name", ImcType.typePlaintext)
  String get group_name;

  /// The flight plan's identifier.
  /// Flight plan defined to be tracked by the formation leader.
  @ImcField("Formation Plan ID", "plan_id", ImcType.typePlaintext)
  String get plan_id;

  /// Verbose text description of plan.
  @ImcField("Plan Description", "description", ImcType.typePlaintext)
  String get description;

  /// Formation reference frame
  @ImcField("Formation Reference Frame", "reference_frame", ImcType.typeUInt8)
  FormationEnumReference_frame get reference_frame;

  /// List of formation participants.
  @ImcField("Formation Participants", "participants", ImcType.typeMessageList)
  List<VehicleFormationParticipant> get participants;

  /// Maximum absolute bank allowed for the formation leader.
  @ImcField("Formation Leader Bank Limit", "leader_bank_lim", ImcType.typeFp32, units: "rad")
  double get leader_bank_lim;

  /// Minimum speed allowed for the formation leader flight.
  @ImcField("Formation Leader Minimum Speed", "leader_speed_min", ImcType.typeFp32, units: "m/s")
  double get leader_speed_min;

  /// Maximum speed allowed for the formation leader flight.
  @ImcField("Formation Leader Maximum Speed", "leader_speed_max", ImcType.typeFp32, units: "m/s")
  double get leader_speed_max;

  /// Minimum altitude allowed for the formation leader flight.
  @ImcField("Formation Leader Minimum Altitude", "leader_alt_min", ImcType.typeFp32, units: "m")
  double get leader_alt_min;

  /// Maximum altitude allowed for the formation leader flight.
  @ImcField("Formation Leader Maximum Altitude", "leader_alt_max", ImcType.typeFp32, units: "m")
  double get leader_alt_max;

  /// Limit for the position mismatch between real and simulated position, before a maneuver abort is asserted.
  @ImcField("Position mismatch limit", "pos_sim_err_lim", ImcType.typeFp32, units: "m")
  double get pos_sim_err_lim;

  /// Warning threshold for the position mismatch between real and simulated position.
  /// Above this threshold a time-out limit is evaluated to assert a maneuver abort state.
  @ImcField("Position mismatch threshold", "pos_sim_err_wrn", ImcType.typeFp32, units: "m")
  double get pos_sim_err_wrn;

  /// The amount of time the maneuver is allowed to run after the position mismatch threshold is surpassed.
  @ImcField("Position mismatch time-out", "pos_sim_err_timeout", ImcType.typeUInt16, units: "s")
  int get pos_sim_err_timeout;

  /// Threshold for the convergence measure, above which a time-out limit
  /// is evaluated to assert a maneuver abort state.
  @ImcField("Convergence threshold", "converg_max", ImcType.typeFp32, units: "m")
  double get converg_max;

  /// The amount of time the maneuver is allowed to run after the convergence threshold is surpassed.
  @ImcField("Convergence time-out", "converg_timeout", ImcType.typeUInt16, units: "s")
  int get converg_timeout;

  /// The amount of time the maneuver is allowed to run without any update on the other formation vehicles states.
  @ImcField("Communications time-out", "comms_timeout", ImcType.typeUInt16, units: "s")
  int get comms_timeout;

  /// Turbulence limit above which a maneuver abort is asserted.
  @ImcField("Turbulence limit", "turb_lim", ImcType.typeFp32, units: "m/s")
  double get turb_lim;

  /// Custom settings for maneuver.
  @ImcField("Custom settings for maneuver", "custom", ImcType.typePlaintext, units: "TupleList")
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
  Launch._();
  @override
  int get msgId => 485;
  @override
  String get abbrev => "Launch";

  /// The amount of time the maneuver is allowed to run.
  @ImcField("Timeout", "timeout", ImcType.typeUInt16, units: "s")
  int get timeout;

  /// WGS-84 Latitude of target waypoint.
  @ImcField("Latitude WGS-84", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  /// WGS-84 Longitude of target waypoint.
  @ImcField("Longitude WGS-84", "lon", ImcType.typeFp64, units: "rad")
  double get lon;

  /// Target reference in the z axis. Use z_units to specify
  /// whether z represents depth, altitude or other.
  @ImcField("Z Reference", "z", ImcType.typeFp32, units: "m")
  double get z;

  /// Units of the z reference.
  @ImcField("Z Units", "z_units", ImcType.typeUInt8)
  ZUnitsEnum get z_units;

  /// Maneuver speed reference.
  @ImcField("Speed", "speed", ImcType.typeFp32)
  double get speed;

  /// Speed units.
  @ImcField("Speed Units", "speed_units", ImcType.typeUInt8)
  SpeedUnitsEnum get speed_units;

  /// Custom settings for maneuver.
  @ImcField("Custom settings for maneuver", "custom", ImcType.typePlaintext, units: "TupleList")
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
  Drop._();
  @override
  int get msgId => 486;
  @override
  String get abbrev => "Drop";

  /// The amount of time the maneuver is allowed to run.
  @ImcField("Timeout", "timeout", ImcType.typeUInt16, units: "s")
  int get timeout;

  /// WGS-84 Latitude of target waypoint.
  @ImcField("Latitude WGS-84", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  /// WGS-84 Longitude of target waypoint.
  @ImcField("Longitude WGS-84", "lon", ImcType.typeFp64, units: "rad")
  double get lon;

  /// Target reference in the z axis. Use z_units to specify
  /// whether z represents depth, altitude or other.
  @ImcField("Z Reference", "z", ImcType.typeFp32, units: "m")
  double get z;

  /// Units of the z reference.
  @ImcField("Z Units", "z_units", ImcType.typeUInt8)
  ZUnitsEnum get z_units;

  /// Maneuver speed reference.
  @ImcField("Speed", "speed", ImcType.typeFp32)
  double get speed;

  /// Speed units.
  @ImcField("Speed Units", "speed_units", ImcType.typeUInt8)
  SpeedUnitsEnum get speed_units;

  /// Custom settings for maneuver.
  @ImcField("Custom settings for maneuver", "custom", ImcType.typePlaintext, units: "TupleList")
  String get custom;
}

/// Scheduled Goto class
///
/// This maneuver is used to command the vehicle to arrive at some destination at
/// a specified absolute time.
/// 
/// The vehicle's speed will vary according to environment conditions and/or maneuver start time.
abstract class ScheduledGoto extends Maneuver implements Built<ScheduledGoto, ScheduledGotoBuilder> {
  ScheduledGoto._();
  @override
  int get msgId => 487;
  @override
  String get abbrev => "ScheduledGoto";

  /// Unix timestamp, in seconds, for the arrival at the destination.
  @ImcField("Time of arrival", "arrival_time", ImcType.typeFp64, units: "s")
  double get arrival_time;

  /// WGS-84 Latitude of target waypoint.
  @ImcField("Destination Latitude WGS-84", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  /// WGS-84 Longitude of target waypoint.
  @ImcField("Destination Longitude WGS-84", "lon", ImcType.typeFp64, units: "rad")
  double get lon;

  /// Target reference in the z axis. Use z_units to specify
  /// whether z represents depth, altitude or other.
  @ImcField("Destination Z Reference", "z", ImcType.typeFp32, units: "m")
  double get z;

  /// Units of the destination z reference.
  @ImcField("Z Units", "z_units", ImcType.typeUInt8)
  ZUnitsEnum get z_units;

  /// Z reference to use while travelling to the destination.
  @ImcField("Travel Z Reference", "travel_z", ImcType.typeFp32, units: "m")
  double get travel_z;

  /// Z reference units to use while travelling to the destination.
  @ImcField("Travel Z Units", "travel_z_units", ImcType.typeUInt8)
  ZUnitsEnum get travel_z_units;

  /// What to do if the vehicle fails to arrive before or at the requested time.
  @ImcField("Delayed Behavior", "delayed", ImcType.typeUInt8)
  ScheduledGotoEnumDelayed get delayed;
}

/// Rows Coverage class
///
/// Rows coverage (i.e: lawn mower type maneuver) but with adaptive cover
abstract class RowsCoverage extends Maneuver implements Built<RowsCoverage, RowsCoverageBuilder> {
  RowsCoverage._();
  @override
  int get msgId => 488;
  @override
  String get abbrev => "RowsCoverage";

  /// WGS-84 Latitude of target waypoint.
  @ImcField("Latitude WGS-84", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  /// WGS-84 Longitude of target waypoint.
  @ImcField("Longitude WGS-84", "lon", ImcType.typeFp64, units: "rad")
  double get lon;

  /// Maneuver reference in the z axis. Use z_units to specify
  /// whether z represents depth, altitude or other.
  @ImcField("Z Reference", "z", ImcType.typeFp32, units: "m")
  double get z;

  /// Units of the z reference.
  @ImcField("Z Units", "z_units", ImcType.typeUInt8)
  ZUnitsEnum get z_units;

  /// Maneuver speed reference.
  @ImcField("Speed", "speed", ImcType.typeFp32)
  double get speed;

  /// Speed units.
  @ImcField("Speed Units", "speed_units", ImcType.typeUInt8)
  SpeedUnitsEnum get speed_units;

  /// Rows bearing angle.
  @ImcField("Bearing", "bearing", ImcType.typeFp64, units: "rad")
  double get bearing;

  /// Rows cross angle reference.
  @ImcField("Cross Angle", "cross_angle", ImcType.typeFp64, units: "rad")
  double get cross_angle;

  /// Width of the maneuver.
  @ImcField("Width", "width", ImcType.typeFp32, units: "m")
  double get width;

  /// Length of the maneuver.
  @ImcField("Length", "length", ImcType.typeFp32, units: "m")
  double get length;

  /// Desired curve offset.
  @ImcField("Curve Offset", "coff", ImcType.typeUInt8, units: "m")
  int get coff;

  /// Angular aperture of the sensor (looking downwards).
  @ImcField("Angular Aperture", "angAperture", ImcType.typeFp32, units: "rad")
  double get angAperture;

  /// Maximum range of the sensor (in meters downwards from the vehicle's position).
  @ImcField("Range", "range", ImcType.typeUInt16, units: "m")
  int get range;

  /// Amount of overlap among different transect surveys.
  @ImcField("Overlap", "overlap", ImcType.typeUInt8, units: "%")
  int get overlap;

  /// Maneuver optional flags.
  @ImcField("Flags", "flags", ImcType.typeUInt8)
  RowsCoverageBitfieldFlags get flags;

  /// Custom settings for maneuver.
  @ImcField("Custom settings for maneuver", "custom", ImcType.typePlaintext, units: "TupleList")
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
  Sample._();
  @override
  int get msgId => 489;
  @override
  String get abbrev => "Sample";

  /// The amount of time the maneuver is allowed to run.
  @ImcField("Timeout", "timeout", ImcType.typeUInt16, units: "s")
  int get timeout;

  /// WGS-84 Latitude of target waypoint.
  @ImcField("Latitude WGS-84", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  /// WGS-84 Longitude of target waypoint.
  @ImcField("Longitude WGS-84", "lon", ImcType.typeFp64, units: "rad")
  double get lon;

  /// Target reference in the z axis. Use z_units to specify
  /// whether z represents depth, altitude or other.
  @ImcField("Z Reference", "z", ImcType.typeFp32, units: "m")
  double get z;

  /// Units of the z reference.
  @ImcField("Z Units", "z_units", ImcType.typeUInt8)
  ZUnitsEnum get z_units;

  /// Maneuver speed reference.
  @ImcField("Speed", "speed", ImcType.typeFp32)
  double get speed;

  /// Speed units.
  @ImcField("Speed Units", "speed_units", ImcType.typeUInt8)
  SpeedUnitsEnum get speed_units;

  /// True when sampling with servo 0.
  @ImcField("Syringe0", "syringe0", ImcType.typeUInt8)
  BooleanEnum get syringe0;

  /// True when sampling with servo 1.
  @ImcField("Syringe1", "syringe1", ImcType.typeUInt8)
  BooleanEnum get syringe1;

  /// True when sampling with servo 2.
  @ImcField("Syringe2", "syringe2", ImcType.typeUInt8)
  BooleanEnum get syringe2;

  /// Custom settings for maneuver.
  @ImcField("Custom settings for maneuver", "custom", ImcType.typePlaintext, units: "TupleList")
  String get custom;
}

/// Image Tracking class
///
/// A "ImageTracking" is a maneuver specifying a particular heading to the
/// detected object.
abstract class ImageTracking extends Maneuver implements Built<ImageTracking, ImageTrackingBuilder> {
  ImageTracking._();
  @override
  int get msgId => 490;
  @override
  String get abbrev => "ImageTracking";
}

/// Takeoff Maneuver class
///
/// Automatic takeoff for UAVs.
/// This maneuver specifies a target waypoint where to takeoff.
/// 
/// Takeoff direction is set from the direction the plane is pointing when the auto takeoff command is started.
/// It will remain that way until the vehicle reaches the target z reference. After that it will go to the target waypoint.
abstract class Takeoff extends Maneuver implements Built<Takeoff, TakeoffBuilder> {
  Takeoff._();
  @override
  int get msgId => 491;
  @override
  String get abbrev => "Takeoff";

  /// WGS-84 Latitude of target waypoint.
  @ImcField("Latitude WGS-84", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  /// WGS-84 Longitude of target waypoint.
  @ImcField("Longitude WGS-84", "lon", ImcType.typeFp64, units: "rad")
  double get lon;

  /// Target altitude or height for the automatic takeoff.
  @ImcField("Z Reference", "z", ImcType.typeFp32, units: "m")
  double get z;

  /// Units of the z reference.
  @ImcField("Z Units", "z_units", ImcType.typeUInt8)
  ZUnitsEnum get z_units;

  /// Maneuver speed reference.
  @ImcField("Speed", "speed", ImcType.typeFp32)
  double get speed;

  /// Speed units.
  @ImcField("Speed Units", "speed_units", ImcType.typeUInt8)
  SpeedUnitsEnum get speed_units;

  /// Minimum pitch angle during automatic takeoff.
  @ImcField("Pitch Angle", "takeoff_pitch", ImcType.typeFp32, units: "rad")
  double get takeoff_pitch;

  /// Custom settings for maneuver.
  @ImcField("Custom settings for maneuver", "custom", ImcType.typePlaintext, units: "TupleList")
  String get custom;
}

/// Land Maneuver class
///
/// Automatic landing on the ground, for UAVs.
/// This maneuver specifies the target touchdown location and sets the final approach based on the maneuver bearing and glide slope parameters.
abstract class Land extends Maneuver implements Built<Land, LandBuilder> {
  Land._();
  @override
  int get msgId => 492;
  @override
  String get abbrev => "Land";

  /// WGS-84 Latitude of touchdown waypoint.
  @ImcField("Latitude WGS-84", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  /// WGS-84 Longitude of touchdown waypoint.
  @ImcField("Longitude WGS-84", "lon", ImcType.typeFp64, units: "rad")
  double get lon;

  /// Target altitude or height for the automatic landing.
  @ImcField("Z Reference", "z", ImcType.typeFp32, units: "m")
  double get z;

  /// Units of the z reference and abort z reference.
  @ImcField("Z Units", "z_units", ImcType.typeUInt8)
  ZUnitsEnum get z_units;

  /// Maneuver speed reference.
  @ImcField("Speed", "speed", ImcType.typeFp32)
  double get speed;

  /// Speed units.
  @ImcField("Speed Units", "speed_units", ImcType.typeUInt8)
  SpeedUnitsEnum get speed_units;

  /// Abort altitude or height. If landing is aborted while executing, the UAV will maintain its course and attempt to climb to the abort z reference.
  @ImcField("Abort Z Reference", "abort_z", ImcType.typeFp32, units: "m")
  double get abort_z;

  /// Land bearing angle.
  @ImcField("Bearing", "bearing", ImcType.typeFp64, units: "rad")
  double get bearing;

  /// Ratio of the distance from the last waypoint to the landing point (touchdown) and the height difference between them.
  @ImcField("Glide Slope", "glide_slope", ImcType.typeUInt8, units: "%")
  int get glide_slope;

  /// Height difference between the last waypoint to the landing point (touchdown).
  @ImcField("Glide Slope Altitude", "glide_slope_alt", ImcType.typeFp32, units: "m")
  double get glide_slope_alt;

  /// Custom settings for maneuver.
  @ImcField("Custom settings for maneuver", "custom", ImcType.typePlaintext, units: "TupleList")
  String get custom;
}

/// Autonomous Section class
///
/// This maneuver triggers an external controller that will guide the vehicle during a specified duration
/// of time or until it relinquishes control using (ManeuverDone). The external controller is allowed to
/// drive the vehicle only inside the specified boundaries.
abstract class AutonomousSection extends Maneuver implements Built<AutonomousSection, AutonomousSectionBuilder> {
  AutonomousSection._();
  @override
  int get msgId => 493;
  @override
  String get abbrev => "AutonomousSection";

  /// WGS-84 Latitude of the initial location.
  @ImcField("Latitude WGS-84", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  /// WGS-84 Longitude of the initial location.
  @ImcField("Longitude WGS-84", "lon", ImcType.typeFp64, units: "rad")
  double get lon;

  /// Maneuver speed reference.
  @ImcField("Speed", "speed", ImcType.typeFp32)
  double get speed;

  /// Speed units.
  @ImcField("Speed Units", "speed_units", ImcType.typeUInt8)
  SpeedUnitsEnum get speed_units;

  @ImcField("Enforced Limits", "limits", ImcType.typeUInt8)
  AutonomousSectionBitfieldLimits get limits;

  /// Maximum depth the autonomous controller is allowed to drive to.
  @ImcField("Maximum depth", "max_depth", ImcType.typeFp64, units: "m")
  double get max_depth;

  /// Minimum altitude the autonomous controller is allowed to drive to.
  @ImcField("Minimum altitude", "min_alt", ImcType.typeFp64, units: "m")
  double get min_alt;

  /// The time after which this maneuver should be stopped (if still active and TIMEOUT is enforced).
  @ImcField("Time Limit", "time_limit", ImcType.typeFp64, units: "s")
  double get time_limit;

  /// The boundaries of the admissable area for this autonomous section.
  @ImcField("Area Limits", "area_limits", ImcType.typeMessageList)
  List<PolygonVertex> get area_limits;

  /// The name of the controlling agent that will be allowed to guide the vehicle during the AutononousSection.
  @ImcField("Controller", "controller", ImcType.typePlaintext)
  String get controller;

  /// Custom settings for maneuver.
  @ImcField("Custom settings for maneuver", "custom", ImcType.typePlaintext, units: "TupleList")
  String get custom;
}

/// Follow Point Maneuver class
///
/// This maneuver behaves by following a point.
abstract class FollowPoint extends Maneuver implements Built<FollowPoint, FollowPointBuilder> {
  FollowPoint._();
  @override
  int get msgId => 494;
  @override
  String get abbrev => "FollowPoint";

  /// The identifier of the point source to follow (via RemoteSensorInfo or EstimatedState).
  @ImcField("Source To Follow", "target", ImcType.typePlaintext)
  String get target;

  /// Use this speed when travelling from afar.
  @ImcField("Maximum Speed", "max_speed", ImcType.typeFp32, units: "m/s")
  double get max_speed;

  /// Indicates the units used for the maximum speed value.
  @ImcField("Speed Units", "speed_units", ImcType.typeUInt8)
  SpeedUnitsEnum get speed_units;

  /// WGS-84 Latitude of maneuver in the map. Ignored during execution.
  @ImcField("Latitude WGS-84", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  /// WGS-84 Longitude of maneuver in the map. Ignored during execution.
  @ImcField("Longitude WGS-84", "lon", ImcType.typeFp64, units: "rad")
  double get lon;

  /// Use z_units to specify whether z represents depth, altitude or other.
  @ImcField("Z", "z", ImcType.typeFp32, units: "m")
  double get z;

  /// Units of the z reference.
  @ImcField("Z Units", "z_units", ImcType.typeUInt8)
  ZUnitsEnum get z_units;

  /// Custom settings for maneuver.
  @ImcField("Custom settings for maneuver", "custom", ImcType.typePlaintext, units: "TupleList")
  String get custom;
}

/// Alignment Maneuver class
///
/// An "Alignment" is a maneuver specifying a movement of the vehicle to a
/// target waypoint intended to control activation of an IMU/INS in order
/// to start aligning navigation for more precise dead reckoning operation.
abstract class Alignment extends Maneuver implements Built<Alignment, AlignmentBuilder> {
  Alignment._();
  @override
  int get msgId => 495;
  @override
  String get abbrev => "Alignment";

  /// The amount of time the maneuver is allowed to run.
  @ImcField("Timeout", "timeout", ImcType.typeUInt16, units: "s")
  int get timeout;

  /// WGS-84 Latitude of target waypoint.
  @ImcField("Latitude WGS-84", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  /// WGS-84 Longitude of target waypoint.
  @ImcField("Longitude WGS-84", "lon", ImcType.typeFp64, units: "rad")
  double get lon;

  /// Maneuver speed reference.
  @ImcField("Speed", "speed", ImcType.typeFp32)
  double get speed;

  /// Speed units.
  @ImcField("Speed Units", "speed_units", ImcType.typeUInt8)
  SpeedUnitsEnum get speed_units;

  /// Custom settings for maneuver.
  @ImcField("Custom settings for maneuver", "custom", ImcType.typePlaintext, units: "TupleList")
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
  StationKeepingExtended._();
  @override
  int get msgId => 496;
  @override
  String get abbrev => "StationKeepingExtended";

  /// WGS-84 Latitude.
  @ImcField("Latitude WGS-84", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  /// WGS-84 Longitude.
  @ImcField("Longitude WGS-84", "lon", ImcType.typeFp64, units: "rad")
  double get lon;

  /// Maneuver reference in the z axis. Use z_units to specify
  /// whether z represents depth, altitude or other.
  @ImcField("Z Reference", "z", ImcType.typeFp32, units: "m")
  double get z;

  /// Units of the z reference.
  @ImcField("Z Units", "z_units", ImcType.typeUInt8)
  ZUnitsEnum get z_units;

  /// Radius.
  @ImcField("Radius", "radius", ImcType.typeFp32, units: "m")
  double get radius;

  /// Duration (0 for unlimited).
  @ImcField("Duration", "duration", ImcType.typeUInt16, units: "s")
  int get duration;

  /// The value of the desired speed, in the scale specified
  /// by the "Speed Units" field.
  @ImcField("Speed", "speed", ImcType.typeFp32)
  double get speed;

  /// Indicates the units used for the speed value.
  @ImcField("Speed Units", "speed_units", ImcType.typeUInt8)
  SpeedUnitsEnum get speed_units;

  /// The period at which the vehicle will popup to report its position.
  /// Only used if flag KEEP_SAFE is on.
  @ImcField("PopUp Period", "popup_period", ImcType.typeUInt16, units: "s")
  int get popup_period;

  /// The duration of the station keeping at surface level when it pops up.
  /// Only used if flag KEEP_SAFE is on.
  @ImcField("PopUp Duration", "popup_duration", ImcType.typeUInt16, units: "s")
  int get popup_duration;

  /// Flags of the maneuver.
  @ImcField("Flags", "flags", ImcType.typeUInt8)
  StationKeepingExtendedBitfieldFlags get flags;

  /// Custom settings for maneuver.
  @ImcField("Custom settings for maneuver", "custom", ImcType.typePlaintext, units: "TupleList")
  String get custom;
}

/// Magnetometer Maneuver class
///
/// Magnetometer calibration maneuver (i.e: one square pattern
/// in one direction, a second square in the opposite direction)
abstract class Magnetometer extends Maneuver implements Built<Magnetometer, MagnetometerBuilder> {
  Magnetometer._();
  @override
  int get msgId => 499;
  @override
  String get abbrev => "Magnetometer";

  /// The amount of time the maneuver is allowed to run.
  @ImcField("Timeout", "timeout", ImcType.typeUInt16, units: "s")
  int get timeout;

  /// WGS-84 Latitude of target waypoint.
  @ImcField("Latitude WGS-84", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  /// WGS-84 Longitude of target waypoint.
  @ImcField("Longitude WGS-84", "lon", ImcType.typeFp64, units: "rad")
  double get lon;

  /// Maneuver reference in the z axis. Use z_units to specify
  /// whether z represents depth, altitude or other.
  @ImcField("Z Reference", "z", ImcType.typeFp32, units: "m")
  double get z;

  /// Units of the z reference.
  @ImcField("Z Units", "z_units", ImcType.typeUInt8)
  ZUnitsEnum get z_units;

  /// Maneuver speed reference.
  @ImcField("Speed", "speed", ImcType.typeFp32)
  double get speed;

  /// Speed units.
  @ImcField("Speed Units", "speed_units", ImcType.typeUInt8)
  SpeedUnitsEnum get speed_units;

  /// Rows bearing angle.
  @ImcField("Bearing", "bearing", ImcType.typeFp64, units: "rad")
  double get bearing;

  /// Width of the maneuver.
  @ImcField("Width", "width", ImcType.typeFp32, units: "m")
  double get width;

  /// Desired direction.
  @ImcField("Direction", "direction", ImcType.typeUInt8)
  MagnetometerEnumDirection get direction;

  /// Custom settings for maneuver.
  @ImcField("Custom settings for maneuver", "custom", ImcType.typePlaintext, units: "TupleList")
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
  VehicleState._();
  @override
  int get msgId => 500;
  @override
  String get abbrev => "VehicleState";

  /// The overall operation mode.
  @ImcField("Operation Mode", "op_mode", ImcType.typeUInt8)
  VehicleStateEnumOp_mode get op_mode;

  /// Error count for monitored entitites.
  @ImcField("Errors -- Count", "error_count", ImcType.typeUInt8)
  int get error_count;

  /// The monitored entities with error conditions. This is a comma
  /// separated list of entity names.
  @ImcField("Errors -- Entities", "error_ents", ImcType.typePlaintext)
  String get error_ents;

  /// Type of maneuver being executed, when in MANEUVER mode. The
  /// value is the IMC serialization ID of the corresponding
  /// maneuver.
  @ImcField("Maneuver -- Type", "maneuver_type", ImcType.typeUInt16)
  int get maneuver_type;

  /// Start time of maneuver being executed (Epoch time), when in
  /// MANEUVER mode.
  @ImcField("Maneuver -- Start Time", "maneuver_stime", ImcType.typeFp64, units: "s")
  double get maneuver_stime;

  /// Estimated time for maneuver completion. The value will be
  /// 65535 if the time is unknown or undefined.
  @ImcField("Maneuver -- ETA", "maneuver_eta", ImcType.typeUInt16, units: "s")
  int get maneuver_eta;

  /// Enabled control loops.
  @ImcField("Control Loops", "control_loops", ImcType.typeUint32)
  CLoopsMaskBitfield get control_loops;

  @ImcField("Flags", "flags", ImcType.typeUInt8)
  VehicleStateBitfieldFlags get flags;

  /// Description of last error.
  @ImcField("Last Error -- Description", "last_error", ImcType.typePlaintext)
  String get last_error;

  /// Time of last error (Epoch time).
  @ImcField("Last Error -- Time", "last_error_time", ImcType.typeFp64, units: "s")
  double get last_error_time;
}

/// Vehicle Command class
///
/// Vehicle command.
abstract class VehicleCommand extends ImcMessage implements Built<VehicleCommand, VehicleCommandBuilder> {
  VehicleCommand._();
  @override
  int get msgId => 501;
  @override
  String get abbrev => "VehicleCommand";

  @ImcField("Type", "type", ImcType.typeUInt8)
  VehicleCommandEnumType get type;

  /// Request ID
  @ImcField("Request ID", "request_id", ImcType.typeUInt16)
  int get request_id;

  /// The type of command/action to be performed
  @ImcField("Command", "command", ImcType.typeUInt8)
  VehicleCommandEnumCommand get command;

  /// Maneuver to be executed (for 'EXEC_MANEUVER' command)
  @ImcField("Maneuver", "maneuver", ImcType.typeMessage)
  Maneuver get maneuver;

  /// Amount of time to calibrate
  @ImcField("Calibration Time", "calib_time", ImcType.typeUInt16, units: "s")
  int get calib_time;

  /// Complementary human-readable information for replies.
  @ImcField("Info", "info", ImcType.typePlaintext)
  String get info;
}

/// Monitor Entity State class
///
/// Controls monitoring of entity states in the vehicle.
abstract class MonitorEntityState extends ImcMessage implements Built<MonitorEntityState, MonitorEntityStateBuilder> {
  MonitorEntityState._();
  @override
  int get msgId => 502;
  @override
  String get abbrev => "MonitorEntityState";

  /// Command.
  @ImcField("Command", "command", ImcType.typeUInt8)
  MonitorEntityStateEnumCommand get command;

  /// Comma separated list of entity names.
  @ImcField("Entity Names", "entities", ImcType.typePlaintext)
  String get entities;
}

/// Entity Monitoring State class
///
abstract class EntityMonitoringState extends ImcMessage implements Built<EntityMonitoringState, EntityMonitoringStateBuilder> {
  EntityMonitoringState._();
  @override
  int get msgId => 503;
  @override
  String get abbrev => "EntityMonitoringState";

  /// Number of entitities being monitored.
  @ImcField("Entities monitored - Count", "mcount", ImcType.typeUInt8)
  int get mcount;

  /// Comma separated list of all entity names being monitored.
  @ImcField("Entities monitored - Names", "mnames", ImcType.typePlaintext)
  String get mnames;

  /// Number of entitities with non-critical errors.
  @ImcField("Entities with errors - Count", "ecount", ImcType.typeUInt8)
  int get ecount;

  /// Comma separated list of all entity names with non-critical
  /// errors.
  @ImcField("Entities with errors - Names", "enames", ImcType.typePlaintext)
  String get enames;

  /// Number of entitities with critical errors.
  @ImcField("Entities with critical errors - Count", "ccount", ImcType.typeUInt8)
  int get ccount;

  /// Comma separated list of all entity names with critical errors.
  @ImcField("Entities with critical errors - Names", "cnames", ImcType.typePlaintext)
  String get cnames;

  /// Description of last error.
  @ImcField("Last Error -- Description", "last_error", ImcType.typePlaintext)
  String get last_error;

  /// Time of last error (Epoch time).
  @ImcField("Last Error -- Time", "last_error_time", ImcType.typeFp64, units: "s")
  double get last_error_time;
}

/// Operational Limits class
///
/// Definition of operational limits.
abstract class OperationalLimits extends ImcMessage implements Built<OperationalLimits, OperationalLimitsBuilder> {
  OperationalLimits._();
  @override
  int get msgId => 504;
  @override
  String get abbrev => "OperationalLimits";

  @ImcField("Field Indicator Mask", "mask", ImcType.typeUInt8)
  OpLimitsMaskBitfield get mask;

  @ImcField("Maximum Depth", "max_depth", ImcType.typeFp32, units: "m")
  double get max_depth;

  @ImcField("Minimum Altitude", "min_altitude", ImcType.typeFp32, units: "m")
  double get min_altitude;

  @ImcField("Maximum Altitude", "max_altitude", ImcType.typeFp32, units: "m")
  double get max_altitude;

  @ImcField("Minimum Speed", "min_speed", ImcType.typeFp32, units: "m/s")
  double get min_speed;

  @ImcField("Maximum Speed", "max_speed", ImcType.typeFp32, units: "m/s")
  double get max_speed;

  @ImcField("Maximum Vertical Rate", "max_vrate", ImcType.typeFp32, units: "m/s")
  double get max_vrate;

  @ImcField("Area -- WGS-84 Latitude", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  @ImcField("Area -- WGS-84 Longitude", "lon", ImcType.typeFp64, units: "rad")
  double get lon;

  @ImcField("Area -- Orientation", "orientation", ImcType.typeFp32, units: "rad")
  double get orientation;

  @ImcField("Area -- Width", "width", ImcType.typeFp32, units: "m")
  double get width;

  @ImcField("Area -- Length", "length", ImcType.typeFp32, units: "m")
  double get length;
}

/// Get Operational Limits class
///
/// Command to obtain the operational limits in use by the vehicle.
abstract class GetOperationalLimits extends ImcMessage implements Built<GetOperationalLimits, GetOperationalLimitsBuilder> {
  GetOperationalLimits._();
  @override
  int get msgId => 505;
  @override
  String get abbrev => "GetOperationalLimits";
}

/// Calibration class
///
/// Initiate overall calibration of a vehicle.
abstract class Calibration extends ImcMessage implements Built<Calibration, CalibrationBuilder> {
  Calibration._();
  @override
  int get msgId => 506;
  @override
  String get abbrev => "Calibration";

  /// Duration of calibration.
  @ImcField("Duration", "duration", ImcType.typeUInt16, units: "s")
  int get duration;
}

/// Control Loops class
///
/// Enable or disable control loops.
abstract class ControlLoops extends ImcMessage implements Built<ControlLoops, ControlLoopsBuilder> {
  ControlLoops._();
  @override
  int get msgId => 507;
  @override
  String get abbrev => "ControlLoops";

  @ImcField("Enable", "enable", ImcType.typeUInt8)
  ControlLoopsEnumEnable get enable;

  /// Control loop mask.
  @ImcField("Control Loop Mask", "mask", ImcType.typeUint32)
  CLoopsMaskBitfield get mask;

  /// Unsigned integer reference for the scope of the control loop message.
  /// Scope reference should only be set by a maneuver.
  /// Should be set to an always increasing reference at the time of dispatching this message.
  /// Lower level controllers must inherit the same scope reference sent by maneuver.
  /// This same scope reference must be sent down to lower control layers.
  @ImcField("Scope Time Reference", "scope_ref", ImcType.typeUint32)
  int get scope_ref;
}

/// Vehicle Medium class
///
/// Detect current vehicle medium.
abstract class VehicleMedium extends ImcMessage implements Built<VehicleMedium, VehicleMediumBuilder> {
  VehicleMedium._();
  @override
  int get msgId => 508;
  @override
  String get abbrev => "VehicleMedium";

  /// Current medium.
  @ImcField("Medium", "medium", ImcType.typeUInt8)
  VehicleMediumEnumMedium get medium;
}

/// Collision class
///
/// Detected collision.
abstract class Collision extends ImcMessage implements Built<Collision, CollisionBuilder> {
  Collision._();
  @override
  int get msgId => 509;
  @override
  String get abbrev => "Collision";

  /// Estimated collision acceleration value.
  @ImcField("Collision value", "value", ImcType.typeFp32, units: "m/s/s")
  double get value;

  /// Collision flags.
  @ImcField("Type", "type", ImcType.typeUInt8)
  CollisionBitfieldType get type;
}

/// Formation Tracking State class
///
/// Monitoring variables to assert the formation tracking state, i.e., the mismatch between the real and the simulated aircraft position, the convergence state, etc.
abstract class FormState extends ImcMessage implements Built<FormState, FormStateBuilder> {
  FormState._();
  @override
  int get msgId => 510;
  @override
  String get abbrev => "FormState";

  /// Mismatch between the real and the simulated aircraft position.
  @ImcField("Position Mismatch", "PosSimErr", ImcType.typeFp32, units: "m")
  double get PosSimErr;

  /// Convergence evalution variable.
  /// Value indicates the position error to which the system is converging, tacking into account the aircraft current position error and velocity.
  @ImcField("Convergence", "Converg", ImcType.typeFp32, units: "m")
  double get Converg;

  /// Evaluation of the stream turbulence level, through the stream acceleration.
  @ImcField("Stream Turbulence", "Turbulence", ImcType.typeFp32, units: "m/s/s")
  double get Turbulence;

  /// Position mismatch monitoring flag.
  @ImcField("Position Mismatch Monitor", "PosSimMon", ImcType.typeUInt8)
  FormStateEnumPosSimMon get PosSimMon;

  /// Communications monitoring flag.
  @ImcField("Communications Monitor", "CommMon", ImcType.typeUInt8)
  FormStateEnumCommMon get CommMon;

  /// Convergence monitoring flag.
  @ImcField("Convergence", "ConvergMon", ImcType.typeUInt8)
  FormStateEnumConvergMon get ConvergMon;
}

/// Autopilot Mode class
///
/// Reports autopilot mode.
abstract class AutopilotMode extends ImcMessage implements Built<AutopilotMode, AutopilotModeBuilder> {
  AutopilotMode._();
  @override
  int get msgId => 511;
  @override
  String get abbrev => "AutopilotMode";

  /// Current mode autonomy level.
  @ImcField("Autonomy Level", "autonomy", ImcType.typeUInt8)
  AutopilotModeEnumAutonomy get autonomy;

  /// Current mode name.
  @ImcField("Mode", "mode", ImcType.typePlaintext)
  String get mode;
}

/// Formation Tracking State class
///
/// Monitoring variables to assert the formation tracking state, i.e., the mismatch between the real and the simulated aircraft position, the convergence state, etc.
abstract class FormationState extends ImcMessage implements Built<FormationState, FormationStateBuilder> {
  FormationState._();
  @override
  int get msgId => 512;
  @override
  String get abbrev => "FormationState";

  /// Indicates if the message is a request, or a reply to a previous request.
  @ImcField("Type", "type", ImcType.typeUInt8)
  FormationStateEnumType get type;

  /// Operation to perform.
  @ImcField("Operation", "op", ImcType.typeUInt8)
  FormationStateEnumOp get op;

  /// Mismatch between the real and the simulated aircraft position.
  @ImcField("Position Mismatch", "PosSimErr", ImcType.typeFp32, units: "m")
  double get PosSimErr;

  /// Convergence evalution variable.
  /// Value indicates the position error to which the system is converging, tacking into account the aircraft current position error and velocity.
  @ImcField("Convergence", "Converg", ImcType.typeFp32, units: "m")
  double get Converg;

  /// Evaluation of the stream turbulence level, through the stream acceleration.
  @ImcField("Stream Turbulence", "Turbulence", ImcType.typeFp32, units: "m/s/s")
  double get Turbulence;

  /// Position mismatch monitoring flag.
  @ImcField("Position Mismatch Monitor", "PosSimMon", ImcType.typeUInt8)
  FormationStateEnumPosSimMon get PosSimMon;

  /// Communications monitoring flag.
  @ImcField("Communications Monitor", "CommMon", ImcType.typeUInt8)
  FormationStateEnumCommMon get CommMon;

  /// Convergence monitoring flag.
  @ImcField("Convergence", "ConvergMon", ImcType.typeUInt8)
  FormationStateEnumConvergMon get ConvergMon;
}

/// Report Control class
///
/// This message is sent to trigger reports to a destination system.
abstract class ReportControl extends ImcMessage implements Built<ReportControl, ReportControlBuilder> {
  ReportControl._();
  @override
  int get msgId => 513;
  @override
  String get abbrev => "ReportControl";

  /// Operation to perform.
  @ImcField("Operation", "op", ImcType.typeUInt8)
  ReportControlEnumOp get op;

  /// Communication interface to be used for reports.
  @ImcField("Communication Interface", "comm_interface", ImcType.typeUInt8)
  ReportControlBitfieldComm_interface get comm_interface;

  /// Desired periodicity for scheduled reports.
  @ImcField("Period", "period", ImcType.typeUInt16, units: "s")
  int get period;

  /// Destination Address to be filled where applicable. It should be
  /// interpreted differently depending on communication interface.
  @ImcField("Destination System", "sys_dst", ImcType.typePlaintext)
  String get sys_dst;
}

/// State Report class
///
/// Concise representation of entire system state.
abstract class StateReport extends ImcMessage implements Built<StateReport, StateReportBuilder> {
  StateReport._();
  @override
  int get msgId => 514;
  @override
  String get abbrev => "StateReport";

  /// Time, in seconds, since January 1st 1970.
  @ImcField("Time Stamp", "stime", ImcType.typeUint32, units: "s")
  int get stime;

  /// Latitude of the system, in degrees.
  @ImcField("Latitude", "latitude", ImcType.typeFp32, units: "°")
  double get latitude;

  /// Longitude of the system, in degrees.
  @ImcField("Longitude", "longitude", ImcType.typeFp32, units: "°")
  double get longitude;

  /// Altitude of the system, in decimeters.
  /// * *0xFFFF* used for unknown / not applicable value.
  @ImcField("Altitude", "altitude", ImcType.typeUInt16, units: "dm")
  int get altitude;

  /// Depth of the system, in decimeters.
  /// * *0xFFFF* used for unknown / not applicable value.
  @ImcField("Depth", "depth", ImcType.typeUInt16, units: "dm")
  int get depth;

  /// Calculated as `(rads * (0xFFFF / (2 * PI))`
  @ImcField("Heading", "heading", ImcType.typeUInt16)
  int get heading;

  /// Speed of the system in centimeters per second.
  @ImcField("Speed", "speed", ImcType.typeInt16, units: "cm/s")
  int get speed;

  /// System fuel gauge.
  /// * *-1* means unknown fuel level.
  @ImcField("Fuel", "fuel", ImcType.typeInt8, units: "%")
  int get fuel;

  /// Progress of execution or idle state.
  /// * *-1* means Service mode
  /// * *-2* means Boot mode
  /// * *-3* means Calibration mode
  /// * *-4* means Error mode
  @ImcField("Execution State", "exec_state", ImcType.typeInt8, units: "%")
  int get exec_state;

  /// Checksum of the plan being executed.
  @ImcField("Plan Checksum", "plan_checksum", ImcType.typeUInt16)
  int get plan_checksum;
}

/// Transmission Request class
///
/// Request data to be sent over a specified communication mean.
abstract class TransmissionRequest extends ImcMessage implements Built<TransmissionRequest, TransmissionRequestBuilder> {
  TransmissionRequest._();
  @override
  int get msgId => 515;
  @override
  String get abbrev => "TransmissionRequest";

  /// The unique identifier for this request.
  @ImcField("Request Identifier", "req_id", ImcType.typeUInt16)
  int get req_id;

  /// Communication mean to be used to transfer these data.
  @ImcField("Communication Mean", "comm_mean", ImcType.typeUInt8)
  TransmissionRequestEnumComm_mean get comm_mean;

  /// The name of the system where to send this message.
  @ImcField("Destination System", "destination", ImcType.typePlaintext)
  String get destination;

  /// Deadline for message transmission (seconds since epoch).
  @ImcField("Deadline", "deadline", ImcType.typeFp64)
  double get deadline;

  /// Type of data to be transmitted.
  @ImcField("Data Mode", "data_mode", ImcType.typeUInt8)
  TransmissionRequestEnumData_mode get data_mode;

  /// Data to be transmitted if selected *data_mode* is *INLINEMSG*.
  @ImcField("Message Data", "msg_data", ImcType.typeMessage)
  ImcMessage get msg_data;

  /// Data to be transmitted if selected *data_mode* is *TEXT*.
  @ImcField("Text Data", "txt_data", ImcType.typePlaintext)
  String get txt_data;

  /// Data to be transmitted if selected *data_mode* is *RAW*.
  @ImcField("Raw Data", "raw_data", ImcType.typeRawdata)
  List<int> get raw_data;
}

/// Transmission Status class
///
/// Reply sent in response to a communications request.
abstract class TransmissionStatus extends ImcMessage implements Built<TransmissionStatus, TransmissionStatusBuilder> {
  TransmissionStatus._();
  @override
  int get msgId => 516;
  @override
  String get abbrev => "TransmissionStatus";

  @ImcField("Request Identifier", "req_id", ImcType.typeUInt16)
  int get req_id;

  @ImcField("Status", "status", ImcType.typeUInt8)
  TransmissionStatusEnumStatus get status;

  @ImcField("Information", "info", ImcType.typePlaintext)
  String get info;
}

/// SMS Transmission Request class
///
/// Request SMS Text sending.
abstract class SmsRequest extends ImcMessage implements Built<SmsRequest, SmsRequestBuilder> {
  SmsRequest._();
  @override
  int get msgId => 517;
  @override
  String get abbrev => "SmsRequest";

  @ImcField("Request Identifier", "req_id", ImcType.typeUInt16)
  int get req_id;

  /// Recipient identifier (number or name).
  @ImcField("Destination", "destination", ImcType.typePlaintext)
  String get destination;

  /// Period of time to send message (in seconds).
  @ImcField("Timeout", "timeout", ImcType.typeFp64, units: "s")
  double get timeout;

  @ImcField("SMS Text", "sms_text", ImcType.typePlaintext)
  String get sms_text;
}

/// SMS Transmission Status class
///
/// Reply sent in response to a SMS sending request.
abstract class SmsStatus extends ImcMessage implements Built<SmsStatus, SmsStatusBuilder> {
  SmsStatus._();
  @override
  int get msgId => 518;
  @override
  String get abbrev => "SmsStatus";

  @ImcField("Request Identifier", "req_id", ImcType.typeUInt16)
  int get req_id;

  @ImcField("Status", "status", ImcType.typeUInt8)
  SmsStatusEnumStatus get status;

  /// Error description.
  @ImcField("Information", "info", ImcType.typePlaintext)
  String get info;
}

/// VTOL State class
///
/// Reports VTOL current state.
abstract class VtolState extends ImcMessage implements Built<VtolState, VtolStateBuilder> {
  VtolState._();
  @override
  int get msgId => 519;
  @override
  String get abbrev => "VtolState";

  @ImcField("State", "state", ImcType.typeUInt8)
  VtolStateEnumState get state;
}

/// Arming State class
///
/// Reports if motors are currently armed or disarmed.
abstract class ArmingState extends ImcMessage implements Built<ArmingState, ArmingStateBuilder> {
  ArmingState._();
  @override
  int get msgId => 520;
  @override
  String get abbrev => "ArmingState";

  @ImcField("State", "state", ImcType.typeUInt8)
  ArmingStateEnumState get state;
}

/// Abort class
///
/// Stops any executing actions and put the system in a standby mode.
abstract class Abort extends ImcMessage implements Built<Abort, AbortBuilder> {
  Abort._();
  @override
  int get msgId => 550;
  @override
  String get abbrev => "Abort";
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
  PlanSpecification._();
  @override
  int get msgId => 551;
  @override
  String get abbrev => "PlanSpecification";

  /// The plan's identifier.
  @ImcField("Plan ID", "plan_id", ImcType.typePlaintext)
  String get plan_id;

  /// Verbose text description of plan.
  @ImcField("Plan Description", "description", ImcType.typePlaintext)
  String get description;

  /// Namespace for plan variables.
  @ImcField("Namespace", "vnamespace", ImcType.typePlaintext)
  String get vnamespace;

  /// Plan variables.
  @ImcField("Plan Variables", "variables", ImcType.typeMessageList)
  List<PlanVariable> get variables;

  /// Indicates the id of the starting maneuver for this plan.
  @ImcField("Starting maneuver", "start_man_id", ImcType.typePlaintext)
  String get start_man_id;

  /// List of maneuver specifications.
  @ImcField("Maneuvers", "maneuvers", ImcType.typeMessageList)
  List<PlanManeuver> get maneuvers;

  /// List of maneuver specifications.
  @ImcField("Transitions", "transitions", ImcType.typeMessageList)
  List<PlanTransition> get transitions;

  /// Contains an optionally defined 'MessageList' for actions fired
  /// on plan activation.
  @ImcField("Start Actions", "start_actions", ImcType.typeMessageList)
  List<ImcMessage> get start_actions;

  /// Contains an optionally defined 'MessageList' for actions fired
  /// on plan termination.
  @ImcField("End Actions", "end_actions", ImcType.typeMessageList)
  List<ImcMessage> get end_actions;
}

/// Plan Maneuver class
///
/// Named plan maneuver.
abstract class PlanManeuver extends ImcMessage implements Built<PlanManeuver, PlanManeuverBuilder> {
  PlanManeuver._();
  @override
  int get msgId => 552;
  @override
  String get abbrev => "PlanManeuver";

  /// The maneuver ID.
  @ImcField("Maneuver ID", "maneuver_id", ImcType.typePlaintext)
  String get maneuver_id;

  /// The maneuver specification.
  @ImcField("Maneuver Specification", "data", ImcType.typeMessage)
  Maneuver get data;

  /// Contains an optionally defined 'MessageList' for actions fired
  /// on plan activation.
  @ImcField("Start Actions", "start_actions", ImcType.typeMessageList)
  List<ImcMessage> get start_actions;

  /// Contains an optionally defined 'MessageList' for actions fired
  /// on plan termination.
  @ImcField("End Actions", "end_actions", ImcType.typeMessageList)
  List<ImcMessage> get end_actions;
}

/// Plan Transition class
///
/// Describes a plan transition within a plan specification. A
/// transition states the vehicle conditions that must be met to
/// signal the transition, the maneuver that should be started as a
/// result, and an optional set of actions triggered by the
/// transition.
abstract class PlanTransition extends ImcMessage implements Built<PlanTransition, PlanTransitionBuilder> {
  PlanTransition._();
  @override
  int get msgId => 553;
  @override
  String get abbrev => "PlanTransition";

  /// Comma separated list of maneuver IDs, or the special value '.'
  /// to identify a global plan transition.
  @ImcField("Source", "source_man", ImcType.typePlaintext)
  String get source_man;

  /// Target maneuver name.
  /// If it equals the special value '_done_' then plan should
  /// terminate with a success status.
  /// If it equals the special value '_error_' then the plan should
  /// terminate with an error status.
  @ImcField("Destination Maneuver Name", "dest_man", ImcType.typePlaintext)
  String get dest_man;

  /// Comma separated list of conditions for transition. Each
  /// condition identifier corresponds to a known predicate which is
  /// interpreted and tested internally by the vehicle.
  @ImcField("Transition conditions", "conditions", ImcType.typePlaintext)
  String get conditions;

  /// Messages processed when the transition is triggered.
  @ImcField("Transition actions", "actions", ImcType.typeMessageList)
  List<ImcMessage> get actions;
}

/// Emergency Control class
///
abstract class EmergencyControl extends ImcMessage implements Built<EmergencyControl, EmergencyControlBuilder> {
  EmergencyControl._();
  @override
  int get msgId => 554;
  @override
  String get abbrev => "EmergencyControl";

  @ImcField("Command", "command", ImcType.typeUInt8)
  EmergencyControlEnumCommand get command;

  @ImcField("Plan Specification", "plan", ImcType.typeMessage)
  PlanSpecification get plan;
}

/// Emergency Control State class
///
abstract class EmergencyControlState extends ImcMessage implements Built<EmergencyControlState, EmergencyControlStateBuilder> {
  EmergencyControlState._();
  @override
  int get msgId => 555;
  @override
  String get abbrev => "EmergencyControlState";

  @ImcField("State", "state", ImcType.typeUInt8)
  EmergencyControlStateEnumState get state;

  @ImcField("Plan Id", "plan_id", ImcType.typePlaintext)
  String get plan_id;

  @ImcField("Communications Level", "comm_level", ImcType.typeUInt8, units: "%")
  int get comm_level;
}

/// Plan DB class
///
/// Request/reply to plan database.
abstract class PlanDB extends ImcMessage implements Built<PlanDB, PlanDBBuilder> {
  PlanDB._();
  @override
  int get msgId => 556;
  @override
  String get abbrev => "PlanDB";

  /// Indicates if the message is a request, or a reply to a
  /// previous request.
  @ImcField("Type", "type", ImcType.typeUInt8)
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
  @ImcField("Operation", "op", ImcType.typeUInt8)
  PlanDBEnumOp get op;

  /// Request ID. This may be used by interfacing modules,
  /// e.g. using sequence counters, to annotate requests and
  /// appropriately identify replies
  @ImcField("Request ID", "request_id", ImcType.typeUInt16)
  int get request_id;

  /// Plan identifier for the operation, if one is required.
  @ImcField("Plan ID", "plan_id", ImcType.typePlaintext)
  String get plan_id;

  /// Request or reply argument.
  @ImcField("Argument", "arg", ImcType.typeMessage)
  ImcMessage get arg;

  /// Human-readable complementary information. For example this
  /// may be used to detail reasons for failure, or to report
  /// in-progress information.
  @ImcField("Complementary Information", "info", ImcType.typePlaintext)
  String get info;
}

/// Plan DB State class
///
/// Characterizes the state of the entire plan database.
abstract class PlanDBState extends ImcMessage implements Built<PlanDBState, PlanDBStateBuilder> {
  PlanDBState._();
  @override
  int get msgId => 557;
  @override
  String get abbrev => "PlanDBState";

  /// Number of stored plans.
  @ImcField("Plan -- Count", "plan_count", ImcType.typeUInt16)
  int get plan_count;

  /// Size of all plans.The value equals the sum of the IMC payload
  /// sizes for 'PlanSpecification' stored in the DB.
  @ImcField("Plan -- Size of all plans", "plan_size", ImcType.typeUint32)
  int get plan_size;

  /// Time of last change (Epoch time).
  @ImcField("Last Change -- Time", "change_time", ImcType.typeFp64, units: "s")
  double get change_time;

  /// IMC address for source of last DB change.
  @ImcField("Last Change -- Source Address", "change_sid", ImcType.typeUInt16)
  int get change_sid;

  /// IMC node name for source of last DB change.
  @ImcField("Last Change -- Source Name", "change_sname", ImcType.typePlaintext)
  String get change_sname;

  /// MD5 database verification code. The MD5 hash sum is computed
  /// over the stream formed by the MD5 of all plans, ordered by
  /// plan id, in compliance with RFC 1321.
  @ImcField("MD5", "md5", ImcType.typeRawdata)
  List<int> get md5;

  /// Individual information for plans.
  @ImcField("Plan info", "plans_info", ImcType.typeMessageList)
  List<PlanDBInformation> get plans_info;
}

/// Plan DB Information class
///
abstract class PlanDBInformation extends ImcMessage implements Built<PlanDBInformation, PlanDBInformationBuilder> {
  PlanDBInformation._();
  @override
  int get msgId => 558;
  @override
  String get abbrev => "PlanDBInformation";

  /// Plan identifier.
  @ImcField("Plan ID", "plan_id", ImcType.typePlaintext)
  String get plan_id;

  /// Plan size. The value equals the IMC message payload of the
  /// associated 'PlanSpecification' message in bytes.
  @ImcField("Plan Size", "plan_size", ImcType.typeUInt16)
  int get plan_size;

  /// Time of last change to the plan (Epoch time).
  @ImcField("Last Changed -- Time", "change_time", ImcType.typeFp64)
  double get change_time;

  /// IMC address for source of last change to the plan.
  @ImcField("Last Change -- Source Address", "change_sid", ImcType.typeUInt16)
  int get change_sid;

  /// IMC node name for source of last change to the plan.
  @ImcField("Last Change -- Source Name", "change_sname", ImcType.typePlaintext)
  String get change_sname;

  /// MD5 plan verification code. The value is calculated over the
  /// message payload of the 'PlanSpecification', in compliance with
  /// RFC 1321.
  @ImcField("MD5", "md5", ImcType.typeRawdata)
  List<int> get md5;
}

/// Plan Control class
///
/// Plan control request/reply.
abstract class PlanControl extends ImcMessage implements Built<PlanControl, PlanControlBuilder> {
  PlanControl._();
  @override
  int get msgId => 559;
  @override
  String get abbrev => "PlanControl";

  /// Indicates if the message is a request or a reply to a
  /// previous request. The *op*, *request_id* and *plan_id* fields
  /// of a request will be echoed in one or more responses to that
  /// request.
  @ImcField("Type", "type", ImcType.typeUInt8)
  PlanControlEnumType get type;

  /// Plan control operation.
  @ImcField("Operation", "op", ImcType.typeUInt8)
  PlanControlEnumOp get op;

  /// Request ID. This may be used by interfacing modules e.g. using
  /// sequence counters.  to annotate requests and appropriately
  /// identify replies.
  @ImcField("Request ID", "request_id", ImcType.typeUInt16)
  int get request_id;

  /// The identifier for the plan to be stopped / started / loaded /
  /// retrieved according to the command requested (*op* field).
  @ImcField("Plan Identifier", "plan_id", ImcType.typePlaintext)
  String get plan_id;

  @ImcField("Flags", "flags", ImcType.typeUInt16)
  PlanControlBitfieldFlags get flags;

  /// Complementary message argument for requests/replies.
  @ImcField("Request/Reply Argument", "arg", ImcType.typeMessage)
  ImcMessage get arg;

  /// Complementary human-readable information. This is used
  /// in association to replies.
  @ImcField("Complementary Info", "info", ImcType.typePlaintext)
  String get info;
}

/// Plan Control State class
///
/// State of plan control.
abstract class PlanControlState extends ImcMessage implements Built<PlanControlState, PlanControlStateBuilder> {
  PlanControlState._();
  @override
  int get msgId => 560;
  @override
  String get abbrev => "PlanControlState";

  /// Describes overall state.
  @ImcField("State", "state", ImcType.typeUInt8)
  PlanControlStateEnumState get state;

  /// Identifier of plan currently loaded.
  @ImcField("Plan -- ID", "plan_id", ImcType.typePlaintext)
  String get plan_id;

  /// Current plan estimated time to completion.
  /// The value will be -1 if the time is unknown or undefined.
  @ImcField("Plan -- ETA", "plan_eta", ImcType.typeInt32, units: "s")
  int get plan_eta;

  /// Current plan estimated progress in percent.
  /// The value will be negative if unknown or undefined.
  @ImcField("Plan -- Progress", "plan_progress", ImcType.typeFp32, units: "%")
  double get plan_progress;

  /// Current node ID, when executing a plan.
  @ImcField("Maneuver -- ID", "man_id", ImcType.typePlaintext)
  String get man_id;

  /// Type of maneuver being executed (IMC serialization id),
  /// when executing a plan.
  @ImcField("Maneuver -- Type", "man_type", ImcType.typeUInt16)
  int get man_type;

  /// Current node estimated time to completion, when executing a plan.
  /// The value will be -1 if the time is unknown or undefined.
  @ImcField("Maneuver -- ETA", "man_eta", ImcType.typeInt32, units: "s")
  int get man_eta;

  /// Outcome of the last executed plan.
  @ImcField("Last Plan Outcome", "last_outcome", ImcType.typeUInt8)
  PlanControlStateEnumLast_outcome get last_outcome;
}

/// Plan Variable class
///
/// A plan variable.
abstract class PlanVariable extends ImcMessage implements Built<PlanVariable, PlanVariableBuilder> {
  PlanVariable._();
  @override
  int get msgId => 561;
  @override
  String get abbrev => "PlanVariable";

  @ImcField("Name", "name", ImcType.typePlaintext)
  String get name;

  @ImcField("Value", "value", ImcType.typePlaintext)
  String get value;

  @ImcField("Type", "type", ImcType.typeUInt8)
  PlanVariableEnumType get type;

  @ImcField("Access Type", "access", ImcType.typeUInt8)
  PlanVariableEnumAccess get access;
}

/// Plan Generation class
///
/// This message is used to order the generation of plans based on
/// id and set of parameters.
abstract class PlanGeneration extends ImcMessage implements Built<PlanGeneration, PlanGenerationBuilder> {
  PlanGeneration._();
  @override
  int get msgId => 562;
  @override
  String get abbrev => "PlanGeneration";

  @ImcField("Command", "cmd", ImcType.typeUInt8)
  PlanGenerationEnumCmd get cmd;

  @ImcField("Operation", "op", ImcType.typeUInt8)
  PlanGenerationEnumOp get op;

  /// The name of the plan to be generated.
  @ImcField("Plan Identifier", "plan_id", ImcType.typePlaintext)
  String get plan_id;

  /// An optional list of parameters to be used by the plan
  /// generation module.
  @ImcField("Parameters", "params", ImcType.typePlaintext, units: "TupleList")
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
  LeaderState._();
  @override
  int get msgId => 563;
  @override
  String get abbrev => "LeaderState";

  /// Name for the formation group.
  @ImcField("Group Name", "group_name", ImcType.typePlaintext)
  String get group_name;

  /// Action on the formation leader state variables
  @ImcField("Action on the leader state", "op", ImcType.typeUInt8)
  LeaderStateEnumOp get op;

  /// WGS-84 Latitude.
  @ImcField("Latitude (WGS-84)", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  /// WGS-84 Longitude.
  @ImcField("Longitude (WGS-84)", "lon", ImcType.typeFp64, units: "rad")
  double get lon;

  /// Height above the WGS-84 ellipsoid.
  @ImcField("Height (WGS-84)", "height", ImcType.typeFp32, units: "m")
  double get height;

  /// The North offset of the North/East/Down field with respect to
  /// LLH.
  @ImcField("Offset north", "x", ImcType.typeFp32, units: "m")
  double get x;

  /// The East offset of the North/East/Down field with respect to
  /// LLH.
  @ImcField("Offset east", "y", ImcType.typeFp32, units: "m")
  double get y;

  /// The Down offset of the North/East/Down field with respect to
  /// LLH.
  @ImcField("Offset down", "z", ImcType.typeFp32, units: "m")
  double get z;

  /// The phi Euler angle from the vehicle's attitude.
  @ImcField("Rotation over x axis", "phi", ImcType.typeFp32, units: "rad")
  double get phi;

  /// The theta Euler angle from the vehicle's attitude.
  @ImcField("Rotation over y axis", "theta", ImcType.typeFp32, units: "rad")
  double get theta;

  /// The psi Euler angle from the vehicle's attitude.
  @ImcField("Rotation over z axis", "psi", ImcType.typeFp32, units: "rad")
  double get psi;

  /// Ground Velocity xx axis velocity component.
  @ImcField("Ground Velocity X (North)", "vx", ImcType.typeFp32, units: "m/s")
  double get vx;

  /// Ground Velocity yy axis velocity component.
  @ImcField("Ground Velocity Y (East)", "vy", ImcType.typeFp32, units: "m/s")
  double get vy;

  /// Ground Velocity zz axis velocity component.
  @ImcField("Ground Velocity Z (Down)", "vz", ImcType.typeFp32, units: "m/s")
  double get vz;

  /// The angular velocity over body-fixed xx axis (roll).
  @ImcField("Angular Velocity in x", "p", ImcType.typeFp32, units: "rad/s")
  double get p;

  /// The angular velocity over body-fixed yy axis (pitch).
  @ImcField("Angular Velocity in y", "q", ImcType.typeFp32, units: "rad/s")
  double get q;

  /// The angular velocity over body-fixed zz axis (yaw).
  @ImcField("Angular Velocity in z", "r", ImcType.typeFp32, units: "rad/s")
  double get r;

  /// Stream Velocity xx axis velocity component.
  @ImcField("Stream Velocity X (North)", "svx", ImcType.typeFp32, units: "m/s")
  double get svx;

  /// Stream Velocity yy axis velocity component.
  @ImcField("Stream Velocity Y (East)", "svy", ImcType.typeFp32, units: "m/s")
  double get svy;

  /// Stream Velocity zz axis velocity component.
  @ImcField("Stream Velocity Z (Down)", "svz", ImcType.typeFp32, units: "m/s")
  double get svz;
}

/// Plan Statistics class
///
abstract class PlanStatistics extends ImcMessage implements Built<PlanStatistics, PlanStatisticsBuilder> {
  PlanStatistics._();
  @override
  int get msgId => 564;
  @override
  String get abbrev => "PlanStatistics";

  /// The name of the plan to be generated.
  @ImcField("Plan Identifier", "plan_id", ImcType.typePlaintext)
  String get plan_id;

  /// Type of plan statistics, if they are launched before, during or after the plan execution.
  @ImcField("Type", "type", ImcType.typeUInt8)
  PlanStatisticsEnumType get type;

  @ImcField("Properties", "properties", ImcType.typeUInt8)
  PlanStatisticsBitfieldProperties get properties;

  /// Maneuver and plan duration statistics in seconds, for example: “Total=1000,Goto1=20,Rows=980”
  @ImcField("Durations", "durations", ImcType.typePlaintext, units: "TupleList")
  String get durations;

  /// Distances travelled in meters in each maneuver and/or total: “Total=2000,Rows=1800,Elevator=200”
  @ImcField("Distances", "distances", ImcType.typePlaintext, units: "TupleList")
  String get distances;

  /// List of components active by plan actions during the plan and time active in seconds: “Sidescan=100,Camera Module=150”
  @ImcField("Actions", "actions", ImcType.typePlaintext, units: "TupleList")
  String get actions;

  /// Amount of fuel spent, in battery percentage, by different parcels (if applicable): “Total=35,Hotel=5,Payload=10,Motion=20,IMU=0”
  @ImcField("Fuel", "fuel", ImcType.typePlaintext, units: "TupleList")
  String get fuel;
}

/// Reported State class
///
/// A vehicle state that is reported to other consoles (including PDAConsole). Source can be acoustic tracker, SMS, Wi-Fi, etc...
abstract class ReportedState extends ImcMessage implements Built<ReportedState, ReportedStateBuilder> {
  ReportedState._();
  @override
  int get msgId => 600;
  @override
  String get abbrev => "ReportedState";

  @ImcField("Latitude", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  @ImcField("Longitude", "lon", ImcType.typeFp64, units: "rad")
  double get lon;

  /// The reported depth. In the case of not knowing the depth 0 will be reported.
  /// Airplanes usually have negative values (por positive altitude).
  @ImcField("Depth", "depth", ImcType.typeFp64, units: "m")
  double get depth;

  /// The phi Euler angle from the vehicle's attitude.
  @ImcField("Roll", "roll", ImcType.typeFp64, units: "rad")
  double get roll;

  /// The theta Euler angle from the vehicle's attitude.
  @ImcField("Pitch", "pitch", ImcType.typeFp64, units: "rad")
  double get pitch;

  /// The psi Euler angle from the vehicle's attitude.
  @ImcField("Yaw", "yaw", ImcType.typeFp64, units: "rad")
  double get yaw;

  /// The time when the packet was sent, as seen by the packet
  /// dispatcher. The number of seconds is represented in Universal
  /// Coordinated Time (UCT) in seconds since Jan 1, 1970 using IEEE
  /// double precision floating point numbers.
  @ImcField("Reception Time", "rcp_time", ImcType.typeFp64, units: "s")
  double get rcp_time;

  /// The id of the system whose position is being reported (it can be a vehicle's id, a boat name, etc)
  @ImcField("System Identifier", "sid", ImcType.typePlaintext)
  String get sid;

  /// How the position was received/calculated
  @ImcField("Source Type", "s_type", ImcType.typeUInt8)
  ReportedStateEnumS_type get s_type;
}

/// Remote Sensor Info class
///
/// Whenever the CUCS receives a message from one of the existing sensors (through SMS, ZigBee, Acoustic Comms, ...) it disseminates that info recurring to this message.
abstract class RemoteSensorInfo extends ImcMessage implements Built<RemoteSensorInfo, RemoteSensorInfoBuilder> {
  RemoteSensorInfo._();
  @override
  int get msgId => 601;
  @override
  String get abbrev => "RemoteSensorInfo";

  /// An unique string that identifies the sensor. Used mostly for logging/presentation.
  @ImcField("Id", "id", ImcType.typePlaintext)
  String get id;

  /// The class of a sensor tells the type of sensor originating this message. It will determine how the sensor is to be shown and (optionally) how the custom data (tuplelist) is to be interpreted.
  @ImcField("Class", "sensor_class", ImcType.typePlaintext)
  String get sensor_class;

  @ImcField("Latitude", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  @ImcField("Longitude", "lon", ImcType.typeFp64, units: "rad")
  double get lon;

  @ImcField("Altitude", "alt", ImcType.typeFp32, units: "m")
  double get alt;

  @ImcField("Heading", "heading", ImcType.typeFp32, units: "rad")
  double get heading;

  @ImcField("Custom Data", "data", ImcType.typePlaintext, units: "TupleList")
  String get data;
}

/// Map class
///
/// This message represents a simple map that is transferred between CCU consoles (from Neptus to ACCU)
abstract class Map extends ImcMessage implements Built<Map, MapBuilder> {
  Map._();
  @override
  int get msgId => 602;
  @override
  String get abbrev => "Map";

  /// The id of the map
  @ImcField("Identifier", "id", ImcType.typePlaintext)
  String get id;

  /// A list of map features.
  @ImcField("Features", "features", ImcType.typeMessageList)
  List<MapFeature> get features;
}

/// Map Feature class
///
/// A feature to appear on the map
abstract class MapFeature extends ImcMessage implements Built<MapFeature, MapFeatureBuilder> {
  MapFeature._();
  @override
  int get msgId => 603;
  @override
  String get abbrev => "MapFeature";

  /// The unique identifier for this feature (used as the name for points of interest)
  @ImcField("Identifier", "id", ImcType.typePlaintext)
  String get id;

  /// The type of feature
  @ImcField("FeatureType", "feature_type", ImcType.typeUInt8)
  MapFeatureEnumFeature_type get feature_type;

  /// The red component of the color for this point
  @ImcField("RedComponent", "rgb_red", ImcType.typeUInt8)
  int get rgb_red;

  /// The green component of the color for this point
  @ImcField("GreenComponent", "rgb_green", ImcType.typeUInt8)
  int get rgb_green;

  /// The blue component of the color for this point
  @ImcField("BlueComponent", "rgb_blue", ImcType.typeUInt8)
  int get rgb_blue;

  /// The enclosing feature definition.
  @ImcField("Feature", "feature", ImcType.typeMessageList)
  List<MapPoint> get feature;
}

/// MapPoint class
///
/// This message represents a point in the world.
abstract class MapPoint extends ImcMessage implements Built<MapPoint, MapPointBuilder> {
  MapPoint._();
  @override
  int get msgId => 604;
  @override
  String get abbrev => "MapPoint";

  @ImcField("Latitude", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  @ImcField("Longitude", "lon", ImcType.typeFp64, units: "rad")
  double get lon;

  @ImcField("Altitude", "alt", ImcType.typeFp32, units: "m")
  double get alt;
}

/// CCU Event class
///
/// This message is used to signal events among running CCUs.
abstract class CcuEvent extends ImcMessage implements Built<CcuEvent, CcuEventBuilder> {
  CcuEvent._();
  @override
  int get msgId => 606;
  @override
  String get abbrev => "CcuEvent";

  @ImcField("Event Type", "type", ImcType.typeUInt8)
  CcuEventEnumType get type;

  @ImcField("Identifier", "id", ImcType.typePlaintext)
  String get id;

  @ImcField("Additional Data", "arg", ImcType.typeMessage)
  ImcMessage get arg;
}

/// Vehicle Links class
///
/// This message is sent by the TREX task which gives further information to a TREX instance about connected IMC nodes
abstract class VehicleLinks extends ImcMessage implements Built<VehicleLinks, VehicleLinksBuilder> {
  VehicleLinks._();
  @override
  int get msgId => 650;
  @override
  String get abbrev => "VehicleLinks";

  /// The name of the vehicle being controlled
  @ImcField("Local Name", "localname", ImcType.typePlaintext)
  String get localname;

  /// A list of Announce messages with last announces heard
  @ImcField("Active Links", "links", ImcType.typeMessageList)
  List<Announce> get links;
}

/// TREX Observation class
///
/// This message is sent to TREX to post timeline observations
abstract class TrexObservation extends ImcMessage implements Built<TrexObservation, TrexObservationBuilder> {
  TrexObservation._();
  @override
  int get msgId => 651;
  @override
  String get abbrev => "TrexObservation";

  @ImcField("Timeline", "timeline", ImcType.typePlaintext)
  String get timeline;

  @ImcField("Predicate", "predicate", ImcType.typePlaintext)
  String get predicate;

  @ImcField("Attributes", "attributes", ImcType.typePlaintext, units: "TupleList")
  String get attributes;
}

/// TREX Command class
///
/// This message is used to control TREX execution
abstract class TrexCommand extends ImcMessage implements Built<TrexCommand, TrexCommandBuilder> {
  TrexCommand._();
  @override
  int get msgId => 652;
  @override
  String get abbrev => "TrexCommand";

  @ImcField("Command", "command", ImcType.typeUInt8)
  TrexCommandEnumCommand get command;

  /// The id of the goal, if applicable (OP == POST_GOAL || OP == RECALL_GOAL)
  @ImcField("Goal Id", "goal_id", ImcType.typePlaintext)
  String get goal_id;

  /// The goal encoded as XML, if applicable (OP == POST_GOAL)
  @ImcField("Goal XML", "goal_xml", ImcType.typePlaintext)
  String get goal_xml;
}

/// TREX Operation class
///
/// This message is used to control TREX execution
abstract class TrexOperation extends ImcMessage implements Built<TrexOperation, TrexOperationBuilder> {
  TrexOperation._();
  @override
  int get msgId => 655;
  @override
  String get abbrev => "TrexOperation";

  @ImcField("Operation", "op", ImcType.typeUInt8)
  TrexOperationEnumOp get op;

  /// The id of the goal, if applicable (OP == POST_GOAL || OP == RECALL_GOAL)
  @ImcField("Goal Id", "goal_id", ImcType.typePlaintext)
  String get goal_id;

  /// Goal / observation to post, if applicable (OP == POST_GOAL || OP == POST_TOKEN)
  @ImcField("Token", "token", ImcType.typeMessage)
  TrexToken get token;
}

/// TREX Attribute class
///
abstract class TrexAttribute extends ImcMessage implements Built<TrexAttribute, TrexAttributeBuilder> {
  TrexAttribute._();
  @override
  int get msgId => 656;
  @override
  String get abbrev => "TrexAttribute";

  /// Name of this attribute.
  @ImcField("Attribute Name", "name", ImcType.typePlaintext)
  String get name;

  @ImcField("Attribute type", "attr_type", ImcType.typeUInt8)
  TrexAttributeEnumAttr_type get attr_type;

  /// Lower bound of this interval. Empty text means no bound.
  @ImcField("Minimum", "min", ImcType.typePlaintext)
  String get min;

  /// Upper bound of this interval. Empty text means no bound.
  @ImcField("Maximum", "max", ImcType.typePlaintext)
  String get max;
}

/// TREX Token class
///
abstract class TrexToken extends ImcMessage implements Built<TrexToken, TrexTokenBuilder> {
  TrexToken._();
  @override
  int get msgId => 657;
  @override
  String get abbrev => "TrexToken";

  @ImcField("Timeline", "timeline", ImcType.typePlaintext)
  String get timeline;

  @ImcField("Predicate", "predicate", ImcType.typePlaintext)
  String get predicate;

  @ImcField("Attributes", "attributes", ImcType.typeMessageList)
  List<TrexAttribute> get attributes;
}

/// TREX Plan class
///
abstract class TrexPlan extends ImcMessage implements Built<TrexPlan, TrexPlanBuilder> {
  TrexPlan._();
  @override
  int get msgId => 658;
  @override
  String get abbrev => "TrexPlan";

  @ImcField("Reactor name", "reactor", ImcType.typePlaintext)
  String get reactor;

  @ImcField("Tokens", "tokens", ImcType.typeMessageList)
  List<TrexToken> get tokens;
}

/// Event class
///
/// This message is used for signaling asynchronous events between different (sub) systems.
abstract class Event extends ImcMessage implements Built<Event, EventBuilder> {
  Event._();
  @override
  int get msgId => 660;
  @override
  String get abbrev => "Event";

  /// The name or type of this event
  @ImcField("Topic", "topic", ImcType.typePlaintext)
  String get topic;

  /// A map with additional event information.
  @ImcField("Data", "data", ImcType.typePlaintext, units: "TupleList")
  String get data;
}

/// Compressed Image class
///
/// 
abstract class CompressedImage extends ImcMessage implements Built<CompressedImage, CompressedImageBuilder> {
  CompressedImage._();
  @override
  int get msgId => 702;
  @override
  String get abbrev => "CompressedImage";

  @ImcField("Frame Id", "frameid", ImcType.typeUInt8)
  int get frameid;

  @ImcField("Data", "data", ImcType.typeRawdata)
  List<int> get data;
}

/// Image Transmission Settings class
///
/// 
abstract class ImageTxSettings extends ImcMessage implements Built<ImageTxSettings, ImageTxSettingsBuilder> {
  ImageTxSettings._();
  @override
  int get msgId => 703;
  @override
  String get abbrev => "ImageTxSettings";

  @ImcField("Frames Per Second", "fps", ImcType.typeUInt8)
  int get fps;

  @ImcField("Quality", "quality", ImcType.typeUInt8)
  int get quality;

  @ImcField("Repetitions", "reps", ImcType.typeUInt8)
  int get reps;

  @ImcField("Target Size", "tsize", ImcType.typeUInt8)
  int get tsize;
}

/// Remote State class
///
/// State summary for a remote vehicle.
abstract class RemoteState extends ImcMessage implements Built<RemoteState, RemoteStateBuilder> {
  RemoteState._();
  @override
  int get msgId => 750;
  @override
  String get abbrev => "RemoteState";

  /// WGS-84 Latitude.
  @ImcField("Latitude WGS-84", "lat", ImcType.typeFp32, units: "rad")
  double get lat;

  /// WGS-84 Longitude.
  @ImcField("Longitude WGS-84", "lon", ImcType.typeFp32, units: "rad")
  double get lon;

  /// Depth.
  @ImcField("Depth", "depth", ImcType.typeUInt8, units: "m")
  int get depth;

  /// Speed.
  @ImcField("Speed", "speed", ImcType.typeFp32, units: "m/s")
  double get speed;

  /// Heading.
  @ImcField("Heading", "psi", ImcType.typeFp32, units: "rad")
  double get psi;
}

/// Target class
///
/// Target.
abstract class Target extends ImcMessage implements Built<Target, TargetBuilder> {
  Target._();
  @override
  int get msgId => 800;
  @override
  String get abbrev => "Target";

  /// Target identifier.
  @ImcField("Label", "label", ImcType.typePlaintext)
  String get label;

  /// WGS-84 Latitude coordinate.
  @ImcField("Latitude WGS-84", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  /// WGS-84 Longitude coordinate.
  @ImcField("Longitude WGS-84", "lon", ImcType.typeFp64, units: "rad")
  double get lon;

  /// Z axis reference. Use z_units to specify whether z represents
  /// depth, altitude or other.
  @ImcField("Z Reference", "z", ImcType.typeFp32, units: "m")
  double get z;

  /// Units of the z reference.
  @ImcField("Z Units", "z_units", ImcType.typeUInt8)
  ZUnitsEnum get z_units;

  /// Course Over Ground (true).
  @ImcField("Course Over Ground", "cog", ImcType.typeFp32, units: "rad")
  double get cog;

  /// Speed Over Ground.
  @ImcField("Speed Over Ground", "sog", ImcType.typeFp32, units: "m/s")
  double get sog;
}

/// EntityParameter class
///
/// Entity parameter.
abstract class EntityParameter extends ImcMessage implements Built<EntityParameter, EntityParameterBuilder> {
  EntityParameter._();
  @override
  int get msgId => 801;
  @override
  String get abbrev => "EntityParameter";

  /// Name of the parameter.
  @ImcField("Name", "name", ImcType.typePlaintext)
  String get name;

  /// Current value of the parameter.
  @ImcField("Value", "value", ImcType.typePlaintext)
  String get value;
}

/// EntityParameters class
///
/// List of entity parameters.
abstract class EntityParameters extends ImcMessage implements Built<EntityParameters, EntityParametersBuilder> {
  EntityParameters._();
  @override
  int get msgId => 802;
  @override
  String get abbrev => "EntityParameters";

  /// Name of the entity.
  @ImcField("Entity Name", "name", ImcType.typePlaintext)
  String get name;

  /// List of parameters.
  @ImcField("Parameters", "params", ImcType.typeMessageList)
  List<EntityParameter> get params;
}

/// QueryEntityParameters class
///
abstract class QueryEntityParameters extends ImcMessage implements Built<QueryEntityParameters, QueryEntityParametersBuilder> {
  QueryEntityParameters._();
  @override
  int get msgId => 803;
  @override
  String get abbrev => "QueryEntityParameters";

  @ImcField("Entity Name", "name", ImcType.typePlaintext)
  String get name;

  @ImcField("Visibility", "visibility", ImcType.typePlaintext)
  String get visibility;

  @ImcField("Scope", "scope", ImcType.typePlaintext)
  String get scope;
}

/// SetEntityParameters class
///
abstract class SetEntityParameters extends ImcMessage implements Built<SetEntityParameters, SetEntityParametersBuilder> {
  SetEntityParameters._();
  @override
  int get msgId => 804;
  @override
  String get abbrev => "SetEntityParameters";

  @ImcField("Entity Name", "name", ImcType.typePlaintext)
  String get name;

  @ImcField("Parameters", "params", ImcType.typeMessageList)
  List<EntityParameter> get params;
}

/// SaveEntityParameters class
///
abstract class SaveEntityParameters extends ImcMessage implements Built<SaveEntityParameters, SaveEntityParametersBuilder> {
  SaveEntityParameters._();
  @override
  int get msgId => 805;
  @override
  String get abbrev => "SaveEntityParameters";

  @ImcField("Entity Name", "name", ImcType.typePlaintext)
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
  CreateSession._();
  @override
  int get msgId => 806;
  @override
  String get abbrev => "CreateSession";

  /// Session timeout, in seconds. If no messages are received from
  /// the remote peer, the session will be closed after this ammount
  /// of seconds have ellapsed.
  @ImcField("Session Timeout", "timeout", ImcType.typeUint32)
  int get timeout;
}

/// Close Session class
///
/// Request closing of an ongoing session
abstract class CloseSession extends ImcMessage implements Built<CloseSession, CloseSessionBuilder> {
  CloseSession._();
  @override
  int get msgId => 807;
  @override
  String get abbrev => "CloseSession";

  @ImcField("Session Identifier", "sessid", ImcType.typeUint32)
  int get sessid;
}

/// Session Subscription class
///
abstract class SessionSubscription extends ImcMessage implements Built<SessionSubscription, SessionSubscriptionBuilder> {
  SessionSubscription._();
  @override
  int get msgId => 808;
  @override
  String get abbrev => "SessionSubscription";

  @ImcField("Session Identifier", "sessid", ImcType.typeUint32)
  int get sessid;

  /// Comma-separated list of messages to subscribe. Example:
  /// "EstimatedState,EulerAngles,Temperature"
  @ImcField("Messages to subscribe", "messages", ImcType.typePlaintext)
  String get messages;
}

/// Session Keep-Alive class
///
/// Message exchanged to prevent a session from timing out
abstract class SessionKeepAlive extends ImcMessage implements Built<SessionKeepAlive, SessionKeepAliveBuilder> {
  SessionKeepAlive._();
  @override
  int get msgId => 809;
  @override
  String get abbrev => "SessionKeepAlive";

  @ImcField("Session Identifier", "sessid", ImcType.typeUint32)
  int get sessid;
}

/// Session Status class
///
/// Message transmitted periodically to inform the state of a communication session
abstract class SessionStatus extends ImcMessage implements Built<SessionStatus, SessionStatusBuilder> {
  SessionStatus._();
  @override
  int get msgId => 810;
  @override
  String get abbrev => "SessionStatus";

  @ImcField("Session Identifier", "sessid", ImcType.typeUint32)
  int get sessid;

  @ImcField("Status", "status", ImcType.typeUInt8)
  SessionStatusEnumStatus get status;
}

/// Push Entity Parameters class
///
abstract class PushEntityParameters extends ImcMessage implements Built<PushEntityParameters, PushEntityParametersBuilder> {
  PushEntityParameters._();
  @override
  int get msgId => 811;
  @override
  String get abbrev => "PushEntityParameters";

  @ImcField("Entity Name", "name", ImcType.typePlaintext)
  String get name;
}

/// Pop Entity Parameters class
///
abstract class PopEntityParameters extends ImcMessage implements Built<PopEntityParameters, PopEntityParametersBuilder> {
  PopEntityParameters._();
  @override
  int get msgId => 812;
  @override
  String get abbrev => "PopEntityParameters";

  @ImcField("Entity Name", "name", ImcType.typePlaintext)
  String get name;
}

/// I/O Event class
///
/// Notification of an I/O event.
abstract class IoEvent extends ImcMessage implements Built<IoEvent, IoEventBuilder> {
  IoEvent._();
  @override
  int get msgId => 813;
  @override
  String get abbrev => "IoEvent";

  /// Event type.
  @ImcField("Type", "type", ImcType.typeUInt8)
  IoEventEnumType get type;

  /// Human-readable error message.
  @ImcField("Error Message", "error", ImcType.typePlaintext)
  String get error;
}

/// UamTxFrame class
///
abstract class UamTxFrame extends ImcMessage implements Built<UamTxFrame, UamTxFrameBuilder> {
  UamTxFrame._();
  @override
  int get msgId => 814;
  @override
  String get abbrev => "UamTxFrame";

  @ImcField("Sequence Id", "seq", ImcType.typeUInt16)
  int get seq;

  @ImcField("Destination System", "sys_dst", ImcType.typePlaintext)
  String get sys_dst;

  @ImcField("Flags", "flags", ImcType.typeUInt8)
  UamTxFrameBitfieldFlags get flags;

  @ImcField("Data", "data", ImcType.typeRawdata)
  List<int> get data;
}

/// UamRxFrame class
///
abstract class UamRxFrame extends ImcMessage implements Built<UamRxFrame, UamRxFrameBuilder> {
  UamRxFrame._();
  @override
  int get msgId => 815;
  @override
  String get abbrev => "UamRxFrame";

  @ImcField("Source System", "sys_src", ImcType.typePlaintext)
  String get sys_src;

  @ImcField("Destination System", "sys_dst", ImcType.typePlaintext)
  String get sys_dst;

  @ImcField("Flags", "flags", ImcType.typeUInt8)
  UamRxFrameBitfieldFlags get flags;

  @ImcField("Data", "data", ImcType.typeRawdata)
  List<int> get data;
}

/// UamTxStatus class
///
abstract class UamTxStatus extends ImcMessage implements Built<UamTxStatus, UamTxStatusBuilder> {
  UamTxStatus._();
  @override
  int get msgId => 816;
  @override
  String get abbrev => "UamTxStatus";

  @ImcField("Sequence Id", "seq", ImcType.typeUInt16)
  int get seq;

  @ImcField("Value", "value", ImcType.typeUInt8)
  UamTxStatusEnumValue get value;

  @ImcField("Error Message", "error", ImcType.typePlaintext)
  String get error;
}

/// UamRxRange class
///
abstract class UamRxRange extends ImcMessage implements Built<UamRxRange, UamRxRangeBuilder> {
  UamRxRange._();
  @override
  int get msgId => 817;
  @override
  String get abbrev => "UamRxRange";

  @ImcField("Sequence Id", "seq", ImcType.typeUInt16)
  int get seq;

  @ImcField("System", "sys", ImcType.typePlaintext)
  String get sys;

  @ImcField("Value", "value", ImcType.typeFp32)
  double get value;
}

/// Formation Control Parameters class
///
/// Formation controller paramenters, as: trajectory gains, control boundary layer thickness, and formation shape gains.
abstract class FormCtrlParam extends ImcMessage implements Built<FormCtrlParam, FormCtrlParamBuilder> {
  FormCtrlParam._();
  @override
  int get msgId => 820;
  @override
  String get abbrev => "FormCtrlParam";

  /// Action on the vehicle formation control parameters.
  @ImcField("Action", "Action", ImcType.typeUInt8)
  FormCtrlParamEnumAction get Action;

  /// Trajectory gain over the vehicle longitudinal direction.
  @ImcField("Longitudinal Gain", "LonGain", ImcType.typeFp32)
  double get LonGain;

  /// Trajectory gain over the vehicle lateral direction.
  @ImcField("Lateral Gain", "LatGain", ImcType.typeFp32)
  double get LatGain;

  /// Control sliding surface boundary layer thickness.
  @ImcField("Boundary Layer Thickness", "BondThick", ImcType.typeUint32)
  int get BondThick;

  /// Formation shape gain (absolute vehicle position tracking).
  /// Leader control importance gain (relative to the sum of every other formation vehicle).
  @ImcField("Leader Gain", "LeadGain", ImcType.typeFp32)
  double get LeadGain;

  /// Collision avoidance and formation shape gain (position tracking relative to the other formation vehicles).
  /// Individual vehicle importance gain (relative to the leader), when the relative position or the velocity state indicate higher probability of collision.
  @ImcField("Deconfliction Gain", "DeconflGain", ImcType.typeFp32)
  double get DeconflGain;
}

/// Formation Evaluation Data class
///
/// Formation control performance evaluation variables.
abstract class FormationEval extends ImcMessage implements Built<FormationEval, FormationEvalBuilder> {
  FormationEval._();
  @override
  int get msgId => 821;
  @override
  String get abbrev => "FormationEval";

  /// Mean position error relative to the formation reference.
  @ImcField("Mean position error", "err_mean", ImcType.typeFp32)
  double get err_mean;

  /// Overall minimum distance to any other vehicle in the formation.
  @ImcField("Absolute minimum distance", "dist_min_abs", ImcType.typeFp32)
  double get dist_min_abs;

  /// Mean minimum distance to any other vehicle in the formation.
  @ImcField("Mean minimum distance", "dist_min_mean", ImcType.typeFp32)
  double get dist_min_mean;
}

/// Formation Control Parameters class
///
/// Formation controller paramenters, as: trajectory gains,
/// control boundary layer thickness, and formation shape gains.
abstract class FormationControlParams extends ImcMessage implements Built<FormationControlParams, FormationControlParamsBuilder> {
  FormationControlParams._();
  @override
  int get msgId => 822;
  @override
  String get abbrev => "FormationControlParams";

  /// Action on the vehicle formation control parameters.
  @ImcField("Action", "Action", ImcType.typeUInt8)
  FormationControlParamsEnumAction get Action;

  /// Trajectory gain over the vehicle longitudinal direction.
  @ImcField("Longitudinal Gain", "lon_gain", ImcType.typeFp32)
  double get lon_gain;

  /// Trajectory gain over the vehicle lateral direction.
  @ImcField("Lateral Gain", "lat_gain", ImcType.typeFp32)
  double get lat_gain;

  /// Control sliding surface boundary layer thickness.
  @ImcField("Boundary Layer Thickness", "bond_thick", ImcType.typeFp32)
  double get bond_thick;

  /// Formation shape gain (absolute vehicle position tracking).
  /// Leader control importance gain (relative to the sum of every other formation vehicle).
  @ImcField("Leader Gain", "lead_gain", ImcType.typeFp32)
  double get lead_gain;

  /// Collision avoidance and formation shape gain (position tracking relative to the other formation vehicles).
  /// Individual vehicle importance gain (relative to the leader), when the relative position or the velocity state indicate higher probability of collision.
  @ImcField("Deconfliction Gain", "deconfl_gain", ImcType.typeFp32)
  double get deconfl_gain;

  /// Switch gain to compensate the worst case of the wind flow acceleration.
  @ImcField("Acceleration Switch Gain", "accel_switch_gain", ImcType.typeFp32)
  double get accel_switch_gain;

  /// Inter-vehicle safety distance.
  @ImcField("Safety Distance", "safe_dist", ImcType.typeFp32)
  double get safe_dist;

  /// Distance offset which defines the buffer area beyond the safety distace.
  @ImcField("Deconfliction Offset", "deconflict_offset", ImcType.typeFp32)
  double get deconflict_offset;

  /// Safety margin to compensate for possible shortfalls from the predicted maximum acceleration that a vehicle can generate.
  @ImcField("Acceleration Safety Margin", "accel_safe_margin", ImcType.typeFp32)
  double get accel_safe_margin;

  /// Maximum predicted longitudinal acceleration a vehicle can generate.
  @ImcField("Maximum Longitudinal Acceleration", "accel_lim_x", ImcType.typeFp32)
  double get accel_lim_x;
}

/// Formation Evaluation Data class
///
/// Formation control performance evaluation variables.
abstract class FormationEvaluation extends ImcMessage implements Built<FormationEvaluation, FormationEvaluationBuilder> {
  FormationEvaluation._();
  @override
  int get msgId => 823;
  @override
  String get abbrev => "FormationEvaluation";

  /// Indicates if the message is a request, or a reply to a previous request.
  @ImcField("Type", "type", ImcType.typeUInt8)
  FormationEvaluationEnumType get type;

  /// Operation to perform.
  @ImcField("Operation", "op", ImcType.typeUInt8)
  FormationEvaluationEnumOp get op;

  /// Mean position error relative to the formation reference.
  @ImcField("Mean Position Error", "err_mean", ImcType.typeFp32)
  double get err_mean;

  /// Overall minimum distance to any other vehicle in the formation.
  @ImcField("Absolute Minimum Distance", "dist_min_abs", ImcType.typeFp32)
  double get dist_min_abs;

  /// Mean minimum distance to any other vehicle in the formation.
  @ImcField("Mean Minimum Distance", "dist_min_mean", ImcType.typeFp32)
  double get dist_min_mean;

  /// Mean minimum distance to any other vehicle in the formation.
  @ImcField("Mean Roll Rate", "roll_rate_mean", ImcType.typeFp32)
  double get roll_rate_mean;

  /// Period over which the evaluation data is averaged.
  @ImcField("Evaluation Time", "time", ImcType.typeFp32)
  double get time;

  /// Formation controller paramenters during the evaluation period.
  @ImcField("Formation Control Parameters", "ControlParams", ImcType.typeMessage)
  FormationControlParams get ControlParams;
}

/// SOI Waypoint class
///
abstract class SoiWaypoint extends ImcMessage implements Built<SoiWaypoint, SoiWaypointBuilder> {
  SoiWaypoint._();
  @override
  int get msgId => 850;
  @override
  String get abbrev => "SoiWaypoint";

  @ImcField("Latitude", "lat", ImcType.typeFp32, units: "°")
  double get lat;

  @ImcField("Longitude", "lon", ImcType.typeFp32, units: "°")
  double get lon;

  @ImcField("Time Of Arrival", "eta", ImcType.typeUint32)
  int get eta;

  @ImcField("Duration", "duration", ImcType.typeUInt16, units: "s")
  int get duration;
}

/// SOI Plan class
///
abstract class SoiPlan extends ImcMessage implements Built<SoiPlan, SoiPlanBuilder> {
  SoiPlan._();
  @override
  int get msgId => 851;
  @override
  String get abbrev => "SoiPlan";

  @ImcField("Plan Identifier", "plan_id", ImcType.typeUInt16)
  int get plan_id;

  @ImcField("Waypoints", "waypoints", ImcType.typeMessageList)
  List<SoiWaypoint> get waypoints;
}

/// SOI Command class
///
abstract class SoiCommand extends ImcMessage implements Built<SoiCommand, SoiCommandBuilder> {
  SoiCommand._();
  @override
  int get msgId => 852;
  @override
  String get abbrev => "SoiCommand";

  @ImcField("Type", "type", ImcType.typeUInt8)
  SoiCommandEnumType get type;

  @ImcField("Command", "command", ImcType.typeUInt8)
  SoiCommandEnumCommand get command;

  @ImcField("Settings", "settings", ImcType.typePlaintext, units: "TupleList")
  String get settings;

  @ImcField("Plan", "plan", ImcType.typeMessage)
  SoiPlan get plan;

  @ImcField("Extra Information", "info", ImcType.typePlaintext)
  String get info;
}

/// SOI State class
///
abstract class SoiState extends ImcMessage implements Built<SoiState, SoiStateBuilder> {
  SoiState._();
  @override
  int get msgId => 853;
  @override
  String get abbrev => "SoiState";

  @ImcField("State", "state", ImcType.typeUInt8)
  SoiStateEnumState get state;

  @ImcField("Plan Identifier", "plan_id", ImcType.typeUInt16)
  int get plan_id;

  @ImcField("Waypoint Identifier", "wpt_id", ImcType.typeUInt8)
  int get wpt_id;

  @ImcField("Settings Checksum", "settings_chk", ImcType.typeUInt16)
  int get settings_chk;
}

/// Message Fragment class
///
abstract class MessagePart extends ImcMessage implements Built<MessagePart, MessagePartBuilder> {
  MessagePart._();
  @override
  int get msgId => 877;
  @override
  String get abbrev => "MessagePart";

  @ImcField("Transmission Unique Id", "uid", ImcType.typeUInt8)
  int get uid;

  @ImcField("Fragment Number", "frag_number", ImcType.typeUInt8)
  int get frag_number;

  @ImcField("Total Number of fragments", "num_frags", ImcType.typeUInt8)
  int get num_frags;

  @ImcField("Fragment Data", "data", ImcType.typeRawdata)
  List<int> get data;
}

/// Neptus Blob class
///
abstract class NeptusBlob extends ImcMessage implements Built<NeptusBlob, NeptusBlobBuilder> {
  NeptusBlob._();
  @override
  int get msgId => 888;
  @override
  String get abbrev => "NeptusBlob";

  @ImcField("ContentType", "content_type", ImcType.typePlaintext)
  String get content_type;

  @ImcField("Content", "content", ImcType.typeRawdata)
  List<int> get content;
}

/// Aborted class
///
/// This message signals that an :ref:`Abort` message was received and acted upon.
abstract class Aborted extends ImcMessage implements Built<Aborted, AbortedBuilder> {
  Aborted._();
  @override
  int get msgId => 889;
  @override
  String get abbrev => "Aborted";
}

/// USBL Angles class
///
/// This message contains information, collected using USBL, about the
/// bearing and elevation of a target.
abstract class UsblAngles extends ImcMessage implements Built<UsblAngles, UsblAnglesBuilder> {
  UsblAngles._();
  @override
  int get msgId => 890;
  @override
  String get abbrev => "UsblAngles";

  /// Target's IMC address.
  @ImcField("Target", "target", ImcType.typeUInt16)
  int get target;

  /// Target's bearing.
  @ImcField("Bearing", "bearing", ImcType.typeFp32, units: "rad")
  double get bearing;

  /// Target's elevation.
  @ImcField("Elevation", "elevation", ImcType.typeFp32, units: "rad")
  double get elevation;
}

/// USBL Position class
///
/// This message contains information, collected using USBL, about a
/// target's position.
abstract class UsblPosition extends ImcMessage implements Built<UsblPosition, UsblPositionBuilder> {
  UsblPosition._();
  @override
  int get msgId => 891;
  @override
  String get abbrev => "UsblPosition";

  /// Target's IMC address.
  @ImcField("Target", "target", ImcType.typeUInt16)
  int get target;

  /// X coordinate of the target in the local device's reference frame.
  @ImcField("X", "x", ImcType.typeFp32, units: "m")
  double get x;

  /// Y coordinate of the target in the local device's reference frame.
  @ImcField("Y", "y", ImcType.typeFp32, units: "m")
  double get y;

  /// Z coordinate of the target in the local device's reference frame.
  @ImcField("Z", "z", ImcType.typeFp32, units: "m")
  double get z;
}

/// USBL Fix class
///
/// This message contains the WGS-84 position of a target computed using
/// USBL.
abstract class UsblFix extends ImcMessage implements Built<UsblFix, UsblFixBuilder> {
  UsblFix._();
  @override
  int get msgId => 892;
  @override
  String get abbrev => "UsblFix";

  /// Target's IMC address.
  @ImcField("Target", "target", ImcType.typeUInt16)
  int get target;

  /// WGS-84 Latitude.
  @ImcField("Latitude (WGS-84)", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  /// WGS-84 Longitude.
  @ImcField("Longitude (WGS-84)", "lon", ImcType.typeFp64, units: "rad")
  double get lon;

  /// Units of the z reference.
  @ImcField("Z Units", "z_units", ImcType.typeUInt8)
  ZUnitsEnum get z_units;

  /// Target reference in the z axis. Use z_units to specify
  /// whether z represents depth, altitude or other.
  @ImcField("Z Reference", "z", ImcType.typeFp32, units: "m")
  double get z;
}

/// Parameters XML class
///
/// Message containing the parameters XML of the source system.
abstract class ParametersXml extends ImcMessage implements Built<ParametersXml, ParametersXmlBuilder> {
  ParametersXml._();
  @override
  int get msgId => 893;
  @override
  String get abbrev => "ParametersXml";

  /// The locale used to produce this parameters XML.
  @ImcField("Locale", "locale", ImcType.typePlaintext)
  String get locale;

  /// The parameters XML file compressed using the GNU zip (gzip) format.
  @ImcField("Configuration Data", "config", ImcType.typeRawdata)
  List<int> get config;
}

/// Get Parameters XML class
///
/// Request the destination system to send its parameters XML file via a
/// :ref:`ParametersXml` message.
abstract class GetParametersXml extends ImcMessage implements Built<GetParametersXml, GetParametersXmlBuilder> {
  GetParametersXml._();
  @override
  int get msgId => 894;
  @override
  String get abbrev => "GetParametersXml";
}

/// Set Image Coordinates class
///
/// Message containing the x and y coordinates of object to track in remote peer.
abstract class SetImageCoords extends ImcMessage implements Built<SetImageCoords, SetImageCoordsBuilder> {
  SetImageCoords._();
  @override
  int get msgId => 895;
  @override
  String get abbrev => "SetImageCoords";

  /// Camera identifier.
  @ImcField("Camera Identifier", "camId", ImcType.typeUInt8)
  int get camId;

  /// X coordinate of the target in the image frame.
  @ImcField("X", "x", ImcType.typeUInt16, units: "px")
  int get x;

  /// Y coordinate of the target in the image frame.
  @ImcField("Y", "y", ImcType.typeUInt16, units: "px")
  int get y;
}

/// Get Image Coordinates class
///
/// Message containing the x and y coordinates of object to track in image slave.
abstract class GetImageCoords extends ImcMessage implements Built<GetImageCoords, GetImageCoordsBuilder> {
  GetImageCoords._();
  @override
  int get msgId => 896;
  @override
  String get abbrev => "GetImageCoords";

  /// Camera identifier.
  @ImcField("Camera Identifier", "camId", ImcType.typeUInt8)
  int get camId;

  /// X coordinate of the target in the image frame.
  @ImcField("X", "x", ImcType.typeUInt16, units: "px")
  int get x;

  /// Y coordinate of the target in the image frame.
  @ImcField("Y", "y", ImcType.typeUInt16, units: "px")
  int get y;
}

/// Get World Coordinates class
///
/// Message containing the x, y and z coordinates of object in the real world.
abstract class GetWorldCoordinates extends ImcMessage implements Built<GetWorldCoordinates, GetWorldCoordinatesBuilder> {
  GetWorldCoordinates._();
  @override
  int get msgId => 897;
  @override
  String get abbrev => "GetWorldCoordinates";

  /// True when system is tracking.
  @ImcField("Tracking", "tracking", ImcType.typeUInt8)
  BooleanEnum get tracking;

  /// Latitude of the real world frame origin.
  @ImcField("Latitude", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  /// Longitude of the real world frame origin.
  @ImcField("Longitude", "lon", ImcType.typeFp64, units: "rad")
  double get lon;

  /// X offsets of the target in the real world frame.
  @ImcField("X", "x", ImcType.typeFp32, units: "m")
  double get x;

  /// Y offsets of the target in the real world frame.
  @ImcField("Y", "y", ImcType.typeFp32, units: "m")
  double get y;

  /// Z offsets of the target in the real world frame.
  @ImcField("Z", "z", ImcType.typeFp32, units: "m")
  double get z;
}

/// USBL Angles Extended class
///
/// This message contains information, collected using USBL, about the
/// bearing and elevation of a target.
abstract class UsblAnglesExtended extends ImcMessage implements Built<UsblAnglesExtended, UsblAnglesExtendedBuilder> {
  UsblAnglesExtended._();
  @override
  int get msgId => 898;
  @override
  String get abbrev => "UsblAnglesExtended";

  /// Target's system name.
  @ImcField("Target", "target", ImcType.typePlaintext)
  String get target;

  /// Target's bearing in the local device's reference frame.
  @ImcField("Local Bearing", "lbearing", ImcType.typeFp32, units: "rad")
  double get lbearing;

  /// Target's elevation in the local device's reference frame.
  @ImcField("Local Elevation", "lelevation", ImcType.typeFp32, units: "rad")
  double get lelevation;

  /// Target's bearing in the navigation reference frame.
  @ImcField("Bearing", "bearing", ImcType.typeFp32, units: "rad")
  double get bearing;

  /// Target's elevation in the navigation reference frame.
  @ImcField("Elevation", "elevation", ImcType.typeFp32, units: "rad")
  double get elevation;

  /// Rotation around the device longitudinal axis.
  @ImcField("Roll Angle", "phi", ImcType.typeFp32, units: "rad")
  double get phi;

  /// Rotation around the device lateral or transverse axis.
  @ImcField("Pitch Angle", "theta", ImcType.typeFp32, units: "rad")
  double get theta;

  /// Rotation around the device vertical axis.
  @ImcField("Yaw Angle", "psi", ImcType.typeFp32, units: "rad")
  double get psi;

  /// Accuracy of the fix.
  @ImcField("Accuracy", "accuracy", ImcType.typeFp32, units: "rad")
  double get accuracy;
}

/// USBL Position Extended class
///
/// This message contains information, collected using USBL, about a
/// target's position.
abstract class UsblPositionExtended extends ImcMessage implements Built<UsblPositionExtended, UsblPositionExtendedBuilder> {
  UsblPositionExtended._();
  @override
  int get msgId => 899;
  @override
  String get abbrev => "UsblPositionExtended";

  /// Target's system name.
  @ImcField("Target", "target", ImcType.typePlaintext)
  String get target;

  /// X coordinate of the target in the local device's reference frame.
  @ImcField("X", "x", ImcType.typeFp32, units: "m")
  double get x;

  /// Y coordinate of the target in the local device's reference frame.
  @ImcField("Y", "y", ImcType.typeFp32, units: "m")
  double get y;

  /// Z coordinate of the target in the local device's reference frame.
  @ImcField("Z", "z", ImcType.typeFp32, units: "m")
  double get z;

  /// X coordinate of the target in the navigation reference frame.
  @ImcField("N", "n", ImcType.typeFp32, units: "m")
  double get n;

  /// Y coordinate of the target in the navigation reference frame.
  @ImcField("E", "e", ImcType.typeFp32, units: "m")
  double get e;

  /// Z coordinate of the target in the navigation reference frame.
  @ImcField("D", "d", ImcType.typeFp32, units: "m")
  double get d;

  /// Rotation around the device longitudinal axis.
  @ImcField("Roll Angle", "phi", ImcType.typeFp32, units: "rad")
  double get phi;

  /// Rotation around the device lateral or transverse axis.
  @ImcField("Pitch Angle", "theta", ImcType.typeFp32, units: "rad")
  double get theta;

  /// Rotation around the device vertical axis.
  @ImcField("Yaw Angle", "psi", ImcType.typeFp32, units: "rad")
  double get psi;

  /// Accuracy of the position fix.
  @ImcField("Accuracy", "accuracy", ImcType.typeFp32, units: "m")
  double get accuracy;
}

/// USBL Fix Extended class
///
/// This message contains the WGS-84 position of a target computed using
/// USBL.
abstract class UsblFixExtended extends ImcMessage implements Built<UsblFixExtended, UsblFixExtendedBuilder> {
  UsblFixExtended._();
  @override
  int get msgId => 900;
  @override
  String get abbrev => "UsblFixExtended";

  /// Target's system name.
  @ImcField("Target", "target", ImcType.typePlaintext)
  String get target;

  /// WGS-84 Latitude.
  @ImcField("Latitude (WGS-84)", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  /// WGS-84 Longitude.
  @ImcField("Longitude (WGS-84)", "lon", ImcType.typeFp64, units: "rad")
  double get lon;

  /// Units of the z reference.
  @ImcField("Z Units", "z_units", ImcType.typeUInt8)
  ZUnitsEnum get z_units;

  /// Target reference in the z axis. Use z_units to specify
  /// whether z represents depth, altitude or other.
  @ImcField("Z Reference", "z", ImcType.typeFp32, units: "m")
  double get z;

  /// Accuracy of the position fix.
  @ImcField("Accuracy", "accuracy", ImcType.typeFp32, units: "m")
  double get accuracy;
}

/// USBL Modem Configuration class
///
/// Position and configuration of an Ultra-Short Base Line modem.
abstract class UsblModem extends ImcMessage implements Built<UsblModem, UsblModemBuilder> {
  UsblModem._();
  @override
  int get msgId => 901;
  @override
  String get abbrev => "UsblModem";

  /// Name/Label of the acoustic modem.
  @ImcField("Modem Name", "name", ImcType.typePlaintext)
  String get name;

  /// WGS-84 Latitude coordinate.
  @ImcField("Latitude WGS-84", "lat", ImcType.typeFp64, units: "rad")
  double get lat;

  /// WGS-84 Longitude coordinate.
  @ImcField("Longitude WGS-84", "lon", ImcType.typeFp64, units: "rad")
  double get lon;

  /// Target reference in the z axis. Use z_units to specify
  /// whether z represents depth, altitude or other.
  @ImcField("Z Reference", "z", ImcType.typeFp32, units: "m")
  double get z;

  /// Units of the z reference.
  @ImcField("Z Units", "z_units", ImcType.typeUInt8)
  ZUnitsEnum get z_units;
}

/// USBL Configuration class
///
/// Ultra-Short Base Line configuration.
abstract class UsblConfig extends ImcMessage implements Built<UsblConfig, UsblConfigBuilder> {
  UsblConfig._();
  @override
  int get msgId => 902;
  @override
  String get abbrev => "UsblConfig";

  /// Used to define the type of the operation this message holds.
  @ImcField("Operation", "op", ImcType.typeUInt8)
  UsblConfigEnumOp get op;

  /// A list of USBL modem configuration messages.
  @ImcField("Modems", "modems", ImcType.typeMessageList)
  List<UsblModem> get modems;
}

/// Dissolved Organic Matter class
///
/// Dissolved Organic Matter measurement.
abstract class DissolvedOrganicMatter extends ImcMessage implements Built<DissolvedOrganicMatter, DissolvedOrganicMatterBuilder> {
  DissolvedOrganicMatter._();
  @override
  int get msgId => 903;
  @override
  String get abbrev => "DissolvedOrganicMatter";

  /// Dissolved Organic Matter reading.
  @ImcField("Value", "value", ImcType.typeFp32, units: "PPB")
  double get value;

  /// Type of measurement.
  @ImcField("Type of measurement", "type", ImcType.typeUInt8)
  DissolvedOrganicMatterEnumType get type;
}

/// Optical Backscattering Coefficient class
///
/// The optical backscattering coefficient refers to all the photons that have been redirected in the backward directions
/// when a photon of light propagates in water and interacts with a "particle" (varying from water molecules to fish).
abstract class OpticalBackscatter extends ImcMessage implements Built<OpticalBackscatter, OpticalBackscatterBuilder> {
  OpticalBackscatter._();
  @override
  int get msgId => 904;
  @override
  String get abbrev => "OpticalBackscatter";

  /// Optical Backscattering Coefficient.
  @ImcField("Value", "value", ImcType.typeFp32, units: "1/m")
  double get value;
}

/// Tachograph class
///
/// This messages is used to record system activity parameters. These
/// parameters are mainly used for used for maintenance purposes.
abstract class Tachograph extends ImcMessage implements Built<Tachograph, TachographBuilder> {
  Tachograph._();
  @override
  int get msgId => 905;
  @override
  String get abbrev => "Tachograph";

  /// The time when the last service was performed. The number of
  /// seconds is represented in Universal Coordinated Time (UCT) in
  /// seconds since Jan 1, 1970.
  @ImcField("Last Service Timestamp", "timestamp_last_service", ImcType.typeFp64, units: "s")
  double get timestamp_last_service;

  /// Amount of time until the next recommended service.
  @ImcField("Time - Next Service", "time_next_service", ImcType.typeFp32, units: "s")
  double get time_next_service;

  /// Amount of time the motor can run until the next recommended service.
  @ImcField("Time Motor - Next Service", "time_motor_next_service", ImcType.typeFp32, units: "s")
  double get time_motor_next_service;

  /// Amount of time the system spent idle on the ground.
  @ImcField("Time Idle - Ground", "time_idle_ground", ImcType.typeFp32, units: "s")
  double get time_idle_ground;

  /// Amount of time the system spent idle in the air.
  @ImcField("Time Idle - Air", "time_idle_air", ImcType.typeFp32, units: "s")
  double get time_idle_air;

  /// Amount of time the system spent idle on the water (not submerged).
  @ImcField("Time Idle - Water", "time_idle_water", ImcType.typeFp32, units: "s")
  double get time_idle_water;

  /// Amount of time the system spent idle underwater.
  @ImcField("Time Idle - Underwater", "time_idle_underwater", ImcType.typeFp32, units: "s")
  double get time_idle_underwater;

  /// Amount of time the system spent idle in an unknown medium.
  @ImcField("Time Idle - Unknown", "time_idle_unknown", ImcType.typeFp32, units: "s")
  double get time_idle_unknown;

  /// Amount of time the system spent on the ground with the motor running.
  @ImcField("Time Motor - Ground", "time_motor_ground", ImcType.typeFp32, units: "s")
  double get time_motor_ground;

  /// Amount of time the system spent in the air with the motor running.
  @ImcField("Time Motor - Air", "time_motor_air", ImcType.typeFp32, units: "s")
  double get time_motor_air;

  /// Amount of time the system spent on the water (not submerged) with the motor running.
  @ImcField("Time Motor - Water", "time_motor_water", ImcType.typeFp32, units: "s")
  double get time_motor_water;

  /// Amount of time the system spent underwater with the motor running.
  @ImcField("Time Motor - Underwater", "time_motor_underwater", ImcType.typeFp32, units: "s")
  double get time_motor_underwater;

  /// Amount of time the system spent in an unknown medium with the motor running.
  @ImcField("Time Motor - Unknown", "time_motor_unknown", ImcType.typeFp32, units: "s")
  double get time_motor_unknown;

  /// The minimum recorded RPM value.
  @ImcField("Recorded RPMs - Minimum", "rpm_min", ImcType.typeInt16, units: "rpm")
  int get rpm_min;

  /// The maximum recorded RPM value.
  @ImcField("Recorded RPMs - Maximum", "rpm_max", ImcType.typeInt16, units: "rpm")
  int get rpm_max;

  /// The maximum recorded depth value.
  @ImcField("Recorded Depth - Maximum", "depth_max", ImcType.typeFp32, units: "m")
  double get depth_max;
}

/// APM Status class
///
/// StatusText message from ardupilot.
abstract class ApmStatus extends ImcMessage implements Built<ApmStatus, ApmStatusBuilder> {
  ApmStatus._();
  @override
  int get msgId => 906;
  @override
  String get abbrev => "ApmStatus";

  /// Severity of status.
  @ImcField("Severity", "severity", ImcType.typeUInt8)
  ApmStatusEnumSeverity get severity;

  /// Status text message.
  @ImcField("Text", "text", ImcType.typePlaintext)
  String get text;
}

/// SADC Readings class
///
/// Readings from SADC board.
abstract class SadcReadings extends ImcMessage implements Built<SadcReadings, SadcReadingsBuilder> {
  SadcReadings._();
  @override
  int get msgId => 907;
  @override
  String get abbrev => "SadcReadings";

  /// Channel of SADC to read.
  @ImcField("Channel", "channel", ImcType.typeInt8)
  int get channel;

  /// Value raw of sadc channel.
  @ImcField("Value", "value", ImcType.typeInt32)
  int get value;

  /// Gain value of readings.
  @ImcField("Gain", "gain", ImcType.typeUInt8)
  SadcReadingsEnumGain get gain;
}

/// DMS Detection class
///
/// Presence of DMS (Dimethyl Sulphide).
/// If the value of the channel is greater than zero, it means DMS was detected.
abstract class DmsDetection extends ImcMessage implements Built<DmsDetection, DmsDetectionBuilder> {
  DmsDetection._();
  @override
  int get msgId => 908;
  @override
  String get abbrev => "DmsDetection";

  @ImcField("Channel 1", "ch01", ImcType.typeFp32)
  double get ch01;

  @ImcField("Channel 2", "ch02", ImcType.typeFp32)
  double get ch02;

  @ImcField("Channel 3", "ch03", ImcType.typeFp32)
  double get ch03;

  @ImcField("Channel 4", "ch04", ImcType.typeFp32)
  double get ch04;

  @ImcField("Channel 5", "ch05", ImcType.typeFp32)
  double get ch05;

  @ImcField("Channel 6", "ch06", ImcType.typeFp32)
  double get ch06;

  @ImcField("Channel 7", "ch07", ImcType.typeFp32)
  double get ch07;

  @ImcField("Channel 8", "ch08", ImcType.typeFp32)
  double get ch08;

  @ImcField("Channel 9", "ch09", ImcType.typeFp32)
  double get ch09;

  @ImcField("Channel 10", "ch10", ImcType.typeFp32)
  double get ch10;

  @ImcField("Channel 11", "ch11", ImcType.typeFp32)
  double get ch11;

  @ImcField("Channel 12", "ch12", ImcType.typeFp32)
  double get ch12;

  @ImcField("Channel 13", "ch13", ImcType.typeFp32)
  double get ch13;

  @ImcField("Channel 14", "ch14", ImcType.typeFp32)
  double get ch14;

  @ImcField("Channel 15", "ch15", ImcType.typeFp32)
  double get ch15;

  @ImcField("Channel 16", "ch16", ImcType.typeFp32)
  double get ch16;
}

/// Total Magnetic Field Intensity class
///
abstract class TotalMagIntensity extends ImcMessage implements Built<TotalMagIntensity, TotalMagIntensityBuilder> {
  TotalMagIntensity._();
  @override
  int get msgId => 2006;
  @override
  String get abbrev => "TotalMagIntensity";

  /// Total Magnetic Field Intensity (TMI)
  @ImcField("Value", "value", ImcType.typeFp64)
  double get value;
}

