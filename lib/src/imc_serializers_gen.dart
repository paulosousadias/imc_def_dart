// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// IMC Code Generator
// **************************************************************************

import 'dart:typed_data';

import 'package:imc_def/imc_def_base.dart' as imc;
import 'package:imc_def/imc_def.dart' as imc;

final messagesSerializers = <String, imc.ImcSerializer>{
  'EntityState': EntityStateSerializer(),
  'QueryEntityState': QueryEntityStateSerializer(),
  'EntityInfo': EntityInfoSerializer(),
  'QueryEntityInfo': QueryEntityInfoSerializer(),
  'EntityList': EntityListSerializer(),
  'CpuUsage': CpuUsageSerializer(),
  'TransportBindings': TransportBindingsSerializer(),
  'RestartSystem': RestartSystemSerializer(),
  'DevCalibrationControl': DevCalibrationControlSerializer(),
  'DevCalibrationState': DevCalibrationStateSerializer(),
  'EntityActivationState': EntityActivationStateSerializer(),
  'QueryEntityActivationState': QueryEntityActivationStateSerializer(),
  'VehicleOperationalLimits': VehicleOperationalLimitsSerializer(),
  'MsgList': MsgListSerializer(),
  'SimulatedState': SimulatedStateSerializer(),
  'LeakSimulation': LeakSimulationSerializer(),
  'UASimulation': UASimulationSerializer(),
  'DynamicsSimParam': DynamicsSimParamSerializer(),
  'StorageUsage': StorageUsageSerializer(),
  'CacheControl': CacheControlSerializer(),
  'LoggingControl': LoggingControlSerializer(),
  'LogBookEntry': LogBookEntrySerializer(),
  'LogBookControl': LogBookControlSerializer(),
  'ReplayControl': ReplayControlSerializer(),
  'ClockControl': ClockControlSerializer(),
  'HistoricCTD': HistoricCTDSerializer(),
  'HistoricTelemetry': HistoricTelemetrySerializer(),
  'HistoricSonarData': HistoricSonarDataSerializer(),
  'HistoricEvent': HistoricEventSerializer(),
  'VerticalProfile': VerticalProfileSerializer(),
  'ProfileSample': ProfileSampleSerializer(),
  'Heartbeat': HeartbeatSerializer(),
  'Announce': AnnounceSerializer(),
  'AnnounceService': AnnounceServiceSerializer(),
  'RSSI': RSSISerializer(),
  'VSWR': VSWRSerializer(),
  'LinkLevel': LinkLevelSerializer(),
  'Sms': SmsSerializer(),
  'SmsTx': SmsTxSerializer(),
  'SmsRx': SmsRxSerializer(),
  'SmsState': SmsStateSerializer(),
  'TextMessage': TextMessageSerializer(),
  'IridiumMsgRx': IridiumMsgRxSerializer(),
  'IridiumMsgTx': IridiumMsgTxSerializer(),
  'IridiumTxStatus': IridiumTxStatusSerializer(),
  'GroupMembershipState': GroupMembershipStateSerializer(),
  'SystemGroup': SystemGroupSerializer(),
  'LinkLatency': LinkLatencySerializer(),
  'ExtendedRSSI': ExtendedRSSISerializer(),
  'HistoricData': HistoricDataSerializer(),
  'CompressedHistory': CompressedHistorySerializer(),
  'HistoricSample': HistoricSampleSerializer(),
  'HistoricDataQuery': HistoricDataQuerySerializer(),
  'RemoteCommand': RemoteCommandSerializer(),
  'CommSystemsQuery': CommSystemsQuerySerializer(),
  'TelemetryMsg': TelemetryMsgSerializer(),
  'LblRange': LblRangeSerializer(),
  'LblBeacon': LblBeaconSerializer(),
  'LblConfig': LblConfigSerializer(),
  'AcousticMessage': AcousticMessageSerializer(),
  'AcousticOperation': AcousticOperationSerializer(),
  'AcousticSystemsQuery': AcousticSystemsQuerySerializer(),
  'AcousticSystems': AcousticSystemsSerializer(),
  'AcousticLink': AcousticLinkSerializer(),
  'Rpm': RpmSerializer(),
  'Voltage': VoltageSerializer(),
  'Current': CurrentSerializer(),
  'GpsFix': GpsFixSerializer(),
  'EulerAngles': EulerAnglesSerializer(),
  'EulerAnglesDelta': EulerAnglesDeltaSerializer(),
  'AngularVelocity': AngularVelocitySerializer(),
  'Acceleration': AccelerationSerializer(),
  'MagneticField': MagneticFieldSerializer(),
  'GroundVelocity': GroundVelocitySerializer(),
  'WaterVelocity': WaterVelocitySerializer(),
  'VelocityDelta': VelocityDeltaSerializer(),
  'Distance': DistanceSerializer(),
  'Temperature': TemperatureSerializer(),
  'Pressure': PressureSerializer(),
  'Depth': DepthSerializer(),
  'DepthOffset': DepthOffsetSerializer(),
  'SoundSpeed': SoundSpeedSerializer(),
  'WaterDensity': WaterDensitySerializer(),
  'Conductivity': ConductivitySerializer(),
  'Salinity': SalinitySerializer(),
  'WindSpeed': WindSpeedSerializer(),
  'RelativeHumidity': RelativeHumiditySerializer(),
  'DevDataText': DevDataTextSerializer(),
  'DevDataBinary': DevDataBinarySerializer(),
  'Force': ForceSerializer(),
  'SonarData': SonarDataSerializer(),
  'Pulse': PulseSerializer(),
  'PulseDetectionControl': PulseDetectionControlSerializer(),
  'FuelLevel': FuelLevelSerializer(),
  'GpsNavData': GpsNavDataSerializer(),
  'ServoPosition': ServoPositionSerializer(),
  'DeviceState': DeviceStateSerializer(),
  'BeamConfig': BeamConfigSerializer(),
  'DataSanity': DataSanitySerializer(),
  'RhodamineDye': RhodamineDyeSerializer(),
  'CrudeOil': CrudeOilSerializer(),
  'FineOil': FineOilSerializer(),
  'Turbidity': TurbiditySerializer(),
  'Chlorophyll': ChlorophyllSerializer(),
  'Fluorescein': FluoresceinSerializer(),
  'Phycocyanin': PhycocyaninSerializer(),
  'Phycoerythrin': PhycoerythrinSerializer(),
  'GpsFixRtk': GpsFixRtkSerializer(),
  'ExternalNavData': ExternalNavDataSerializer(),
  'DissolvedOxygen': DissolvedOxygenSerializer(),
  'AirSaturation': AirSaturationSerializer(),
  'Throttle': ThrottleSerializer(),
  'PH': PHSerializer(),
  'Redox': RedoxSerializer(),
  'CameraZoom': CameraZoomSerializer(),
  'SetThrusterActuation': SetThrusterActuationSerializer(),
  'SetServoPosition': SetServoPositionSerializer(),
  'SetControlSurfaceDeflection': SetControlSurfaceDeflectionSerializer(),
  'RemoteActionsRequest': RemoteActionsRequestSerializer(),
  'RemoteActions': RemoteActionsSerializer(),
  'ButtonEvent': ButtonEventSerializer(),
  'LcdControl': LcdControlSerializer(),
  'PowerOperation': PowerOperationSerializer(),
  'PowerChannelControl': PowerChannelControlSerializer(),
  'QueryPowerChannelState': QueryPowerChannelStateSerializer(),
  'PowerChannelState': PowerChannelStateSerializer(),
  'LedBrightness': LedBrightnessSerializer(),
  'QueryLedBrightness': QueryLedBrightnessSerializer(),
  'SetLedBrightness': SetLedBrightnessSerializer(),
  'SetPWM': SetPWMSerializer(),
  'PWM': PWMSerializer(),
  'EstimatedState': EstimatedStateSerializer(),
  'EstimatedStreamVelocity': EstimatedStreamVelocitySerializer(),
  'IndicatedSpeed': IndicatedSpeedSerializer(),
  'TrueSpeed': TrueSpeedSerializer(),
  'NavigationUncertainty': NavigationUncertaintySerializer(),
  'NavigationData': NavigationDataSerializer(),
  'GpsFixRejection': GpsFixRejectionSerializer(),
  'LblRangeAcceptance': LblRangeAcceptanceSerializer(),
  'DvlRejection': DvlRejectionSerializer(),
  'LblEstimate': LblEstimateSerializer(),
  'AlignmentState': AlignmentStateSerializer(),
  'GroupStreamVelocity': GroupStreamVelocitySerializer(),
  'Airflow': AirflowSerializer(),
  'DesiredHeading': DesiredHeadingSerializer(),
  'DesiredZ': DesiredZSerializer(),
  'DesiredSpeed': DesiredSpeedSerializer(),
  'DesiredRoll': DesiredRollSerializer(),
  'DesiredPitch': DesiredPitchSerializer(),
  'DesiredVerticalRate': DesiredVerticalRateSerializer(),
  'DesiredPath': DesiredPathSerializer(),
  'DesiredControl': DesiredControlSerializer(),
  'DesiredHeadingRate': DesiredHeadingRateSerializer(),
  'DesiredVelocity': DesiredVelocitySerializer(),
  'PathControlState': PathControlStateSerializer(),
  'AllocatedControlTorques': AllocatedControlTorquesSerializer(),
  'ControlParcel': ControlParcelSerializer(),
  'Brake': BrakeSerializer(),
  'DesiredLinearState': DesiredLinearStateSerializer(),
  'DesiredThrottle': DesiredThrottleSerializer(),
  'Goto': GotoSerializer(),
  'PopUp': PopUpSerializer(),
  'Teleoperation': TeleoperationSerializer(),
  'Loiter': LoiterSerializer(),
  'IdleManeuver': IdleManeuverSerializer(),
  'LowLevelControl': LowLevelControlSerializer(),
  'Rows': RowsSerializer(),
  'FollowPath': FollowPathSerializer(),
  'PathPoint': PathPointSerializer(),
  'YoYo': YoYoSerializer(),
  'TeleoperationDone': TeleoperationDoneSerializer(),
  'StationKeeping': StationKeepingSerializer(),
  'Elevator': ElevatorSerializer(),
  'FollowTrajectory': FollowTrajectorySerializer(),
  'TrajectoryPoint': TrajectoryPointSerializer(),
  'CustomManeuver': CustomManeuverSerializer(),
  'VehicleFormation': VehicleFormationSerializer(),
  'VehicleFormationParticipant': VehicleFormationParticipantSerializer(),
  'StopManeuver': StopManeuverSerializer(),
  'RegisterManeuver': RegisterManeuverSerializer(),
  'ManeuverControlState': ManeuverControlStateSerializer(),
  'FollowSystem': FollowSystemSerializer(),
  'CommsRelay': CommsRelaySerializer(),
  'CoverArea': CoverAreaSerializer(),
  'PolygonVertex': PolygonVertexSerializer(),
  'CompassCalibration': CompassCalibrationSerializer(),
  'FormationParameters': FormationParametersSerializer(),
  'FormationPlanExecution': FormationPlanExecutionSerializer(),
  'FollowReference': FollowReferenceSerializer(),
  'Reference': ReferenceSerializer(),
  'FollowRefState': FollowRefStateSerializer(),
  'FormationMonitor': FormationMonitorSerializer(),
  'RelativeState': RelativeStateSerializer(),
  'Dislodge': DislodgeSerializer(),
  'Formation': FormationSerializer(),
  'Launch': LaunchSerializer(),
  'Drop': DropSerializer(),
  'ScheduledGoto': ScheduledGotoSerializer(),
  'RowsCoverage': RowsCoverageSerializer(),
  'Sample': SampleSerializer(),
  'ImageTracking': ImageTrackingSerializer(),
  'Takeoff': TakeoffSerializer(),
  'Land': LandSerializer(),
  'AutonomousSection': AutonomousSectionSerializer(),
  'FollowPoint': FollowPointSerializer(),
  'Alignment': AlignmentSerializer(),
  'StationKeepingExtended': StationKeepingExtendedSerializer(),
  'Magnetometer': MagnetometerSerializer(),
  'VehicleState': VehicleStateSerializer(),
  'VehicleCommand': VehicleCommandSerializer(),
  'MonitorEntityState': MonitorEntityStateSerializer(),
  'EntityMonitoringState': EntityMonitoringStateSerializer(),
  'OperationalLimits': OperationalLimitsSerializer(),
  'GetOperationalLimits': GetOperationalLimitsSerializer(),
  'Calibration': CalibrationSerializer(),
  'ControlLoops': ControlLoopsSerializer(),
  'VehicleMedium': VehicleMediumSerializer(),
  'Collision': CollisionSerializer(),
  'FormState': FormStateSerializer(),
  'AutopilotMode': AutopilotModeSerializer(),
  'FormationState': FormationStateSerializer(),
  'ReportControl': ReportControlSerializer(),
  'StateReport': StateReportSerializer(),
  'TransmissionRequest': TransmissionRequestSerializer(),
  'TransmissionStatus': TransmissionStatusSerializer(),
  'SmsRequest': SmsRequestSerializer(),
  'SmsStatus': SmsStatusSerializer(),
  'VtolState': VtolStateSerializer(),
  'ArmingState': ArmingStateSerializer(),
  'Abort': AbortSerializer(),
  'PlanSpecification': PlanSpecificationSerializer(),
  'PlanManeuver': PlanManeuverSerializer(),
  'PlanTransition': PlanTransitionSerializer(),
  'EmergencyControl': EmergencyControlSerializer(),
  'EmergencyControlState': EmergencyControlStateSerializer(),
  'PlanDB': PlanDBSerializer(),
  'PlanDBState': PlanDBStateSerializer(),
  'PlanDBInformation': PlanDBInformationSerializer(),
  'PlanControl': PlanControlSerializer(),
  'PlanControlState': PlanControlStateSerializer(),
  'PlanVariable': PlanVariableSerializer(),
  'PlanGeneration': PlanGenerationSerializer(),
  'LeaderState': LeaderStateSerializer(),
  'PlanStatistics': PlanStatisticsSerializer(),
  'ReportedState': ReportedStateSerializer(),
  'RemoteSensorInfo': RemoteSensorInfoSerializer(),
  'Map': MapSerializer(),
  'MapFeature': MapFeatureSerializer(),
  'MapPoint': MapPointSerializer(),
  'CcuEvent': CcuEventSerializer(),
  'VehicleLinks': VehicleLinksSerializer(),
  'TrexObservation': TrexObservationSerializer(),
  'TrexCommand': TrexCommandSerializer(),
  'TrexOperation': TrexOperationSerializer(),
  'TrexAttribute': TrexAttributeSerializer(),
  'TrexToken': TrexTokenSerializer(),
  'TrexPlan': TrexPlanSerializer(),
  'Event': EventSerializer(),
  'CompressedImage': CompressedImageSerializer(),
  'ImageTxSettings': ImageTxSettingsSerializer(),
  'RemoteState': RemoteStateSerializer(),
  'Target': TargetSerializer(),
  'EntityParameter': EntityParameterSerializer(),
  'EntityParameters': EntityParametersSerializer(),
  'QueryEntityParameters': QueryEntityParametersSerializer(),
  'SetEntityParameters': SetEntityParametersSerializer(),
  'SaveEntityParameters': SaveEntityParametersSerializer(),
  'CreateSession': CreateSessionSerializer(),
  'CloseSession': CloseSessionSerializer(),
  'SessionSubscription': SessionSubscriptionSerializer(),
  'SessionKeepAlive': SessionKeepAliveSerializer(),
  'SessionStatus': SessionStatusSerializer(),
  'PushEntityParameters': PushEntityParametersSerializer(),
  'PopEntityParameters': PopEntityParametersSerializer(),
  'IoEvent': IoEventSerializer(),
  'UamTxFrame': UamTxFrameSerializer(),
  'UamRxFrame': UamRxFrameSerializer(),
  'UamTxStatus': UamTxStatusSerializer(),
  'UamRxRange': UamRxRangeSerializer(),
  'FormCtrlParam': FormCtrlParamSerializer(),
  'FormationEval': FormationEvalSerializer(),
  'FormationControlParams': FormationControlParamsSerializer(),
  'FormationEvaluation': FormationEvaluationSerializer(),
  'SoiWaypoint': SoiWaypointSerializer(),
  'SoiPlan': SoiPlanSerializer(),
  'SoiCommand': SoiCommandSerializer(),
  'SoiState': SoiStateSerializer(),
  'MessagePart': MessagePartSerializer(),
  'NeptusBlob': NeptusBlobSerializer(),
  'Aborted': AbortedSerializer(),
  'UsblAngles': UsblAnglesSerializer(),
  'UsblPosition': UsblPositionSerializer(),
  'UsblFix': UsblFixSerializer(),
  'ParametersXml': ParametersXmlSerializer(),
  'GetParametersXml': GetParametersXmlSerializer(),
  'SetImageCoords': SetImageCoordsSerializer(),
  'GetImageCoords': GetImageCoordsSerializer(),
  'GetWorldCoordinates': GetWorldCoordinatesSerializer(),
  'UsblAnglesExtended': UsblAnglesExtendedSerializer(),
  'UsblPositionExtended': UsblPositionExtendedSerializer(),
  'UsblFixExtended': UsblFixExtendedSerializer(),
  'UsblModem': UsblModemSerializer(),
  'UsblConfig': UsblConfigSerializer(),
  'DissolvedOrganicMatter': DissolvedOrganicMatterSerializer(),
  'OpticalBackscatter': OpticalBackscatterSerializer(),
  'Tachograph': TachographSerializer(),
  'ApmStatus': ApmStatusSerializer(),
  'SadcReadings': SadcReadingsSerializer(),
  'DmsDetection': DmsDetectionSerializer(),
  'TotalMagIntensity': TotalMagIntensitySerializer(),
};

/// Entity State serializer class
///
class EntityStateSerializer extends imc.ImcSerializer<imc.EntityState> {
  @override
  ByteData serialize(imc.EntityState message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.EntityState deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.EntityState.static_id)
      return null;

    var builder = imc.EntityStateBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Query Entity State serializer class
///
class QueryEntityStateSerializer extends imc.ImcSerializer<imc.QueryEntityState> {
  @override
  ByteData serialize(imc.QueryEntityState message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.QueryEntityState deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.QueryEntityState.static_id)
      return null;

    var builder = imc.QueryEntityStateBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Entity Information serializer class
///
class EntityInfoSerializer extends imc.ImcSerializer<imc.EntityInfo> {
  @override
  ByteData serialize(imc.EntityInfo message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.EntityInfo deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.EntityInfo.static_id)
      return null;

    var builder = imc.EntityInfoBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Query Entity Information serializer class
///
class QueryEntityInfoSerializer extends imc.ImcSerializer<imc.QueryEntityInfo> {
  @override
  ByteData serialize(imc.QueryEntityInfo message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.QueryEntityInfo deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.QueryEntityInfo.static_id)
      return null;

    var builder = imc.QueryEntityInfoBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Entity List serializer class
///
class EntityListSerializer extends imc.ImcSerializer<imc.EntityList> {
  @override
  ByteData serialize(imc.EntityList message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.EntityList deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.EntityList.static_id)
      return null;

    var builder = imc.EntityListBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// CPU Usage serializer class
///
class CpuUsageSerializer extends imc.ImcSerializer<imc.CpuUsage> {
  @override
  ByteData serialize(imc.CpuUsage message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.CpuUsage deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.CpuUsage.static_id)
      return null;

    var builder = imc.CpuUsageBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Transport Bindings serializer class
///
class TransportBindingsSerializer extends imc.ImcSerializer<imc.TransportBindings> {
  @override
  ByteData serialize(imc.TransportBindings message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.TransportBindings deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.TransportBindings.static_id)
      return null;

    var builder = imc.TransportBindingsBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Restart System serializer class
///
class RestartSystemSerializer extends imc.ImcSerializer<imc.RestartSystem> {
  @override
  ByteData serialize(imc.RestartSystem message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.RestartSystem deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.RestartSystem.static_id)
      return null;

    var builder = imc.RestartSystemBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Device Calibration Control serializer class
///
class DevCalibrationControlSerializer extends imc.ImcSerializer<imc.DevCalibrationControl> {
  @override
  ByteData serialize(imc.DevCalibrationControl message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.DevCalibrationControl deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.DevCalibrationControl.static_id)
      return null;

    var builder = imc.DevCalibrationControlBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Device Calibration State serializer class
///
class DevCalibrationStateSerializer extends imc.ImcSerializer<imc.DevCalibrationState> {
  @override
  ByteData serialize(imc.DevCalibrationState message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.DevCalibrationState deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.DevCalibrationState.static_id)
      return null;

    var builder = imc.DevCalibrationStateBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Entity Activation State serializer class
///
class EntityActivationStateSerializer extends imc.ImcSerializer<imc.EntityActivationState> {
  @override
  ByteData serialize(imc.EntityActivationState message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.EntityActivationState deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.EntityActivationState.static_id)
      return null;

    var builder = imc.EntityActivationStateBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Query Entity Activation State serializer class
///
class QueryEntityActivationStateSerializer extends imc.ImcSerializer<imc.QueryEntityActivationState> {
  @override
  ByteData serialize(imc.QueryEntityActivationState message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.QueryEntityActivationState deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.QueryEntityActivationState.static_id)
      return null;

    var builder = imc.QueryEntityActivationStateBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Vehicle Operational Limits serializer class
///
class VehicleOperationalLimitsSerializer extends imc.ImcSerializer<imc.VehicleOperationalLimits> {
  @override
  ByteData serialize(imc.VehicleOperationalLimits message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.VehicleOperationalLimits deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.VehicleOperationalLimits.static_id)
      return null;

    var builder = imc.VehicleOperationalLimitsBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Message List serializer class
///
class MsgListSerializer extends imc.ImcSerializer<imc.MsgList> {
  @override
  ByteData serialize(imc.MsgList message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.MsgList deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.MsgList.static_id)
      return null;

    var builder = imc.MsgListBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Simulated State serializer class
///
class SimulatedStateSerializer extends imc.ImcSerializer<imc.SimulatedState> {
  @override
  ByteData serialize(imc.SimulatedState message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.SimulatedState deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.SimulatedState.static_id)
      return null;

    var builder = imc.SimulatedStateBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Leak Simulation serializer class
///
class LeakSimulationSerializer extends imc.ImcSerializer<imc.LeakSimulation> {
  @override
  ByteData serialize(imc.LeakSimulation message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.LeakSimulation deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.LeakSimulation.static_id)
      return null;

    var builder = imc.LeakSimulationBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Underwater Acoustics Simulation serializer class
///
class UASimulationSerializer extends imc.ImcSerializer<imc.UASimulation> {
  @override
  ByteData serialize(imc.UASimulation message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.UASimulation deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.UASimulation.static_id)
      return null;

    var builder = imc.UASimulationBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Dynamics Simulation Parameters serializer class
///
class DynamicsSimParamSerializer extends imc.ImcSerializer<imc.DynamicsSimParam> {
  @override
  ByteData serialize(imc.DynamicsSimParam message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.DynamicsSimParam deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.DynamicsSimParam.static_id)
      return null;

    var builder = imc.DynamicsSimParamBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Storage Usage serializer class
///
class StorageUsageSerializer extends imc.ImcSerializer<imc.StorageUsage> {
  @override
  ByteData serialize(imc.StorageUsage message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.StorageUsage deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.StorageUsage.static_id)
      return null;

    var builder = imc.StorageUsageBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Cache Control serializer class
///
class CacheControlSerializer extends imc.ImcSerializer<imc.CacheControl> {
  @override
  ByteData serialize(imc.CacheControl message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.CacheControl deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.CacheControl.static_id)
      return null;

    var builder = imc.CacheControlBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Logging Control serializer class
///
class LoggingControlSerializer extends imc.ImcSerializer<imc.LoggingControl> {
  @override
  ByteData serialize(imc.LoggingControl message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.LoggingControl deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.LoggingControl.static_id)
      return null;

    var builder = imc.LoggingControlBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Log Book Entry serializer class
///
class LogBookEntrySerializer extends imc.ImcSerializer<imc.LogBookEntry> {
  @override
  ByteData serialize(imc.LogBookEntry message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.LogBookEntry deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.LogBookEntry.static_id)
      return null;

    var builder = imc.LogBookEntryBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Log Book Control serializer class
///
class LogBookControlSerializer extends imc.ImcSerializer<imc.LogBookControl> {
  @override
  ByteData serialize(imc.LogBookControl message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.LogBookControl deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.LogBookControl.static_id)
      return null;

    var builder = imc.LogBookControlBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Replay Control serializer class
///
class ReplayControlSerializer extends imc.ImcSerializer<imc.ReplayControl> {
  @override
  ByteData serialize(imc.ReplayControl message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.ReplayControl deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.ReplayControl.static_id)
      return null;

    var builder = imc.ReplayControlBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Clock Control serializer class
///
class ClockControlSerializer extends imc.ImcSerializer<imc.ClockControl> {
  @override
  ByteData serialize(imc.ClockControl message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.ClockControl deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.ClockControl.static_id)
      return null;

    var builder = imc.ClockControlBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Historic CTD serializer class
///
class HistoricCTDSerializer extends imc.ImcSerializer<imc.HistoricCTD> {
  @override
  ByteData serialize(imc.HistoricCTD message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.HistoricCTD deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.HistoricCTD.static_id)
      return null;

    var builder = imc.HistoricCTDBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Historic Telemetry serializer class
///
class HistoricTelemetrySerializer extends imc.ImcSerializer<imc.HistoricTelemetry> {
  @override
  ByteData serialize(imc.HistoricTelemetry message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.HistoricTelemetry deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.HistoricTelemetry.static_id)
      return null;

    var builder = imc.HistoricTelemetryBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Historic Sonar Data serializer class
///
class HistoricSonarDataSerializer extends imc.ImcSerializer<imc.HistoricSonarData> {
  @override
  ByteData serialize(imc.HistoricSonarData message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.HistoricSonarData deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.HistoricSonarData.static_id)
      return null;

    var builder = imc.HistoricSonarDataBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Historic Event serializer class
///
class HistoricEventSerializer extends imc.ImcSerializer<imc.HistoricEvent> {
  @override
  ByteData serialize(imc.HistoricEvent message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.HistoricEvent deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.HistoricEvent.static_id)
      return null;

    var builder = imc.HistoricEventBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Vertical Profile serializer class
///
class VerticalProfileSerializer extends imc.ImcSerializer<imc.VerticalProfile> {
  @override
  ByteData serialize(imc.VerticalProfile message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.VerticalProfile deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.VerticalProfile.static_id)
      return null;

    var builder = imc.VerticalProfileBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Profile Sample serializer class
///
class ProfileSampleSerializer extends imc.ImcSerializer<imc.ProfileSample> {
  @override
  ByteData serialize(imc.ProfileSample message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.ProfileSample deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.ProfileSample.static_id)
      return null;

    var builder = imc.ProfileSampleBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Heartbeat serializer class
///
class HeartbeatSerializer extends imc.ImcSerializer<imc.Heartbeat> {
  @override
  ByteData serialize(imc.Heartbeat message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Heartbeat deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Heartbeat.static_id)
      return null;

    var builder = imc.HeartbeatBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Announce serializer class
///
class AnnounceSerializer extends imc.ImcSerializer<imc.Announce> {
  @override
  ByteData serialize(imc.Announce message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Announce deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Announce.static_id)
      return null;

    var builder = imc.AnnounceBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Announce Service serializer class
///
class AnnounceServiceSerializer extends imc.ImcSerializer<imc.AnnounceService> {
  @override
  ByteData serialize(imc.AnnounceService message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.AnnounceService deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.AnnounceService.static_id)
      return null;

    var builder = imc.AnnounceServiceBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Receive Signal Strength Information serializer class
///
class RSSISerializer extends imc.ImcSerializer<imc.RSSI> {
  @override
  ByteData serialize(imc.RSSI message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.RSSI deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.RSSI.static_id)
      return null;

    var builder = imc.RSSIBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Voltage Standing Wave Ratio serializer class
///
class VSWRSerializer extends imc.ImcSerializer<imc.VSWR> {
  @override
  ByteData serialize(imc.VSWR message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.VSWR deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.VSWR.static_id)
      return null;

    var builder = imc.VSWRBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Link Level serializer class
///
class LinkLevelSerializer extends imc.ImcSerializer<imc.LinkLevel> {
  @override
  ByteData serialize(imc.LinkLevel message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.LinkLevel deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.LinkLevel.static_id)
      return null;

    var builder = imc.LinkLevelBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// SMS serializer class
///
class SmsSerializer extends imc.ImcSerializer<imc.Sms> {
  @override
  ByteData serialize(imc.Sms message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Sms deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Sms.static_id)
      return null;

    var builder = imc.SmsBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// SMS Transmit serializer class
///
class SmsTxSerializer extends imc.ImcSerializer<imc.SmsTx> {
  @override
  ByteData serialize(imc.SmsTx message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.SmsTx deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.SmsTx.static_id)
      return null;

    var builder = imc.SmsTxBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// SMS Receive serializer class
///
class SmsRxSerializer extends imc.ImcSerializer<imc.SmsRx> {
  @override
  ByteData serialize(imc.SmsRx message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.SmsRx deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.SmsRx.static_id)
      return null;

    var builder = imc.SmsRxBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// SMS State serializer class
///
class SmsStateSerializer extends imc.ImcSerializer<imc.SmsState> {
  @override
  ByteData serialize(imc.SmsState message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.SmsState deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.SmsState.static_id)
      return null;

    var builder = imc.SmsStateBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Text Message serializer class
///
class TextMessageSerializer extends imc.ImcSerializer<imc.TextMessage> {
  @override
  ByteData serialize(imc.TextMessage message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.TextMessage deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.TextMessage.static_id)
      return null;

    var builder = imc.TextMessageBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Received Iridium Message serializer class
///
class IridiumMsgRxSerializer extends imc.ImcSerializer<imc.IridiumMsgRx> {
  @override
  ByteData serialize(imc.IridiumMsgRx message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.IridiumMsgRx deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.IridiumMsgRx.static_id)
      return null;

    var builder = imc.IridiumMsgRxBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Transmit Iridium Message serializer class
///
class IridiumMsgTxSerializer extends imc.ImcSerializer<imc.IridiumMsgTx> {
  @override
  ByteData serialize(imc.IridiumMsgTx message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.IridiumMsgTx deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.IridiumMsgTx.static_id)
      return null;

    var builder = imc.IridiumMsgTxBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Iridium Transmission Status serializer class
///
class IridiumTxStatusSerializer extends imc.ImcSerializer<imc.IridiumTxStatus> {
  @override
  ByteData serialize(imc.IridiumTxStatus message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.IridiumTxStatus deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.IridiumTxStatus.static_id)
      return null;

    var builder = imc.IridiumTxStatusBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Group Membership State serializer class
///
class GroupMembershipStateSerializer extends imc.ImcSerializer<imc.GroupMembershipState> {
  @override
  ByteData serialize(imc.GroupMembershipState message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.GroupMembershipState deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.GroupMembershipState.static_id)
      return null;

    var builder = imc.GroupMembershipStateBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// System Group serializer class
///
class SystemGroupSerializer extends imc.ImcSerializer<imc.SystemGroup> {
  @override
  ByteData serialize(imc.SystemGroup message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.SystemGroup deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.SystemGroup.static_id)
      return null;

    var builder = imc.SystemGroupBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Link Latency serializer class
///
class LinkLatencySerializer extends imc.ImcSerializer<imc.LinkLatency> {
  @override
  ByteData serialize(imc.LinkLatency message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.LinkLatency deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.LinkLatency.static_id)
      return null;

    var builder = imc.LinkLatencyBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Extended Receive Signal Strength Information serializer class
///
class ExtendedRSSISerializer extends imc.ImcSerializer<imc.ExtendedRSSI> {
  @override
  ByteData serialize(imc.ExtendedRSSI message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.ExtendedRSSI deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.ExtendedRSSI.static_id)
      return null;

    var builder = imc.ExtendedRSSIBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Historic Data Series serializer class
///
class HistoricDataSerializer extends imc.ImcSerializer<imc.HistoricData> {
  @override
  ByteData serialize(imc.HistoricData message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.HistoricData deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.HistoricData.static_id)
      return null;

    var builder = imc.HistoricDataBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Compressed Historic Data Series serializer class
///
class CompressedHistorySerializer extends imc.ImcSerializer<imc.CompressedHistory> {
  @override
  ByteData serialize(imc.CompressedHistory message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.CompressedHistory deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.CompressedHistory.static_id)
      return null;

    var builder = imc.CompressedHistoryBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Historic Data Sample serializer class
///
class HistoricSampleSerializer extends imc.ImcSerializer<imc.HistoricSample> {
  @override
  ByteData serialize(imc.HistoricSample message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.HistoricSample deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.HistoricSample.static_id)
      return null;

    var builder = imc.HistoricSampleBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Historic Data Query serializer class
///
class HistoricDataQuerySerializer extends imc.ImcSerializer<imc.HistoricDataQuery> {
  @override
  ByteData serialize(imc.HistoricDataQuery message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.HistoricDataQuery deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.HistoricDataQuery.static_id)
      return null;

    var builder = imc.HistoricDataQueryBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Remote Command serializer class
///
class RemoteCommandSerializer extends imc.ImcSerializer<imc.RemoteCommand> {
  @override
  ByteData serialize(imc.RemoteCommand message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.RemoteCommand deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.RemoteCommand.static_id)
      return null;

    var builder = imc.RemoteCommandBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Communication Systems Query serializer class
///
class CommSystemsQuerySerializer extends imc.ImcSerializer<imc.CommSystemsQuery> {
  @override
  ByteData serialize(imc.CommSystemsQuery message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.CommSystemsQuery deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.CommSystemsQuery.static_id)
      return null;

    var builder = imc.CommSystemsQueryBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Telemetry Message serializer class
///
class TelemetryMsgSerializer extends imc.ImcSerializer<imc.TelemetryMsg> {
  @override
  ByteData serialize(imc.TelemetryMsg message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.TelemetryMsg deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.TelemetryMsg.static_id)
      return null;

    var builder = imc.TelemetryMsgBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// LBL Range serializer class
///
class LblRangeSerializer extends imc.ImcSerializer<imc.LblRange> {
  @override
  ByteData serialize(imc.LblRange message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.LblRange deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.LblRange.static_id)
      return null;

    var builder = imc.LblRangeBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// LBL Beacon Configuration serializer class
///
class LblBeaconSerializer extends imc.ImcSerializer<imc.LblBeacon> {
  @override
  ByteData serialize(imc.LblBeacon message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.LblBeacon deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.LblBeacon.static_id)
      return null;

    var builder = imc.LblBeaconBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// LBL Configuration serializer class
///
class LblConfigSerializer extends imc.ImcSerializer<imc.LblConfig> {
  @override
  ByteData serialize(imc.LblConfig message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.LblConfig deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.LblConfig.static_id)
      return null;

    var builder = imc.LblConfigBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Acoustic Message serializer class
///
class AcousticMessageSerializer extends imc.ImcSerializer<imc.AcousticMessage> {
  @override
  ByteData serialize(imc.AcousticMessage message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.AcousticMessage deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.AcousticMessage.static_id)
      return null;

    var builder = imc.AcousticMessageBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Acoustic Operation serializer class
///
class AcousticOperationSerializer extends imc.ImcSerializer<imc.AcousticOperation> {
  @override
  ByteData serialize(imc.AcousticOperation message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.AcousticOperation deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.AcousticOperation.static_id)
      return null;

    var builder = imc.AcousticOperationBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Acoustic Systems Query serializer class
///
class AcousticSystemsQuerySerializer extends imc.ImcSerializer<imc.AcousticSystemsQuery> {
  @override
  ByteData serialize(imc.AcousticSystemsQuery message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.AcousticSystemsQuery deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.AcousticSystemsQuery.static_id)
      return null;

    var builder = imc.AcousticSystemsQueryBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Acoustic Systems serializer class
///
class AcousticSystemsSerializer extends imc.ImcSerializer<imc.AcousticSystems> {
  @override
  ByteData serialize(imc.AcousticSystems message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.AcousticSystems deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.AcousticSystems.static_id)
      return null;

    var builder = imc.AcousticSystemsBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Acoustic Link Quality serializer class
///
class AcousticLinkSerializer extends imc.ImcSerializer<imc.AcousticLink> {
  @override
  ByteData serialize(imc.AcousticLink message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.AcousticLink deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.AcousticLink.static_id)
      return null;

    var builder = imc.AcousticLinkBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Revolutions Per Minute serializer class
///
class RpmSerializer extends imc.ImcSerializer<imc.Rpm> {
  @override
  ByteData serialize(imc.Rpm message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Rpm deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Rpm.static_id)
      return null;

    var builder = imc.RpmBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Voltage serializer class
///
class VoltageSerializer extends imc.ImcSerializer<imc.Voltage> {
  @override
  ByteData serialize(imc.Voltage message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Voltage deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Voltage.static_id)
      return null;

    var builder = imc.VoltageBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Current serializer class
///
class CurrentSerializer extends imc.ImcSerializer<imc.Current> {
  @override
  ByteData serialize(imc.Current message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Current deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Current.static_id)
      return null;

    var builder = imc.CurrentBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// GPS Fix serializer class
///
class GpsFixSerializer extends imc.ImcSerializer<imc.GpsFix> {
  @override
  ByteData serialize(imc.GpsFix message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.GpsFix deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.GpsFix.static_id)
      return null;

    var builder = imc.GpsFixBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Euler Angles serializer class
///
class EulerAnglesSerializer extends imc.ImcSerializer<imc.EulerAngles> {
  @override
  ByteData serialize(imc.EulerAngles message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.EulerAngles deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.EulerAngles.static_id)
      return null;

    var builder = imc.EulerAnglesBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Euler Angles Delta serializer class
///
class EulerAnglesDeltaSerializer extends imc.ImcSerializer<imc.EulerAnglesDelta> {
  @override
  ByteData serialize(imc.EulerAnglesDelta message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.EulerAnglesDelta deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.EulerAnglesDelta.static_id)
      return null;

    var builder = imc.EulerAnglesDeltaBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Angular Velocity serializer class
///
class AngularVelocitySerializer extends imc.ImcSerializer<imc.AngularVelocity> {
  @override
  ByteData serialize(imc.AngularVelocity message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.AngularVelocity deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.AngularVelocity.static_id)
      return null;

    var builder = imc.AngularVelocityBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Acceleration serializer class
///
class AccelerationSerializer extends imc.ImcSerializer<imc.Acceleration> {
  @override
  ByteData serialize(imc.Acceleration message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Acceleration deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Acceleration.static_id)
      return null;

    var builder = imc.AccelerationBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Magnetic Field serializer class
///
class MagneticFieldSerializer extends imc.ImcSerializer<imc.MagneticField> {
  @override
  ByteData serialize(imc.MagneticField message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.MagneticField deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.MagneticField.static_id)
      return null;

    var builder = imc.MagneticFieldBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Ground Velocity serializer class
///
class GroundVelocitySerializer extends imc.ImcSerializer<imc.GroundVelocity> {
  @override
  ByteData serialize(imc.GroundVelocity message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.GroundVelocity deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.GroundVelocity.static_id)
      return null;

    var builder = imc.GroundVelocityBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Water Velocity serializer class
///
class WaterVelocitySerializer extends imc.ImcSerializer<imc.WaterVelocity> {
  @override
  ByteData serialize(imc.WaterVelocity message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.WaterVelocity deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.WaterVelocity.static_id)
      return null;

    var builder = imc.WaterVelocityBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Velocity Delta serializer class
///
class VelocityDeltaSerializer extends imc.ImcSerializer<imc.VelocityDelta> {
  @override
  ByteData serialize(imc.VelocityDelta message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.VelocityDelta deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.VelocityDelta.static_id)
      return null;

    var builder = imc.VelocityDeltaBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Distance serializer class
///
class DistanceSerializer extends imc.ImcSerializer<imc.Distance> {
  @override
  ByteData serialize(imc.Distance message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Distance deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Distance.static_id)
      return null;

    var builder = imc.DistanceBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Temperature serializer class
///
class TemperatureSerializer extends imc.ImcSerializer<imc.Temperature> {
  @override
  ByteData serialize(imc.Temperature message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Temperature deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Temperature.static_id)
      return null;

    var builder = imc.TemperatureBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Pressure serializer class
///
class PressureSerializer extends imc.ImcSerializer<imc.Pressure> {
  @override
  ByteData serialize(imc.Pressure message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Pressure deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Pressure.static_id)
      return null;

    var builder = imc.PressureBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Depth serializer class
///
class DepthSerializer extends imc.ImcSerializer<imc.Depth> {
  @override
  ByteData serialize(imc.Depth message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Depth deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Depth.static_id)
      return null;

    var builder = imc.DepthBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Depth Offset serializer class
///
class DepthOffsetSerializer extends imc.ImcSerializer<imc.DepthOffset> {
  @override
  ByteData serialize(imc.DepthOffset message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.DepthOffset deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.DepthOffset.static_id)
      return null;

    var builder = imc.DepthOffsetBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Sound Speed serializer class
///
class SoundSpeedSerializer extends imc.ImcSerializer<imc.SoundSpeed> {
  @override
  ByteData serialize(imc.SoundSpeed message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.SoundSpeed deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.SoundSpeed.static_id)
      return null;

    var builder = imc.SoundSpeedBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Water Density serializer class
///
class WaterDensitySerializer extends imc.ImcSerializer<imc.WaterDensity> {
  @override
  ByteData serialize(imc.WaterDensity message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.WaterDensity deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.WaterDensity.static_id)
      return null;

    var builder = imc.WaterDensityBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Conductivity serializer class
///
class ConductivitySerializer extends imc.ImcSerializer<imc.Conductivity> {
  @override
  ByteData serialize(imc.Conductivity message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Conductivity deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Conductivity.static_id)
      return null;

    var builder = imc.ConductivityBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Salinity serializer class
///
class SalinitySerializer extends imc.ImcSerializer<imc.Salinity> {
  @override
  ByteData serialize(imc.Salinity message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Salinity deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Salinity.static_id)
      return null;

    var builder = imc.SalinityBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Wind Speed serializer class
///
class WindSpeedSerializer extends imc.ImcSerializer<imc.WindSpeed> {
  @override
  ByteData serialize(imc.WindSpeed message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.WindSpeed deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.WindSpeed.static_id)
      return null;

    var builder = imc.WindSpeedBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Relative Humidity serializer class
///
class RelativeHumiditySerializer extends imc.ImcSerializer<imc.RelativeHumidity> {
  @override
  ByteData serialize(imc.RelativeHumidity message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.RelativeHumidity deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.RelativeHumidity.static_id)
      return null;

    var builder = imc.RelativeHumidityBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Device Data (Text) serializer class
///
class DevDataTextSerializer extends imc.ImcSerializer<imc.DevDataText> {
  @override
  ByteData serialize(imc.DevDataText message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.DevDataText deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.DevDataText.static_id)
      return null;

    var builder = imc.DevDataTextBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Device Data (Binary) serializer class
///
class DevDataBinarySerializer extends imc.ImcSerializer<imc.DevDataBinary> {
  @override
  ByteData serialize(imc.DevDataBinary message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.DevDataBinary deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.DevDataBinary.static_id)
      return null;

    var builder = imc.DevDataBinaryBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Force serializer class
///
class ForceSerializer extends imc.ImcSerializer<imc.Force> {
  @override
  ByteData serialize(imc.Force message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Force deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Force.static_id)
      return null;

    var builder = imc.ForceBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Sonar Data serializer class
///
class SonarDataSerializer extends imc.ImcSerializer<imc.SonarData> {
  @override
  ByteData serialize(imc.SonarData message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.SonarData deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.SonarData.static_id)
      return null;

    var builder = imc.SonarDataBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Pulse serializer class
///
class PulseSerializer extends imc.ImcSerializer<imc.Pulse> {
  @override
  ByteData serialize(imc.Pulse message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Pulse deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Pulse.static_id)
      return null;

    var builder = imc.PulseBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Pulse Detection Control serializer class
///
class PulseDetectionControlSerializer extends imc.ImcSerializer<imc.PulseDetectionControl> {
  @override
  ByteData serialize(imc.PulseDetectionControl message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.PulseDetectionControl deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.PulseDetectionControl.static_id)
      return null;

    var builder = imc.PulseDetectionControlBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Fuel Level serializer class
///
class FuelLevelSerializer extends imc.ImcSerializer<imc.FuelLevel> {
  @override
  ByteData serialize(imc.FuelLevel message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.FuelLevel deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.FuelLevel.static_id)
      return null;

    var builder = imc.FuelLevelBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// GPS Navigation Data serializer class
///
class GpsNavDataSerializer extends imc.ImcSerializer<imc.GpsNavData> {
  @override
  ByteData serialize(imc.GpsNavData message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.GpsNavData deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.GpsNavData.static_id)
      return null;

    var builder = imc.GpsNavDataBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Servo Position serializer class
///
class ServoPositionSerializer extends imc.ImcSerializer<imc.ServoPosition> {
  @override
  ByteData serialize(imc.ServoPosition message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.ServoPosition deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.ServoPosition.static_id)
      return null;

    var builder = imc.ServoPositionBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Device State serializer class
///
class DeviceStateSerializer extends imc.ImcSerializer<imc.DeviceState> {
  @override
  ByteData serialize(imc.DeviceState message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.DeviceState deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.DeviceState.static_id)
      return null;

    var builder = imc.DeviceStateBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Beam Configuration serializer class
///
class BeamConfigSerializer extends imc.ImcSerializer<imc.BeamConfig> {
  @override
  ByteData serialize(imc.BeamConfig message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.BeamConfig deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.BeamConfig.static_id)
      return null;

    var builder = imc.BeamConfigBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Data Sanity serializer class
///
class DataSanitySerializer extends imc.ImcSerializer<imc.DataSanity> {
  @override
  ByteData serialize(imc.DataSanity message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.DataSanity deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.DataSanity.static_id)
      return null;

    var builder = imc.DataSanityBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Rhodamine Dye serializer class
///
class RhodamineDyeSerializer extends imc.ImcSerializer<imc.RhodamineDye> {
  @override
  ByteData serialize(imc.RhodamineDye message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.RhodamineDye deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.RhodamineDye.static_id)
      return null;

    var builder = imc.RhodamineDyeBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Crude Oil serializer class
///
class CrudeOilSerializer extends imc.ImcSerializer<imc.CrudeOil> {
  @override
  ByteData serialize(imc.CrudeOil message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.CrudeOil deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.CrudeOil.static_id)
      return null;

    var builder = imc.CrudeOilBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Fine Oil serializer class
///
class FineOilSerializer extends imc.ImcSerializer<imc.FineOil> {
  @override
  ByteData serialize(imc.FineOil message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.FineOil deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.FineOil.static_id)
      return null;

    var builder = imc.FineOilBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Turbidity serializer class
///
class TurbiditySerializer extends imc.ImcSerializer<imc.Turbidity> {
  @override
  ByteData serialize(imc.Turbidity message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Turbidity deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Turbidity.static_id)
      return null;

    var builder = imc.TurbidityBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Chlorophyll serializer class
///
class ChlorophyllSerializer extends imc.ImcSerializer<imc.Chlorophyll> {
  @override
  ByteData serialize(imc.Chlorophyll message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Chlorophyll deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Chlorophyll.static_id)
      return null;

    var builder = imc.ChlorophyllBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Fluorescein serializer class
///
class FluoresceinSerializer extends imc.ImcSerializer<imc.Fluorescein> {
  @override
  ByteData serialize(imc.Fluorescein message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Fluorescein deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Fluorescein.static_id)
      return null;

    var builder = imc.FluoresceinBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Phycocyanin serializer class
///
class PhycocyaninSerializer extends imc.ImcSerializer<imc.Phycocyanin> {
  @override
  ByteData serialize(imc.Phycocyanin message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Phycocyanin deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Phycocyanin.static_id)
      return null;

    var builder = imc.PhycocyaninBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Phycoerythrin serializer class
///
class PhycoerythrinSerializer extends imc.ImcSerializer<imc.Phycoerythrin> {
  @override
  ByteData serialize(imc.Phycoerythrin message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Phycoerythrin deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Phycoerythrin.static_id)
      return null;

    var builder = imc.PhycoerythrinBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// GPS Fix RTK serializer class
///
class GpsFixRtkSerializer extends imc.ImcSerializer<imc.GpsFixRtk> {
  @override
  ByteData serialize(imc.GpsFixRtk message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.GpsFixRtk deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.GpsFixRtk.static_id)
      return null;

    var builder = imc.GpsFixRtkBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// External Navigation Data serializer class
///
class ExternalNavDataSerializer extends imc.ImcSerializer<imc.ExternalNavData> {
  @override
  ByteData serialize(imc.ExternalNavData message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.ExternalNavData deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.ExternalNavData.static_id)
      return null;

    var builder = imc.ExternalNavDataBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Dissolved Oxygen serializer class
///
class DissolvedOxygenSerializer extends imc.ImcSerializer<imc.DissolvedOxygen> {
  @override
  ByteData serialize(imc.DissolvedOxygen message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.DissolvedOxygen deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.DissolvedOxygen.static_id)
      return null;

    var builder = imc.DissolvedOxygenBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Air Saturation serializer class
///
class AirSaturationSerializer extends imc.ImcSerializer<imc.AirSaturation> {
  @override
  ByteData serialize(imc.AirSaturation message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.AirSaturation deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.AirSaturation.static_id)
      return null;

    var builder = imc.AirSaturationBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Throttle serializer class
///
class ThrottleSerializer extends imc.ImcSerializer<imc.Throttle> {
  @override
  ByteData serialize(imc.Throttle message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Throttle deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Throttle.static_id)
      return null;

    var builder = imc.ThrottleBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// pH serializer class
///
class PHSerializer extends imc.ImcSerializer<imc.PH> {
  @override
  ByteData serialize(imc.PH message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.PH deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.PH.static_id)
      return null;

    var builder = imc.PHBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Redox Potential serializer class
///
class RedoxSerializer extends imc.ImcSerializer<imc.Redox> {
  @override
  ByteData serialize(imc.Redox message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Redox deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Redox.static_id)
      return null;

    var builder = imc.RedoxBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Camera Zoom serializer class
///
class CameraZoomSerializer extends imc.ImcSerializer<imc.CameraZoom> {
  @override
  ByteData serialize(imc.CameraZoom message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.CameraZoom deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.CameraZoom.static_id)
      return null;

    var builder = imc.CameraZoomBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Set Thruster Actuation serializer class
///
class SetThrusterActuationSerializer extends imc.ImcSerializer<imc.SetThrusterActuation> {
  @override
  ByteData serialize(imc.SetThrusterActuation message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.SetThrusterActuation deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.SetThrusterActuation.static_id)
      return null;

    var builder = imc.SetThrusterActuationBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Set Servo Position serializer class
///
class SetServoPositionSerializer extends imc.ImcSerializer<imc.SetServoPosition> {
  @override
  ByteData serialize(imc.SetServoPosition message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.SetServoPosition deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.SetServoPosition.static_id)
      return null;

    var builder = imc.SetServoPositionBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Set Control Surface Deflection serializer class
///
class SetControlSurfaceDeflectionSerializer extends imc.ImcSerializer<imc.SetControlSurfaceDeflection> {
  @override
  ByteData serialize(imc.SetControlSurfaceDeflection message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.SetControlSurfaceDeflection deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.SetControlSurfaceDeflection.static_id)
      return null;

    var builder = imc.SetControlSurfaceDeflectionBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Remote Actions Request serializer class
///
class RemoteActionsRequestSerializer extends imc.ImcSerializer<imc.RemoteActionsRequest> {
  @override
  ByteData serialize(imc.RemoteActionsRequest message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.RemoteActionsRequest deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.RemoteActionsRequest.static_id)
      return null;

    var builder = imc.RemoteActionsRequestBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Remote Actions serializer class
///
class RemoteActionsSerializer extends imc.ImcSerializer<imc.RemoteActions> {
  @override
  ByteData serialize(imc.RemoteActions message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.RemoteActions deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.RemoteActions.static_id)
      return null;

    var builder = imc.RemoteActionsBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Button Event serializer class
///
class ButtonEventSerializer extends imc.ImcSerializer<imc.ButtonEvent> {
  @override
  ByteData serialize(imc.ButtonEvent message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.ButtonEvent deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.ButtonEvent.static_id)
      return null;

    var builder = imc.ButtonEventBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// LCD Control serializer class
///
class LcdControlSerializer extends imc.ImcSerializer<imc.LcdControl> {
  @override
  ByteData serialize(imc.LcdControl message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.LcdControl deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.LcdControl.static_id)
      return null;

    var builder = imc.LcdControlBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Power Operation serializer class
///
class PowerOperationSerializer extends imc.ImcSerializer<imc.PowerOperation> {
  @override
  ByteData serialize(imc.PowerOperation message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.PowerOperation deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.PowerOperation.static_id)
      return null;

    var builder = imc.PowerOperationBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Power Channel Control serializer class
///
class PowerChannelControlSerializer extends imc.ImcSerializer<imc.PowerChannelControl> {
  @override
  ByteData serialize(imc.PowerChannelControl message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.PowerChannelControl deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.PowerChannelControl.static_id)
      return null;

    var builder = imc.PowerChannelControlBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Query Power Channel State serializer class
///
class QueryPowerChannelStateSerializer extends imc.ImcSerializer<imc.QueryPowerChannelState> {
  @override
  ByteData serialize(imc.QueryPowerChannelState message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.QueryPowerChannelState deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.QueryPowerChannelState.static_id)
      return null;

    var builder = imc.QueryPowerChannelStateBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Power Channel State serializer class
///
class PowerChannelStateSerializer extends imc.ImcSerializer<imc.PowerChannelState> {
  @override
  ByteData serialize(imc.PowerChannelState message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.PowerChannelState deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.PowerChannelState.static_id)
      return null;

    var builder = imc.PowerChannelStateBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// LED Brightness serializer class
///
class LedBrightnessSerializer extends imc.ImcSerializer<imc.LedBrightness> {
  @override
  ByteData serialize(imc.LedBrightness message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.LedBrightness deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.LedBrightness.static_id)
      return null;

    var builder = imc.LedBrightnessBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Query LED Brightness serializer class
///
class QueryLedBrightnessSerializer extends imc.ImcSerializer<imc.QueryLedBrightness> {
  @override
  ByteData serialize(imc.QueryLedBrightness message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.QueryLedBrightness deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.QueryLedBrightness.static_id)
      return null;

    var builder = imc.QueryLedBrightnessBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Set LED Brightness serializer class
///
class SetLedBrightnessSerializer extends imc.ImcSerializer<imc.SetLedBrightness> {
  @override
  ByteData serialize(imc.SetLedBrightness message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.SetLedBrightness deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.SetLedBrightness.static_id)
      return null;

    var builder = imc.SetLedBrightnessBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Set PWM serializer class
///
class SetPWMSerializer extends imc.ImcSerializer<imc.SetPWM> {
  @override
  ByteData serialize(imc.SetPWM message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.SetPWM deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.SetPWM.static_id)
      return null;

    var builder = imc.SetPWMBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// PWM serializer class
///
class PWMSerializer extends imc.ImcSerializer<imc.PWM> {
  @override
  ByteData serialize(imc.PWM message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.PWM deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.PWM.static_id)
      return null;

    var builder = imc.PWMBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Estimated State serializer class
///
class EstimatedStateSerializer extends imc.ImcSerializer<imc.EstimatedState> {
  @override
  ByteData serialize(imc.EstimatedState message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.EstimatedState deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.EstimatedState.static_id)
      return null;

    var builder = imc.EstimatedStateBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Estimated Stream Velocity serializer class
///
class EstimatedStreamVelocitySerializer extends imc.ImcSerializer<imc.EstimatedStreamVelocity> {
  @override
  ByteData serialize(imc.EstimatedStreamVelocity message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.EstimatedStreamVelocity deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.EstimatedStreamVelocity.static_id)
      return null;

    var builder = imc.EstimatedStreamVelocityBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Indicated Speed serializer class
///
class IndicatedSpeedSerializer extends imc.ImcSerializer<imc.IndicatedSpeed> {
  @override
  ByteData serialize(imc.IndicatedSpeed message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.IndicatedSpeed deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.IndicatedSpeed.static_id)
      return null;

    var builder = imc.IndicatedSpeedBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// True Speed serializer class
///
class TrueSpeedSerializer extends imc.ImcSerializer<imc.TrueSpeed> {
  @override
  ByteData serialize(imc.TrueSpeed message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.TrueSpeed deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.TrueSpeed.static_id)
      return null;

    var builder = imc.TrueSpeedBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Navigation Uncertainty serializer class
///
class NavigationUncertaintySerializer extends imc.ImcSerializer<imc.NavigationUncertainty> {
  @override
  ByteData serialize(imc.NavigationUncertainty message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.NavigationUncertainty deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.NavigationUncertainty.static_id)
      return null;

    var builder = imc.NavigationUncertaintyBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Navigation Data serializer class
///
class NavigationDataSerializer extends imc.ImcSerializer<imc.NavigationData> {
  @override
  ByteData serialize(imc.NavigationData message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.NavigationData deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.NavigationData.static_id)
      return null;

    var builder = imc.NavigationDataBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// GPS Fix Rejection serializer class
///
class GpsFixRejectionSerializer extends imc.ImcSerializer<imc.GpsFixRejection> {
  @override
  ByteData serialize(imc.GpsFixRejection message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.GpsFixRejection deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.GpsFixRejection.static_id)
      return null;

    var builder = imc.GpsFixRejectionBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// LBL Range Acceptance serializer class
///
class LblRangeAcceptanceSerializer extends imc.ImcSerializer<imc.LblRangeAcceptance> {
  @override
  ByteData serialize(imc.LblRangeAcceptance message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.LblRangeAcceptance deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.LblRangeAcceptance.static_id)
      return null;

    var builder = imc.LblRangeAcceptanceBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// DVL Rejection serializer class
///
class DvlRejectionSerializer extends imc.ImcSerializer<imc.DvlRejection> {
  @override
  ByteData serialize(imc.DvlRejection message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.DvlRejection deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.DvlRejection.static_id)
      return null;

    var builder = imc.DvlRejectionBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// LBL Beacon Position Estimate serializer class
///
class LblEstimateSerializer extends imc.ImcSerializer<imc.LblEstimate> {
  @override
  ByteData serialize(imc.LblEstimate message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.LblEstimate deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.LblEstimate.static_id)
      return null;

    var builder = imc.LblEstimateBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Alignment State serializer class
///
class AlignmentStateSerializer extends imc.ImcSerializer<imc.AlignmentState> {
  @override
  ByteData serialize(imc.AlignmentState message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.AlignmentState deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.AlignmentState.static_id)
      return null;

    var builder = imc.AlignmentStateBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// GroupStreamVelocity serializer class
///
class GroupStreamVelocitySerializer extends imc.ImcSerializer<imc.GroupStreamVelocity> {
  @override
  ByteData serialize(imc.GroupStreamVelocity message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.GroupStreamVelocity deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.GroupStreamVelocity.static_id)
      return null;

    var builder = imc.GroupStreamVelocityBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Airflow serializer class
///
class AirflowSerializer extends imc.ImcSerializer<imc.Airflow> {
  @override
  ByteData serialize(imc.Airflow message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Airflow deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Airflow.static_id)
      return null;

    var builder = imc.AirflowBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Desired Heading serializer class
///
class DesiredHeadingSerializer extends imc.ImcSerializer<imc.DesiredHeading> {
  @override
  ByteData serialize(imc.DesiredHeading message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.DesiredHeading deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.DesiredHeading.static_id)
      return null;

    var builder = imc.DesiredHeadingBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Desired Z serializer class
///
class DesiredZSerializer extends imc.ImcSerializer<imc.DesiredZ> {
  @override
  ByteData serialize(imc.DesiredZ message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.DesiredZ deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.DesiredZ.static_id)
      return null;

    var builder = imc.DesiredZBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Desired Speed serializer class
///
class DesiredSpeedSerializer extends imc.ImcSerializer<imc.DesiredSpeed> {
  @override
  ByteData serialize(imc.DesiredSpeed message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.DesiredSpeed deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.DesiredSpeed.static_id)
      return null;

    var builder = imc.DesiredSpeedBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Desired Roll serializer class
///
class DesiredRollSerializer extends imc.ImcSerializer<imc.DesiredRoll> {
  @override
  ByteData serialize(imc.DesiredRoll message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.DesiredRoll deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.DesiredRoll.static_id)
      return null;

    var builder = imc.DesiredRollBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Desired Pitch serializer class
///
class DesiredPitchSerializer extends imc.ImcSerializer<imc.DesiredPitch> {
  @override
  ByteData serialize(imc.DesiredPitch message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.DesiredPitch deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.DesiredPitch.static_id)
      return null;

    var builder = imc.DesiredPitchBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Desired Vertical Rate serializer class
///
class DesiredVerticalRateSerializer extends imc.ImcSerializer<imc.DesiredVerticalRate> {
  @override
  ByteData serialize(imc.DesiredVerticalRate message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.DesiredVerticalRate deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.DesiredVerticalRate.static_id)
      return null;

    var builder = imc.DesiredVerticalRateBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Desired Path serializer class
///
class DesiredPathSerializer extends imc.ImcSerializer<imc.DesiredPath> {
  @override
  ByteData serialize(imc.DesiredPath message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.DesiredPath deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.DesiredPath.static_id)
      return null;

    var builder = imc.DesiredPathBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Desired Control serializer class
///
class DesiredControlSerializer extends imc.ImcSerializer<imc.DesiredControl> {
  @override
  ByteData serialize(imc.DesiredControl message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.DesiredControl deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.DesiredControl.static_id)
      return null;

    var builder = imc.DesiredControlBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Desired Heading Rate serializer class
///
class DesiredHeadingRateSerializer extends imc.ImcSerializer<imc.DesiredHeadingRate> {
  @override
  ByteData serialize(imc.DesiredHeadingRate message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.DesiredHeadingRate deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.DesiredHeadingRate.static_id)
      return null;

    var builder = imc.DesiredHeadingRateBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Desired Velocity serializer class
///
class DesiredVelocitySerializer extends imc.ImcSerializer<imc.DesiredVelocity> {
  @override
  ByteData serialize(imc.DesiredVelocity message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.DesiredVelocity deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.DesiredVelocity.static_id)
      return null;

    var builder = imc.DesiredVelocityBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Path Control State serializer class
///
class PathControlStateSerializer extends imc.ImcSerializer<imc.PathControlState> {
  @override
  ByteData serialize(imc.PathControlState message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.PathControlState deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.PathControlState.static_id)
      return null;

    var builder = imc.PathControlStateBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Allocated Control Torques serializer class
///
class AllocatedControlTorquesSerializer extends imc.ImcSerializer<imc.AllocatedControlTorques> {
  @override
  ByteData serialize(imc.AllocatedControlTorques message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.AllocatedControlTorques deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.AllocatedControlTorques.static_id)
      return null;

    var builder = imc.AllocatedControlTorquesBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Control Parcel serializer class
///
class ControlParcelSerializer extends imc.ImcSerializer<imc.ControlParcel> {
  @override
  ByteData serialize(imc.ControlParcel message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.ControlParcel deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.ControlParcel.static_id)
      return null;

    var builder = imc.ControlParcelBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Brake serializer class
///
class BrakeSerializer extends imc.ImcSerializer<imc.Brake> {
  @override
  ByteData serialize(imc.Brake message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Brake deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Brake.static_id)
      return null;

    var builder = imc.BrakeBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Desired Linear State serializer class
///
class DesiredLinearStateSerializer extends imc.ImcSerializer<imc.DesiredLinearState> {
  @override
  ByteData serialize(imc.DesiredLinearState message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.DesiredLinearState deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.DesiredLinearState.static_id)
      return null;

    var builder = imc.DesiredLinearStateBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Desired Throttle serializer class
///
class DesiredThrottleSerializer extends imc.ImcSerializer<imc.DesiredThrottle> {
  @override
  ByteData serialize(imc.DesiredThrottle message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.DesiredThrottle deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.DesiredThrottle.static_id)
      return null;

    var builder = imc.DesiredThrottleBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Goto Maneuver serializer class
///
class GotoSerializer extends imc.ImcSerializer<imc.Goto> {
  @override
  ByteData serialize(imc.Goto message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Goto deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Goto.static_id)
      return null;

    var builder = imc.GotoBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// PopUp Maneuver serializer class
///
class PopUpSerializer extends imc.ImcSerializer<imc.PopUp> {
  @override
  ByteData serialize(imc.PopUp message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.PopUp deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.PopUp.static_id)
      return null;

    var builder = imc.PopUpBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Teleoperation Maneuver serializer class
///
class TeleoperationSerializer extends imc.ImcSerializer<imc.Teleoperation> {
  @override
  ByteData serialize(imc.Teleoperation message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Teleoperation deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Teleoperation.static_id)
      return null;

    var builder = imc.TeleoperationBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Loiter Maneuver serializer class
///
class LoiterSerializer extends imc.ImcSerializer<imc.Loiter> {
  @override
  ByteData serialize(imc.Loiter message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Loiter deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Loiter.static_id)
      return null;

    var builder = imc.LoiterBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Idle Maneuver serializer class
///
class IdleManeuverSerializer extends imc.ImcSerializer<imc.IdleManeuver> {
  @override
  ByteData serialize(imc.IdleManeuver message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.IdleManeuver deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.IdleManeuver.static_id)
      return null;

    var builder = imc.IdleManeuverBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Low Level Control Maneuver serializer class
///
class LowLevelControlSerializer extends imc.ImcSerializer<imc.LowLevelControl> {
  @override
  ByteData serialize(imc.LowLevelControl message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.LowLevelControl deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.LowLevelControl.static_id)
      return null;

    var builder = imc.LowLevelControlBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Rows Maneuver serializer class
///
class RowsSerializer extends imc.ImcSerializer<imc.Rows> {
  @override
  ByteData serialize(imc.Rows message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Rows deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Rows.static_id)
      return null;

    var builder = imc.RowsBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Follow Path Maneuver serializer class
///
class FollowPathSerializer extends imc.ImcSerializer<imc.FollowPath> {
  @override
  ByteData serialize(imc.FollowPath message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.FollowPath deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.FollowPath.static_id)
      return null;

    var builder = imc.FollowPathBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Path Point serializer class
///
class PathPointSerializer extends imc.ImcSerializer<imc.PathPoint> {
  @override
  ByteData serialize(imc.PathPoint message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.PathPoint deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.PathPoint.static_id)
      return null;

    var builder = imc.PathPointBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Yo-Yo Maneuver serializer class
///
class YoYoSerializer extends imc.ImcSerializer<imc.YoYo> {
  @override
  ByteData serialize(imc.YoYo message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.YoYo deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.YoYo.static_id)
      return null;

    var builder = imc.YoYoBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Teleoperation Done serializer class
///
class TeleoperationDoneSerializer extends imc.ImcSerializer<imc.TeleoperationDone> {
  @override
  ByteData serialize(imc.TeleoperationDone message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.TeleoperationDone deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.TeleoperationDone.static_id)
      return null;

    var builder = imc.TeleoperationDoneBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Station Keeping serializer class
///
class StationKeepingSerializer extends imc.ImcSerializer<imc.StationKeeping> {
  @override
  ByteData serialize(imc.StationKeeping message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.StationKeeping deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.StationKeeping.static_id)
      return null;

    var builder = imc.StationKeepingBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Elevator Maneuver serializer class
///
class ElevatorSerializer extends imc.ImcSerializer<imc.Elevator> {
  @override
  ByteData serialize(imc.Elevator message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Elevator deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Elevator.static_id)
      return null;

    var builder = imc.ElevatorBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Follow Trajectory serializer class
///
class FollowTrajectorySerializer extends imc.ImcSerializer<imc.FollowTrajectory> {
  @override
  ByteData serialize(imc.FollowTrajectory message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.FollowTrajectory deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.FollowTrajectory.static_id)
      return null;

    var builder = imc.FollowTrajectoryBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Trajectory Point serializer class
///
class TrajectoryPointSerializer extends imc.ImcSerializer<imc.TrajectoryPoint> {
  @override
  ByteData serialize(imc.TrajectoryPoint message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.TrajectoryPoint deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.TrajectoryPoint.static_id)
      return null;

    var builder = imc.TrajectoryPointBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Custom Maneuver serializer class
///
class CustomManeuverSerializer extends imc.ImcSerializer<imc.CustomManeuver> {
  @override
  ByteData serialize(imc.CustomManeuver message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.CustomManeuver deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.CustomManeuver.static_id)
      return null;

    var builder = imc.CustomManeuverBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Vehicle Formation serializer class
///
class VehicleFormationSerializer extends imc.ImcSerializer<imc.VehicleFormation> {
  @override
  ByteData serialize(imc.VehicleFormation message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.VehicleFormation deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.VehicleFormation.static_id)
      return null;

    var builder = imc.VehicleFormationBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Vehicle Formation Participant serializer class
///
class VehicleFormationParticipantSerializer extends imc.ImcSerializer<imc.VehicleFormationParticipant> {
  @override
  ByteData serialize(imc.VehicleFormationParticipant message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.VehicleFormationParticipant deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.VehicleFormationParticipant.static_id)
      return null;

    var builder = imc.VehicleFormationParticipantBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Stop Maneuver serializer class
///
class StopManeuverSerializer extends imc.ImcSerializer<imc.StopManeuver> {
  @override
  ByteData serialize(imc.StopManeuver message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.StopManeuver deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.StopManeuver.static_id)
      return null;

    var builder = imc.StopManeuverBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Register Maneuver serializer class
///
class RegisterManeuverSerializer extends imc.ImcSerializer<imc.RegisterManeuver> {
  @override
  ByteData serialize(imc.RegisterManeuver message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.RegisterManeuver deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.RegisterManeuver.static_id)
      return null;

    var builder = imc.RegisterManeuverBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Maneuver Control State serializer class
///
class ManeuverControlStateSerializer extends imc.ImcSerializer<imc.ManeuverControlState> {
  @override
  ByteData serialize(imc.ManeuverControlState message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.ManeuverControlState deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.ManeuverControlState.static_id)
      return null;

    var builder = imc.ManeuverControlStateBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Follow System serializer class
///
class FollowSystemSerializer extends imc.ImcSerializer<imc.FollowSystem> {
  @override
  ByteData serialize(imc.FollowSystem message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.FollowSystem deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.FollowSystem.static_id)
      return null;

    var builder = imc.FollowSystemBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Communications Relay serializer class
///
class CommsRelaySerializer extends imc.ImcSerializer<imc.CommsRelay> {
  @override
  ByteData serialize(imc.CommsRelay message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.CommsRelay deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.CommsRelay.static_id)
      return null;

    var builder = imc.CommsRelayBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Cover Area serializer class
///
class CoverAreaSerializer extends imc.ImcSerializer<imc.CoverArea> {
  @override
  ByteData serialize(imc.CoverArea message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.CoverArea deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.CoverArea.static_id)
      return null;

    var builder = imc.CoverAreaBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Polygon Vertex serializer class
///
class PolygonVertexSerializer extends imc.ImcSerializer<imc.PolygonVertex> {
  @override
  ByteData serialize(imc.PolygonVertex message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.PolygonVertex deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.PolygonVertex.static_id)
      return null;

    var builder = imc.PolygonVertexBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Compass Calibration Maneuver serializer class
///
class CompassCalibrationSerializer extends imc.ImcSerializer<imc.CompassCalibration> {
  @override
  ByteData serialize(imc.CompassCalibration message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.CompassCalibration deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.CompassCalibration.static_id)
      return null;

    var builder = imc.CompassCalibrationBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Formation Parameters serializer class
///
class FormationParametersSerializer extends imc.ImcSerializer<imc.FormationParameters> {
  @override
  ByteData serialize(imc.FormationParameters message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.FormationParameters deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.FormationParameters.static_id)
      return null;

    var builder = imc.FormationParametersBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Formation Plan Execution serializer class
///
class FormationPlanExecutionSerializer extends imc.ImcSerializer<imc.FormationPlanExecution> {
  @override
  ByteData serialize(imc.FormationPlanExecution message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.FormationPlanExecution deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.FormationPlanExecution.static_id)
      return null;

    var builder = imc.FormationPlanExecutionBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Follow Reference Maneuver serializer class
///
class FollowReferenceSerializer extends imc.ImcSerializer<imc.FollowReference> {
  @override
  ByteData serialize(imc.FollowReference message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.FollowReference deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.FollowReference.static_id)
      return null;

    var builder = imc.FollowReferenceBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Reference To Follow serializer class
///
class ReferenceSerializer extends imc.ImcSerializer<imc.Reference> {
  @override
  ByteData serialize(imc.Reference message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Reference deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Reference.static_id)
      return null;

    var builder = imc.ReferenceBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Follow Reference State serializer class
///
class FollowRefStateSerializer extends imc.ImcSerializer<imc.FollowRefState> {
  @override
  ByteData serialize(imc.FollowRefState message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.FollowRefState deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.FollowRefState.static_id)
      return null;

    var builder = imc.FollowRefStateBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Formation Monitoring Data serializer class
///
class FormationMonitorSerializer extends imc.ImcSerializer<imc.FormationMonitor> {
  @override
  ByteData serialize(imc.FormationMonitor message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.FormationMonitor deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.FormationMonitor.static_id)
      return null;

    var builder = imc.FormationMonitorBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Relative State serializer class
///
class RelativeStateSerializer extends imc.ImcSerializer<imc.RelativeState> {
  @override
  ByteData serialize(imc.RelativeState message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.RelativeState deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.RelativeState.static_id)
      return null;

    var builder = imc.RelativeStateBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Dislodge Maneuver serializer class
///
class DislodgeSerializer extends imc.ImcSerializer<imc.Dislodge> {
  @override
  ByteData serialize(imc.Dislodge message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Dislodge deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Dislodge.static_id)
      return null;

    var builder = imc.DislodgeBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Formation serializer class
///
class FormationSerializer extends imc.ImcSerializer<imc.Formation> {
  @override
  ByteData serialize(imc.Formation message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Formation deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Formation.static_id)
      return null;

    var builder = imc.FormationBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Launch Maneuver serializer class
///
class LaunchSerializer extends imc.ImcSerializer<imc.Launch> {
  @override
  ByteData serialize(imc.Launch message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Launch deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Launch.static_id)
      return null;

    var builder = imc.LaunchBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Drop Maneuver serializer class
///
class DropSerializer extends imc.ImcSerializer<imc.Drop> {
  @override
  ByteData serialize(imc.Drop message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Drop deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Drop.static_id)
      return null;

    var builder = imc.DropBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Scheduled Goto serializer class
///
class ScheduledGotoSerializer extends imc.ImcSerializer<imc.ScheduledGoto> {
  @override
  ByteData serialize(imc.ScheduledGoto message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.ScheduledGoto deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.ScheduledGoto.static_id)
      return null;

    var builder = imc.ScheduledGotoBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Rows Coverage serializer class
///
class RowsCoverageSerializer extends imc.ImcSerializer<imc.RowsCoverage> {
  @override
  ByteData serialize(imc.RowsCoverage message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.RowsCoverage deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.RowsCoverage.static_id)
      return null;

    var builder = imc.RowsCoverageBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Sample Maneuver serializer class
///
class SampleSerializer extends imc.ImcSerializer<imc.Sample> {
  @override
  ByteData serialize(imc.Sample message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Sample deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Sample.static_id)
      return null;

    var builder = imc.SampleBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Image Tracking serializer class
///
class ImageTrackingSerializer extends imc.ImcSerializer<imc.ImageTracking> {
  @override
  ByteData serialize(imc.ImageTracking message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.ImageTracking deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.ImageTracking.static_id)
      return null;

    var builder = imc.ImageTrackingBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Takeoff Maneuver serializer class
///
class TakeoffSerializer extends imc.ImcSerializer<imc.Takeoff> {
  @override
  ByteData serialize(imc.Takeoff message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Takeoff deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Takeoff.static_id)
      return null;

    var builder = imc.TakeoffBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Land Maneuver serializer class
///
class LandSerializer extends imc.ImcSerializer<imc.Land> {
  @override
  ByteData serialize(imc.Land message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Land deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Land.static_id)
      return null;

    var builder = imc.LandBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Autonomous Section serializer class
///
class AutonomousSectionSerializer extends imc.ImcSerializer<imc.AutonomousSection> {
  @override
  ByteData serialize(imc.AutonomousSection message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.AutonomousSection deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.AutonomousSection.static_id)
      return null;

    var builder = imc.AutonomousSectionBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Follow Point Maneuver serializer class
///
class FollowPointSerializer extends imc.ImcSerializer<imc.FollowPoint> {
  @override
  ByteData serialize(imc.FollowPoint message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.FollowPoint deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.FollowPoint.static_id)
      return null;

    var builder = imc.FollowPointBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Alignment Maneuver serializer class
///
class AlignmentSerializer extends imc.ImcSerializer<imc.Alignment> {
  @override
  ByteData serialize(imc.Alignment message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Alignment deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Alignment.static_id)
      return null;

    var builder = imc.AlignmentBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Station Keeping Extended serializer class
///
class StationKeepingExtendedSerializer extends imc.ImcSerializer<imc.StationKeepingExtended> {
  @override
  ByteData serialize(imc.StationKeepingExtended message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.StationKeepingExtended deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.StationKeepingExtended.static_id)
      return null;

    var builder = imc.StationKeepingExtendedBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Magnetometer Maneuver serializer class
///
class MagnetometerSerializer extends imc.ImcSerializer<imc.Magnetometer> {
  @override
  ByteData serialize(imc.Magnetometer message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Magnetometer deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Magnetometer.static_id)
      return null;

    var builder = imc.MagnetometerBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Vehicle State serializer class
///
class VehicleStateSerializer extends imc.ImcSerializer<imc.VehicleState> {
  @override
  ByteData serialize(imc.VehicleState message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.VehicleState deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.VehicleState.static_id)
      return null;

    var builder = imc.VehicleStateBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Vehicle Command serializer class
///
class VehicleCommandSerializer extends imc.ImcSerializer<imc.VehicleCommand> {
  @override
  ByteData serialize(imc.VehicleCommand message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.VehicleCommand deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.VehicleCommand.static_id)
      return null;

    var builder = imc.VehicleCommandBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Monitor Entity State serializer class
///
class MonitorEntityStateSerializer extends imc.ImcSerializer<imc.MonitorEntityState> {
  @override
  ByteData serialize(imc.MonitorEntityState message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.MonitorEntityState deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.MonitorEntityState.static_id)
      return null;

    var builder = imc.MonitorEntityStateBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Entity Monitoring State serializer class
///
class EntityMonitoringStateSerializer extends imc.ImcSerializer<imc.EntityMonitoringState> {
  @override
  ByteData serialize(imc.EntityMonitoringState message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.EntityMonitoringState deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.EntityMonitoringState.static_id)
      return null;

    var builder = imc.EntityMonitoringStateBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Operational Limits serializer class
///
class OperationalLimitsSerializer extends imc.ImcSerializer<imc.OperationalLimits> {
  @override
  ByteData serialize(imc.OperationalLimits message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.OperationalLimits deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.OperationalLimits.static_id)
      return null;

    var builder = imc.OperationalLimitsBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Get Operational Limits serializer class
///
class GetOperationalLimitsSerializer extends imc.ImcSerializer<imc.GetOperationalLimits> {
  @override
  ByteData serialize(imc.GetOperationalLimits message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.GetOperationalLimits deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.GetOperationalLimits.static_id)
      return null;

    var builder = imc.GetOperationalLimitsBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Calibration serializer class
///
class CalibrationSerializer extends imc.ImcSerializer<imc.Calibration> {
  @override
  ByteData serialize(imc.Calibration message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Calibration deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Calibration.static_id)
      return null;

    var builder = imc.CalibrationBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Control Loops serializer class
///
class ControlLoopsSerializer extends imc.ImcSerializer<imc.ControlLoops> {
  @override
  ByteData serialize(imc.ControlLoops message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.ControlLoops deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.ControlLoops.static_id)
      return null;

    var builder = imc.ControlLoopsBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Vehicle Medium serializer class
///
class VehicleMediumSerializer extends imc.ImcSerializer<imc.VehicleMedium> {
  @override
  ByteData serialize(imc.VehicleMedium message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.VehicleMedium deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.VehicleMedium.static_id)
      return null;

    var builder = imc.VehicleMediumBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Collision serializer class
///
class CollisionSerializer extends imc.ImcSerializer<imc.Collision> {
  @override
  ByteData serialize(imc.Collision message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Collision deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Collision.static_id)
      return null;

    var builder = imc.CollisionBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Formation Tracking State serializer class
///
class FormStateSerializer extends imc.ImcSerializer<imc.FormState> {
  @override
  ByteData serialize(imc.FormState message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.FormState deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.FormState.static_id)
      return null;

    var builder = imc.FormStateBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Autopilot Mode serializer class
///
class AutopilotModeSerializer extends imc.ImcSerializer<imc.AutopilotMode> {
  @override
  ByteData serialize(imc.AutopilotMode message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.AutopilotMode deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.AutopilotMode.static_id)
      return null;

    var builder = imc.AutopilotModeBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Formation Tracking State serializer class
///
class FormationStateSerializer extends imc.ImcSerializer<imc.FormationState> {
  @override
  ByteData serialize(imc.FormationState message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.FormationState deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.FormationState.static_id)
      return null;

    var builder = imc.FormationStateBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Report Control serializer class
///
class ReportControlSerializer extends imc.ImcSerializer<imc.ReportControl> {
  @override
  ByteData serialize(imc.ReportControl message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.ReportControl deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.ReportControl.static_id)
      return null;

    var builder = imc.ReportControlBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// State Report serializer class
///
class StateReportSerializer extends imc.ImcSerializer<imc.StateReport> {
  @override
  ByteData serialize(imc.StateReport message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.StateReport deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.StateReport.static_id)
      return null;

    var builder = imc.StateReportBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Transmission Request serializer class
///
class TransmissionRequestSerializer extends imc.ImcSerializer<imc.TransmissionRequest> {
  @override
  ByteData serialize(imc.TransmissionRequest message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.TransmissionRequest deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.TransmissionRequest.static_id)
      return null;

    var builder = imc.TransmissionRequestBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Transmission Status serializer class
///
class TransmissionStatusSerializer extends imc.ImcSerializer<imc.TransmissionStatus> {
  @override
  ByteData serialize(imc.TransmissionStatus message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.TransmissionStatus deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.TransmissionStatus.static_id)
      return null;

    var builder = imc.TransmissionStatusBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// SMS Transmission Request serializer class
///
class SmsRequestSerializer extends imc.ImcSerializer<imc.SmsRequest> {
  @override
  ByteData serialize(imc.SmsRequest message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.SmsRequest deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.SmsRequest.static_id)
      return null;

    var builder = imc.SmsRequestBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// SMS Transmission Status serializer class
///
class SmsStatusSerializer extends imc.ImcSerializer<imc.SmsStatus> {
  @override
  ByteData serialize(imc.SmsStatus message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.SmsStatus deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.SmsStatus.static_id)
      return null;

    var builder = imc.SmsStatusBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// VTOL State serializer class
///
class VtolStateSerializer extends imc.ImcSerializer<imc.VtolState> {
  @override
  ByteData serialize(imc.VtolState message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.VtolState deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.VtolState.static_id)
      return null;

    var builder = imc.VtolStateBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Arming State serializer class
///
class ArmingStateSerializer extends imc.ImcSerializer<imc.ArmingState> {
  @override
  ByteData serialize(imc.ArmingState message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.ArmingState deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.ArmingState.static_id)
      return null;

    var builder = imc.ArmingStateBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Abort serializer class
///
class AbortSerializer extends imc.ImcSerializer<imc.Abort> {
  @override
  ByteData serialize(imc.Abort message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Abort deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Abort.static_id)
      return null;

    var builder = imc.AbortBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Plan Specification serializer class
///
class PlanSpecificationSerializer extends imc.ImcSerializer<imc.PlanSpecification> {
  @override
  ByteData serialize(imc.PlanSpecification message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.PlanSpecification deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.PlanSpecification.static_id)
      return null;

    var builder = imc.PlanSpecificationBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Plan Maneuver serializer class
///
class PlanManeuverSerializer extends imc.ImcSerializer<imc.PlanManeuver> {
  @override
  ByteData serialize(imc.PlanManeuver message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.PlanManeuver deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.PlanManeuver.static_id)
      return null;

    var builder = imc.PlanManeuverBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Plan Transition serializer class
///
class PlanTransitionSerializer extends imc.ImcSerializer<imc.PlanTransition> {
  @override
  ByteData serialize(imc.PlanTransition message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.PlanTransition deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.PlanTransition.static_id)
      return null;

    var builder = imc.PlanTransitionBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Emergency Control serializer class
///
class EmergencyControlSerializer extends imc.ImcSerializer<imc.EmergencyControl> {
  @override
  ByteData serialize(imc.EmergencyControl message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.EmergencyControl deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.EmergencyControl.static_id)
      return null;

    var builder = imc.EmergencyControlBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Emergency Control State serializer class
///
class EmergencyControlStateSerializer extends imc.ImcSerializer<imc.EmergencyControlState> {
  @override
  ByteData serialize(imc.EmergencyControlState message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.EmergencyControlState deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.EmergencyControlState.static_id)
      return null;

    var builder = imc.EmergencyControlStateBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Plan DB serializer class
///
class PlanDBSerializer extends imc.ImcSerializer<imc.PlanDB> {
  @override
  ByteData serialize(imc.PlanDB message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.PlanDB deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.PlanDB.static_id)
      return null;

    var builder = imc.PlanDBBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Plan DB State serializer class
///
class PlanDBStateSerializer extends imc.ImcSerializer<imc.PlanDBState> {
  @override
  ByteData serialize(imc.PlanDBState message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.PlanDBState deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.PlanDBState.static_id)
      return null;

    var builder = imc.PlanDBStateBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Plan DB Information serializer class
///
class PlanDBInformationSerializer extends imc.ImcSerializer<imc.PlanDBInformation> {
  @override
  ByteData serialize(imc.PlanDBInformation message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.PlanDBInformation deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.PlanDBInformation.static_id)
      return null;

    var builder = imc.PlanDBInformationBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Plan Control serializer class
///
class PlanControlSerializer extends imc.ImcSerializer<imc.PlanControl> {
  @override
  ByteData serialize(imc.PlanControl message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.PlanControl deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.PlanControl.static_id)
      return null;

    var builder = imc.PlanControlBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Plan Control State serializer class
///
class PlanControlStateSerializer extends imc.ImcSerializer<imc.PlanControlState> {
  @override
  ByteData serialize(imc.PlanControlState message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.PlanControlState deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.PlanControlState.static_id)
      return null;

    var builder = imc.PlanControlStateBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Plan Variable serializer class
///
class PlanVariableSerializer extends imc.ImcSerializer<imc.PlanVariable> {
  @override
  ByteData serialize(imc.PlanVariable message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.PlanVariable deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.PlanVariable.static_id)
      return null;

    var builder = imc.PlanVariableBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Plan Generation serializer class
///
class PlanGenerationSerializer extends imc.ImcSerializer<imc.PlanGeneration> {
  @override
  ByteData serialize(imc.PlanGeneration message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.PlanGeneration deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.PlanGeneration.static_id)
      return null;

    var builder = imc.PlanGenerationBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Leader State serializer class
///
class LeaderStateSerializer extends imc.ImcSerializer<imc.LeaderState> {
  @override
  ByteData serialize(imc.LeaderState message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.LeaderState deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.LeaderState.static_id)
      return null;

    var builder = imc.LeaderStateBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Plan Statistics serializer class
///
class PlanStatisticsSerializer extends imc.ImcSerializer<imc.PlanStatistics> {
  @override
  ByteData serialize(imc.PlanStatistics message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.PlanStatistics deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.PlanStatistics.static_id)
      return null;

    var builder = imc.PlanStatisticsBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Reported State serializer class
///
class ReportedStateSerializer extends imc.ImcSerializer<imc.ReportedState> {
  @override
  ByteData serialize(imc.ReportedState message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.ReportedState deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.ReportedState.static_id)
      return null;

    var builder = imc.ReportedStateBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Remote Sensor Info serializer class
///
class RemoteSensorInfoSerializer extends imc.ImcSerializer<imc.RemoteSensorInfo> {
  @override
  ByteData serialize(imc.RemoteSensorInfo message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.RemoteSensorInfo deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.RemoteSensorInfo.static_id)
      return null;

    var builder = imc.RemoteSensorInfoBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Map serializer class
///
class MapSerializer extends imc.ImcSerializer<imc.Map> {
  @override
  ByteData serialize(imc.Map message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Map deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Map.static_id)
      return null;

    var builder = imc.MapBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Map Feature serializer class
///
class MapFeatureSerializer extends imc.ImcSerializer<imc.MapFeature> {
  @override
  ByteData serialize(imc.MapFeature message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.MapFeature deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.MapFeature.static_id)
      return null;

    var builder = imc.MapFeatureBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// MapPoint serializer class
///
class MapPointSerializer extends imc.ImcSerializer<imc.MapPoint> {
  @override
  ByteData serialize(imc.MapPoint message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.MapPoint deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.MapPoint.static_id)
      return null;

    var builder = imc.MapPointBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// CCU Event serializer class
///
class CcuEventSerializer extends imc.ImcSerializer<imc.CcuEvent> {
  @override
  ByteData serialize(imc.CcuEvent message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.CcuEvent deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.CcuEvent.static_id)
      return null;

    var builder = imc.CcuEventBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Vehicle Links serializer class
///
class VehicleLinksSerializer extends imc.ImcSerializer<imc.VehicleLinks> {
  @override
  ByteData serialize(imc.VehicleLinks message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.VehicleLinks deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.VehicleLinks.static_id)
      return null;

    var builder = imc.VehicleLinksBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// TREX Observation serializer class
///
class TrexObservationSerializer extends imc.ImcSerializer<imc.TrexObservation> {
  @override
  ByteData serialize(imc.TrexObservation message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.TrexObservation deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.TrexObservation.static_id)
      return null;

    var builder = imc.TrexObservationBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// TREX Command serializer class
///
class TrexCommandSerializer extends imc.ImcSerializer<imc.TrexCommand> {
  @override
  ByteData serialize(imc.TrexCommand message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.TrexCommand deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.TrexCommand.static_id)
      return null;

    var builder = imc.TrexCommandBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// TREX Operation serializer class
///
class TrexOperationSerializer extends imc.ImcSerializer<imc.TrexOperation> {
  @override
  ByteData serialize(imc.TrexOperation message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.TrexOperation deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.TrexOperation.static_id)
      return null;

    var builder = imc.TrexOperationBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// TREX Attribute serializer class
///
class TrexAttributeSerializer extends imc.ImcSerializer<imc.TrexAttribute> {
  @override
  ByteData serialize(imc.TrexAttribute message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.TrexAttribute deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.TrexAttribute.static_id)
      return null;

    var builder = imc.TrexAttributeBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// TREX Token serializer class
///
class TrexTokenSerializer extends imc.ImcSerializer<imc.TrexToken> {
  @override
  ByteData serialize(imc.TrexToken message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.TrexToken deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.TrexToken.static_id)
      return null;

    var builder = imc.TrexTokenBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// TREX Plan serializer class
///
class TrexPlanSerializer extends imc.ImcSerializer<imc.TrexPlan> {
  @override
  ByteData serialize(imc.TrexPlan message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.TrexPlan deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.TrexPlan.static_id)
      return null;

    var builder = imc.TrexPlanBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Event serializer class
///
class EventSerializer extends imc.ImcSerializer<imc.Event> {
  @override
  ByteData serialize(imc.Event message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Event deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Event.static_id)
      return null;

    var builder = imc.EventBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Compressed Image serializer class
///
class CompressedImageSerializer extends imc.ImcSerializer<imc.CompressedImage> {
  @override
  ByteData serialize(imc.CompressedImage message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.CompressedImage deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.CompressedImage.static_id)
      return null;

    var builder = imc.CompressedImageBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Image Transmission Settings serializer class
///
class ImageTxSettingsSerializer extends imc.ImcSerializer<imc.ImageTxSettings> {
  @override
  ByteData serialize(imc.ImageTxSettings message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.ImageTxSettings deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.ImageTxSettings.static_id)
      return null;

    var builder = imc.ImageTxSettingsBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Remote State serializer class
///
class RemoteStateSerializer extends imc.ImcSerializer<imc.RemoteState> {
  @override
  ByteData serialize(imc.RemoteState message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.RemoteState deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.RemoteState.static_id)
      return null;

    var builder = imc.RemoteStateBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Target serializer class
///
class TargetSerializer extends imc.ImcSerializer<imc.Target> {
  @override
  ByteData serialize(imc.Target message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Target deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Target.static_id)
      return null;

    var builder = imc.TargetBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// EntityParameter serializer class
///
class EntityParameterSerializer extends imc.ImcSerializer<imc.EntityParameter> {
  @override
  ByteData serialize(imc.EntityParameter message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.EntityParameter deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.EntityParameter.static_id)
      return null;

    var builder = imc.EntityParameterBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// EntityParameters serializer class
///
class EntityParametersSerializer extends imc.ImcSerializer<imc.EntityParameters> {
  @override
  ByteData serialize(imc.EntityParameters message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.EntityParameters deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.EntityParameters.static_id)
      return null;

    var builder = imc.EntityParametersBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// QueryEntityParameters serializer class
///
class QueryEntityParametersSerializer extends imc.ImcSerializer<imc.QueryEntityParameters> {
  @override
  ByteData serialize(imc.QueryEntityParameters message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.QueryEntityParameters deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.QueryEntityParameters.static_id)
      return null;

    var builder = imc.QueryEntityParametersBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// SetEntityParameters serializer class
///
class SetEntityParametersSerializer extends imc.ImcSerializer<imc.SetEntityParameters> {
  @override
  ByteData serialize(imc.SetEntityParameters message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.SetEntityParameters deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.SetEntityParameters.static_id)
      return null;

    var builder = imc.SetEntityParametersBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// SaveEntityParameters serializer class
///
class SaveEntityParametersSerializer extends imc.ImcSerializer<imc.SaveEntityParameters> {
  @override
  ByteData serialize(imc.SaveEntityParameters message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.SaveEntityParameters deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.SaveEntityParameters.static_id)
      return null;

    var builder = imc.SaveEntityParametersBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Create Session serializer class
///
class CreateSessionSerializer extends imc.ImcSerializer<imc.CreateSession> {
  @override
  ByteData serialize(imc.CreateSession message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.CreateSession deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.CreateSession.static_id)
      return null;

    var builder = imc.CreateSessionBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Close Session serializer class
///
class CloseSessionSerializer extends imc.ImcSerializer<imc.CloseSession> {
  @override
  ByteData serialize(imc.CloseSession message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.CloseSession deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.CloseSession.static_id)
      return null;

    var builder = imc.CloseSessionBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Session Subscription serializer class
///
class SessionSubscriptionSerializer extends imc.ImcSerializer<imc.SessionSubscription> {
  @override
  ByteData serialize(imc.SessionSubscription message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.SessionSubscription deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.SessionSubscription.static_id)
      return null;

    var builder = imc.SessionSubscriptionBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Session Keep-Alive serializer class
///
class SessionKeepAliveSerializer extends imc.ImcSerializer<imc.SessionKeepAlive> {
  @override
  ByteData serialize(imc.SessionKeepAlive message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.SessionKeepAlive deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.SessionKeepAlive.static_id)
      return null;

    var builder = imc.SessionKeepAliveBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Session Status serializer class
///
class SessionStatusSerializer extends imc.ImcSerializer<imc.SessionStatus> {
  @override
  ByteData serialize(imc.SessionStatus message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.SessionStatus deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.SessionStatus.static_id)
      return null;

    var builder = imc.SessionStatusBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Push Entity Parameters serializer class
///
class PushEntityParametersSerializer extends imc.ImcSerializer<imc.PushEntityParameters> {
  @override
  ByteData serialize(imc.PushEntityParameters message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.PushEntityParameters deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.PushEntityParameters.static_id)
      return null;

    var builder = imc.PushEntityParametersBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Pop Entity Parameters serializer class
///
class PopEntityParametersSerializer extends imc.ImcSerializer<imc.PopEntityParameters> {
  @override
  ByteData serialize(imc.PopEntityParameters message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.PopEntityParameters deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.PopEntityParameters.static_id)
      return null;

    var builder = imc.PopEntityParametersBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// I/O Event serializer class
///
class IoEventSerializer extends imc.ImcSerializer<imc.IoEvent> {
  @override
  ByteData serialize(imc.IoEvent message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.IoEvent deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.IoEvent.static_id)
      return null;

    var builder = imc.IoEventBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// UamTxFrame serializer class
///
class UamTxFrameSerializer extends imc.ImcSerializer<imc.UamTxFrame> {
  @override
  ByteData serialize(imc.UamTxFrame message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.UamTxFrame deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.UamTxFrame.static_id)
      return null;

    var builder = imc.UamTxFrameBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// UamRxFrame serializer class
///
class UamRxFrameSerializer extends imc.ImcSerializer<imc.UamRxFrame> {
  @override
  ByteData serialize(imc.UamRxFrame message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.UamRxFrame deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.UamRxFrame.static_id)
      return null;

    var builder = imc.UamRxFrameBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// UamTxStatus serializer class
///
class UamTxStatusSerializer extends imc.ImcSerializer<imc.UamTxStatus> {
  @override
  ByteData serialize(imc.UamTxStatus message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.UamTxStatus deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.UamTxStatus.static_id)
      return null;

    var builder = imc.UamTxStatusBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// UamRxRange serializer class
///
class UamRxRangeSerializer extends imc.ImcSerializer<imc.UamRxRange> {
  @override
  ByteData serialize(imc.UamRxRange message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.UamRxRange deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.UamRxRange.static_id)
      return null;

    var builder = imc.UamRxRangeBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Formation Control Parameters serializer class
///
class FormCtrlParamSerializer extends imc.ImcSerializer<imc.FormCtrlParam> {
  @override
  ByteData serialize(imc.FormCtrlParam message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.FormCtrlParam deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.FormCtrlParam.static_id)
      return null;

    var builder = imc.FormCtrlParamBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Formation Evaluation Data serializer class
///
class FormationEvalSerializer extends imc.ImcSerializer<imc.FormationEval> {
  @override
  ByteData serialize(imc.FormationEval message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.FormationEval deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.FormationEval.static_id)
      return null;

    var builder = imc.FormationEvalBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Formation Control Parameters serializer class
///
class FormationControlParamsSerializer extends imc.ImcSerializer<imc.FormationControlParams> {
  @override
  ByteData serialize(imc.FormationControlParams message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.FormationControlParams deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.FormationControlParams.static_id)
      return null;

    var builder = imc.FormationControlParamsBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Formation Evaluation Data serializer class
///
class FormationEvaluationSerializer extends imc.ImcSerializer<imc.FormationEvaluation> {
  @override
  ByteData serialize(imc.FormationEvaluation message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.FormationEvaluation deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.FormationEvaluation.static_id)
      return null;

    var builder = imc.FormationEvaluationBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// SOI Waypoint serializer class
///
class SoiWaypointSerializer extends imc.ImcSerializer<imc.SoiWaypoint> {
  @override
  ByteData serialize(imc.SoiWaypoint message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.SoiWaypoint deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.SoiWaypoint.static_id)
      return null;

    var builder = imc.SoiWaypointBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// SOI Plan serializer class
///
class SoiPlanSerializer extends imc.ImcSerializer<imc.SoiPlan> {
  @override
  ByteData serialize(imc.SoiPlan message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.SoiPlan deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.SoiPlan.static_id)
      return null;

    var builder = imc.SoiPlanBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// SOI Command serializer class
///
class SoiCommandSerializer extends imc.ImcSerializer<imc.SoiCommand> {
  @override
  ByteData serialize(imc.SoiCommand message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.SoiCommand deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.SoiCommand.static_id)
      return null;

    var builder = imc.SoiCommandBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// SOI State serializer class
///
class SoiStateSerializer extends imc.ImcSerializer<imc.SoiState> {
  @override
  ByteData serialize(imc.SoiState message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.SoiState deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.SoiState.static_id)
      return null;

    var builder = imc.SoiStateBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Message Fragment serializer class
///
class MessagePartSerializer extends imc.ImcSerializer<imc.MessagePart> {
  @override
  ByteData serialize(imc.MessagePart message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.MessagePart deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.MessagePart.static_id)
      return null;

    var builder = imc.MessagePartBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Neptus Blob serializer class
///
class NeptusBlobSerializer extends imc.ImcSerializer<imc.NeptusBlob> {
  @override
  ByteData serialize(imc.NeptusBlob message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.NeptusBlob deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.NeptusBlob.static_id)
      return null;

    var builder = imc.NeptusBlobBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Aborted serializer class
///
class AbortedSerializer extends imc.ImcSerializer<imc.Aborted> {
  @override
  ByteData serialize(imc.Aborted message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Aborted deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Aborted.static_id)
      return null;

    var builder = imc.AbortedBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// USBL Angles serializer class
///
class UsblAnglesSerializer extends imc.ImcSerializer<imc.UsblAngles> {
  @override
  ByteData serialize(imc.UsblAngles message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.UsblAngles deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.UsblAngles.static_id)
      return null;

    var builder = imc.UsblAnglesBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// USBL Position serializer class
///
class UsblPositionSerializer extends imc.ImcSerializer<imc.UsblPosition> {
  @override
  ByteData serialize(imc.UsblPosition message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.UsblPosition deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.UsblPosition.static_id)
      return null;

    var builder = imc.UsblPositionBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// USBL Fix serializer class
///
class UsblFixSerializer extends imc.ImcSerializer<imc.UsblFix> {
  @override
  ByteData serialize(imc.UsblFix message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.UsblFix deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.UsblFix.static_id)
      return null;

    var builder = imc.UsblFixBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Parameters XML serializer class
///
class ParametersXmlSerializer extends imc.ImcSerializer<imc.ParametersXml> {
  @override
  ByteData serialize(imc.ParametersXml message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.ParametersXml deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.ParametersXml.static_id)
      return null;

    var builder = imc.ParametersXmlBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Get Parameters XML serializer class
///
class GetParametersXmlSerializer extends imc.ImcSerializer<imc.GetParametersXml> {
  @override
  ByteData serialize(imc.GetParametersXml message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.GetParametersXml deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.GetParametersXml.static_id)
      return null;

    var builder = imc.GetParametersXmlBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Set Image Coordinates serializer class
///
class SetImageCoordsSerializer extends imc.ImcSerializer<imc.SetImageCoords> {
  @override
  ByteData serialize(imc.SetImageCoords message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.SetImageCoords deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.SetImageCoords.static_id)
      return null;

    var builder = imc.SetImageCoordsBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Get Image Coordinates serializer class
///
class GetImageCoordsSerializer extends imc.ImcSerializer<imc.GetImageCoords> {
  @override
  ByteData serialize(imc.GetImageCoords message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.GetImageCoords deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.GetImageCoords.static_id)
      return null;

    var builder = imc.GetImageCoordsBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Get World Coordinates serializer class
///
class GetWorldCoordinatesSerializer extends imc.ImcSerializer<imc.GetWorldCoordinates> {
  @override
  ByteData serialize(imc.GetWorldCoordinates message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.GetWorldCoordinates deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.GetWorldCoordinates.static_id)
      return null;

    var builder = imc.GetWorldCoordinatesBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// USBL Angles Extended serializer class
///
class UsblAnglesExtendedSerializer extends imc.ImcSerializer<imc.UsblAnglesExtended> {
  @override
  ByteData serialize(imc.UsblAnglesExtended message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.UsblAnglesExtended deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.UsblAnglesExtended.static_id)
      return null;

    var builder = imc.UsblAnglesExtendedBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// USBL Position Extended serializer class
///
class UsblPositionExtendedSerializer extends imc.ImcSerializer<imc.UsblPositionExtended> {
  @override
  ByteData serialize(imc.UsblPositionExtended message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.UsblPositionExtended deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.UsblPositionExtended.static_id)
      return null;

    var builder = imc.UsblPositionExtendedBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// USBL Fix Extended serializer class
///
class UsblFixExtendedSerializer extends imc.ImcSerializer<imc.UsblFixExtended> {
  @override
  ByteData serialize(imc.UsblFixExtended message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.UsblFixExtended deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.UsblFixExtended.static_id)
      return null;

    var builder = imc.UsblFixExtendedBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// USBL Modem Configuration serializer class
///
class UsblModemSerializer extends imc.ImcSerializer<imc.UsblModem> {
  @override
  ByteData serialize(imc.UsblModem message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.UsblModem deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.UsblModem.static_id)
      return null;

    var builder = imc.UsblModemBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// USBL Configuration serializer class
///
class UsblConfigSerializer extends imc.ImcSerializer<imc.UsblConfig> {
  @override
  ByteData serialize(imc.UsblConfig message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.UsblConfig deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.UsblConfig.static_id)
      return null;

    var builder = imc.UsblConfigBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Dissolved Organic Matter serializer class
///
class DissolvedOrganicMatterSerializer extends imc.ImcSerializer<imc.DissolvedOrganicMatter> {
  @override
  ByteData serialize(imc.DissolvedOrganicMatter message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.DissolvedOrganicMatter deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.DissolvedOrganicMatter.static_id)
      return null;

    var builder = imc.DissolvedOrganicMatterBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Optical Backscattering Coefficient serializer class
///
class OpticalBackscatterSerializer extends imc.ImcSerializer<imc.OpticalBackscatter> {
  @override
  ByteData serialize(imc.OpticalBackscatter message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.OpticalBackscatter deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.OpticalBackscatter.static_id)
      return null;

    var builder = imc.OpticalBackscatterBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Tachograph serializer class
///
class TachographSerializer extends imc.ImcSerializer<imc.Tachograph> {
  @override
  ByteData serialize(imc.Tachograph message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.Tachograph deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.Tachograph.static_id)
      return null;

    var builder = imc.TachographBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// APM Status serializer class
///
class ApmStatusSerializer extends imc.ImcSerializer<imc.ApmStatus> {
  @override
  ByteData serialize(imc.ApmStatus message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.ApmStatus deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.ApmStatus.static_id)
      return null;

    var builder = imc.ApmStatusBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// SADC Readings serializer class
///
class SadcReadingsSerializer extends imc.ImcSerializer<imc.SadcReadings> {
  @override
  ByteData serialize(imc.SadcReadings message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.SadcReadings deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.SadcReadings.static_id)
      return null;

    var builder = imc.SadcReadingsBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// DMS Detection serializer class
///
class DmsDetectionSerializer extends imc.ImcSerializer<imc.DmsDetection> {
  @override
  ByteData serialize(imc.DmsDetection message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.DmsDetection deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.DmsDetection.static_id)
      return null;

    var builder = imc.DmsDetectionBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}

/// Total Magnetic Field Intensity serializer class
///
class TotalMagIntensitySerializer extends imc.ImcSerializer<imc.TotalMagIntensity> {
  @override
  ByteData serialize(imc.TotalMagIntensity message) {
    var byteOffset = 0;
    var byteData = ByteData(0xFFFF);
    byteOffset = imc.serializeHeader(message, byteData);
    var headerSize = byteOffset;

    // Payload
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    byteOffset = imc.calcAndAddFooter(byteData, byteOffset);
    return byteData.buffer.asByteData(0, byteOffset);
  }
  
  @override
  imc.TotalMagIntensity deserialize(Uint8List data, [int offset = 0]) {
    var byteOffset = offset;
    var byteData = data.buffer.asByteData(offset);
    
    var endianess = imc.getEndianess(byteData, byteOffset);
    byteOffset += 2;
    if (endianess == null)
      return null;
    
    var msgId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    if (msgId != imc.TotalMagIntensity.static_id)
      return null;

    var builder = imc.TotalMagIntensityBuilder();
    var payloadSize = imc.deserializeHeader(builder, byteData, endianess, offset);
    byteOffset = offset + imc.header_size;

    // Payload
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}
