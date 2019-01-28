// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// IMC Code Generator
// **************************************************************************

import 'dart:typed_data';
import 'dart:convert' show utf8;

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
    // field state
    byteData.setUint8(byteOffset, message.state.value);
    byteOffset += 1;
    // field flags
    byteData.setUint8(byteOffset, message.flags.value);
    byteOffset += 1;
    // field description
    var descriptionEncoded = utf8.encode(message.description);
    var descriptionSSize = descriptionEncoded.length;
    byteData.setUint16(byteOffset, descriptionSSize, imc.endian_ser);
    byteOffset += 2;
    descriptionEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field state
    builder.state = imc.EntityStateEnumState(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field flags
    builder.flags = imc.EntityStateBitfieldFlags(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field description
    var descriptionSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var descriptionDData = List<int>(descriptionSSize);
    for (var i = 0; i < descriptionSSize; i++) {
      descriptionDData[i] = byteData.getUint8(byteOffset++);
    }
    var descriptionDecoded = utf8.decode(descriptionDData);
    builder.description = descriptionDecoded;
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
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

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
    // field id
    byteData.setUint8(byteOffset, message.id);
    byteOffset += 1;
    // field label
    var labelEncoded = utf8.encode(message.label);
    var labelSSize = labelEncoded.length;
    byteData.setUint16(byteOffset, labelSSize, imc.endian_ser);
    byteOffset += 2;
    labelEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field component
    var componentEncoded = utf8.encode(message.component);
    var componentSSize = componentEncoded.length;
    byteData.setUint16(byteOffset, componentSSize, imc.endian_ser);
    byteOffset += 2;
    componentEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field actTime
    byteData.setUint16(byteOffset, message.actTime, imc.endian_ser);
    byteOffset += 2;
    // field deactTime
    byteData.setUint16(byteOffset, message.deactTime, imc.endian_ser);
    byteOffset += 2;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field id
    builder.id = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field label
    var labelSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var labelDData = List<int>(labelSSize);
    for (var i = 0; i < labelSSize; i++) {
      labelDData[i] = byteData.getUint8(byteOffset++);
    }
    var labelDecoded = utf8.decode(labelDData);
    builder.label = labelDecoded;
    // field component
    var componentSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var componentDData = List<int>(componentSSize);
    for (var i = 0; i < componentSSize; i++) {
      componentDData[i] = byteData.getUint8(byteOffset++);
    }
    var componentDecoded = utf8.decode(componentDData);
    builder.component = componentDecoded;
    // field actTime
    builder.actTime = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field deactTime
    builder.deactTime = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
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
    // field id
    byteData.setUint8(byteOffset, message.id);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field id
    builder.id = byteData.getUint8(byteOffset);
    byteOffset += 1;
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
    // field op
    byteData.setUint8(byteOffset, message.op.value);
    byteOffset += 1;
    // field list
    var listEncoded = utf8.encode(message.list);
    var listSSize = listEncoded.length;
    byteData.setUint16(byteOffset, listSSize, imc.endian_ser);
    byteOffset += 2;
    listEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field op
    builder.op = imc.EntityListEnumOp(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field list
    var listSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var listDData = List<int>(listSSize);
    for (var i = 0; i < listSSize; i++) {
      listDData[i] = byteData.getUint8(byteOffset++);
    }
    var listDecoded = utf8.decode(listDData);
    builder.list = listDecoded;
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
    // field value
    byteData.setUint8(byteOffset, message.value);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getUint8(byteOffset);
    byteOffset += 1;
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
    // field consumer
    var consumerEncoded = utf8.encode(message.consumer);
    var consumerSSize = consumerEncoded.length;
    byteData.setUint16(byteOffset, consumerSSize, imc.endian_ser);
    byteOffset += 2;
    consumerEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field messageId
    byteData.setUint16(byteOffset, message.messageId, imc.endian_ser);
    byteOffset += 2;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field consumer
    var consumerSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var consumerDData = List<int>(consumerSSize);
    for (var i = 0; i < consumerSSize; i++) {
      consumerDData[i] = byteData.getUint8(byteOffset++);
    }
    var consumerDecoded = utf8.decode(consumerDData);
    builder.consumer = consumerDecoded;
    // field messageId
    builder.messageId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
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
    // field type
    byteData.setUint8(byteOffset, message.type.value);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field type
    builder.type = imc.RestartSystemEnumType(byteData.getUint8(byteOffset));
    byteOffset += 1;
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
    // field op
    byteData.setUint8(byteOffset, message.op.value);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field op
    builder.op = imc.DevCalibrationControlEnumOp(byteData.getUint8(byteOffset));
    byteOffset += 1;
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
    // field totalSteps
    byteData.setUint8(byteOffset, message.totalSteps);
    byteOffset += 1;
    // field stepNumber
    byteData.setUint8(byteOffset, message.stepNumber);
    byteOffset += 1;
    // field step
    var stepEncoded = utf8.encode(message.step);
    var stepSSize = stepEncoded.length;
    byteData.setUint16(byteOffset, stepSSize, imc.endian_ser);
    byteOffset += 2;
    stepEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field flags
    byteData.setUint8(byteOffset, message.flags.value);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field totalSteps
    builder.totalSteps = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field stepNumber
    builder.stepNumber = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field step
    var stepSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var stepDData = List<int>(stepSSize);
    for (var i = 0; i < stepSSize; i++) {
      stepDData[i] = byteData.getUint8(byteOffset++);
    }
    var stepDecoded = utf8.decode(stepDData);
    builder.step = stepDecoded;
    // field flags
    builder.flags = imc.DevCalibrationStateBitfieldFlags(byteData.getUint8(byteOffset));
    byteOffset += 1;
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
    // field state
    byteData.setUint8(byteOffset, message.state.value);
    byteOffset += 1;
    // field error
    var errorEncoded = utf8.encode(message.error);
    var errorSSize = errorEncoded.length;
    byteData.setUint16(byteOffset, errorSSize, imc.endian_ser);
    byteOffset += 2;
    errorEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field state
    builder.state = imc.EntityActivationStateEnumState(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field error
    var errorSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var errorDData = List<int>(errorSSize);
    for (var i = 0; i < errorSSize; i++) {
      errorDData[i] = byteData.getUint8(byteOffset++);
    }
    var errorDecoded = utf8.decode(errorDData);
    builder.error = errorDecoded;
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
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

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
    // field op
    byteData.setUint8(byteOffset, message.op.value);
    byteOffset += 1;
    // field speedMin
    byteData.setFloat32(byteOffset, message.speedMin, imc.endian_ser);
    byteOffset += 4;
    // field speedMax
    byteData.setFloat32(byteOffset, message.speedMax, imc.endian_ser);
    byteOffset += 4;
    // field longAccel
    byteData.setFloat32(byteOffset, message.longAccel, imc.endian_ser);
    byteOffset += 4;
    // field altMaxMsl
    byteData.setFloat32(byteOffset, message.altMaxMsl, imc.endian_ser);
    byteOffset += 4;
    // field diveFractionMax
    byteData.setFloat32(byteOffset, message.diveFractionMax, imc.endian_ser);
    byteOffset += 4;
    // field climbFractionMax
    byteData.setFloat32(byteOffset, message.climbFractionMax, imc.endian_ser);
    byteOffset += 4;
    // field bankMax
    byteData.setFloat32(byteOffset, message.bankMax, imc.endian_ser);
    byteOffset += 4;
    // field pMax
    byteData.setFloat32(byteOffset, message.pMax, imc.endian_ser);
    byteOffset += 4;
    // field pitchMin
    byteData.setFloat32(byteOffset, message.pitchMin, imc.endian_ser);
    byteOffset += 4;
    // field pitchMax
    byteData.setFloat32(byteOffset, message.pitchMax, imc.endian_ser);
    byteOffset += 4;
    // field qMax
    byteData.setFloat32(byteOffset, message.qMax, imc.endian_ser);
    byteOffset += 4;
    // field gMin
    byteData.setFloat32(byteOffset, message.gMin, imc.endian_ser);
    byteOffset += 4;
    // field gMax
    byteData.setFloat32(byteOffset, message.gMax, imc.endian_ser);
    byteOffset += 4;
    // field gLatMax
    byteData.setFloat32(byteOffset, message.gLatMax, imc.endian_ser);
    byteOffset += 4;
    // field rpmMin
    byteData.setFloat32(byteOffset, message.rpmMin, imc.endian_ser);
    byteOffset += 4;
    // field rpmMax
    byteData.setFloat32(byteOffset, message.rpmMax, imc.endian_ser);
    byteOffset += 4;
    // field rpmRateMax
    byteData.setFloat32(byteOffset, message.rpmRateMax, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field op
    builder.op = imc.VehicleOperationalLimitsEnumOp(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field speedMin
    builder.speedMin = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field speedMax
    builder.speedMax = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field longAccel
    builder.longAccel = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field altMaxMsl
    builder.altMaxMsl = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field diveFractionMax
    builder.diveFractionMax = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field climbFractionMax
    builder.climbFractionMax = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field bankMax
    builder.bankMax = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field pMax
    builder.pMax = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field pitchMin
    builder.pitchMin = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field pitchMax
    builder.pitchMax = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field qMax
    builder.qMax = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field gMin
    builder.gMin = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field gMax
    builder.gMax = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field gLatMax
    builder.gLatMax = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field rpmMin
    builder.rpmMin = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field rpmMax
    builder.rpmMax = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field rpmRateMax
    builder.rpmRateMax = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field msgs
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field msgs
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
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field height
    byteData.setFloat32(byteOffset, message.height, imc.endian_ser);
    byteOffset += 4;
    // field x
    byteData.setFloat32(byteOffset, message.x, imc.endian_ser);
    byteOffset += 4;
    // field y
    byteData.setFloat32(byteOffset, message.y, imc.endian_ser);
    byteOffset += 4;
    // field z
    byteData.setFloat32(byteOffset, message.z, imc.endian_ser);
    byteOffset += 4;
    // field phi
    byteData.setFloat32(byteOffset, message.phi, imc.endian_ser);
    byteOffset += 4;
    // field theta
    byteData.setFloat32(byteOffset, message.theta, imc.endian_ser);
    byteOffset += 4;
    // field psi
    byteData.setFloat32(byteOffset, message.psi, imc.endian_ser);
    byteOffset += 4;
    // field u
    byteData.setFloat32(byteOffset, message.u, imc.endian_ser);
    byteOffset += 4;
    // field v
    byteData.setFloat32(byteOffset, message.v, imc.endian_ser);
    byteOffset += 4;
    // field w
    byteData.setFloat32(byteOffset, message.w, imc.endian_ser);
    byteOffset += 4;
    // field p
    byteData.setFloat32(byteOffset, message.p, imc.endian_ser);
    byteOffset += 4;
    // field q
    byteData.setFloat32(byteOffset, message.q, imc.endian_ser);
    byteOffset += 4;
    // field r
    byteData.setFloat32(byteOffset, message.r, imc.endian_ser);
    byteOffset += 4;
    // field svx
    byteData.setFloat32(byteOffset, message.svx, imc.endian_ser);
    byteOffset += 4;
    // field svy
    byteData.setFloat32(byteOffset, message.svy, imc.endian_ser);
    byteOffset += 4;
    // field svz
    byteData.setFloat32(byteOffset, message.svz, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field height
    builder.height = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field x
    builder.x = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field y
    builder.y = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field z
    builder.z = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field phi
    builder.phi = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field theta
    builder.theta = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field psi
    builder.psi = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field u
    builder.u = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field v
    builder.v = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field w
    builder.w = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field p
    builder.p = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field q
    builder.q = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field r
    builder.r = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field svx
    builder.svx = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field svy
    builder.svy = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field svz
    builder.svz = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field op
    byteData.setUint8(byteOffset, message.op.value);
    byteOffset += 1;
    // field entities
    var entitiesEncoded = utf8.encode(message.entities);
    var entitiesSSize = entitiesEncoded.length;
    byteData.setUint16(byteOffset, entitiesSSize, imc.endian_ser);
    byteOffset += 2;
    entitiesEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field op
    builder.op = imc.LeakSimulationEnumOp(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field entities
    var entitiesSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var entitiesDData = List<int>(entitiesSSize);
    for (var i = 0; i < entitiesSSize; i++) {
      entitiesDData[i] = byteData.getUint8(byteOffset++);
    }
    var entitiesDecoded = utf8.decode(entitiesDData);
    builder.entities = entitiesDecoded;
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
    // field type
    byteData.setUint8(byteOffset, message.type.value);
    byteOffset += 1;
    // field speed
    byteData.setUint16(byteOffset, message.speed, imc.endian_ser);
    byteOffset += 2;
    // field data
    var dataSSize = message.data.length;
    byteData.setUint16(byteOffset, dataSSize, imc.endian_ser);
    byteOffset += 2;
    message.data.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field type
    builder.type = imc.UASimulationEnumType(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field speed
    builder.speed = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field data
    var dataSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var dataDData = List<int>(dataSSize);
    for (var i = 0; i < dataSSize; i++) {
      dataDData[i] = byteData.getUint8(byteOffset++);
    }
    builder.data = dataDData;
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
    // field op
    byteData.setUint8(byteOffset, message.op.value);
    byteOffset += 1;
    // field tas2accPgain
    byteData.setFloat32(byteOffset, message.tas2accPgain, imc.endian_ser);
    byteOffset += 4;
    // field bank2pPgain
    byteData.setFloat32(byteOffset, message.bank2pPgain, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field op
    builder.op = imc.DynamicsSimParamEnumOp(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field tas2accPgain
    builder.tas2accPgain = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field bank2pPgain
    builder.bank2pPgain = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field available
    byteData.setUint32(byteOffset, message.available, imc.endian_ser);
    byteOffset += 4;
    // field value
    byteData.setUint8(byteOffset, message.value);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field available
    builder.available = byteData.getUint32(byteOffset, endianess);
    byteOffset += 4;
    // field value
    builder.value = byteData.getUint8(byteOffset);
    byteOffset += 1;
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
    // field op
    byteData.setUint8(byteOffset, message.op.value);
    byteOffset += 1;
    // field snapshot
    var snapshotEncoded = utf8.encode(message.snapshot);
    var snapshotSSize = snapshotEncoded.length;
    byteData.setUint16(byteOffset, snapshotSSize, imc.endian_ser);
    byteOffset += 2;
    snapshotEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field message
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field op
    builder.op = imc.CacheControlEnumOp(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field snapshot
    var snapshotSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var snapshotDData = List<int>(snapshotSSize);
    for (var i = 0; i < snapshotSSize; i++) {
      snapshotDData[i] = byteData.getUint8(byteOffset++);
    }
    var snapshotDecoded = utf8.decode(snapshotDData);
    builder.snapshot = snapshotDecoded;
    // field message
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
    // field op
    byteData.setUint8(byteOffset, message.op.value);
    byteOffset += 1;
    // field name
    var nameEncoded = utf8.encode(message.name);
    var nameSSize = nameEncoded.length;
    byteData.setUint16(byteOffset, nameSSize, imc.endian_ser);
    byteOffset += 2;
    nameEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field op
    builder.op = imc.LoggingControlEnumOp(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field name
    var nameSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var nameDData = List<int>(nameSSize);
    for (var i = 0; i < nameSSize; i++) {
      nameDData[i] = byteData.getUint8(byteOffset++);
    }
    var nameDecoded = utf8.decode(nameDData);
    builder.name = nameDecoded;
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
    // field type
    byteData.setUint8(byteOffset, message.type.value);
    byteOffset += 1;
    // field htime
    byteData.setFloat64(byteOffset, message.htime, imc.endian_ser);
    byteOffset += 8;
    // field context
    var contextEncoded = utf8.encode(message.context);
    var contextSSize = contextEncoded.length;
    byteData.setUint16(byteOffset, contextSSize, imc.endian_ser);
    byteOffset += 2;
    contextEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field text
    var textEncoded = utf8.encode(message.text);
    var textSSize = textEncoded.length;
    byteData.setUint16(byteOffset, textSSize, imc.endian_ser);
    byteOffset += 2;
    textEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field type
    builder.type = imc.LogBookEntryEnumType(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field htime
    builder.htime = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field context
    var contextSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var contextDData = List<int>(contextSSize);
    for (var i = 0; i < contextSSize; i++) {
      contextDData[i] = byteData.getUint8(byteOffset++);
    }
    var contextDecoded = utf8.decode(contextDData);
    builder.context = contextDecoded;
    // field text
    var textSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var textDData = List<int>(textSSize);
    for (var i = 0; i < textSSize; i++) {
      textDData[i] = byteData.getUint8(byteOffset++);
    }
    var textDecoded = utf8.decode(textDData);
    builder.text = textDecoded;
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
    // field command
    byteData.setUint8(byteOffset, message.command.value);
    byteOffset += 1;
    // field htime
    byteData.setFloat64(byteOffset, message.htime, imc.endian_ser);
    byteOffset += 8;
    // field msg
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field command
    builder.command = imc.LogBookControlEnumCommand(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field htime
    builder.htime = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field msg
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
    // field op
    byteData.setUint8(byteOffset, message.op.value);
    byteOffset += 1;
    // field file
    var fileEncoded = utf8.encode(message.file);
    var fileSSize = fileEncoded.length;
    byteData.setUint16(byteOffset, fileSSize, imc.endian_ser);
    byteOffset += 2;
    fileEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field op
    builder.op = imc.ReplayControlEnumOp(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field file
    var fileSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var fileDData = List<int>(fileSSize);
    for (var i = 0; i < fileSSize; i++) {
      fileDData[i] = byteData.getUint8(byteOffset++);
    }
    var fileDecoded = utf8.decode(fileDData);
    builder.file = fileDecoded;
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
    // field op
    byteData.setUint8(byteOffset, message.op.value);
    byteOffset += 1;
    // field clock
    byteData.setFloat64(byteOffset, message.clock, imc.endian_ser);
    byteOffset += 8;
    // field tz
    byteData.setInt8(byteOffset, message.tz);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field op
    builder.op = imc.ClockControlEnumOp(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field clock
    builder.clock = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field tz
    builder.tz = byteData.getInt8(byteOffset);
    byteOffset += 1;
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
    // field conductivity
    byteData.setFloat32(byteOffset, message.conductivity, imc.endian_ser);
    byteOffset += 4;
    // field temperature
    byteData.setFloat32(byteOffset, message.temperature, imc.endian_ser);
    byteOffset += 4;
    // field depth
    byteData.setFloat32(byteOffset, message.depth, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field conductivity
    builder.conductivity = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field temperature
    builder.temperature = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field depth
    builder.depth = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field altitude
    byteData.setFloat32(byteOffset, message.altitude, imc.endian_ser);
    byteOffset += 4;
    // field roll
    byteData.setUint16(byteOffset, message.roll, imc.endian_ser);
    byteOffset += 2;
    // field pitch
    byteData.setUint16(byteOffset, message.pitch, imc.endian_ser);
    byteOffset += 2;
    // field yaw
    byteData.setUint16(byteOffset, message.yaw, imc.endian_ser);
    byteOffset += 2;
    // field speed
    byteData.setInt16(byteOffset, message.speed, imc.endian_ser);
    byteOffset += 2;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field altitude
    builder.altitude = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field roll
    builder.roll = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field pitch
    builder.pitch = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field yaw
    builder.yaw = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field speed
    builder.speed = byteData.getInt16(byteOffset, endianess);
    byteOffset += 2;
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
    // field altitude
    byteData.setFloat32(byteOffset, message.altitude, imc.endian_ser);
    byteOffset += 4;
    // field width
    byteData.setFloat32(byteOffset, message.width, imc.endian_ser);
    byteOffset += 4;
    // field length
    byteData.setFloat32(byteOffset, message.length, imc.endian_ser);
    byteOffset += 4;
    // field bearing
    byteData.setFloat32(byteOffset, message.bearing, imc.endian_ser);
    byteOffset += 4;
    // field pxl
    byteData.setInt16(byteOffset, message.pxl, imc.endian_ser);
    byteOffset += 2;
    // field encoding
    byteData.setUint8(byteOffset, message.encoding.value);
    byteOffset += 1;
    // field sonarData
    var sonarDataSSize = message.sonarData.length;
    byteData.setUint16(byteOffset, sonarDataSSize, imc.endian_ser);
    byteOffset += 2;
    message.sonarData.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field altitude
    builder.altitude = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field width
    builder.width = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field length
    builder.length = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field bearing
    builder.bearing = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field pxl
    builder.pxl = byteData.getInt16(byteOffset, endianess);
    byteOffset += 2;
    // field encoding
    builder.encoding = imc.HistoricSonarDataEnumEncoding(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field sonarData
    var sonarDataSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var sonarDataDData = List<int>(sonarDataSSize);
    for (var i = 0; i < sonarDataSSize; i++) {
      sonarDataDData[i] = byteData.getUint8(byteOffset++);
    }
    builder.sonarData = sonarDataDData;
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
    // field text
    var textEncoded = utf8.encode(message.text);
    var textSSize = textEncoded.length;
    byteData.setUint16(byteOffset, textSSize, imc.endian_ser);
    byteOffset += 2;
    textEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field type
    byteData.setUint8(byteOffset, message.type.value);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field text
    var textSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var textDData = List<int>(textSSize);
    for (var i = 0; i < textSSize; i++) {
      textDData[i] = byteData.getUint8(byteOffset++);
    }
    var textDecoded = utf8.decode(textDData);
    builder.text = textDecoded;
    // field type
    builder.type = imc.HistoricEventEnumType(byteData.getUint8(byteOffset));
    byteOffset += 1;
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
    // field parameter
    byteData.setUint8(byteOffset, message.parameter.value);
    byteOffset += 1;
    // field numSamples
    byteData.setUint8(byteOffset, message.numSamples);
    byteOffset += 1;
    // field samples
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field parameter
    builder.parameter = imc.VerticalProfileEnumParameter(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field numSamples
    builder.numSamples = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field samples
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
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
    // field depth
    byteData.setUint16(byteOffset, message.depth, imc.endian_ser);
    byteOffset += 2;
    // field avg
    byteData.setFloat32(byteOffset, message.avg, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field depth
    builder.depth = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field avg
    builder.avg = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

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
    // field sysName
    var sysNameEncoded = utf8.encode(message.sysName);
    var sysNameSSize = sysNameEncoded.length;
    byteData.setUint16(byteOffset, sysNameSSize, imc.endian_ser);
    byteOffset += 2;
    sysNameEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field sysType
    byteData.setUint8(byteOffset, message.sysType.value);
    byteOffset += 1;
    // field owner
    byteData.setUint16(byteOffset, message.owner, imc.endian_ser);
    byteOffset += 2;
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field height
    byteData.setFloat32(byteOffset, message.height, imc.endian_ser);
    byteOffset += 4;
    // field services
    var servicesEncoded = utf8.encode(message.services);
    var servicesSSize = servicesEncoded.length;
    byteData.setUint16(byteOffset, servicesSSize, imc.endian_ser);
    byteOffset += 2;
    servicesEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field sysName
    var sysNameSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var sysNameDData = List<int>(sysNameSSize);
    for (var i = 0; i < sysNameSSize; i++) {
      sysNameDData[i] = byteData.getUint8(byteOffset++);
    }
    var sysNameDecoded = utf8.decode(sysNameDData);
    builder.sysName = sysNameDecoded;
    // field sysType
    builder.sysType = imc.SystemTypeEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field owner
    builder.owner = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field height
    builder.height = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field services
    var servicesSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var servicesDData = List<int>(servicesSSize);
    for (var i = 0; i < servicesSSize; i++) {
      servicesDData[i] = byteData.getUint8(byteOffset++);
    }
    var servicesDecoded = utf8.decode(servicesDData);
    builder.services = servicesDecoded;
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
    // field service
    var serviceEncoded = utf8.encode(message.service);
    var serviceSSize = serviceEncoded.length;
    byteData.setUint16(byteOffset, serviceSSize, imc.endian_ser);
    byteOffset += 2;
    serviceEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field serviceType
    byteData.setUint8(byteOffset, message.serviceType.value);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field service
    var serviceSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var serviceDData = List<int>(serviceSSize);
    for (var i = 0; i < serviceSSize; i++) {
      serviceDData[i] = byteData.getUint8(byteOffset++);
    }
    var serviceDecoded = utf8.decode(serviceDData);
    builder.service = serviceDecoded;
    // field serviceType
    builder.serviceType = imc.AnnounceServiceBitfieldServiceType(byteData.getUint8(byteOffset));
    byteOffset += 1;
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
    // field value
    byteData.setFloat32(byteOffset, message.value, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field value
    byteData.setFloat32(byteOffset, message.value, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field value
    byteData.setFloat32(byteOffset, message.value, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field number
    var numberEncoded = utf8.encode(message.number);
    var numberSSize = numberEncoded.length;
    byteData.setUint16(byteOffset, numberSSize, imc.endian_ser);
    byteOffset += 2;
    numberEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field timeout
    byteData.setUint16(byteOffset, message.timeout, imc.endian_ser);
    byteOffset += 2;
    // field contents
    var contentsEncoded = utf8.encode(message.contents);
    var contentsSSize = contentsEncoded.length;
    byteData.setUint16(byteOffset, contentsSSize, imc.endian_ser);
    byteOffset += 2;
    contentsEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field number
    var numberSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var numberDData = List<int>(numberSSize);
    for (var i = 0; i < numberSSize; i++) {
      numberDData[i] = byteData.getUint8(byteOffset++);
    }
    var numberDecoded = utf8.decode(numberDData);
    builder.number = numberDecoded;
    // field timeout
    builder.timeout = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field contents
    var contentsSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var contentsDData = List<int>(contentsSSize);
    for (var i = 0; i < contentsSSize; i++) {
      contentsDData[i] = byteData.getUint8(byteOffset++);
    }
    var contentsDecoded = utf8.decode(contentsDData);
    builder.contents = contentsDecoded;
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
    // field seq
    byteData.setUint32(byteOffset, message.seq, imc.endian_ser);
    byteOffset += 4;
    // field destination
    var destinationEncoded = utf8.encode(message.destination);
    var destinationSSize = destinationEncoded.length;
    byteData.setUint16(byteOffset, destinationSSize, imc.endian_ser);
    byteOffset += 2;
    destinationEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field timeout
    byteData.setUint16(byteOffset, message.timeout, imc.endian_ser);
    byteOffset += 2;
    // field data
    var dataSSize = message.data.length;
    byteData.setUint16(byteOffset, dataSSize, imc.endian_ser);
    byteOffset += 2;
    message.data.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field seq
    builder.seq = byteData.getUint32(byteOffset, endianess);
    byteOffset += 4;
    // field destination
    var destinationSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var destinationDData = List<int>(destinationSSize);
    for (var i = 0; i < destinationSSize; i++) {
      destinationDData[i] = byteData.getUint8(byteOffset++);
    }
    var destinationDecoded = utf8.decode(destinationDData);
    builder.destination = destinationDecoded;
    // field timeout
    builder.timeout = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field data
    var dataSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var dataDData = List<int>(dataSSize);
    for (var i = 0; i < dataSSize; i++) {
      dataDData[i] = byteData.getUint8(byteOffset++);
    }
    builder.data = dataDData;
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
    // field source
    var sourceEncoded = utf8.encode(message.source);
    var sourceSSize = sourceEncoded.length;
    byteData.setUint16(byteOffset, sourceSSize, imc.endian_ser);
    byteOffset += 2;
    sourceEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field data
    var dataSSize = message.data.length;
    byteData.setUint16(byteOffset, dataSSize, imc.endian_ser);
    byteOffset += 2;
    message.data.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field source
    var sourceSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var sourceDData = List<int>(sourceSSize);
    for (var i = 0; i < sourceSSize; i++) {
      sourceDData[i] = byteData.getUint8(byteOffset++);
    }
    var sourceDecoded = utf8.decode(sourceDData);
    builder.source = sourceDecoded;
    // field data
    var dataSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var dataDData = List<int>(dataSSize);
    for (var i = 0; i < dataSSize; i++) {
      dataDData[i] = byteData.getUint8(byteOffset++);
    }
    builder.data = dataDData;
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
    // field seq
    byteData.setUint32(byteOffset, message.seq, imc.endian_ser);
    byteOffset += 4;
    // field state
    byteData.setUint8(byteOffset, message.state.value);
    byteOffset += 1;
    // field error
    var errorEncoded = utf8.encode(message.error);
    var errorSSize = errorEncoded.length;
    byteData.setUint16(byteOffset, errorSSize, imc.endian_ser);
    byteOffset += 2;
    errorEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field seq
    builder.seq = byteData.getUint32(byteOffset, endianess);
    byteOffset += 4;
    // field state
    builder.state = imc.SmsStateEnumState(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field error
    var errorSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var errorDData = List<int>(errorSSize);
    for (var i = 0; i < errorSSize; i++) {
      errorDData[i] = byteData.getUint8(byteOffset++);
    }
    var errorDecoded = utf8.decode(errorDData);
    builder.error = errorDecoded;
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
    // field origin
    var originEncoded = utf8.encode(message.origin);
    var originSSize = originEncoded.length;
    byteData.setUint16(byteOffset, originSSize, imc.endian_ser);
    byteOffset += 2;
    originEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field text
    var textEncoded = utf8.encode(message.text);
    var textSSize = textEncoded.length;
    byteData.setUint16(byteOffset, textSSize, imc.endian_ser);
    byteOffset += 2;
    textEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field origin
    var originSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var originDData = List<int>(originSSize);
    for (var i = 0; i < originSSize; i++) {
      originDData[i] = byteData.getUint8(byteOffset++);
    }
    var originDecoded = utf8.decode(originDData);
    builder.origin = originDecoded;
    // field text
    var textSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var textDData = List<int>(textSSize);
    for (var i = 0; i < textSSize; i++) {
      textDData[i] = byteData.getUint8(byteOffset++);
    }
    var textDecoded = utf8.decode(textDData);
    builder.text = textDecoded;
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
    // field origin
    var originEncoded = utf8.encode(message.origin);
    var originSSize = originEncoded.length;
    byteData.setUint16(byteOffset, originSSize, imc.endian_ser);
    byteOffset += 2;
    originEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field htime
    byteData.setFloat64(byteOffset, message.htime, imc.endian_ser);
    byteOffset += 8;
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field data
    var dataSSize = message.data.length;
    byteData.setUint16(byteOffset, dataSSize, imc.endian_ser);
    byteOffset += 2;
    message.data.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field origin
    var originSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var originDData = List<int>(originSSize);
    for (var i = 0; i < originSSize; i++) {
      originDData[i] = byteData.getUint8(byteOffset++);
    }
    var originDecoded = utf8.decode(originDData);
    builder.origin = originDecoded;
    // field htime
    builder.htime = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field data
    var dataSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var dataDData = List<int>(dataSSize);
    for (var i = 0; i < dataSSize; i++) {
      dataDData[i] = byteData.getUint8(byteOffset++);
    }
    builder.data = dataDData;
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
    // field reqId
    byteData.setUint16(byteOffset, message.reqId, imc.endian_ser);
    byteOffset += 2;
    // field ttl
    byteData.setUint16(byteOffset, message.ttl, imc.endian_ser);
    byteOffset += 2;
    // field destination
    var destinationEncoded = utf8.encode(message.destination);
    var destinationSSize = destinationEncoded.length;
    byteData.setUint16(byteOffset, destinationSSize, imc.endian_ser);
    byteOffset += 2;
    destinationEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field data
    var dataSSize = message.data.length;
    byteData.setUint16(byteOffset, dataSSize, imc.endian_ser);
    byteOffset += 2;
    message.data.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field reqId
    builder.reqId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field ttl
    builder.ttl = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field destination
    var destinationSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var destinationDData = List<int>(destinationSSize);
    for (var i = 0; i < destinationSSize; i++) {
      destinationDData[i] = byteData.getUint8(byteOffset++);
    }
    var destinationDecoded = utf8.decode(destinationDData);
    builder.destination = destinationDecoded;
    // field data
    var dataSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var dataDData = List<int>(dataSSize);
    for (var i = 0; i < dataSSize; i++) {
      dataDData[i] = byteData.getUint8(byteOffset++);
    }
    builder.data = dataDData;
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
    // field reqId
    byteData.setUint16(byteOffset, message.reqId, imc.endian_ser);
    byteOffset += 2;
    // field status
    byteData.setUint8(byteOffset, message.status.value);
    byteOffset += 1;
    // field text
    var textEncoded = utf8.encode(message.text);
    var textSSize = textEncoded.length;
    byteData.setUint16(byteOffset, textSSize, imc.endian_ser);
    byteOffset += 2;
    textEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field reqId
    builder.reqId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field status
    builder.status = imc.IridiumTxStatusEnumStatus(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field text
    var textSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var textDData = List<int>(textSSize);
    for (var i = 0; i < textSSize; i++) {
      textDData[i] = byteData.getUint8(byteOffset++);
    }
    var textDecoded = utf8.decode(textDData);
    builder.text = textDecoded;
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
    // field groupName
    var groupNameEncoded = utf8.encode(message.groupName);
    var groupNameSSize = groupNameEncoded.length;
    byteData.setUint16(byteOffset, groupNameSSize, imc.endian_ser);
    byteOffset += 2;
    groupNameEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field links
    byteData.setUint32(byteOffset, message.links, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field groupName
    var groupNameSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var groupNameDData = List<int>(groupNameSSize);
    for (var i = 0; i < groupNameSSize; i++) {
      groupNameDData[i] = byteData.getUint8(byteOffset++);
    }
    var groupNameDecoded = utf8.decode(groupNameDData);
    builder.groupName = groupNameDecoded;
    // field links
    builder.links = byteData.getUint32(byteOffset, endianess);
    byteOffset += 4;
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
    // field groupName
    var groupNameEncoded = utf8.encode(message.groupName);
    var groupNameSSize = groupNameEncoded.length;
    byteData.setUint16(byteOffset, groupNameSSize, imc.endian_ser);
    byteOffset += 2;
    groupNameEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field action
    byteData.setUint8(byteOffset, message.action.value);
    byteOffset += 1;
    // field groupList
    var groupListEncoded = utf8.encode(message.groupList);
    var groupListSSize = groupListEncoded.length;
    byteData.setUint16(byteOffset, groupListSSize, imc.endian_ser);
    byteOffset += 2;
    groupListEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field groupName
    var groupNameSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var groupNameDData = List<int>(groupNameSSize);
    for (var i = 0; i < groupNameSSize; i++) {
      groupNameDData[i] = byteData.getUint8(byteOffset++);
    }
    var groupNameDecoded = utf8.decode(groupNameDData);
    builder.groupName = groupNameDecoded;
    // field action
    builder.action = imc.SystemGroupEnumAction(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field groupList
    var groupListSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var groupListDData = List<int>(groupListSSize);
    for (var i = 0; i < groupListSSize; i++) {
      groupListDData[i] = byteData.getUint8(byteOffset++);
    }
    var groupListDecoded = utf8.decode(groupListDData);
    builder.groupList = groupListDecoded;
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
    // field value
    byteData.setFloat32(byteOffset, message.value, imc.endian_ser);
    byteOffset += 4;
    // field sysSrc
    byteData.setUint16(byteOffset, message.sysSrc, imc.endian_ser);
    byteOffset += 2;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field sysSrc
    builder.sysSrc = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
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
    // field value
    byteData.setFloat32(byteOffset, message.value, imc.endian_ser);
    byteOffset += 4;
    // field units
    byteData.setUint8(byteOffset, message.units.value);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field units
    builder.units = imc.RSSIUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
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
    // field baseLat
    byteData.setFloat32(byteOffset, message.baseLat, imc.endian_ser);
    byteOffset += 4;
    // field baseLon
    byteData.setFloat32(byteOffset, message.baseLon, imc.endian_ser);
    byteOffset += 4;
    // field baseTime
    byteData.setFloat32(byteOffset, message.baseTime, imc.endian_ser);
    byteOffset += 4;
    // field data
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field baseLat
    builder.baseLat = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field baseLon
    builder.baseLon = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field baseTime
    builder.baseTime = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field data
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
    // field baseLat
    byteData.setFloat32(byteOffset, message.baseLat, imc.endian_ser);
    byteOffset += 4;
    // field baseLon
    byteData.setFloat32(byteOffset, message.baseLon, imc.endian_ser);
    byteOffset += 4;
    // field baseTime
    byteData.setFloat32(byteOffset, message.baseTime, imc.endian_ser);
    byteOffset += 4;
    // field data
    var dataSSize = message.data.length;
    byteData.setUint16(byteOffset, dataSSize, imc.endian_ser);
    byteOffset += 2;
    message.data.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field baseLat
    builder.baseLat = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field baseLon
    builder.baseLon = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field baseTime
    builder.baseTime = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field data
    var dataSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var dataDData = List<int>(dataSSize);
    for (var i = 0; i < dataSSize; i++) {
      dataDData[i] = byteData.getUint8(byteOffset++);
    }
    builder.data = dataDData;
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
    // field sysId
    byteData.setUint16(byteOffset, message.sysId, imc.endian_ser);
    byteOffset += 2;
    // field priority
    byteData.setInt8(byteOffset, message.priority);
    byteOffset += 1;
    // field x
    byteData.setInt16(byteOffset, message.x, imc.endian_ser);
    byteOffset += 2;
    // field y
    byteData.setInt16(byteOffset, message.y, imc.endian_ser);
    byteOffset += 2;
    // field z
    byteData.setInt16(byteOffset, message.z, imc.endian_ser);
    byteOffset += 2;
    // field t
    byteData.setInt16(byteOffset, message.t, imc.endian_ser);
    byteOffset += 2;
    // field sample
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field sysId
    builder.sysId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field priority
    builder.priority = byteData.getInt8(byteOffset);
    byteOffset += 1;
    // field x
    builder.x = byteData.getInt16(byteOffset, endianess);
    byteOffset += 2;
    // field y
    builder.y = byteData.getInt16(byteOffset, endianess);
    byteOffset += 2;
    // field z
    builder.z = byteData.getInt16(byteOffset, endianess);
    byteOffset += 2;
    // field t
    builder.t = byteData.getInt16(byteOffset, endianess);
    byteOffset += 2;
    // field sample
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
    // field reqId
    byteData.setUint16(byteOffset, message.reqId, imc.endian_ser);
    byteOffset += 2;
    // field type
    byteData.setUint8(byteOffset, message.type.value);
    byteOffset += 1;
    // field maxSize
    byteData.setUint16(byteOffset, message.maxSize, imc.endian_ser);
    byteOffset += 2;
    // field data
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field reqId
    builder.reqId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field type
    builder.type = imc.HistoricDataQueryEnumType(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field maxSize
    builder.maxSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field data
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
    // field originalSource
    byteData.setUint16(byteOffset, message.originalSource, imc.endian_ser);
    byteOffset += 2;
    // field destination
    byteData.setUint16(byteOffset, message.destination, imc.endian_ser);
    byteOffset += 2;
    // field timeout
    byteData.setFloat64(byteOffset, message.timeout, imc.endian_ser);
    byteOffset += 8;
    // field cmd
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field originalSource
    builder.originalSource = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field destination
    builder.destination = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field timeout
    builder.timeout = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field cmd
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
    // field type
    byteData.setUint8(byteOffset, message.type.value);
    byteOffset += 1;
    // field commInterface
    byteData.setUint16(byteOffset, message.commInterface.value, imc.endian_ser);
    byteOffset += 2;
    // field model
    byteData.setUint16(byteOffset, message.model.value, imc.endian_ser);
    byteOffset += 2;
    // field list
    var listEncoded = utf8.encode(message.list);
    var listSSize = listEncoded.length;
    byteData.setUint16(byteOffset, listSSize, imc.endian_ser);
    byteOffset += 2;
    listEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field type
    builder.type = imc.CommSystemsQueryBitfieldType(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field commInterface
    builder.commInterface = imc.CommSystemsQueryBitfieldCommInterface(byteData.getUint16(byteOffset, endianess));
    byteOffset += 2;
    // field model
    builder.model = imc.CommSystemsQueryEnumModel(byteData.getUint16(byteOffset, endianess));
    byteOffset += 2;
    // field list
    var listSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var listDData = List<int>(listSSize);
    for (var i = 0; i < listSSize; i++) {
      listDData[i] = byteData.getUint8(byteOffset++);
    }
    var listDecoded = utf8.decode(listDData);
    builder.list = listDecoded;
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
    // field type
    byteData.setUint8(byteOffset, message.type.value);
    byteOffset += 1;
    // field reqId
    byteData.setUint32(byteOffset, message.reqId, imc.endian_ser);
    byteOffset += 4;
    // field ttl
    byteData.setUint16(byteOffset, message.ttl, imc.endian_ser);
    byteOffset += 2;
    // field code
    byteData.setUint8(byteOffset, message.code.value);
    byteOffset += 1;
    // field destination
    var destinationEncoded = utf8.encode(message.destination);
    var destinationSSize = destinationEncoded.length;
    byteData.setUint16(byteOffset, destinationSSize, imc.endian_ser);
    byteOffset += 2;
    destinationEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field source
    var sourceEncoded = utf8.encode(message.source);
    var sourceSSize = sourceEncoded.length;
    byteData.setUint16(byteOffset, sourceSSize, imc.endian_ser);
    byteOffset += 2;
    sourceEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field acknowledge
    byteData.setUint8(byteOffset, message.acknowledge.value);
    byteOffset += 1;
    // field status
    byteData.setUint8(byteOffset, message.status.value);
    byteOffset += 1;
    // field data
    var dataSSize = message.data.length;
    byteData.setUint16(byteOffset, dataSSize, imc.endian_ser);
    byteOffset += 2;
    message.data.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field type
    builder.type = imc.TelemetryMsgEnumType(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field reqId
    builder.reqId = byteData.getUint32(byteOffset, endianess);
    byteOffset += 4;
    // field ttl
    builder.ttl = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field code
    builder.code = imc.TelemetryMsgEnumCode(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field destination
    var destinationSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var destinationDData = List<int>(destinationSSize);
    for (var i = 0; i < destinationSSize; i++) {
      destinationDData[i] = byteData.getUint8(byteOffset++);
    }
    var destinationDecoded = utf8.decode(destinationDData);
    builder.destination = destinationDecoded;
    // field source
    var sourceSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var sourceDData = List<int>(sourceSSize);
    for (var i = 0; i < sourceSSize; i++) {
      sourceDData[i] = byteData.getUint8(byteOffset++);
    }
    var sourceDecoded = utf8.decode(sourceDData);
    builder.source = sourceDecoded;
    // field acknowledge
    builder.acknowledge = imc.TelemetryMsgBitfieldAcknowledge(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field status
    builder.status = imc.TelemetryMsgEnumStatus(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field data
    var dataSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var dataDData = List<int>(dataSSize);
    for (var i = 0; i < dataSSize; i++) {
      dataDData[i] = byteData.getUint8(byteOffset++);
    }
    builder.data = dataDData;
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
    // field id
    byteData.setUint8(byteOffset, message.id);
    byteOffset += 1;
    // field range
    byteData.setFloat32(byteOffset, message.range, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field id
    builder.id = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field range
    builder.range = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field beacon
    var beaconEncoded = utf8.encode(message.beacon);
    var beaconSSize = beaconEncoded.length;
    byteData.setUint16(byteOffset, beaconSSize, imc.endian_ser);
    byteOffset += 2;
    beaconEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field depth
    byteData.setFloat32(byteOffset, message.depth, imc.endian_ser);
    byteOffset += 4;
    // field queryChannel
    byteData.setUint8(byteOffset, message.queryChannel);
    byteOffset += 1;
    // field replyChannel
    byteData.setUint8(byteOffset, message.replyChannel);
    byteOffset += 1;
    // field transponderDelay
    byteData.setUint8(byteOffset, message.transponderDelay);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field beacon
    var beaconSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var beaconDData = List<int>(beaconSSize);
    for (var i = 0; i < beaconSSize; i++) {
      beaconDData[i] = byteData.getUint8(byteOffset++);
    }
    var beaconDecoded = utf8.decode(beaconDData);
    builder.beacon = beaconDecoded;
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field depth
    builder.depth = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field queryChannel
    builder.queryChannel = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field replyChannel
    builder.replyChannel = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field transponderDelay
    builder.transponderDelay = byteData.getUint8(byteOffset);
    byteOffset += 1;
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
    // field op
    byteData.setUint8(byteOffset, message.op.value);
    byteOffset += 1;
    // field beacons
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field op
    builder.op = imc.LblConfigEnumOp(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field beacons
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
    // field message
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field message
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
    // field op
    byteData.setUint8(byteOffset, message.op.value);
    byteOffset += 1;
    // field system
    var systemEncoded = utf8.encode(message.system);
    var systemSSize = systemEncoded.length;
    byteData.setUint16(byteOffset, systemSSize, imc.endian_ser);
    byteOffset += 2;
    systemEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field range
    byteData.setFloat32(byteOffset, message.range, imc.endian_ser);
    byteOffset += 4;
    // field msg
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field op
    builder.op = imc.AcousticOperationEnumOp(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field system
    var systemSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var systemDData = List<int>(systemSSize);
    for (var i = 0; i < systemSSize; i++) {
      systemDData[i] = byteData.getUint8(byteOffset++);
    }
    var systemDecoded = utf8.decode(systemDData);
    builder.system = systemDecoded;
    // field range
    builder.range = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field msg
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
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

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
    // field list
    var listEncoded = utf8.encode(message.list);
    var listSSize = listEncoded.length;
    byteData.setUint16(byteOffset, listSSize, imc.endian_ser);
    byteOffset += 2;
    listEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field list
    var listSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var listDData = List<int>(listSSize);
    for (var i = 0; i < listSSize; i++) {
      listDData[i] = byteData.getUint8(byteOffset++);
    }
    var listDecoded = utf8.decode(listDData);
    builder.list = listDecoded;
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
    // field peer
    var peerEncoded = utf8.encode(message.peer);
    var peerSSize = peerEncoded.length;
    byteData.setUint16(byteOffset, peerSSize, imc.endian_ser);
    byteOffset += 2;
    peerEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field rssi
    byteData.setFloat32(byteOffset, message.rssi, imc.endian_ser);
    byteOffset += 4;
    // field integrity
    byteData.setUint16(byteOffset, message.integrity, imc.endian_ser);
    byteOffset += 2;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field peer
    var peerSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var peerDData = List<int>(peerSSize);
    for (var i = 0; i < peerSSize; i++) {
      peerDData[i] = byteData.getUint8(byteOffset++);
    }
    var peerDecoded = utf8.decode(peerDData);
    builder.peer = peerDecoded;
    // field rssi
    builder.rssi = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field integrity
    builder.integrity = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
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
    // field value
    byteData.setInt16(byteOffset, message.value, imc.endian_ser);
    byteOffset += 2;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getInt16(byteOffset, endianess);
    byteOffset += 2;
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
    // field value
    byteData.setFloat32(byteOffset, message.value, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field value
    byteData.setFloat32(byteOffset, message.value, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field validity
    byteData.setUint16(byteOffset, message.validity.value, imc.endian_ser);
    byteOffset += 2;
    // field type
    byteData.setUint8(byteOffset, message.type.value);
    byteOffset += 1;
    // field utcYear
    byteData.setUint16(byteOffset, message.utcYear, imc.endian_ser);
    byteOffset += 2;
    // field utcMonth
    byteData.setUint8(byteOffset, message.utcMonth);
    byteOffset += 1;
    // field utcDay
    byteData.setUint8(byteOffset, message.utcDay);
    byteOffset += 1;
    // field utcTime
    byteData.setFloat32(byteOffset, message.utcTime, imc.endian_ser);
    byteOffset += 4;
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field height
    byteData.setFloat32(byteOffset, message.height, imc.endian_ser);
    byteOffset += 4;
    // field satellites
    byteData.setUint8(byteOffset, message.satellites);
    byteOffset += 1;
    // field cog
    byteData.setFloat32(byteOffset, message.cog, imc.endian_ser);
    byteOffset += 4;
    // field sog
    byteData.setFloat32(byteOffset, message.sog, imc.endian_ser);
    byteOffset += 4;
    // field hdop
    byteData.setFloat32(byteOffset, message.hdop, imc.endian_ser);
    byteOffset += 4;
    // field vdop
    byteData.setFloat32(byteOffset, message.vdop, imc.endian_ser);
    byteOffset += 4;
    // field hacc
    byteData.setFloat32(byteOffset, message.hacc, imc.endian_ser);
    byteOffset += 4;
    // field vacc
    byteData.setFloat32(byteOffset, message.vacc, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field validity
    builder.validity = imc.GpsFixBitfieldValidity(byteData.getUint16(byteOffset, endianess));
    byteOffset += 2;
    // field type
    builder.type = imc.GpsFixEnumType(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field utcYear
    builder.utcYear = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field utcMonth
    builder.utcMonth = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field utcDay
    builder.utcDay = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field utcTime
    builder.utcTime = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field height
    builder.height = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field satellites
    builder.satellites = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field cog
    builder.cog = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field sog
    builder.sog = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field hdop
    builder.hdop = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field vdop
    builder.vdop = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field hacc
    builder.hacc = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field vacc
    builder.vacc = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field time
    byteData.setFloat64(byteOffset, message.time, imc.endian_ser);
    byteOffset += 8;
    // field phi
    byteData.setFloat64(byteOffset, message.phi, imc.endian_ser);
    byteOffset += 8;
    // field theta
    byteData.setFloat64(byteOffset, message.theta, imc.endian_ser);
    byteOffset += 8;
    // field psi
    byteData.setFloat64(byteOffset, message.psi, imc.endian_ser);
    byteOffset += 8;
    // field psiMagnetic
    byteData.setFloat64(byteOffset, message.psiMagnetic, imc.endian_ser);
    byteOffset += 8;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field time
    builder.time = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field phi
    builder.phi = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field theta
    builder.theta = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field psi
    builder.psi = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field psiMagnetic
    builder.psiMagnetic = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
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
    // field time
    byteData.setFloat64(byteOffset, message.time, imc.endian_ser);
    byteOffset += 8;
    // field x
    byteData.setFloat64(byteOffset, message.x, imc.endian_ser);
    byteOffset += 8;
    // field y
    byteData.setFloat64(byteOffset, message.y, imc.endian_ser);
    byteOffset += 8;
    // field z
    byteData.setFloat64(byteOffset, message.z, imc.endian_ser);
    byteOffset += 8;
    // field timestep
    byteData.setFloat32(byteOffset, message.timestep, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field time
    builder.time = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field x
    builder.x = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field y
    builder.y = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field z
    builder.z = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field timestep
    builder.timestep = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field time
    byteData.setFloat64(byteOffset, message.time, imc.endian_ser);
    byteOffset += 8;
    // field x
    byteData.setFloat64(byteOffset, message.x, imc.endian_ser);
    byteOffset += 8;
    // field y
    byteData.setFloat64(byteOffset, message.y, imc.endian_ser);
    byteOffset += 8;
    // field z
    byteData.setFloat64(byteOffset, message.z, imc.endian_ser);
    byteOffset += 8;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field time
    builder.time = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field x
    builder.x = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field y
    builder.y = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field z
    builder.z = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
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
    // field time
    byteData.setFloat64(byteOffset, message.time, imc.endian_ser);
    byteOffset += 8;
    // field x
    byteData.setFloat64(byteOffset, message.x, imc.endian_ser);
    byteOffset += 8;
    // field y
    byteData.setFloat64(byteOffset, message.y, imc.endian_ser);
    byteOffset += 8;
    // field z
    byteData.setFloat64(byteOffset, message.z, imc.endian_ser);
    byteOffset += 8;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field time
    builder.time = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field x
    builder.x = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field y
    builder.y = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field z
    builder.z = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
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
    // field time
    byteData.setFloat64(byteOffset, message.time, imc.endian_ser);
    byteOffset += 8;
    // field x
    byteData.setFloat64(byteOffset, message.x, imc.endian_ser);
    byteOffset += 8;
    // field y
    byteData.setFloat64(byteOffset, message.y, imc.endian_ser);
    byteOffset += 8;
    // field z
    byteData.setFloat64(byteOffset, message.z, imc.endian_ser);
    byteOffset += 8;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field time
    builder.time = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field x
    builder.x = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field y
    builder.y = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field z
    builder.z = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
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
    // field validity
    byteData.setUint8(byteOffset, message.validity.value);
    byteOffset += 1;
    // field x
    byteData.setFloat64(byteOffset, message.x, imc.endian_ser);
    byteOffset += 8;
    // field y
    byteData.setFloat64(byteOffset, message.y, imc.endian_ser);
    byteOffset += 8;
    // field z
    byteData.setFloat64(byteOffset, message.z, imc.endian_ser);
    byteOffset += 8;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field validity
    builder.validity = imc.GroundVelocityBitfieldValidity(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field x
    builder.x = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field y
    builder.y = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field z
    builder.z = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
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
    // field validity
    byteData.setUint8(byteOffset, message.validity.value);
    byteOffset += 1;
    // field x
    byteData.setFloat64(byteOffset, message.x, imc.endian_ser);
    byteOffset += 8;
    // field y
    byteData.setFloat64(byteOffset, message.y, imc.endian_ser);
    byteOffset += 8;
    // field z
    byteData.setFloat64(byteOffset, message.z, imc.endian_ser);
    byteOffset += 8;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field validity
    builder.validity = imc.WaterVelocityBitfieldValidity(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field x
    builder.x = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field y
    builder.y = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field z
    builder.z = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
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
    // field time
    byteData.setFloat64(byteOffset, message.time, imc.endian_ser);
    byteOffset += 8;
    // field x
    byteData.setFloat64(byteOffset, message.x, imc.endian_ser);
    byteOffset += 8;
    // field y
    byteData.setFloat64(byteOffset, message.y, imc.endian_ser);
    byteOffset += 8;
    // field z
    byteData.setFloat64(byteOffset, message.z, imc.endian_ser);
    byteOffset += 8;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field time
    builder.time = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field x
    builder.x = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field y
    builder.y = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field z
    builder.z = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
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
    // field validity
    byteData.setUint8(byteOffset, message.validity.value);
    byteOffset += 1;
    // field location
    // field beamConfig
    // field value
    byteData.setFloat32(byteOffset, message.value, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field validity
    builder.validity = imc.DistanceEnumValidity(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field location
    // field beamConfig
    // field value
    builder.value = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field value
    byteData.setFloat32(byteOffset, message.value, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field value
    byteData.setFloat64(byteOffset, message.value, imc.endian_ser);
    byteOffset += 8;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
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
    // field value
    byteData.setFloat32(byteOffset, message.value, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field value
    byteData.setFloat32(byteOffset, message.value, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field value
    byteData.setFloat32(byteOffset, message.value, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field value
    byteData.setFloat32(byteOffset, message.value, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field value
    byteData.setFloat32(byteOffset, message.value, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field value
    byteData.setFloat32(byteOffset, message.value, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field direction
    byteData.setFloat32(byteOffset, message.direction, imc.endian_ser);
    byteOffset += 4;
    // field speed
    byteData.setFloat32(byteOffset, message.speed, imc.endian_ser);
    byteOffset += 4;
    // field turbulence
    byteData.setFloat32(byteOffset, message.turbulence, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field direction
    builder.direction = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field speed
    builder.speed = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field turbulence
    builder.turbulence = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field value
    byteData.setFloat32(byteOffset, message.value, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field value
    var valueEncoded = utf8.encode(message.value);
    var valueSSize = valueEncoded.length;
    byteData.setUint16(byteOffset, valueSSize, imc.endian_ser);
    byteOffset += 2;
    valueEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    var valueSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var valueDData = List<int>(valueSSize);
    for (var i = 0; i < valueSSize; i++) {
      valueDData[i] = byteData.getUint8(byteOffset++);
    }
    var valueDecoded = utf8.decode(valueDData);
    builder.value = valueDecoded;
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
    // field value
    var valueSSize = message.value.length;
    byteData.setUint16(byteOffset, valueSSize, imc.endian_ser);
    byteOffset += 2;
    message.value.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    var valueSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var valueDData = List<int>(valueSSize);
    for (var i = 0; i < valueSSize; i++) {
      valueDData[i] = byteData.getUint8(byteOffset++);
    }
    builder.value = valueDData;
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
    // field value
    byteData.setFloat32(byteOffset, message.value, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field type
    byteData.setUint8(byteOffset, message.type.value);
    byteOffset += 1;
    // field frequency
    byteData.setUint32(byteOffset, message.frequency, imc.endian_ser);
    byteOffset += 4;
    // field minRange
    byteData.setUint16(byteOffset, message.minRange, imc.endian_ser);
    byteOffset += 2;
    // field maxRange
    byteData.setUint16(byteOffset, message.maxRange, imc.endian_ser);
    byteOffset += 2;
    // field bitsPerPoint
    byteData.setUint8(byteOffset, message.bitsPerPoint);
    byteOffset += 1;
    // field scaleFactor
    byteData.setFloat32(byteOffset, message.scaleFactor, imc.endian_ser);
    byteOffset += 4;
    // field beamConfig
    // field data
    var dataSSize = message.data.length;
    byteData.setUint16(byteOffset, dataSSize, imc.endian_ser);
    byteOffset += 2;
    message.data.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field type
    builder.type = imc.SonarDataEnumType(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field frequency
    builder.frequency = byteData.getUint32(byteOffset, endianess);
    byteOffset += 4;
    // field minRange
    builder.minRange = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field maxRange
    builder.maxRange = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field bitsPerPoint
    builder.bitsPerPoint = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field scaleFactor
    builder.scaleFactor = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field beamConfig
    // field data
    var dataSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var dataDData = List<int>(dataSSize);
    for (var i = 0; i < dataSSize; i++) {
      dataDData[i] = byteData.getUint8(byteOffset++);
    }
    builder.data = dataDData;
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
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

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
    // field op
    byteData.setUint8(byteOffset, message.op.value);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field op
    builder.op = imc.PulseDetectionControlEnumOp(byteData.getUint8(byteOffset));
    byteOffset += 1;
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
    // field value
    byteData.setFloat32(byteOffset, message.value, imc.endian_ser);
    byteOffset += 4;
    // field confidence
    byteData.setFloat32(byteOffset, message.confidence, imc.endian_ser);
    byteOffset += 4;
    // field opmodes
    var opmodesEncoded = utf8.encode(message.opmodes);
    var opmodesSSize = opmodesEncoded.length;
    byteData.setUint16(byteOffset, opmodesSSize, imc.endian_ser);
    byteOffset += 2;
    opmodesEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field confidence
    builder.confidence = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field opmodes
    var opmodesSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var opmodesDData = List<int>(opmodesSSize);
    for (var i = 0; i < opmodesSSize; i++) {
      opmodesDData[i] = byteData.getUint8(byteOffset++);
    }
    var opmodesDecoded = utf8.decode(opmodesDData);
    builder.opmodes = opmodesDecoded;
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
    // field itow
    byteData.setUint32(byteOffset, message.itow, imc.endian_ser);
    byteOffset += 4;
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field heightEll
    byteData.setFloat32(byteOffset, message.heightEll, imc.endian_ser);
    byteOffset += 4;
    // field heightSea
    byteData.setFloat32(byteOffset, message.heightSea, imc.endian_ser);
    byteOffset += 4;
    // field hacc
    byteData.setFloat32(byteOffset, message.hacc, imc.endian_ser);
    byteOffset += 4;
    // field vacc
    byteData.setFloat32(byteOffset, message.vacc, imc.endian_ser);
    byteOffset += 4;
    // field velN
    byteData.setFloat32(byteOffset, message.velN, imc.endian_ser);
    byteOffset += 4;
    // field velE
    byteData.setFloat32(byteOffset, message.velE, imc.endian_ser);
    byteOffset += 4;
    // field velD
    byteData.setFloat32(byteOffset, message.velD, imc.endian_ser);
    byteOffset += 4;
    // field speed
    byteData.setFloat32(byteOffset, message.speed, imc.endian_ser);
    byteOffset += 4;
    // field gspeed
    byteData.setFloat32(byteOffset, message.gspeed, imc.endian_ser);
    byteOffset += 4;
    // field heading
    byteData.setFloat32(byteOffset, message.heading, imc.endian_ser);
    byteOffset += 4;
    // field sacc
    byteData.setFloat32(byteOffset, message.sacc, imc.endian_ser);
    byteOffset += 4;
    // field cacc
    byteData.setFloat32(byteOffset, message.cacc, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field itow
    builder.itow = byteData.getUint32(byteOffset, endianess);
    byteOffset += 4;
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field heightEll
    builder.heightEll = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field heightSea
    builder.heightSea = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field hacc
    builder.hacc = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field vacc
    builder.vacc = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field velN
    builder.velN = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field velE
    builder.velE = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field velD
    builder.velD = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field speed
    builder.speed = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field gspeed
    builder.gspeed = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field heading
    builder.heading = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field sacc
    builder.sacc = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field cacc
    builder.cacc = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field id
    byteData.setUint8(byteOffset, message.id);
    byteOffset += 1;
    // field value
    byteData.setFloat32(byteOffset, message.value, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field id
    builder.id = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field value
    builder.value = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field x
    byteData.setFloat32(byteOffset, message.x, imc.endian_ser);
    byteOffset += 4;
    // field y
    byteData.setFloat32(byteOffset, message.y, imc.endian_ser);
    byteOffset += 4;
    // field z
    byteData.setFloat32(byteOffset, message.z, imc.endian_ser);
    byteOffset += 4;
    // field phi
    byteData.setFloat32(byteOffset, message.phi, imc.endian_ser);
    byteOffset += 4;
    // field theta
    byteData.setFloat32(byteOffset, message.theta, imc.endian_ser);
    byteOffset += 4;
    // field psi
    byteData.setFloat32(byteOffset, message.psi, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field x
    builder.x = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field y
    builder.y = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field z
    builder.z = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field phi
    builder.phi = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field theta
    builder.theta = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field psi
    builder.psi = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field beamWidth
    byteData.setFloat32(byteOffset, message.beamWidth, imc.endian_ser);
    byteOffset += 4;
    // field beamHeight
    byteData.setFloat32(byteOffset, message.beamHeight, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field beamWidth
    builder.beamWidth = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field beamHeight
    builder.beamHeight = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field sane
    byteData.setUint8(byteOffset, message.sane.value);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field sane
    builder.sane = imc.DataSanityEnumSane(byteData.getUint8(byteOffset));
    byteOffset += 1;
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
    // field value
    byteData.setFloat32(byteOffset, message.value, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field value
    byteData.setFloat32(byteOffset, message.value, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field value
    byteData.setFloat32(byteOffset, message.value, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field value
    byteData.setFloat32(byteOffset, message.value, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field value
    byteData.setFloat32(byteOffset, message.value, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field value
    byteData.setFloat32(byteOffset, message.value, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field value
    byteData.setFloat32(byteOffset, message.value, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field value
    byteData.setFloat32(byteOffset, message.value, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field validity
    byteData.setUint16(byteOffset, message.validity.value, imc.endian_ser);
    byteOffset += 2;
    // field type
    byteData.setUint8(byteOffset, message.type.value);
    byteOffset += 1;
    // field tow
    byteData.setUint32(byteOffset, message.tow, imc.endian_ser);
    byteOffset += 4;
    // field baseLat
    byteData.setFloat64(byteOffset, message.baseLat, imc.endian_ser);
    byteOffset += 8;
    // field baseLon
    byteData.setFloat64(byteOffset, message.baseLon, imc.endian_ser);
    byteOffset += 8;
    // field baseHeight
    byteData.setFloat32(byteOffset, message.baseHeight, imc.endian_ser);
    byteOffset += 4;
    // field n
    byteData.setFloat32(byteOffset, message.n, imc.endian_ser);
    byteOffset += 4;
    // field e
    byteData.setFloat32(byteOffset, message.e, imc.endian_ser);
    byteOffset += 4;
    // field d
    byteData.setFloat32(byteOffset, message.d, imc.endian_ser);
    byteOffset += 4;
    // field vN
    byteData.setFloat32(byteOffset, message.vN, imc.endian_ser);
    byteOffset += 4;
    // field vE
    byteData.setFloat32(byteOffset, message.vE, imc.endian_ser);
    byteOffset += 4;
    // field vD
    byteData.setFloat32(byteOffset, message.vD, imc.endian_ser);
    byteOffset += 4;
    // field satellites
    byteData.setUint8(byteOffset, message.satellites);
    byteOffset += 1;
    // field iarHyp
    byteData.setUint16(byteOffset, message.iarHyp, imc.endian_ser);
    byteOffset += 2;
    // field iarRatio
    byteData.setFloat32(byteOffset, message.iarRatio, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field validity
    builder.validity = imc.GpsFixRtkBitfieldValidity(byteData.getUint16(byteOffset, endianess));
    byteOffset += 2;
    // field type
    builder.type = imc.GpsFixRtkEnumType(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field tow
    builder.tow = byteData.getUint32(byteOffset, endianess);
    byteOffset += 4;
    // field baseLat
    builder.baseLat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field baseLon
    builder.baseLon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field baseHeight
    builder.baseHeight = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field n
    builder.n = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field e
    builder.e = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field d
    builder.d = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field vN
    builder.vN = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field vE
    builder.vE = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field vD
    builder.vD = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field satellites
    builder.satellites = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field iarHyp
    builder.iarHyp = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field iarRatio
    builder.iarRatio = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field state
    // field type
    byteData.setUint8(byteOffset, message.type.value);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field state
    // field type
    builder.type = imc.ExternalNavDataEnumType(byteData.getUint8(byteOffset));
    byteOffset += 1;
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
    // field value
    byteData.setFloat32(byteOffset, message.value, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field value
    byteData.setFloat32(byteOffset, message.value, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field value
    byteData.setFloat64(byteOffset, message.value, imc.endian_ser);
    byteOffset += 8;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
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
    // field value
    byteData.setFloat32(byteOffset, message.value, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field value
    byteData.setFloat32(byteOffset, message.value, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field id
    byteData.setUint8(byteOffset, message.id);
    byteOffset += 1;
    // field zoom
    byteData.setUint8(byteOffset, message.zoom);
    byteOffset += 1;
    // field action
    byteData.setUint8(byteOffset, message.action.value);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field id
    builder.id = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field zoom
    builder.zoom = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field action
    builder.action = imc.CameraZoomEnumAction(byteData.getUint8(byteOffset));
    byteOffset += 1;
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
    // field id
    byteData.setUint8(byteOffset, message.id);
    byteOffset += 1;
    // field value
    byteData.setFloat32(byteOffset, message.value, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field id
    builder.id = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field value
    builder.value = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field id
    byteData.setUint8(byteOffset, message.id);
    byteOffset += 1;
    // field value
    byteData.setFloat32(byteOffset, message.value, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field id
    builder.id = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field value
    builder.value = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field id
    byteData.setUint8(byteOffset, message.id);
    byteOffset += 1;
    // field angle
    byteData.setFloat32(byteOffset, message.angle, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field id
    builder.id = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field angle
    builder.angle = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field op
    byteData.setUint8(byteOffset, message.op.value);
    byteOffset += 1;
    // field actions
    var actionsEncoded = utf8.encode(message.actions);
    var actionsSSize = actionsEncoded.length;
    byteData.setUint16(byteOffset, actionsSSize, imc.endian_ser);
    byteOffset += 2;
    actionsEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field op
    builder.op = imc.RemoteActionsRequestEnumOp(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field actions
    var actionsSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var actionsDData = List<int>(actionsSSize);
    for (var i = 0; i < actionsSSize; i++) {
      actionsDData[i] = byteData.getUint8(byteOffset++);
    }
    var actionsDecoded = utf8.decode(actionsDData);
    builder.actions = actionsDecoded;
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
    // field actions
    var actionsEncoded = utf8.encode(message.actions);
    var actionsSSize = actionsEncoded.length;
    byteData.setUint16(byteOffset, actionsSSize, imc.endian_ser);
    byteOffset += 2;
    actionsEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field actions
    var actionsSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var actionsDData = List<int>(actionsSSize);
    for (var i = 0; i < actionsSSize; i++) {
      actionsDData[i] = byteData.getUint8(byteOffset++);
    }
    var actionsDecoded = utf8.decode(actionsDData);
    builder.actions = actionsDecoded;
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
    // field button
    byteData.setUint8(byteOffset, message.button);
    byteOffset += 1;
    // field value
    byteData.setUint8(byteOffset, message.value);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field button
    builder.button = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field value
    builder.value = byteData.getUint8(byteOffset);
    byteOffset += 1;
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
    // field op
    byteData.setUint8(byteOffset, message.op.value);
    byteOffset += 1;
    // field text
    var textEncoded = utf8.encode(message.text);
    var textSSize = textEncoded.length;
    byteData.setUint16(byteOffset, textSSize, imc.endian_ser);
    byteOffset += 2;
    textEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field op
    builder.op = imc.LcdControlEnumOp(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field text
    var textSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var textDData = List<int>(textSSize);
    for (var i = 0; i < textSSize; i++) {
      textDData[i] = byteData.getUint8(byteOffset++);
    }
    var textDecoded = utf8.decode(textDData);
    builder.text = textDecoded;
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
    // field op
    byteData.setUint8(byteOffset, message.op.value);
    byteOffset += 1;
    // field timeRemain
    byteData.setFloat32(byteOffset, message.timeRemain, imc.endian_ser);
    byteOffset += 4;
    // field schedTime
    byteData.setFloat64(byteOffset, message.schedTime, imc.endian_ser);
    byteOffset += 8;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field op
    builder.op = imc.PowerOperationEnumOp(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field timeRemain
    builder.timeRemain = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field schedTime
    builder.schedTime = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
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
    // field name
    var nameEncoded = utf8.encode(message.name);
    var nameSSize = nameEncoded.length;
    byteData.setUint16(byteOffset, nameSSize, imc.endian_ser);
    byteOffset += 2;
    nameEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field op
    byteData.setUint8(byteOffset, message.op.value);
    byteOffset += 1;
    // field schedTime
    byteData.setFloat64(byteOffset, message.schedTime, imc.endian_ser);
    byteOffset += 8;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field name
    var nameSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var nameDData = List<int>(nameSSize);
    for (var i = 0; i < nameSSize; i++) {
      nameDData[i] = byteData.getUint8(byteOffset++);
    }
    var nameDecoded = utf8.decode(nameDData);
    builder.name = nameDecoded;
    // field op
    builder.op = imc.PowerChannelControlEnumOp(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field schedTime
    builder.schedTime = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
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
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

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
    // field name
    var nameEncoded = utf8.encode(message.name);
    var nameSSize = nameEncoded.length;
    byteData.setUint16(byteOffset, nameSSize, imc.endian_ser);
    byteOffset += 2;
    nameEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field state
    byteData.setUint8(byteOffset, message.state.value);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field name
    var nameSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var nameDData = List<int>(nameSSize);
    for (var i = 0; i < nameSSize; i++) {
      nameDData[i] = byteData.getUint8(byteOffset++);
    }
    var nameDecoded = utf8.decode(nameDData);
    builder.name = nameDecoded;
    // field state
    builder.state = imc.PowerChannelStateEnumState(byteData.getUint8(byteOffset));
    byteOffset += 1;
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
    // field name
    var nameEncoded = utf8.encode(message.name);
    var nameSSize = nameEncoded.length;
    byteData.setUint16(byteOffset, nameSSize, imc.endian_ser);
    byteOffset += 2;
    nameEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field value
    byteData.setUint8(byteOffset, message.value);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field name
    var nameSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var nameDData = List<int>(nameSSize);
    for (var i = 0; i < nameSSize; i++) {
      nameDData[i] = byteData.getUint8(byteOffset++);
    }
    var nameDecoded = utf8.decode(nameDData);
    builder.name = nameDecoded;
    // field value
    builder.value = byteData.getUint8(byteOffset);
    byteOffset += 1;
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
    // field name
    var nameEncoded = utf8.encode(message.name);
    var nameSSize = nameEncoded.length;
    byteData.setUint16(byteOffset, nameSSize, imc.endian_ser);
    byteOffset += 2;
    nameEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field name
    var nameSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var nameDData = List<int>(nameSSize);
    for (var i = 0; i < nameSSize; i++) {
      nameDData[i] = byteData.getUint8(byteOffset++);
    }
    var nameDecoded = utf8.decode(nameDData);
    builder.name = nameDecoded;
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
    // field name
    var nameEncoded = utf8.encode(message.name);
    var nameSSize = nameEncoded.length;
    byteData.setUint16(byteOffset, nameSSize, imc.endian_ser);
    byteOffset += 2;
    nameEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field value
    byteData.setUint8(byteOffset, message.value);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field name
    var nameSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var nameDData = List<int>(nameSSize);
    for (var i = 0; i < nameSSize; i++) {
      nameDData[i] = byteData.getUint8(byteOffset++);
    }
    var nameDecoded = utf8.decode(nameDData);
    builder.name = nameDecoded;
    // field value
    builder.value = byteData.getUint8(byteOffset);
    byteOffset += 1;
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
    // field id
    byteData.setUint8(byteOffset, message.id);
    byteOffset += 1;
    // field period
    byteData.setUint32(byteOffset, message.period, imc.endian_ser);
    byteOffset += 4;
    // field dutyCycle
    byteData.setUint32(byteOffset, message.dutyCycle, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field id
    builder.id = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field period
    builder.period = byteData.getUint32(byteOffset, endianess);
    byteOffset += 4;
    // field dutyCycle
    builder.dutyCycle = byteData.getUint32(byteOffset, endianess);
    byteOffset += 4;
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
    // field id
    byteData.setUint8(byteOffset, message.id);
    byteOffset += 1;
    // field period
    byteData.setUint32(byteOffset, message.period, imc.endian_ser);
    byteOffset += 4;
    // field dutyCycle
    byteData.setUint32(byteOffset, message.dutyCycle, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field id
    builder.id = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field period
    builder.period = byteData.getUint32(byteOffset, endianess);
    byteOffset += 4;
    // field dutyCycle
    builder.dutyCycle = byteData.getUint32(byteOffset, endianess);
    byteOffset += 4;
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
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field height
    byteData.setFloat32(byteOffset, message.height, imc.endian_ser);
    byteOffset += 4;
    // field x
    byteData.setFloat32(byteOffset, message.x, imc.endian_ser);
    byteOffset += 4;
    // field y
    byteData.setFloat32(byteOffset, message.y, imc.endian_ser);
    byteOffset += 4;
    // field z
    byteData.setFloat32(byteOffset, message.z, imc.endian_ser);
    byteOffset += 4;
    // field phi
    byteData.setFloat32(byteOffset, message.phi, imc.endian_ser);
    byteOffset += 4;
    // field theta
    byteData.setFloat32(byteOffset, message.theta, imc.endian_ser);
    byteOffset += 4;
    // field psi
    byteData.setFloat32(byteOffset, message.psi, imc.endian_ser);
    byteOffset += 4;
    // field u
    byteData.setFloat32(byteOffset, message.u, imc.endian_ser);
    byteOffset += 4;
    // field v
    byteData.setFloat32(byteOffset, message.v, imc.endian_ser);
    byteOffset += 4;
    // field w
    byteData.setFloat32(byteOffset, message.w, imc.endian_ser);
    byteOffset += 4;
    // field vx
    byteData.setFloat32(byteOffset, message.vx, imc.endian_ser);
    byteOffset += 4;
    // field vy
    byteData.setFloat32(byteOffset, message.vy, imc.endian_ser);
    byteOffset += 4;
    // field vz
    byteData.setFloat32(byteOffset, message.vz, imc.endian_ser);
    byteOffset += 4;
    // field p
    byteData.setFloat32(byteOffset, message.p, imc.endian_ser);
    byteOffset += 4;
    // field q
    byteData.setFloat32(byteOffset, message.q, imc.endian_ser);
    byteOffset += 4;
    // field r
    byteData.setFloat32(byteOffset, message.r, imc.endian_ser);
    byteOffset += 4;
    // field depth
    byteData.setFloat32(byteOffset, message.depth, imc.endian_ser);
    byteOffset += 4;
    // field alt
    byteData.setFloat32(byteOffset, message.alt, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field height
    builder.height = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field x
    builder.x = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field y
    builder.y = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field z
    builder.z = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field phi
    builder.phi = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field theta
    builder.theta = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field psi
    builder.psi = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field u
    builder.u = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field v
    builder.v = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field w
    builder.w = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field vx
    builder.vx = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field vy
    builder.vy = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field vz
    builder.vz = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field p
    builder.p = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field q
    builder.q = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field r
    builder.r = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field depth
    builder.depth = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field alt
    builder.alt = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field x
    byteData.setFloat64(byteOffset, message.x, imc.endian_ser);
    byteOffset += 8;
    // field y
    byteData.setFloat64(byteOffset, message.y, imc.endian_ser);
    byteOffset += 8;
    // field z
    byteData.setFloat64(byteOffset, message.z, imc.endian_ser);
    byteOffset += 8;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field x
    builder.x = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field y
    builder.y = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field z
    builder.z = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
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
    // field value
    byteData.setFloat64(byteOffset, message.value, imc.endian_ser);
    byteOffset += 8;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
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
    // field value
    byteData.setFloat64(byteOffset, message.value, imc.endian_ser);
    byteOffset += 8;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
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
    // field x
    byteData.setFloat32(byteOffset, message.x, imc.endian_ser);
    byteOffset += 4;
    // field y
    byteData.setFloat32(byteOffset, message.y, imc.endian_ser);
    byteOffset += 4;
    // field z
    byteData.setFloat32(byteOffset, message.z, imc.endian_ser);
    byteOffset += 4;
    // field phi
    byteData.setFloat32(byteOffset, message.phi, imc.endian_ser);
    byteOffset += 4;
    // field theta
    byteData.setFloat32(byteOffset, message.theta, imc.endian_ser);
    byteOffset += 4;
    // field psi
    byteData.setFloat32(byteOffset, message.psi, imc.endian_ser);
    byteOffset += 4;
    // field p
    byteData.setFloat32(byteOffset, message.p, imc.endian_ser);
    byteOffset += 4;
    // field q
    byteData.setFloat32(byteOffset, message.q, imc.endian_ser);
    byteOffset += 4;
    // field r
    byteData.setFloat32(byteOffset, message.r, imc.endian_ser);
    byteOffset += 4;
    // field u
    byteData.setFloat32(byteOffset, message.u, imc.endian_ser);
    byteOffset += 4;
    // field v
    byteData.setFloat32(byteOffset, message.v, imc.endian_ser);
    byteOffset += 4;
    // field w
    byteData.setFloat32(byteOffset, message.w, imc.endian_ser);
    byteOffset += 4;
    // field biasPsi
    byteData.setFloat32(byteOffset, message.biasPsi, imc.endian_ser);
    byteOffset += 4;
    // field biasR
    byteData.setFloat32(byteOffset, message.biasR, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field x
    builder.x = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field y
    builder.y = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field z
    builder.z = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field phi
    builder.phi = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field theta
    builder.theta = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field psi
    builder.psi = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field p
    builder.p = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field q
    builder.q = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field r
    builder.r = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field u
    builder.u = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field v
    builder.v = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field w
    builder.w = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field biasPsi
    builder.biasPsi = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field biasR
    builder.biasR = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field biasPsi
    byteData.setFloat32(byteOffset, message.biasPsi, imc.endian_ser);
    byteOffset += 4;
    // field biasR
    byteData.setFloat32(byteOffset, message.biasR, imc.endian_ser);
    byteOffset += 4;
    // field cog
    byteData.setFloat32(byteOffset, message.cog, imc.endian_ser);
    byteOffset += 4;
    // field cyaw
    byteData.setFloat32(byteOffset, message.cyaw, imc.endian_ser);
    byteOffset += 4;
    // field lblRejLevel
    byteData.setFloat32(byteOffset, message.lblRejLevel, imc.endian_ser);
    byteOffset += 4;
    // field gpsRejLevel
    byteData.setFloat32(byteOffset, message.gpsRejLevel, imc.endian_ser);
    byteOffset += 4;
    // field customX
    byteData.setFloat32(byteOffset, message.customX, imc.endian_ser);
    byteOffset += 4;
    // field customY
    byteData.setFloat32(byteOffset, message.customY, imc.endian_ser);
    byteOffset += 4;
    // field customZ
    byteData.setFloat32(byteOffset, message.customZ, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field biasPsi
    builder.biasPsi = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field biasR
    builder.biasR = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field cog
    builder.cog = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field cyaw
    builder.cyaw = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field lblRejLevel
    builder.lblRejLevel = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field gpsRejLevel
    builder.gpsRejLevel = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field customX
    builder.customX = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field customY
    builder.customY = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field customZ
    builder.customZ = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field utcTime
    byteData.setFloat32(byteOffset, message.utcTime, imc.endian_ser);
    byteOffset += 4;
    // field reason
    byteData.setUint8(byteOffset, message.reason.value);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field utcTime
    builder.utcTime = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field reason
    builder.reason = imc.GpsFixRejectionEnumReason(byteData.getUint8(byteOffset));
    byteOffset += 1;
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
    // field id
    byteData.setUint8(byteOffset, message.id);
    byteOffset += 1;
    // field range
    byteData.setFloat32(byteOffset, message.range, imc.endian_ser);
    byteOffset += 4;
    // field acceptance
    byteData.setUint8(byteOffset, message.acceptance.value);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field id
    builder.id = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field range
    builder.range = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field acceptance
    builder.acceptance = imc.LblRangeAcceptanceEnumAcceptance(byteData.getUint8(byteOffset));
    byteOffset += 1;
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
    // field type
    byteData.setUint8(byteOffset, message.type.value);
    byteOffset += 1;
    // field reason
    byteData.setUint8(byteOffset, message.reason.value);
    byteOffset += 1;
    // field value
    byteData.setFloat32(byteOffset, message.value, imc.endian_ser);
    byteOffset += 4;
    // field timestep
    byteData.setFloat32(byteOffset, message.timestep, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field type
    builder.type = imc.DvlRejectionBitfieldType(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field reason
    builder.reason = imc.DvlRejectionEnumReason(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field value
    builder.value = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field timestep
    builder.timestep = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field beacon
    // field x
    byteData.setFloat32(byteOffset, message.x, imc.endian_ser);
    byteOffset += 4;
    // field y
    byteData.setFloat32(byteOffset, message.y, imc.endian_ser);
    byteOffset += 4;
    // field varX
    byteData.setFloat32(byteOffset, message.varX, imc.endian_ser);
    byteOffset += 4;
    // field varY
    byteData.setFloat32(byteOffset, message.varY, imc.endian_ser);
    byteOffset += 4;
    // field distance
    byteData.setFloat32(byteOffset, message.distance, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field beacon
    // field x
    builder.x = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field y
    builder.y = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field varX
    builder.varX = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field varY
    builder.varY = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field distance
    builder.distance = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field state
    byteData.setUint8(byteOffset, message.state.value);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field state
    builder.state = imc.AlignmentStateEnumState(byteData.getUint8(byteOffset));
    byteOffset += 1;
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
    // field x
    byteData.setFloat64(byteOffset, message.x, imc.endian_ser);
    byteOffset += 8;
    // field y
    byteData.setFloat64(byteOffset, message.y, imc.endian_ser);
    byteOffset += 8;
    // field z
    byteData.setFloat64(byteOffset, message.z, imc.endian_ser);
    byteOffset += 8;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field x
    builder.x = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field y
    builder.y = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field z
    builder.z = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
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
    // field va
    byteData.setFloat32(byteOffset, message.va, imc.endian_ser);
    byteOffset += 4;
    // field aoa
    byteData.setFloat32(byteOffset, message.aoa, imc.endian_ser);
    byteOffset += 4;
    // field ssa
    byteData.setFloat32(byteOffset, message.ssa, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field va
    builder.va = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field aoa
    builder.aoa = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field ssa
    builder.ssa = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field value
    byteData.setFloat64(byteOffset, message.value, imc.endian_ser);
    byteOffset += 8;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
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
    // field value
    byteData.setFloat32(byteOffset, message.value, imc.endian_ser);
    byteOffset += 4;
    // field zUnits
    byteData.setUint8(byteOffset, message.zUnits.value);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field zUnits
    builder.zUnits = imc.ZUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
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
    // field value
    byteData.setFloat64(byteOffset, message.value, imc.endian_ser);
    byteOffset += 8;
    // field speedUnits
    byteData.setUint8(byteOffset, message.speedUnits.value);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field speedUnits
    builder.speedUnits = imc.SpeedUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
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
    // field value
    byteData.setFloat64(byteOffset, message.value, imc.endian_ser);
    byteOffset += 8;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
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
    // field value
    byteData.setFloat64(byteOffset, message.value, imc.endian_ser);
    byteOffset += 8;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
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
    // field value
    byteData.setFloat64(byteOffset, message.value, imc.endian_ser);
    byteOffset += 8;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
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
    // field pathRef
    byteData.setUint32(byteOffset, message.pathRef, imc.endian_ser);
    byteOffset += 4;
    // field startLat
    byteData.setFloat64(byteOffset, message.startLat, imc.endian_ser);
    byteOffset += 8;
    // field startLon
    byteData.setFloat64(byteOffset, message.startLon, imc.endian_ser);
    byteOffset += 8;
    // field startZ
    byteData.setFloat32(byteOffset, message.startZ, imc.endian_ser);
    byteOffset += 4;
    // field startZUnits
    byteData.setUint8(byteOffset, message.startZUnits.value);
    byteOffset += 1;
    // field endLat
    byteData.setFloat64(byteOffset, message.endLat, imc.endian_ser);
    byteOffset += 8;
    // field endLon
    byteData.setFloat64(byteOffset, message.endLon, imc.endian_ser);
    byteOffset += 8;
    // field endZ
    byteData.setFloat32(byteOffset, message.endZ, imc.endian_ser);
    byteOffset += 4;
    // field endZUnits
    byteData.setUint8(byteOffset, message.endZUnits.value);
    byteOffset += 1;
    // field speed
    byteData.setFloat32(byteOffset, message.speed, imc.endian_ser);
    byteOffset += 4;
    // field speedUnits
    byteData.setUint8(byteOffset, message.speedUnits.value);
    byteOffset += 1;
    // field lradius
    byteData.setFloat32(byteOffset, message.lradius, imc.endian_ser);
    byteOffset += 4;
    // field flags
    byteData.setUint8(byteOffset, message.flags.value);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field pathRef
    builder.pathRef = byteData.getUint32(byteOffset, endianess);
    byteOffset += 4;
    // field startLat
    builder.startLat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field startLon
    builder.startLon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field startZ
    builder.startZ = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field startZUnits
    builder.startZUnits = imc.ZUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field endLat
    builder.endLat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field endLon
    builder.endLon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field endZ
    builder.endZ = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field endZUnits
    builder.endZUnits = imc.ZUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field speed
    builder.speed = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field speedUnits
    builder.speedUnits = imc.SpeedUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field lradius
    builder.lradius = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field flags
    builder.flags = imc.DesiredPathBitfieldFlags(byteData.getUint8(byteOffset));
    byteOffset += 1;
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
    // field x
    byteData.setFloat64(byteOffset, message.x, imc.endian_ser);
    byteOffset += 8;
    // field y
    byteData.setFloat64(byteOffset, message.y, imc.endian_ser);
    byteOffset += 8;
    // field z
    byteData.setFloat64(byteOffset, message.z, imc.endian_ser);
    byteOffset += 8;
    // field k
    byteData.setFloat64(byteOffset, message.k, imc.endian_ser);
    byteOffset += 8;
    // field m
    byteData.setFloat64(byteOffset, message.m, imc.endian_ser);
    byteOffset += 8;
    // field n
    byteData.setFloat64(byteOffset, message.n, imc.endian_ser);
    byteOffset += 8;
    // field flags
    byteData.setUint8(byteOffset, message.flags.value);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field x
    builder.x = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field y
    builder.y = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field z
    builder.z = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field k
    builder.k = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field m
    builder.m = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field n
    builder.n = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field flags
    builder.flags = imc.DesiredControlBitfieldFlags(byteData.getUint8(byteOffset));
    byteOffset += 1;
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
    // field value
    byteData.setFloat64(byteOffset, message.value, imc.endian_ser);
    byteOffset += 8;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
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
    // field u
    byteData.setFloat64(byteOffset, message.u, imc.endian_ser);
    byteOffset += 8;
    // field v
    byteData.setFloat64(byteOffset, message.v, imc.endian_ser);
    byteOffset += 8;
    // field w
    byteData.setFloat64(byteOffset, message.w, imc.endian_ser);
    byteOffset += 8;
    // field p
    byteData.setFloat64(byteOffset, message.p, imc.endian_ser);
    byteOffset += 8;
    // field q
    byteData.setFloat64(byteOffset, message.q, imc.endian_ser);
    byteOffset += 8;
    // field r
    byteData.setFloat64(byteOffset, message.r, imc.endian_ser);
    byteOffset += 8;
    // field flags
    byteData.setUint8(byteOffset, message.flags.value);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field u
    builder.u = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field v
    builder.v = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field w
    builder.w = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field p
    builder.p = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field q
    builder.q = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field r
    builder.r = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field flags
    builder.flags = imc.DesiredVelocityBitfieldFlags(byteData.getUint8(byteOffset));
    byteOffset += 1;
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
    // field pathRef
    byteData.setUint32(byteOffset, message.pathRef, imc.endian_ser);
    byteOffset += 4;
    // field startLat
    byteData.setFloat64(byteOffset, message.startLat, imc.endian_ser);
    byteOffset += 8;
    // field startLon
    byteData.setFloat64(byteOffset, message.startLon, imc.endian_ser);
    byteOffset += 8;
    // field startZ
    byteData.setFloat32(byteOffset, message.startZ, imc.endian_ser);
    byteOffset += 4;
    // field startZUnits
    byteData.setUint8(byteOffset, message.startZUnits.value);
    byteOffset += 1;
    // field endLat
    byteData.setFloat64(byteOffset, message.endLat, imc.endian_ser);
    byteOffset += 8;
    // field endLon
    byteData.setFloat64(byteOffset, message.endLon, imc.endian_ser);
    byteOffset += 8;
    // field endZ
    byteData.setFloat32(byteOffset, message.endZ, imc.endian_ser);
    byteOffset += 4;
    // field endZUnits
    byteData.setUint8(byteOffset, message.endZUnits.value);
    byteOffset += 1;
    // field lradius
    byteData.setFloat32(byteOffset, message.lradius, imc.endian_ser);
    byteOffset += 4;
    // field flags
    byteData.setUint8(byteOffset, message.flags.value);
    byteOffset += 1;
    // field x
    byteData.setFloat32(byteOffset, message.x, imc.endian_ser);
    byteOffset += 4;
    // field y
    byteData.setFloat32(byteOffset, message.y, imc.endian_ser);
    byteOffset += 4;
    // field z
    byteData.setFloat32(byteOffset, message.z, imc.endian_ser);
    byteOffset += 4;
    // field vx
    byteData.setFloat32(byteOffset, message.vx, imc.endian_ser);
    byteOffset += 4;
    // field vy
    byteData.setFloat32(byteOffset, message.vy, imc.endian_ser);
    byteOffset += 4;
    // field vz
    byteData.setFloat32(byteOffset, message.vz, imc.endian_ser);
    byteOffset += 4;
    // field courseError
    byteData.setFloat32(byteOffset, message.courseError, imc.endian_ser);
    byteOffset += 4;
    // field eta
    byteData.setUint16(byteOffset, message.eta, imc.endian_ser);
    byteOffset += 2;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field pathRef
    builder.pathRef = byteData.getUint32(byteOffset, endianess);
    byteOffset += 4;
    // field startLat
    builder.startLat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field startLon
    builder.startLon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field startZ
    builder.startZ = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field startZUnits
    builder.startZUnits = imc.ZUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field endLat
    builder.endLat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field endLon
    builder.endLon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field endZ
    builder.endZ = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field endZUnits
    builder.endZUnits = imc.ZUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field lradius
    builder.lradius = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field flags
    builder.flags = imc.PathControlStateBitfieldFlags(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field x
    builder.x = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field y
    builder.y = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field z
    builder.z = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field vx
    builder.vx = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field vy
    builder.vy = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field vz
    builder.vz = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field courseError
    builder.courseError = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field eta
    builder.eta = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
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
    // field k
    byteData.setFloat64(byteOffset, message.k, imc.endian_ser);
    byteOffset += 8;
    // field m
    byteData.setFloat64(byteOffset, message.m, imc.endian_ser);
    byteOffset += 8;
    // field n
    byteData.setFloat64(byteOffset, message.n, imc.endian_ser);
    byteOffset += 8;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field k
    builder.k = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field m
    builder.m = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field n
    builder.n = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
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
    // field p
    byteData.setFloat32(byteOffset, message.p, imc.endian_ser);
    byteOffset += 4;
    // field i
    byteData.setFloat32(byteOffset, message.i, imc.endian_ser);
    byteOffset += 4;
    // field d
    byteData.setFloat32(byteOffset, message.d, imc.endian_ser);
    byteOffset += 4;
    // field a
    byteData.setFloat32(byteOffset, message.a, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field p
    builder.p = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field i
    builder.i = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field d
    builder.d = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field a
    builder.a = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field op
    byteData.setUint8(byteOffset, message.op.value);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field op
    builder.op = imc.BrakeEnumOp(byteData.getUint8(byteOffset));
    byteOffset += 1;
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
    // field x
    byteData.setFloat64(byteOffset, message.x, imc.endian_ser);
    byteOffset += 8;
    // field y
    byteData.setFloat64(byteOffset, message.y, imc.endian_ser);
    byteOffset += 8;
    // field z
    byteData.setFloat64(byteOffset, message.z, imc.endian_ser);
    byteOffset += 8;
    // field vx
    byteData.setFloat64(byteOffset, message.vx, imc.endian_ser);
    byteOffset += 8;
    // field vy
    byteData.setFloat64(byteOffset, message.vy, imc.endian_ser);
    byteOffset += 8;
    // field vz
    byteData.setFloat64(byteOffset, message.vz, imc.endian_ser);
    byteOffset += 8;
    // field ax
    byteData.setFloat64(byteOffset, message.ax, imc.endian_ser);
    byteOffset += 8;
    // field ay
    byteData.setFloat64(byteOffset, message.ay, imc.endian_ser);
    byteOffset += 8;
    // field az
    byteData.setFloat64(byteOffset, message.az, imc.endian_ser);
    byteOffset += 8;
    // field flags
    byteData.setUint16(byteOffset, message.flags.value, imc.endian_ser);
    byteOffset += 2;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field x
    builder.x = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field y
    builder.y = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field z
    builder.z = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field vx
    builder.vx = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field vy
    builder.vy = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field vz
    builder.vz = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field ax
    builder.ax = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field ay
    builder.ay = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field az
    builder.az = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field flags
    builder.flags = imc.DesiredLinearStateBitfieldFlags(byteData.getUint16(byteOffset, endianess));
    byteOffset += 2;
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
    // field value
    byteData.setFloat64(byteOffset, message.value, imc.endian_ser);
    byteOffset += 8;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
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
    // field timeout
    byteData.setUint16(byteOffset, message.timeout, imc.endian_ser);
    byteOffset += 2;
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field z
    byteData.setFloat32(byteOffset, message.z, imc.endian_ser);
    byteOffset += 4;
    // field zUnits
    byteData.setUint8(byteOffset, message.zUnits.value);
    byteOffset += 1;
    // field speed
    byteData.setFloat32(byteOffset, message.speed, imc.endian_ser);
    byteOffset += 4;
    // field speedUnits
    byteData.setUint8(byteOffset, message.speedUnits.value);
    byteOffset += 1;
    // field roll
    byteData.setFloat64(byteOffset, message.roll, imc.endian_ser);
    byteOffset += 8;
    // field pitch
    byteData.setFloat64(byteOffset, message.pitch, imc.endian_ser);
    byteOffset += 8;
    // field yaw
    byteData.setFloat64(byteOffset, message.yaw, imc.endian_ser);
    byteOffset += 8;
    // field custom
    var customEncoded = utf8.encode(message.custom);
    var customSSize = customEncoded.length;
    byteData.setUint16(byteOffset, customSSize, imc.endian_ser);
    byteOffset += 2;
    customEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field timeout
    builder.timeout = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field z
    builder.z = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field zUnits
    builder.zUnits = imc.ZUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field speed
    builder.speed = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field speedUnits
    builder.speedUnits = imc.SpeedUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field roll
    builder.roll = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field pitch
    builder.pitch = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field yaw
    builder.yaw = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field custom
    var customSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var customDData = List<int>(customSSize);
    for (var i = 0; i < customSSize; i++) {
      customDData[i] = byteData.getUint8(byteOffset++);
    }
    var customDecoded = utf8.decode(customDData);
    builder.custom = customDecoded;
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
    // field timeout
    byteData.setUint16(byteOffset, message.timeout, imc.endian_ser);
    byteOffset += 2;
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field z
    byteData.setFloat32(byteOffset, message.z, imc.endian_ser);
    byteOffset += 4;
    // field zUnits
    byteData.setUint8(byteOffset, message.zUnits.value);
    byteOffset += 1;
    // field speed
    byteData.setFloat32(byteOffset, message.speed, imc.endian_ser);
    byteOffset += 4;
    // field speedUnits
    byteData.setUint8(byteOffset, message.speedUnits.value);
    byteOffset += 1;
    // field duration
    byteData.setUint16(byteOffset, message.duration, imc.endian_ser);
    byteOffset += 2;
    // field radius
    byteData.setFloat32(byteOffset, message.radius, imc.endian_ser);
    byteOffset += 4;
    // field flags
    byteData.setUint8(byteOffset, message.flags.value);
    byteOffset += 1;
    // field custom
    var customEncoded = utf8.encode(message.custom);
    var customSSize = customEncoded.length;
    byteData.setUint16(byteOffset, customSSize, imc.endian_ser);
    byteOffset += 2;
    customEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field timeout
    builder.timeout = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field z
    builder.z = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field zUnits
    builder.zUnits = imc.ZUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field speed
    builder.speed = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field speedUnits
    builder.speedUnits = imc.SpeedUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field duration
    builder.duration = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field radius
    builder.radius = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field flags
    builder.flags = imc.PopUpBitfieldFlags(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field custom
    var customSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var customDData = List<int>(customSSize);
    for (var i = 0; i < customSSize; i++) {
      customDData[i] = byteData.getUint8(byteOffset++);
    }
    var customDecoded = utf8.decode(customDData);
    builder.custom = customDecoded;
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
    // field custom
    var customEncoded = utf8.encode(message.custom);
    var customSSize = customEncoded.length;
    byteData.setUint16(byteOffset, customSSize, imc.endian_ser);
    byteOffset += 2;
    customEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field custom
    var customSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var customDData = List<int>(customSSize);
    for (var i = 0; i < customSSize; i++) {
      customDData[i] = byteData.getUint8(byteOffset++);
    }
    var customDecoded = utf8.decode(customDData);
    builder.custom = customDecoded;
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
    // field timeout
    byteData.setUint16(byteOffset, message.timeout, imc.endian_ser);
    byteOffset += 2;
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field z
    byteData.setFloat32(byteOffset, message.z, imc.endian_ser);
    byteOffset += 4;
    // field zUnits
    byteData.setUint8(byteOffset, message.zUnits.value);
    byteOffset += 1;
    // field duration
    byteData.setUint16(byteOffset, message.duration, imc.endian_ser);
    byteOffset += 2;
    // field speed
    byteData.setFloat32(byteOffset, message.speed, imc.endian_ser);
    byteOffset += 4;
    // field speedUnits
    byteData.setUint8(byteOffset, message.speedUnits.value);
    byteOffset += 1;
    // field type
    byteData.setUint8(byteOffset, message.type.value);
    byteOffset += 1;
    // field radius
    byteData.setFloat32(byteOffset, message.radius, imc.endian_ser);
    byteOffset += 4;
    // field length
    byteData.setFloat32(byteOffset, message.length, imc.endian_ser);
    byteOffset += 4;
    // field bearing
    byteData.setFloat64(byteOffset, message.bearing, imc.endian_ser);
    byteOffset += 8;
    // field direction
    byteData.setUint8(byteOffset, message.direction.value);
    byteOffset += 1;
    // field custom
    var customEncoded = utf8.encode(message.custom);
    var customSSize = customEncoded.length;
    byteData.setUint16(byteOffset, customSSize, imc.endian_ser);
    byteOffset += 2;
    customEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field timeout
    builder.timeout = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field z
    builder.z = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field zUnits
    builder.zUnits = imc.ZUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field duration
    builder.duration = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field speed
    builder.speed = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field speedUnits
    builder.speedUnits = imc.SpeedUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field type
    builder.type = imc.LoiterEnumType(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field radius
    builder.radius = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field length
    builder.length = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field bearing
    builder.bearing = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field direction
    builder.direction = imc.LoiterEnumDirection(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field custom
    var customSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var customDData = List<int>(customSSize);
    for (var i = 0; i < customSSize; i++) {
      customDData[i] = byteData.getUint8(byteOffset++);
    }
    var customDecoded = utf8.decode(customDData);
    builder.custom = customDecoded;
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
    // field duration
    byteData.setUint16(byteOffset, message.duration, imc.endian_ser);
    byteOffset += 2;
    // field custom
    var customEncoded = utf8.encode(message.custom);
    var customSSize = customEncoded.length;
    byteData.setUint16(byteOffset, customSSize, imc.endian_ser);
    byteOffset += 2;
    customEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field duration
    builder.duration = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field custom
    var customSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var customDData = List<int>(customSSize);
    for (var i = 0; i < customSSize; i++) {
      customDData[i] = byteData.getUint8(byteOffset++);
    }
    var customDecoded = utf8.decode(customDData);
    builder.custom = customDecoded;
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
    // field control
    // field duration
    byteData.setUint16(byteOffset, message.duration, imc.endian_ser);
    byteOffset += 2;
    // field custom
    var customEncoded = utf8.encode(message.custom);
    var customSSize = customEncoded.length;
    byteData.setUint16(byteOffset, customSSize, imc.endian_ser);
    byteOffset += 2;
    customEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field control
    // field duration
    builder.duration = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field custom
    var customSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var customDData = List<int>(customSSize);
    for (var i = 0; i < customSSize; i++) {
      customDData[i] = byteData.getUint8(byteOffset++);
    }
    var customDecoded = utf8.decode(customDData);
    builder.custom = customDecoded;
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
    // field timeout
    byteData.setUint16(byteOffset, message.timeout, imc.endian_ser);
    byteOffset += 2;
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field z
    byteData.setFloat32(byteOffset, message.z, imc.endian_ser);
    byteOffset += 4;
    // field zUnits
    byteData.setUint8(byteOffset, message.zUnits.value);
    byteOffset += 1;
    // field speed
    byteData.setFloat32(byteOffset, message.speed, imc.endian_ser);
    byteOffset += 4;
    // field speedUnits
    byteData.setUint8(byteOffset, message.speedUnits.value);
    byteOffset += 1;
    // field bearing
    byteData.setFloat64(byteOffset, message.bearing, imc.endian_ser);
    byteOffset += 8;
    // field crossAngle
    byteData.setFloat64(byteOffset, message.crossAngle, imc.endian_ser);
    byteOffset += 8;
    // field width
    byteData.setFloat32(byteOffset, message.width, imc.endian_ser);
    byteOffset += 4;
    // field length
    byteData.setFloat32(byteOffset, message.length, imc.endian_ser);
    byteOffset += 4;
    // field hstep
    byteData.setFloat32(byteOffset, message.hstep, imc.endian_ser);
    byteOffset += 4;
    // field coff
    byteData.setUint8(byteOffset, message.coff);
    byteOffset += 1;
    // field alternation
    byteData.setUint8(byteOffset, message.alternation);
    byteOffset += 1;
    // field flags
    byteData.setUint8(byteOffset, message.flags.value);
    byteOffset += 1;
    // field custom
    var customEncoded = utf8.encode(message.custom);
    var customSSize = customEncoded.length;
    byteData.setUint16(byteOffset, customSSize, imc.endian_ser);
    byteOffset += 2;
    customEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field timeout
    builder.timeout = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field z
    builder.z = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field zUnits
    builder.zUnits = imc.ZUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field speed
    builder.speed = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field speedUnits
    builder.speedUnits = imc.SpeedUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field bearing
    builder.bearing = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field crossAngle
    builder.crossAngle = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field width
    builder.width = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field length
    builder.length = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field hstep
    builder.hstep = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field coff
    builder.coff = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field alternation
    builder.alternation = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field flags
    builder.flags = imc.RowsBitfieldFlags(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field custom
    var customSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var customDData = List<int>(customSSize);
    for (var i = 0; i < customSSize; i++) {
      customDData[i] = byteData.getUint8(byteOffset++);
    }
    var customDecoded = utf8.decode(customDData);
    builder.custom = customDecoded;
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
    // field timeout
    byteData.setUint16(byteOffset, message.timeout, imc.endian_ser);
    byteOffset += 2;
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field z
    byteData.setFloat32(byteOffset, message.z, imc.endian_ser);
    byteOffset += 4;
    // field zUnits
    byteData.setUint8(byteOffset, message.zUnits.value);
    byteOffset += 1;
    // field speed
    byteData.setFloat32(byteOffset, message.speed, imc.endian_ser);
    byteOffset += 4;
    // field speedUnits
    byteData.setUint8(byteOffset, message.speedUnits.value);
    byteOffset += 1;
    // field points
    // field custom
    var customEncoded = utf8.encode(message.custom);
    var customSSize = customEncoded.length;
    byteData.setUint16(byteOffset, customSSize, imc.endian_ser);
    byteOffset += 2;
    customEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field timeout
    builder.timeout = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field z
    builder.z = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field zUnits
    builder.zUnits = imc.ZUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field speed
    builder.speed = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field speedUnits
    builder.speedUnits = imc.SpeedUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field points
    // field custom
    var customSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var customDData = List<int>(customSSize);
    for (var i = 0; i < customSSize; i++) {
      customDData[i] = byteData.getUint8(byteOffset++);
    }
    var customDecoded = utf8.decode(customDData);
    builder.custom = customDecoded;
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
    // field x
    byteData.setFloat32(byteOffset, message.x, imc.endian_ser);
    byteOffset += 4;
    // field y
    byteData.setFloat32(byteOffset, message.y, imc.endian_ser);
    byteOffset += 4;
    // field z
    byteData.setFloat32(byteOffset, message.z, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field x
    builder.x = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field y
    builder.y = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field z
    builder.z = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field timeout
    byteData.setUint16(byteOffset, message.timeout, imc.endian_ser);
    byteOffset += 2;
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field z
    byteData.setFloat32(byteOffset, message.z, imc.endian_ser);
    byteOffset += 4;
    // field zUnits
    byteData.setUint8(byteOffset, message.zUnits.value);
    byteOffset += 1;
    // field amplitude
    byteData.setFloat32(byteOffset, message.amplitude, imc.endian_ser);
    byteOffset += 4;
    // field pitch
    byteData.setFloat32(byteOffset, message.pitch, imc.endian_ser);
    byteOffset += 4;
    // field speed
    byteData.setFloat32(byteOffset, message.speed, imc.endian_ser);
    byteOffset += 4;
    // field speedUnits
    byteData.setUint8(byteOffset, message.speedUnits.value);
    byteOffset += 1;
    // field custom
    var customEncoded = utf8.encode(message.custom);
    var customSSize = customEncoded.length;
    byteData.setUint16(byteOffset, customSSize, imc.endian_ser);
    byteOffset += 2;
    customEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field timeout
    builder.timeout = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field z
    builder.z = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field zUnits
    builder.zUnits = imc.ZUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field amplitude
    builder.amplitude = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field pitch
    builder.pitch = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field speed
    builder.speed = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field speedUnits
    builder.speedUnits = imc.SpeedUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field custom
    var customSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var customDData = List<int>(customSSize);
    for (var i = 0; i < customSSize; i++) {
      customDData[i] = byteData.getUint8(byteOffset++);
    }
    var customDecoded = utf8.decode(customDData);
    builder.custom = customDecoded;
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
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

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
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field z
    byteData.setFloat32(byteOffset, message.z, imc.endian_ser);
    byteOffset += 4;
    // field zUnits
    byteData.setUint8(byteOffset, message.zUnits.value);
    byteOffset += 1;
    // field radius
    byteData.setFloat32(byteOffset, message.radius, imc.endian_ser);
    byteOffset += 4;
    // field duration
    byteData.setUint16(byteOffset, message.duration, imc.endian_ser);
    byteOffset += 2;
    // field speed
    byteData.setFloat32(byteOffset, message.speed, imc.endian_ser);
    byteOffset += 4;
    // field speedUnits
    byteData.setUint8(byteOffset, message.speedUnits.value);
    byteOffset += 1;
    // field custom
    var customEncoded = utf8.encode(message.custom);
    var customSSize = customEncoded.length;
    byteData.setUint16(byteOffset, customSSize, imc.endian_ser);
    byteOffset += 2;
    customEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field z
    builder.z = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field zUnits
    builder.zUnits = imc.ZUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field radius
    builder.radius = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field duration
    builder.duration = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field speed
    builder.speed = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field speedUnits
    builder.speedUnits = imc.SpeedUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field custom
    var customSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var customDData = List<int>(customSSize);
    for (var i = 0; i < customSSize; i++) {
      customDData[i] = byteData.getUint8(byteOffset++);
    }
    var customDecoded = utf8.decode(customDData);
    builder.custom = customDecoded;
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
    // field timeout
    byteData.setUint16(byteOffset, message.timeout, imc.endian_ser);
    byteOffset += 2;
    // field flags
    byteData.setUint8(byteOffset, message.flags.value);
    byteOffset += 1;
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field startZ
    byteData.setFloat32(byteOffset, message.startZ, imc.endian_ser);
    byteOffset += 4;
    // field startZUnits
    byteData.setUint8(byteOffset, message.startZUnits.value);
    byteOffset += 1;
    // field endZ
    byteData.setFloat32(byteOffset, message.endZ, imc.endian_ser);
    byteOffset += 4;
    // field endZUnits
    byteData.setUint8(byteOffset, message.endZUnits.value);
    byteOffset += 1;
    // field radius
    byteData.setFloat32(byteOffset, message.radius, imc.endian_ser);
    byteOffset += 4;
    // field speed
    byteData.setFloat32(byteOffset, message.speed, imc.endian_ser);
    byteOffset += 4;
    // field speedUnits
    byteData.setUint8(byteOffset, message.speedUnits.value);
    byteOffset += 1;
    // field custom
    var customEncoded = utf8.encode(message.custom);
    var customSSize = customEncoded.length;
    byteData.setUint16(byteOffset, customSSize, imc.endian_ser);
    byteOffset += 2;
    customEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field timeout
    builder.timeout = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field flags
    builder.flags = imc.ElevatorBitfieldFlags(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field startZ
    builder.startZ = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field startZUnits
    builder.startZUnits = imc.ZUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field endZ
    builder.endZ = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field endZUnits
    builder.endZUnits = imc.ZUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field radius
    builder.radius = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field speed
    builder.speed = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field speedUnits
    builder.speedUnits = imc.SpeedUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field custom
    var customSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var customDData = List<int>(customSSize);
    for (var i = 0; i < customSSize; i++) {
      customDData[i] = byteData.getUint8(byteOffset++);
    }
    var customDecoded = utf8.decode(customDData);
    builder.custom = customDecoded;
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
    // field timeout
    byteData.setUint16(byteOffset, message.timeout, imc.endian_ser);
    byteOffset += 2;
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field z
    byteData.setFloat32(byteOffset, message.z, imc.endian_ser);
    byteOffset += 4;
    // field zUnits
    byteData.setUint8(byteOffset, message.zUnits.value);
    byteOffset += 1;
    // field speed
    byteData.setFloat32(byteOffset, message.speed, imc.endian_ser);
    byteOffset += 4;
    // field speedUnits
    byteData.setUint8(byteOffset, message.speedUnits.value);
    byteOffset += 1;
    // field points
    // field custom
    var customEncoded = utf8.encode(message.custom);
    var customSSize = customEncoded.length;
    byteData.setUint16(byteOffset, customSSize, imc.endian_ser);
    byteOffset += 2;
    customEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field timeout
    builder.timeout = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field z
    builder.z = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field zUnits
    builder.zUnits = imc.ZUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field speed
    builder.speed = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field speedUnits
    builder.speedUnits = imc.SpeedUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field points
    // field custom
    var customSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var customDData = List<int>(customSSize);
    for (var i = 0; i < customSSize; i++) {
      customDData[i] = byteData.getUint8(byteOffset++);
    }
    var customDecoded = utf8.decode(customDData);
    builder.custom = customDecoded;
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
    // field x
    byteData.setFloat32(byteOffset, message.x, imc.endian_ser);
    byteOffset += 4;
    // field y
    byteData.setFloat32(byteOffset, message.y, imc.endian_ser);
    byteOffset += 4;
    // field z
    byteData.setFloat32(byteOffset, message.z, imc.endian_ser);
    byteOffset += 4;
    // field t
    byteData.setFloat32(byteOffset, message.t, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field x
    builder.x = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field y
    builder.y = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field z
    builder.z = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field t
    builder.t = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field timeout
    byteData.setUint16(byteOffset, message.timeout, imc.endian_ser);
    byteOffset += 2;
    // field name
    var nameEncoded = utf8.encode(message.name);
    var nameSSize = nameEncoded.length;
    byteData.setUint16(byteOffset, nameSSize, imc.endian_ser);
    byteOffset += 2;
    nameEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field custom
    var customEncoded = utf8.encode(message.custom);
    var customSSize = customEncoded.length;
    byteData.setUint16(byteOffset, customSSize, imc.endian_ser);
    byteOffset += 2;
    customEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field timeout
    builder.timeout = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field name
    var nameSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var nameDData = List<int>(nameSSize);
    for (var i = 0; i < nameSSize; i++) {
      nameDData[i] = byteData.getUint8(byteOffset++);
    }
    var nameDecoded = utf8.decode(nameDData);
    builder.name = nameDecoded;
    // field custom
    var customSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var customDData = List<int>(customSSize);
    for (var i = 0; i < customSSize; i++) {
      customDData[i] = byteData.getUint8(byteOffset++);
    }
    var customDecoded = utf8.decode(customDData);
    builder.custom = customDecoded;
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
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field z
    byteData.setFloat32(byteOffset, message.z, imc.endian_ser);
    byteOffset += 4;
    // field zUnits
    byteData.setUint8(byteOffset, message.zUnits.value);
    byteOffset += 1;
    // field speed
    byteData.setFloat32(byteOffset, message.speed, imc.endian_ser);
    byteOffset += 4;
    // field speedUnits
    byteData.setUint8(byteOffset, message.speedUnits.value);
    byteOffset += 1;
    // field points
    // field participants
    // field startTime
    byteData.setFloat64(byteOffset, message.startTime, imc.endian_ser);
    byteOffset += 8;
    // field custom
    var customEncoded = utf8.encode(message.custom);
    var customSSize = customEncoded.length;
    byteData.setUint16(byteOffset, customSSize, imc.endian_ser);
    byteOffset += 2;
    customEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field z
    builder.z = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field zUnits
    builder.zUnits = imc.ZUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field speed
    builder.speed = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field speedUnits
    builder.speedUnits = imc.SpeedUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field points
    // field participants
    // field startTime
    builder.startTime = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field custom
    var customSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var customDData = List<int>(customSSize);
    for (var i = 0; i < customSSize; i++) {
      customDData[i] = byteData.getUint8(byteOffset++);
    }
    var customDecoded = utf8.decode(customDData);
    builder.custom = customDecoded;
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
    // field vid
    byteData.setUint16(byteOffset, message.vid, imc.endian_ser);
    byteOffset += 2;
    // field offX
    byteData.setFloat32(byteOffset, message.offX, imc.endian_ser);
    byteOffset += 4;
    // field offY
    byteData.setFloat32(byteOffset, message.offY, imc.endian_ser);
    byteOffset += 4;
    // field offZ
    byteData.setFloat32(byteOffset, message.offZ, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field vid
    builder.vid = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field offX
    builder.offX = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field offY
    builder.offY = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field offZ
    builder.offZ = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

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
    // field mid
    byteData.setUint16(byteOffset, message.mid, imc.endian_ser);
    byteOffset += 2;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field mid
    builder.mid = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
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
    // field state
    byteData.setUint8(byteOffset, message.state.value);
    byteOffset += 1;
    // field eta
    byteData.setUint16(byteOffset, message.eta, imc.endian_ser);
    byteOffset += 2;
    // field info
    var infoEncoded = utf8.encode(message.info);
    var infoSSize = infoEncoded.length;
    byteData.setUint16(byteOffset, infoSSize, imc.endian_ser);
    byteOffset += 2;
    infoEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field state
    builder.state = imc.ManeuverControlStateEnumState(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field eta
    builder.eta = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field info
    var infoSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var infoDData = List<int>(infoSSize);
    for (var i = 0; i < infoSSize; i++) {
      infoDData[i] = byteData.getUint8(byteOffset++);
    }
    var infoDecoded = utf8.decode(infoDData);
    builder.info = infoDecoded;
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
    // field system
    byteData.setUint16(byteOffset, message.system, imc.endian_ser);
    byteOffset += 2;
    // field duration
    byteData.setUint16(byteOffset, message.duration, imc.endian_ser);
    byteOffset += 2;
    // field speed
    byteData.setFloat32(byteOffset, message.speed, imc.endian_ser);
    byteOffset += 4;
    // field speedUnits
    byteData.setUint8(byteOffset, message.speedUnits.value);
    byteOffset += 1;
    // field x
    byteData.setFloat32(byteOffset, message.x, imc.endian_ser);
    byteOffset += 4;
    // field y
    byteData.setFloat32(byteOffset, message.y, imc.endian_ser);
    byteOffset += 4;
    // field z
    byteData.setFloat32(byteOffset, message.z, imc.endian_ser);
    byteOffset += 4;
    // field zUnits
    byteData.setUint8(byteOffset, message.zUnits.value);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field system
    builder.system = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field duration
    builder.duration = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field speed
    builder.speed = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field speedUnits
    builder.speedUnits = imc.SpeedUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field x
    builder.x = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field y
    builder.y = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field z
    builder.z = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field zUnits
    builder.zUnits = imc.ZUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
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
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field speed
    byteData.setFloat32(byteOffset, message.speed, imc.endian_ser);
    byteOffset += 4;
    // field speedUnits
    byteData.setUint8(byteOffset, message.speedUnits.value);
    byteOffset += 1;
    // field duration
    byteData.setUint16(byteOffset, message.duration, imc.endian_ser);
    byteOffset += 2;
    // field sysA
    byteData.setUint16(byteOffset, message.sysA, imc.endian_ser);
    byteOffset += 2;
    // field sysB
    byteData.setUint16(byteOffset, message.sysB, imc.endian_ser);
    byteOffset += 2;
    // field moveThreshold
    byteData.setFloat32(byteOffset, message.moveThreshold, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field speed
    builder.speed = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field speedUnits
    builder.speedUnits = imc.SpeedUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field duration
    builder.duration = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field sysA
    builder.sysA = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field sysB
    builder.sysB = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field moveThreshold
    builder.moveThreshold = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field z
    byteData.setFloat32(byteOffset, message.z, imc.endian_ser);
    byteOffset += 4;
    // field zUnits
    byteData.setUint8(byteOffset, message.zUnits.value);
    byteOffset += 1;
    // field speed
    byteData.setFloat32(byteOffset, message.speed, imc.endian_ser);
    byteOffset += 4;
    // field speedUnits
    byteData.setUint8(byteOffset, message.speedUnits.value);
    byteOffset += 1;
    // field polygon
    // field custom
    var customEncoded = utf8.encode(message.custom);
    var customSSize = customEncoded.length;
    byteData.setUint16(byteOffset, customSSize, imc.endian_ser);
    byteOffset += 2;
    customEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field z
    builder.z = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field zUnits
    builder.zUnits = imc.ZUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field speed
    builder.speed = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field speedUnits
    builder.speedUnits = imc.SpeedUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field polygon
    // field custom
    var customSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var customDData = List<int>(customSSize);
    for (var i = 0; i < customSSize; i++) {
      customDData[i] = byteData.getUint8(byteOffset++);
    }
    var customDecoded = utf8.decode(customDData);
    builder.custom = customDecoded;
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
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
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
    // field timeout
    byteData.setUint16(byteOffset, message.timeout, imc.endian_ser);
    byteOffset += 2;
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field z
    byteData.setFloat32(byteOffset, message.z, imc.endian_ser);
    byteOffset += 4;
    // field zUnits
    byteData.setUint8(byteOffset, message.zUnits.value);
    byteOffset += 1;
    // field pitch
    byteData.setFloat32(byteOffset, message.pitch, imc.endian_ser);
    byteOffset += 4;
    // field amplitude
    byteData.setFloat32(byteOffset, message.amplitude, imc.endian_ser);
    byteOffset += 4;
    // field duration
    byteData.setUint16(byteOffset, message.duration, imc.endian_ser);
    byteOffset += 2;
    // field speed
    byteData.setFloat32(byteOffset, message.speed, imc.endian_ser);
    byteOffset += 4;
    // field speedUnits
    byteData.setUint8(byteOffset, message.speedUnits.value);
    byteOffset += 1;
    // field radius
    byteData.setFloat32(byteOffset, message.radius, imc.endian_ser);
    byteOffset += 4;
    // field direction
    byteData.setUint8(byteOffset, message.direction.value);
    byteOffset += 1;
    // field custom
    var customEncoded = utf8.encode(message.custom);
    var customSSize = customEncoded.length;
    byteData.setUint16(byteOffset, customSSize, imc.endian_ser);
    byteOffset += 2;
    customEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field timeout
    builder.timeout = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field z
    builder.z = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field zUnits
    builder.zUnits = imc.ZUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field pitch
    builder.pitch = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field amplitude
    builder.amplitude = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field duration
    builder.duration = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field speed
    builder.speed = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field speedUnits
    builder.speedUnits = imc.SpeedUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field radius
    builder.radius = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field direction
    builder.direction = imc.CompassCalibrationEnumDirection(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field custom
    var customSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var customDData = List<int>(customSSize);
    for (var i = 0; i < customSSize; i++) {
      customDData[i] = byteData.getUint8(byteOffset++);
    }
    var customDecoded = utf8.decode(customDData);
    builder.custom = customDecoded;
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
    // field formationName
    var formationNameEncoded = utf8.encode(message.formationName);
    var formationNameSSize = formationNameEncoded.length;
    byteData.setUint16(byteOffset, formationNameSSize, imc.endian_ser);
    byteOffset += 2;
    formationNameEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field referenceFrame
    byteData.setUint8(byteOffset, message.referenceFrame.value);
    byteOffset += 1;
    // field participants
    // field custom
    var customEncoded = utf8.encode(message.custom);
    var customSSize = customEncoded.length;
    byteData.setUint16(byteOffset, customSSize, imc.endian_ser);
    byteOffset += 2;
    customEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field formationName
    var formationNameSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var formationNameDData = List<int>(formationNameSSize);
    for (var i = 0; i < formationNameSSize; i++) {
      formationNameDData[i] = byteData.getUint8(byteOffset++);
    }
    var formationNameDecoded = utf8.decode(formationNameDData);
    builder.formationName = formationNameDecoded;
    // field referenceFrame
    builder.referenceFrame = imc.FormationParametersEnumReferenceFrame(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field participants
    // field custom
    var customSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var customDData = List<int>(customSSize);
    for (var i = 0; i < customSSize; i++) {
      customDData[i] = byteData.getUint8(byteOffset++);
    }
    var customDecoded = utf8.decode(customDData);
    builder.custom = customDecoded;
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
    // field groupName
    var groupNameEncoded = utf8.encode(message.groupName);
    var groupNameSSize = groupNameEncoded.length;
    byteData.setUint16(byteOffset, groupNameSSize, imc.endian_ser);
    byteOffset += 2;
    groupNameEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field formationName
    var formationNameEncoded = utf8.encode(message.formationName);
    var formationNameSSize = formationNameEncoded.length;
    byteData.setUint16(byteOffset, formationNameSSize, imc.endian_ser);
    byteOffset += 2;
    formationNameEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field planId
    var planIdEncoded = utf8.encode(message.planId);
    var planIdSSize = planIdEncoded.length;
    byteData.setUint16(byteOffset, planIdSSize, imc.endian_ser);
    byteOffset += 2;
    planIdEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field description
    var descriptionEncoded = utf8.encode(message.description);
    var descriptionSSize = descriptionEncoded.length;
    byteData.setUint16(byteOffset, descriptionSSize, imc.endian_ser);
    byteOffset += 2;
    descriptionEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field leaderSpeed
    byteData.setFloat32(byteOffset, message.leaderSpeed, imc.endian_ser);
    byteOffset += 4;
    // field leaderBankLim
    byteData.setFloat32(byteOffset, message.leaderBankLim, imc.endian_ser);
    byteOffset += 4;
    // field posSimErrLim
    byteData.setFloat32(byteOffset, message.posSimErrLim, imc.endian_ser);
    byteOffset += 4;
    // field posSimErrWrn
    byteData.setFloat32(byteOffset, message.posSimErrWrn, imc.endian_ser);
    byteOffset += 4;
    // field posSimErrTimeout
    byteData.setUint16(byteOffset, message.posSimErrTimeout, imc.endian_ser);
    byteOffset += 2;
    // field convergMax
    byteData.setFloat32(byteOffset, message.convergMax, imc.endian_ser);
    byteOffset += 4;
    // field convergTimeout
    byteData.setUint16(byteOffset, message.convergTimeout, imc.endian_ser);
    byteOffset += 2;
    // field commsTimeout
    byteData.setUint16(byteOffset, message.commsTimeout, imc.endian_ser);
    byteOffset += 2;
    // field turbLim
    byteData.setFloat32(byteOffset, message.turbLim, imc.endian_ser);
    byteOffset += 4;
    // field custom
    var customEncoded = utf8.encode(message.custom);
    var customSSize = customEncoded.length;
    byteData.setUint16(byteOffset, customSSize, imc.endian_ser);
    byteOffset += 2;
    customEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field groupName
    var groupNameSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var groupNameDData = List<int>(groupNameSSize);
    for (var i = 0; i < groupNameSSize; i++) {
      groupNameDData[i] = byteData.getUint8(byteOffset++);
    }
    var groupNameDecoded = utf8.decode(groupNameDData);
    builder.groupName = groupNameDecoded;
    // field formationName
    var formationNameSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var formationNameDData = List<int>(formationNameSSize);
    for (var i = 0; i < formationNameSSize; i++) {
      formationNameDData[i] = byteData.getUint8(byteOffset++);
    }
    var formationNameDecoded = utf8.decode(formationNameDData);
    builder.formationName = formationNameDecoded;
    // field planId
    var planIdSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var planIdDData = List<int>(planIdSSize);
    for (var i = 0; i < planIdSSize; i++) {
      planIdDData[i] = byteData.getUint8(byteOffset++);
    }
    var planIdDecoded = utf8.decode(planIdDData);
    builder.planId = planIdDecoded;
    // field description
    var descriptionSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var descriptionDData = List<int>(descriptionSSize);
    for (var i = 0; i < descriptionSSize; i++) {
      descriptionDData[i] = byteData.getUint8(byteOffset++);
    }
    var descriptionDecoded = utf8.decode(descriptionDData);
    builder.description = descriptionDecoded;
    // field leaderSpeed
    builder.leaderSpeed = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field leaderBankLim
    builder.leaderBankLim = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field posSimErrLim
    builder.posSimErrLim = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field posSimErrWrn
    builder.posSimErrWrn = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field posSimErrTimeout
    builder.posSimErrTimeout = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field convergMax
    builder.convergMax = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field convergTimeout
    builder.convergTimeout = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field commsTimeout
    builder.commsTimeout = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field turbLim
    builder.turbLim = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field custom
    var customSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var customDData = List<int>(customSSize);
    for (var i = 0; i < customSSize; i++) {
      customDData[i] = byteData.getUint8(byteOffset++);
    }
    var customDecoded = utf8.decode(customDData);
    builder.custom = customDecoded;
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
    // field controlSrc
    byteData.setUint16(byteOffset, message.controlSrc, imc.endian_ser);
    byteOffset += 2;
    // field controlEnt
    byteData.setUint8(byteOffset, message.controlEnt);
    byteOffset += 1;
    // field timeout
    byteData.setFloat32(byteOffset, message.timeout, imc.endian_ser);
    byteOffset += 4;
    // field loiterRadius
    byteData.setFloat32(byteOffset, message.loiterRadius, imc.endian_ser);
    byteOffset += 4;
    // field altitudeInterval
    byteData.setFloat32(byteOffset, message.altitudeInterval, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field controlSrc
    builder.controlSrc = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field controlEnt
    builder.controlEnt = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field timeout
    builder.timeout = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field loiterRadius
    builder.loiterRadius = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field altitudeInterval
    builder.altitudeInterval = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field flags
    byteData.setUint8(byteOffset, message.flags.value);
    byteOffset += 1;
    // field speed
    // field z
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field radius
    byteData.setFloat32(byteOffset, message.radius, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field flags
    builder.flags = imc.ReferenceBitfieldFlags(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field speed
    // field z
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field radius
    builder.radius = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field controlSrc
    byteData.setUint16(byteOffset, message.controlSrc, imc.endian_ser);
    byteOffset += 2;
    // field controlEnt
    byteData.setUint8(byteOffset, message.controlEnt);
    byteOffset += 1;
    // field reference
    // field state
    byteData.setUint8(byteOffset, message.state.value);
    byteOffset += 1;
    // field proximity
    byteData.setUint8(byteOffset, message.proximity.value);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field controlSrc
    builder.controlSrc = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field controlEnt
    builder.controlEnt = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field reference
    // field state
    builder.state = imc.FollowRefStateEnumState(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field proximity
    builder.proximity = imc.FollowRefStateBitfieldProximity(byteData.getUint8(byteOffset));
    byteOffset += 1;
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
    // field axCmd
    byteData.setFloat32(byteOffset, message.axCmd, imc.endian_ser);
    byteOffset += 4;
    // field ayCmd
    byteData.setFloat32(byteOffset, message.ayCmd, imc.endian_ser);
    byteOffset += 4;
    // field azCmd
    byteData.setFloat32(byteOffset, message.azCmd, imc.endian_ser);
    byteOffset += 4;
    // field axDes
    byteData.setFloat32(byteOffset, message.axDes, imc.endian_ser);
    byteOffset += 4;
    // field ayDes
    byteData.setFloat32(byteOffset, message.ayDes, imc.endian_ser);
    byteOffset += 4;
    // field azDes
    byteData.setFloat32(byteOffset, message.azDes, imc.endian_ser);
    byteOffset += 4;
    // field virtErrX
    byteData.setFloat32(byteOffset, message.virtErrX, imc.endian_ser);
    byteOffset += 4;
    // field virtErrY
    byteData.setFloat32(byteOffset, message.virtErrY, imc.endian_ser);
    byteOffset += 4;
    // field virtErrZ
    byteData.setFloat32(byteOffset, message.virtErrZ, imc.endian_ser);
    byteOffset += 4;
    // field surfFdbkX
    byteData.setFloat32(byteOffset, message.surfFdbkX, imc.endian_ser);
    byteOffset += 4;
    // field surfFdbkY
    byteData.setFloat32(byteOffset, message.surfFdbkY, imc.endian_ser);
    byteOffset += 4;
    // field surfFdbkZ
    byteData.setFloat32(byteOffset, message.surfFdbkZ, imc.endian_ser);
    byteOffset += 4;
    // field surfUnknX
    byteData.setFloat32(byteOffset, message.surfUnknX, imc.endian_ser);
    byteOffset += 4;
    // field surfUnknY
    byteData.setFloat32(byteOffset, message.surfUnknY, imc.endian_ser);
    byteOffset += 4;
    // field surfUnknZ
    byteData.setFloat32(byteOffset, message.surfUnknZ, imc.endian_ser);
    byteOffset += 4;
    // field ssX
    byteData.setFloat32(byteOffset, message.ssX, imc.endian_ser);
    byteOffset += 4;
    // field ssY
    byteData.setFloat32(byteOffset, message.ssY, imc.endian_ser);
    byteOffset += 4;
    // field ssZ
    byteData.setFloat32(byteOffset, message.ssZ, imc.endian_ser);
    byteOffset += 4;
    // field relState
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field axCmd
    builder.axCmd = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field ayCmd
    builder.ayCmd = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field azCmd
    builder.azCmd = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field axDes
    builder.axDes = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field ayDes
    builder.ayDes = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field azDes
    builder.azDes = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field virtErrX
    builder.virtErrX = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field virtErrY
    builder.virtErrY = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field virtErrZ
    builder.virtErrZ = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field surfFdbkX
    builder.surfFdbkX = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field surfFdbkY
    builder.surfFdbkY = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field surfFdbkZ
    builder.surfFdbkZ = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field surfUnknX
    builder.surfUnknX = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field surfUnknY
    builder.surfUnknY = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field surfUnknZ
    builder.surfUnknZ = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field ssX
    builder.ssX = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field ssY
    builder.ssY = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field ssZ
    builder.ssZ = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field relState
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
    // field sId
    var sIdEncoded = utf8.encode(message.sId);
    var sIdSSize = sIdEncoded.length;
    byteData.setUint16(byteOffset, sIdSSize, imc.endian_ser);
    byteOffset += 2;
    sIdEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field dist
    byteData.setFloat32(byteOffset, message.dist, imc.endian_ser);
    byteOffset += 4;
    // field err
    byteData.setFloat32(byteOffset, message.err, imc.endian_ser);
    byteOffset += 4;
    // field ctrlImp
    byteData.setFloat32(byteOffset, message.ctrlImp, imc.endian_ser);
    byteOffset += 4;
    // field relDirX
    byteData.setFloat32(byteOffset, message.relDirX, imc.endian_ser);
    byteOffset += 4;
    // field relDirY
    byteData.setFloat32(byteOffset, message.relDirY, imc.endian_ser);
    byteOffset += 4;
    // field relDirZ
    byteData.setFloat32(byteOffset, message.relDirZ, imc.endian_ser);
    byteOffset += 4;
    // field errX
    byteData.setFloat32(byteOffset, message.errX, imc.endian_ser);
    byteOffset += 4;
    // field errY
    byteData.setFloat32(byteOffset, message.errY, imc.endian_ser);
    byteOffset += 4;
    // field errZ
    byteData.setFloat32(byteOffset, message.errZ, imc.endian_ser);
    byteOffset += 4;
    // field rfErrX
    byteData.setFloat32(byteOffset, message.rfErrX, imc.endian_ser);
    byteOffset += 4;
    // field rfErrY
    byteData.setFloat32(byteOffset, message.rfErrY, imc.endian_ser);
    byteOffset += 4;
    // field rfErrZ
    byteData.setFloat32(byteOffset, message.rfErrZ, imc.endian_ser);
    byteOffset += 4;
    // field rfErrVx
    byteData.setFloat32(byteOffset, message.rfErrVx, imc.endian_ser);
    byteOffset += 4;
    // field rfErrVy
    byteData.setFloat32(byteOffset, message.rfErrVy, imc.endian_ser);
    byteOffset += 4;
    // field rfErrVz
    byteData.setFloat32(byteOffset, message.rfErrVz, imc.endian_ser);
    byteOffset += 4;
    // field ssX
    byteData.setFloat32(byteOffset, message.ssX, imc.endian_ser);
    byteOffset += 4;
    // field ssY
    byteData.setFloat32(byteOffset, message.ssY, imc.endian_ser);
    byteOffset += 4;
    // field ssZ
    byteData.setFloat32(byteOffset, message.ssZ, imc.endian_ser);
    byteOffset += 4;
    // field virtErrX
    byteData.setFloat32(byteOffset, message.virtErrX, imc.endian_ser);
    byteOffset += 4;
    // field virtErrY
    byteData.setFloat32(byteOffset, message.virtErrY, imc.endian_ser);
    byteOffset += 4;
    // field virtErrZ
    byteData.setFloat32(byteOffset, message.virtErrZ, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field sId
    var sIdSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var sIdDData = List<int>(sIdSSize);
    for (var i = 0; i < sIdSSize; i++) {
      sIdDData[i] = byteData.getUint8(byteOffset++);
    }
    var sIdDecoded = utf8.decode(sIdDData);
    builder.sId = sIdDecoded;
    // field dist
    builder.dist = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field err
    builder.err = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field ctrlImp
    builder.ctrlImp = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field relDirX
    builder.relDirX = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field relDirY
    builder.relDirY = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field relDirZ
    builder.relDirZ = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field errX
    builder.errX = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field errY
    builder.errY = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field errZ
    builder.errZ = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field rfErrX
    builder.rfErrX = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field rfErrY
    builder.rfErrY = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field rfErrZ
    builder.rfErrZ = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field rfErrVx
    builder.rfErrVx = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field rfErrVy
    builder.rfErrVy = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field rfErrVz
    builder.rfErrVz = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field ssX
    builder.ssX = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field ssY
    builder.ssY = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field ssZ
    builder.ssZ = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field virtErrX
    builder.virtErrX = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field virtErrY
    builder.virtErrY = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field virtErrZ
    builder.virtErrZ = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field timeout
    byteData.setUint16(byteOffset, message.timeout, imc.endian_ser);
    byteOffset += 2;
    // field rpm
    byteData.setFloat32(byteOffset, message.rpm, imc.endian_ser);
    byteOffset += 4;
    // field direction
    byteData.setUint8(byteOffset, message.direction.value);
    byteOffset += 1;
    // field custom
    var customEncoded = utf8.encode(message.custom);
    var customSSize = customEncoded.length;
    byteData.setUint16(byteOffset, customSSize, imc.endian_ser);
    byteOffset += 2;
    customEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field timeout
    builder.timeout = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field rpm
    builder.rpm = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field direction
    builder.direction = imc.DislodgeEnumDirection(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field custom
    var customSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var customDData = List<int>(customSSize);
    for (var i = 0; i < customSSize; i++) {
      customDData[i] = byteData.getUint8(byteOffset++);
    }
    var customDecoded = utf8.decode(customDData);
    builder.custom = customDecoded;
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
    // field formationName
    var formationNameEncoded = utf8.encode(message.formationName);
    var formationNameSSize = formationNameEncoded.length;
    byteData.setUint16(byteOffset, formationNameSSize, imc.endian_ser);
    byteOffset += 2;
    formationNameEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field type
    byteData.setUint8(byteOffset, message.type.value);
    byteOffset += 1;
    // field op
    byteData.setUint8(byteOffset, message.op.value);
    byteOffset += 1;
    // field groupName
    var groupNameEncoded = utf8.encode(message.groupName);
    var groupNameSSize = groupNameEncoded.length;
    byteData.setUint16(byteOffset, groupNameSSize, imc.endian_ser);
    byteOffset += 2;
    groupNameEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field planId
    var planIdEncoded = utf8.encode(message.planId);
    var planIdSSize = planIdEncoded.length;
    byteData.setUint16(byteOffset, planIdSSize, imc.endian_ser);
    byteOffset += 2;
    planIdEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field description
    var descriptionEncoded = utf8.encode(message.description);
    var descriptionSSize = descriptionEncoded.length;
    byteData.setUint16(byteOffset, descriptionSSize, imc.endian_ser);
    byteOffset += 2;
    descriptionEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field referenceFrame
    byteData.setUint8(byteOffset, message.referenceFrame.value);
    byteOffset += 1;
    // field participants
    // field leaderBankLim
    byteData.setFloat32(byteOffset, message.leaderBankLim, imc.endian_ser);
    byteOffset += 4;
    // field leaderSpeedMin
    byteData.setFloat32(byteOffset, message.leaderSpeedMin, imc.endian_ser);
    byteOffset += 4;
    // field leaderSpeedMax
    byteData.setFloat32(byteOffset, message.leaderSpeedMax, imc.endian_ser);
    byteOffset += 4;
    // field leaderAltMin
    byteData.setFloat32(byteOffset, message.leaderAltMin, imc.endian_ser);
    byteOffset += 4;
    // field leaderAltMax
    byteData.setFloat32(byteOffset, message.leaderAltMax, imc.endian_ser);
    byteOffset += 4;
    // field posSimErrLim
    byteData.setFloat32(byteOffset, message.posSimErrLim, imc.endian_ser);
    byteOffset += 4;
    // field posSimErrWrn
    byteData.setFloat32(byteOffset, message.posSimErrWrn, imc.endian_ser);
    byteOffset += 4;
    // field posSimErrTimeout
    byteData.setUint16(byteOffset, message.posSimErrTimeout, imc.endian_ser);
    byteOffset += 2;
    // field convergMax
    byteData.setFloat32(byteOffset, message.convergMax, imc.endian_ser);
    byteOffset += 4;
    // field convergTimeout
    byteData.setUint16(byteOffset, message.convergTimeout, imc.endian_ser);
    byteOffset += 2;
    // field commsTimeout
    byteData.setUint16(byteOffset, message.commsTimeout, imc.endian_ser);
    byteOffset += 2;
    // field turbLim
    byteData.setFloat32(byteOffset, message.turbLim, imc.endian_ser);
    byteOffset += 4;
    // field custom
    var customEncoded = utf8.encode(message.custom);
    var customSSize = customEncoded.length;
    byteData.setUint16(byteOffset, customSSize, imc.endian_ser);
    byteOffset += 2;
    customEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field formationName
    var formationNameSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var formationNameDData = List<int>(formationNameSSize);
    for (var i = 0; i < formationNameSSize; i++) {
      formationNameDData[i] = byteData.getUint8(byteOffset++);
    }
    var formationNameDecoded = utf8.decode(formationNameDData);
    builder.formationName = formationNameDecoded;
    // field type
    builder.type = imc.FormationEnumType(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field op
    builder.op = imc.FormationEnumOp(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field groupName
    var groupNameSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var groupNameDData = List<int>(groupNameSSize);
    for (var i = 0; i < groupNameSSize; i++) {
      groupNameDData[i] = byteData.getUint8(byteOffset++);
    }
    var groupNameDecoded = utf8.decode(groupNameDData);
    builder.groupName = groupNameDecoded;
    // field planId
    var planIdSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var planIdDData = List<int>(planIdSSize);
    for (var i = 0; i < planIdSSize; i++) {
      planIdDData[i] = byteData.getUint8(byteOffset++);
    }
    var planIdDecoded = utf8.decode(planIdDData);
    builder.planId = planIdDecoded;
    // field description
    var descriptionSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var descriptionDData = List<int>(descriptionSSize);
    for (var i = 0; i < descriptionSSize; i++) {
      descriptionDData[i] = byteData.getUint8(byteOffset++);
    }
    var descriptionDecoded = utf8.decode(descriptionDData);
    builder.description = descriptionDecoded;
    // field referenceFrame
    builder.referenceFrame = imc.FormationEnumReferenceFrame(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field participants
    // field leaderBankLim
    builder.leaderBankLim = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field leaderSpeedMin
    builder.leaderSpeedMin = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field leaderSpeedMax
    builder.leaderSpeedMax = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field leaderAltMin
    builder.leaderAltMin = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field leaderAltMax
    builder.leaderAltMax = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field posSimErrLim
    builder.posSimErrLim = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field posSimErrWrn
    builder.posSimErrWrn = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field posSimErrTimeout
    builder.posSimErrTimeout = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field convergMax
    builder.convergMax = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field convergTimeout
    builder.convergTimeout = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field commsTimeout
    builder.commsTimeout = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field turbLim
    builder.turbLim = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field custom
    var customSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var customDData = List<int>(customSSize);
    for (var i = 0; i < customSSize; i++) {
      customDData[i] = byteData.getUint8(byteOffset++);
    }
    var customDecoded = utf8.decode(customDData);
    builder.custom = customDecoded;
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
    // field timeout
    byteData.setUint16(byteOffset, message.timeout, imc.endian_ser);
    byteOffset += 2;
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field z
    byteData.setFloat32(byteOffset, message.z, imc.endian_ser);
    byteOffset += 4;
    // field zUnits
    byteData.setUint8(byteOffset, message.zUnits.value);
    byteOffset += 1;
    // field speed
    byteData.setFloat32(byteOffset, message.speed, imc.endian_ser);
    byteOffset += 4;
    // field speedUnits
    byteData.setUint8(byteOffset, message.speedUnits.value);
    byteOffset += 1;
    // field custom
    var customEncoded = utf8.encode(message.custom);
    var customSSize = customEncoded.length;
    byteData.setUint16(byteOffset, customSSize, imc.endian_ser);
    byteOffset += 2;
    customEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field timeout
    builder.timeout = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field z
    builder.z = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field zUnits
    builder.zUnits = imc.ZUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field speed
    builder.speed = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field speedUnits
    builder.speedUnits = imc.SpeedUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field custom
    var customSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var customDData = List<int>(customSSize);
    for (var i = 0; i < customSSize; i++) {
      customDData[i] = byteData.getUint8(byteOffset++);
    }
    var customDecoded = utf8.decode(customDData);
    builder.custom = customDecoded;
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
    // field timeout
    byteData.setUint16(byteOffset, message.timeout, imc.endian_ser);
    byteOffset += 2;
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field z
    byteData.setFloat32(byteOffset, message.z, imc.endian_ser);
    byteOffset += 4;
    // field zUnits
    byteData.setUint8(byteOffset, message.zUnits.value);
    byteOffset += 1;
    // field speed
    byteData.setFloat32(byteOffset, message.speed, imc.endian_ser);
    byteOffset += 4;
    // field speedUnits
    byteData.setUint8(byteOffset, message.speedUnits.value);
    byteOffset += 1;
    // field custom
    var customEncoded = utf8.encode(message.custom);
    var customSSize = customEncoded.length;
    byteData.setUint16(byteOffset, customSSize, imc.endian_ser);
    byteOffset += 2;
    customEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field timeout
    builder.timeout = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field z
    builder.z = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field zUnits
    builder.zUnits = imc.ZUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field speed
    builder.speed = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field speedUnits
    builder.speedUnits = imc.SpeedUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field custom
    var customSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var customDData = List<int>(customSSize);
    for (var i = 0; i < customSSize; i++) {
      customDData[i] = byteData.getUint8(byteOffset++);
    }
    var customDecoded = utf8.decode(customDData);
    builder.custom = customDecoded;
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
    // field arrivalTime
    byteData.setFloat64(byteOffset, message.arrivalTime, imc.endian_ser);
    byteOffset += 8;
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field z
    byteData.setFloat32(byteOffset, message.z, imc.endian_ser);
    byteOffset += 4;
    // field zUnits
    byteData.setUint8(byteOffset, message.zUnits.value);
    byteOffset += 1;
    // field travelZ
    byteData.setFloat32(byteOffset, message.travelZ, imc.endian_ser);
    byteOffset += 4;
    // field travelZUnits
    byteData.setUint8(byteOffset, message.travelZUnits.value);
    byteOffset += 1;
    // field delayed
    byteData.setUint8(byteOffset, message.delayed.value);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field arrivalTime
    builder.arrivalTime = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field z
    builder.z = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field zUnits
    builder.zUnits = imc.ZUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field travelZ
    builder.travelZ = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field travelZUnits
    builder.travelZUnits = imc.ZUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field delayed
    builder.delayed = imc.ScheduledGotoEnumDelayed(byteData.getUint8(byteOffset));
    byteOffset += 1;
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
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field z
    byteData.setFloat32(byteOffset, message.z, imc.endian_ser);
    byteOffset += 4;
    // field zUnits
    byteData.setUint8(byteOffset, message.zUnits.value);
    byteOffset += 1;
    // field speed
    byteData.setFloat32(byteOffset, message.speed, imc.endian_ser);
    byteOffset += 4;
    // field speedUnits
    byteData.setUint8(byteOffset, message.speedUnits.value);
    byteOffset += 1;
    // field bearing
    byteData.setFloat64(byteOffset, message.bearing, imc.endian_ser);
    byteOffset += 8;
    // field crossAngle
    byteData.setFloat64(byteOffset, message.crossAngle, imc.endian_ser);
    byteOffset += 8;
    // field width
    byteData.setFloat32(byteOffset, message.width, imc.endian_ser);
    byteOffset += 4;
    // field length
    byteData.setFloat32(byteOffset, message.length, imc.endian_ser);
    byteOffset += 4;
    // field coff
    byteData.setUint8(byteOffset, message.coff);
    byteOffset += 1;
    // field angAperture
    byteData.setFloat32(byteOffset, message.angAperture, imc.endian_ser);
    byteOffset += 4;
    // field range
    byteData.setUint16(byteOffset, message.range, imc.endian_ser);
    byteOffset += 2;
    // field overlap
    byteData.setUint8(byteOffset, message.overlap);
    byteOffset += 1;
    // field flags
    byteData.setUint8(byteOffset, message.flags.value);
    byteOffset += 1;
    // field custom
    var customEncoded = utf8.encode(message.custom);
    var customSSize = customEncoded.length;
    byteData.setUint16(byteOffset, customSSize, imc.endian_ser);
    byteOffset += 2;
    customEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field z
    builder.z = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field zUnits
    builder.zUnits = imc.ZUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field speed
    builder.speed = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field speedUnits
    builder.speedUnits = imc.SpeedUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field bearing
    builder.bearing = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field crossAngle
    builder.crossAngle = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field width
    builder.width = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field length
    builder.length = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field coff
    builder.coff = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field angAperture
    builder.angAperture = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field range
    builder.range = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field overlap
    builder.overlap = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field flags
    builder.flags = imc.RowsCoverageBitfieldFlags(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field custom
    var customSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var customDData = List<int>(customSSize);
    for (var i = 0; i < customSSize; i++) {
      customDData[i] = byteData.getUint8(byteOffset++);
    }
    var customDecoded = utf8.decode(customDData);
    builder.custom = customDecoded;
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
    // field timeout
    byteData.setUint16(byteOffset, message.timeout, imc.endian_ser);
    byteOffset += 2;
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field z
    byteData.setFloat32(byteOffset, message.z, imc.endian_ser);
    byteOffset += 4;
    // field zUnits
    byteData.setUint8(byteOffset, message.zUnits.value);
    byteOffset += 1;
    // field speed
    byteData.setFloat32(byteOffset, message.speed, imc.endian_ser);
    byteOffset += 4;
    // field speedUnits
    byteData.setUint8(byteOffset, message.speedUnits.value);
    byteOffset += 1;
    // field syringe0
    byteData.setUint8(byteOffset, message.syringe0.value);
    byteOffset += 1;
    // field syringe1
    byteData.setUint8(byteOffset, message.syringe1.value);
    byteOffset += 1;
    // field syringe2
    byteData.setUint8(byteOffset, message.syringe2.value);
    byteOffset += 1;
    // field custom
    var customEncoded = utf8.encode(message.custom);
    var customSSize = customEncoded.length;
    byteData.setUint16(byteOffset, customSSize, imc.endian_ser);
    byteOffset += 2;
    customEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field timeout
    builder.timeout = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field z
    builder.z = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field zUnits
    builder.zUnits = imc.ZUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field speed
    builder.speed = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field speedUnits
    builder.speedUnits = imc.SpeedUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field syringe0
    builder.syringe0 = imc.BooleanEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field syringe1
    builder.syringe1 = imc.BooleanEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field syringe2
    builder.syringe2 = imc.BooleanEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field custom
    var customSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var customDData = List<int>(customSSize);
    for (var i = 0; i < customSSize; i++) {
      customDData[i] = byteData.getUint8(byteOffset++);
    }
    var customDecoded = utf8.decode(customDData);
    builder.custom = customDecoded;
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
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

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
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field z
    byteData.setFloat32(byteOffset, message.z, imc.endian_ser);
    byteOffset += 4;
    // field zUnits
    byteData.setUint8(byteOffset, message.zUnits.value);
    byteOffset += 1;
    // field speed
    byteData.setFloat32(byteOffset, message.speed, imc.endian_ser);
    byteOffset += 4;
    // field speedUnits
    byteData.setUint8(byteOffset, message.speedUnits.value);
    byteOffset += 1;
    // field takeoffPitch
    byteData.setFloat32(byteOffset, message.takeoffPitch, imc.endian_ser);
    byteOffset += 4;
    // field custom
    var customEncoded = utf8.encode(message.custom);
    var customSSize = customEncoded.length;
    byteData.setUint16(byteOffset, customSSize, imc.endian_ser);
    byteOffset += 2;
    customEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field z
    builder.z = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field zUnits
    builder.zUnits = imc.ZUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field speed
    builder.speed = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field speedUnits
    builder.speedUnits = imc.SpeedUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field takeoffPitch
    builder.takeoffPitch = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field custom
    var customSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var customDData = List<int>(customSSize);
    for (var i = 0; i < customSSize; i++) {
      customDData[i] = byteData.getUint8(byteOffset++);
    }
    var customDecoded = utf8.decode(customDData);
    builder.custom = customDecoded;
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
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field z
    byteData.setFloat32(byteOffset, message.z, imc.endian_ser);
    byteOffset += 4;
    // field zUnits
    byteData.setUint8(byteOffset, message.zUnits.value);
    byteOffset += 1;
    // field speed
    byteData.setFloat32(byteOffset, message.speed, imc.endian_ser);
    byteOffset += 4;
    // field speedUnits
    byteData.setUint8(byteOffset, message.speedUnits.value);
    byteOffset += 1;
    // field abortZ
    byteData.setFloat32(byteOffset, message.abortZ, imc.endian_ser);
    byteOffset += 4;
    // field bearing
    byteData.setFloat64(byteOffset, message.bearing, imc.endian_ser);
    byteOffset += 8;
    // field glideSlope
    byteData.setUint8(byteOffset, message.glideSlope);
    byteOffset += 1;
    // field glideSlopeAlt
    byteData.setFloat32(byteOffset, message.glideSlopeAlt, imc.endian_ser);
    byteOffset += 4;
    // field custom
    var customEncoded = utf8.encode(message.custom);
    var customSSize = customEncoded.length;
    byteData.setUint16(byteOffset, customSSize, imc.endian_ser);
    byteOffset += 2;
    customEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field z
    builder.z = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field zUnits
    builder.zUnits = imc.ZUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field speed
    builder.speed = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field speedUnits
    builder.speedUnits = imc.SpeedUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field abortZ
    builder.abortZ = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field bearing
    builder.bearing = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field glideSlope
    builder.glideSlope = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field glideSlopeAlt
    builder.glideSlopeAlt = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field custom
    var customSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var customDData = List<int>(customSSize);
    for (var i = 0; i < customSSize; i++) {
      customDData[i] = byteData.getUint8(byteOffset++);
    }
    var customDecoded = utf8.decode(customDData);
    builder.custom = customDecoded;
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
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field speed
    byteData.setFloat32(byteOffset, message.speed, imc.endian_ser);
    byteOffset += 4;
    // field speedUnits
    byteData.setUint8(byteOffset, message.speedUnits.value);
    byteOffset += 1;
    // field limits
    byteData.setUint8(byteOffset, message.limits.value);
    byteOffset += 1;
    // field maxDepth
    byteData.setFloat64(byteOffset, message.maxDepth, imc.endian_ser);
    byteOffset += 8;
    // field minAlt
    byteData.setFloat64(byteOffset, message.minAlt, imc.endian_ser);
    byteOffset += 8;
    // field timeLimit
    byteData.setFloat64(byteOffset, message.timeLimit, imc.endian_ser);
    byteOffset += 8;
    // field areaLimits
    // field controller
    var controllerEncoded = utf8.encode(message.controller);
    var controllerSSize = controllerEncoded.length;
    byteData.setUint16(byteOffset, controllerSSize, imc.endian_ser);
    byteOffset += 2;
    controllerEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field custom
    var customEncoded = utf8.encode(message.custom);
    var customSSize = customEncoded.length;
    byteData.setUint16(byteOffset, customSSize, imc.endian_ser);
    byteOffset += 2;
    customEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field speed
    builder.speed = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field speedUnits
    builder.speedUnits = imc.SpeedUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field limits
    builder.limits = imc.AutonomousSectionBitfieldLimits(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field maxDepth
    builder.maxDepth = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field minAlt
    builder.minAlt = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field timeLimit
    builder.timeLimit = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field areaLimits
    // field controller
    var controllerSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var controllerDData = List<int>(controllerSSize);
    for (var i = 0; i < controllerSSize; i++) {
      controllerDData[i] = byteData.getUint8(byteOffset++);
    }
    var controllerDecoded = utf8.decode(controllerDData);
    builder.controller = controllerDecoded;
    // field custom
    var customSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var customDData = List<int>(customSSize);
    for (var i = 0; i < customSSize; i++) {
      customDData[i] = byteData.getUint8(byteOffset++);
    }
    var customDecoded = utf8.decode(customDData);
    builder.custom = customDecoded;
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
    // field target
    var targetEncoded = utf8.encode(message.target);
    var targetSSize = targetEncoded.length;
    byteData.setUint16(byteOffset, targetSSize, imc.endian_ser);
    byteOffset += 2;
    targetEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field maxSpeed
    byteData.setFloat32(byteOffset, message.maxSpeed, imc.endian_ser);
    byteOffset += 4;
    // field speedUnits
    byteData.setUint8(byteOffset, message.speedUnits.value);
    byteOffset += 1;
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field z
    byteData.setFloat32(byteOffset, message.z, imc.endian_ser);
    byteOffset += 4;
    // field zUnits
    byteData.setUint8(byteOffset, message.zUnits.value);
    byteOffset += 1;
    // field custom
    var customEncoded = utf8.encode(message.custom);
    var customSSize = customEncoded.length;
    byteData.setUint16(byteOffset, customSSize, imc.endian_ser);
    byteOffset += 2;
    customEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field target
    var targetSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var targetDData = List<int>(targetSSize);
    for (var i = 0; i < targetSSize; i++) {
      targetDData[i] = byteData.getUint8(byteOffset++);
    }
    var targetDecoded = utf8.decode(targetDData);
    builder.target = targetDecoded;
    // field maxSpeed
    builder.maxSpeed = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field speedUnits
    builder.speedUnits = imc.SpeedUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field z
    builder.z = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field zUnits
    builder.zUnits = imc.ZUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field custom
    var customSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var customDData = List<int>(customSSize);
    for (var i = 0; i < customSSize; i++) {
      customDData[i] = byteData.getUint8(byteOffset++);
    }
    var customDecoded = utf8.decode(customDData);
    builder.custom = customDecoded;
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
    // field timeout
    byteData.setUint16(byteOffset, message.timeout, imc.endian_ser);
    byteOffset += 2;
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field speed
    byteData.setFloat32(byteOffset, message.speed, imc.endian_ser);
    byteOffset += 4;
    // field speedUnits
    byteData.setUint8(byteOffset, message.speedUnits.value);
    byteOffset += 1;
    // field custom
    var customEncoded = utf8.encode(message.custom);
    var customSSize = customEncoded.length;
    byteData.setUint16(byteOffset, customSSize, imc.endian_ser);
    byteOffset += 2;
    customEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field timeout
    builder.timeout = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field speed
    builder.speed = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field speedUnits
    builder.speedUnits = imc.SpeedUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field custom
    var customSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var customDData = List<int>(customSSize);
    for (var i = 0; i < customSSize; i++) {
      customDData[i] = byteData.getUint8(byteOffset++);
    }
    var customDecoded = utf8.decode(customDData);
    builder.custom = customDecoded;
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
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field z
    byteData.setFloat32(byteOffset, message.z, imc.endian_ser);
    byteOffset += 4;
    // field zUnits
    byteData.setUint8(byteOffset, message.zUnits.value);
    byteOffset += 1;
    // field radius
    byteData.setFloat32(byteOffset, message.radius, imc.endian_ser);
    byteOffset += 4;
    // field duration
    byteData.setUint16(byteOffset, message.duration, imc.endian_ser);
    byteOffset += 2;
    // field speed
    byteData.setFloat32(byteOffset, message.speed, imc.endian_ser);
    byteOffset += 4;
    // field speedUnits
    byteData.setUint8(byteOffset, message.speedUnits.value);
    byteOffset += 1;
    // field popupPeriod
    byteData.setUint16(byteOffset, message.popupPeriod, imc.endian_ser);
    byteOffset += 2;
    // field popupDuration
    byteData.setUint16(byteOffset, message.popupDuration, imc.endian_ser);
    byteOffset += 2;
    // field flags
    byteData.setUint8(byteOffset, message.flags.value);
    byteOffset += 1;
    // field custom
    var customEncoded = utf8.encode(message.custom);
    var customSSize = customEncoded.length;
    byteData.setUint16(byteOffset, customSSize, imc.endian_ser);
    byteOffset += 2;
    customEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field z
    builder.z = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field zUnits
    builder.zUnits = imc.ZUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field radius
    builder.radius = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field duration
    builder.duration = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field speed
    builder.speed = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field speedUnits
    builder.speedUnits = imc.SpeedUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field popupPeriod
    builder.popupPeriod = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field popupDuration
    builder.popupDuration = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field flags
    builder.flags = imc.StationKeepingExtendedBitfieldFlags(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field custom
    var customSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var customDData = List<int>(customSSize);
    for (var i = 0; i < customSSize; i++) {
      customDData[i] = byteData.getUint8(byteOffset++);
    }
    var customDecoded = utf8.decode(customDData);
    builder.custom = customDecoded;
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
    // field timeout
    byteData.setUint16(byteOffset, message.timeout, imc.endian_ser);
    byteOffset += 2;
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field z
    byteData.setFloat32(byteOffset, message.z, imc.endian_ser);
    byteOffset += 4;
    // field zUnits
    byteData.setUint8(byteOffset, message.zUnits.value);
    byteOffset += 1;
    // field speed
    byteData.setFloat32(byteOffset, message.speed, imc.endian_ser);
    byteOffset += 4;
    // field speedUnits
    byteData.setUint8(byteOffset, message.speedUnits.value);
    byteOffset += 1;
    // field bearing
    byteData.setFloat64(byteOffset, message.bearing, imc.endian_ser);
    byteOffset += 8;
    // field width
    byteData.setFloat32(byteOffset, message.width, imc.endian_ser);
    byteOffset += 4;
    // field direction
    byteData.setUint8(byteOffset, message.direction.value);
    byteOffset += 1;
    // field custom
    var customEncoded = utf8.encode(message.custom);
    var customSSize = customEncoded.length;
    byteData.setUint16(byteOffset, customSSize, imc.endian_ser);
    byteOffset += 2;
    customEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field timeout
    builder.timeout = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field z
    builder.z = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field zUnits
    builder.zUnits = imc.ZUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field speed
    builder.speed = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field speedUnits
    builder.speedUnits = imc.SpeedUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field bearing
    builder.bearing = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field width
    builder.width = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field direction
    builder.direction = imc.MagnetometerEnumDirection(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field custom
    var customSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var customDData = List<int>(customSSize);
    for (var i = 0; i < customSSize; i++) {
      customDData[i] = byteData.getUint8(byteOffset++);
    }
    var customDecoded = utf8.decode(customDData);
    builder.custom = customDecoded;
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
    // field opMode
    byteData.setUint8(byteOffset, message.opMode.value);
    byteOffset += 1;
    // field errorCount
    byteData.setUint8(byteOffset, message.errorCount);
    byteOffset += 1;
    // field errorEnts
    var errorEntsEncoded = utf8.encode(message.errorEnts);
    var errorEntsSSize = errorEntsEncoded.length;
    byteData.setUint16(byteOffset, errorEntsSSize, imc.endian_ser);
    byteOffset += 2;
    errorEntsEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field maneuverType
    byteData.setUint16(byteOffset, message.maneuverType, imc.endian_ser);
    byteOffset += 2;
    // field maneuverStime
    byteData.setFloat64(byteOffset, message.maneuverStime, imc.endian_ser);
    byteOffset += 8;
    // field maneuverEta
    byteData.setUint16(byteOffset, message.maneuverEta, imc.endian_ser);
    byteOffset += 2;
    // field controlLoops
    byteData.setUint32(byteOffset, message.controlLoops.value, imc.endian_ser);
    byteOffset += 4;
    // field flags
    byteData.setUint8(byteOffset, message.flags.value);
    byteOffset += 1;
    // field lastError
    var lastErrorEncoded = utf8.encode(message.lastError);
    var lastErrorSSize = lastErrorEncoded.length;
    byteData.setUint16(byteOffset, lastErrorSSize, imc.endian_ser);
    byteOffset += 2;
    lastErrorEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field lastErrorTime
    byteData.setFloat64(byteOffset, message.lastErrorTime, imc.endian_ser);
    byteOffset += 8;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field opMode
    builder.opMode = imc.VehicleStateEnumOpMode(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field errorCount
    builder.errorCount = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field errorEnts
    var errorEntsSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var errorEntsDData = List<int>(errorEntsSSize);
    for (var i = 0; i < errorEntsSSize; i++) {
      errorEntsDData[i] = byteData.getUint8(byteOffset++);
    }
    var errorEntsDecoded = utf8.decode(errorEntsDData);
    builder.errorEnts = errorEntsDecoded;
    // field maneuverType
    builder.maneuverType = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field maneuverStime
    builder.maneuverStime = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field maneuverEta
    builder.maneuverEta = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field controlLoops
    builder.controlLoops = imc.CLoopsMaskBitfield(byteData.getUint32(byteOffset, endianess));
    byteOffset += 4;
    // field flags
    builder.flags = imc.VehicleStateBitfieldFlags(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field lastError
    var lastErrorSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var lastErrorDData = List<int>(lastErrorSSize);
    for (var i = 0; i < lastErrorSSize; i++) {
      lastErrorDData[i] = byteData.getUint8(byteOffset++);
    }
    var lastErrorDecoded = utf8.decode(lastErrorDData);
    builder.lastError = lastErrorDecoded;
    // field lastErrorTime
    builder.lastErrorTime = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
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
    // field type
    byteData.setUint8(byteOffset, message.type.value);
    byteOffset += 1;
    // field requestId
    byteData.setUint16(byteOffset, message.requestId, imc.endian_ser);
    byteOffset += 2;
    // field command
    byteData.setUint8(byteOffset, message.command.value);
    byteOffset += 1;
    // field maneuver
    // field calibTime
    byteData.setUint16(byteOffset, message.calibTime, imc.endian_ser);
    byteOffset += 2;
    // field info
    var infoEncoded = utf8.encode(message.info);
    var infoSSize = infoEncoded.length;
    byteData.setUint16(byteOffset, infoSSize, imc.endian_ser);
    byteOffset += 2;
    infoEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field type
    builder.type = imc.VehicleCommandEnumType(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field requestId
    builder.requestId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field command
    builder.command = imc.VehicleCommandEnumCommand(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field maneuver
    // field calibTime
    builder.calibTime = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field info
    var infoSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var infoDData = List<int>(infoSSize);
    for (var i = 0; i < infoSSize; i++) {
      infoDData[i] = byteData.getUint8(byteOffset++);
    }
    var infoDecoded = utf8.decode(infoDData);
    builder.info = infoDecoded;
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
    // field command
    byteData.setUint8(byteOffset, message.command.value);
    byteOffset += 1;
    // field entities
    var entitiesEncoded = utf8.encode(message.entities);
    var entitiesSSize = entitiesEncoded.length;
    byteData.setUint16(byteOffset, entitiesSSize, imc.endian_ser);
    byteOffset += 2;
    entitiesEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field command
    builder.command = imc.MonitorEntityStateEnumCommand(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field entities
    var entitiesSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var entitiesDData = List<int>(entitiesSSize);
    for (var i = 0; i < entitiesSSize; i++) {
      entitiesDData[i] = byteData.getUint8(byteOffset++);
    }
    var entitiesDecoded = utf8.decode(entitiesDData);
    builder.entities = entitiesDecoded;
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
    // field mcount
    byteData.setUint8(byteOffset, message.mcount);
    byteOffset += 1;
    // field mnames
    var mnamesEncoded = utf8.encode(message.mnames);
    var mnamesSSize = mnamesEncoded.length;
    byteData.setUint16(byteOffset, mnamesSSize, imc.endian_ser);
    byteOffset += 2;
    mnamesEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field ecount
    byteData.setUint8(byteOffset, message.ecount);
    byteOffset += 1;
    // field enames
    var enamesEncoded = utf8.encode(message.enames);
    var enamesSSize = enamesEncoded.length;
    byteData.setUint16(byteOffset, enamesSSize, imc.endian_ser);
    byteOffset += 2;
    enamesEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field ccount
    byteData.setUint8(byteOffset, message.ccount);
    byteOffset += 1;
    // field cnames
    var cnamesEncoded = utf8.encode(message.cnames);
    var cnamesSSize = cnamesEncoded.length;
    byteData.setUint16(byteOffset, cnamesSSize, imc.endian_ser);
    byteOffset += 2;
    cnamesEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field lastError
    var lastErrorEncoded = utf8.encode(message.lastError);
    var lastErrorSSize = lastErrorEncoded.length;
    byteData.setUint16(byteOffset, lastErrorSSize, imc.endian_ser);
    byteOffset += 2;
    lastErrorEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field lastErrorTime
    byteData.setFloat64(byteOffset, message.lastErrorTime, imc.endian_ser);
    byteOffset += 8;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field mcount
    builder.mcount = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field mnames
    var mnamesSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var mnamesDData = List<int>(mnamesSSize);
    for (var i = 0; i < mnamesSSize; i++) {
      mnamesDData[i] = byteData.getUint8(byteOffset++);
    }
    var mnamesDecoded = utf8.decode(mnamesDData);
    builder.mnames = mnamesDecoded;
    // field ecount
    builder.ecount = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field enames
    var enamesSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var enamesDData = List<int>(enamesSSize);
    for (var i = 0; i < enamesSSize; i++) {
      enamesDData[i] = byteData.getUint8(byteOffset++);
    }
    var enamesDecoded = utf8.decode(enamesDData);
    builder.enames = enamesDecoded;
    // field ccount
    builder.ccount = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field cnames
    var cnamesSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var cnamesDData = List<int>(cnamesSSize);
    for (var i = 0; i < cnamesSSize; i++) {
      cnamesDData[i] = byteData.getUint8(byteOffset++);
    }
    var cnamesDecoded = utf8.decode(cnamesDData);
    builder.cnames = cnamesDecoded;
    // field lastError
    var lastErrorSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var lastErrorDData = List<int>(lastErrorSSize);
    for (var i = 0; i < lastErrorSSize; i++) {
      lastErrorDData[i] = byteData.getUint8(byteOffset++);
    }
    var lastErrorDecoded = utf8.decode(lastErrorDData);
    builder.lastError = lastErrorDecoded;
    // field lastErrorTime
    builder.lastErrorTime = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
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
    // field mask
    byteData.setUint8(byteOffset, message.mask.value);
    byteOffset += 1;
    // field maxDepth
    byteData.setFloat32(byteOffset, message.maxDepth, imc.endian_ser);
    byteOffset += 4;
    // field minAltitude
    byteData.setFloat32(byteOffset, message.minAltitude, imc.endian_ser);
    byteOffset += 4;
    // field maxAltitude
    byteData.setFloat32(byteOffset, message.maxAltitude, imc.endian_ser);
    byteOffset += 4;
    // field minSpeed
    byteData.setFloat32(byteOffset, message.minSpeed, imc.endian_ser);
    byteOffset += 4;
    // field maxSpeed
    byteData.setFloat32(byteOffset, message.maxSpeed, imc.endian_ser);
    byteOffset += 4;
    // field maxVrate
    byteData.setFloat32(byteOffset, message.maxVrate, imc.endian_ser);
    byteOffset += 4;
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field orientation
    byteData.setFloat32(byteOffset, message.orientation, imc.endian_ser);
    byteOffset += 4;
    // field width
    byteData.setFloat32(byteOffset, message.width, imc.endian_ser);
    byteOffset += 4;
    // field length
    byteData.setFloat32(byteOffset, message.length, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field mask
    builder.mask = imc.OpLimitsMaskBitfield(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field maxDepth
    builder.maxDepth = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field minAltitude
    builder.minAltitude = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field maxAltitude
    builder.maxAltitude = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field minSpeed
    builder.minSpeed = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field maxSpeed
    builder.maxSpeed = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field maxVrate
    builder.maxVrate = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field orientation
    builder.orientation = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field width
    builder.width = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field length
    builder.length = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

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
    // field duration
    byteData.setUint16(byteOffset, message.duration, imc.endian_ser);
    byteOffset += 2;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field duration
    builder.duration = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
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
    // field enable
    byteData.setUint8(byteOffset, message.enable.value);
    byteOffset += 1;
    // field mask
    byteData.setUint32(byteOffset, message.mask.value, imc.endian_ser);
    byteOffset += 4;
    // field scopeRef
    byteData.setUint32(byteOffset, message.scopeRef, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field enable
    builder.enable = imc.ControlLoopsEnumEnable(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field mask
    builder.mask = imc.CLoopsMaskBitfield(byteData.getUint32(byteOffset, endianess));
    byteOffset += 4;
    // field scopeRef
    builder.scopeRef = byteData.getUint32(byteOffset, endianess);
    byteOffset += 4;
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
    // field medium
    byteData.setUint8(byteOffset, message.medium.value);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field medium
    builder.medium = imc.VehicleMediumEnumMedium(byteData.getUint8(byteOffset));
    byteOffset += 1;
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
    // field value
    byteData.setFloat32(byteOffset, message.value, imc.endian_ser);
    byteOffset += 4;
    // field type
    byteData.setUint8(byteOffset, message.type.value);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field type
    builder.type = imc.CollisionBitfieldType(byteData.getUint8(byteOffset));
    byteOffset += 1;
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
    // field posSimErr
    byteData.setFloat32(byteOffset, message.posSimErr, imc.endian_ser);
    byteOffset += 4;
    // field converg
    byteData.setFloat32(byteOffset, message.converg, imc.endian_ser);
    byteOffset += 4;
    // field turbulence
    byteData.setFloat32(byteOffset, message.turbulence, imc.endian_ser);
    byteOffset += 4;
    // field posSimMon
    byteData.setUint8(byteOffset, message.posSimMon.value);
    byteOffset += 1;
    // field commMon
    byteData.setUint8(byteOffset, message.commMon.value);
    byteOffset += 1;
    // field convergMon
    byteData.setUint8(byteOffset, message.convergMon.value);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field posSimErr
    builder.posSimErr = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field converg
    builder.converg = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field turbulence
    builder.turbulence = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field posSimMon
    builder.posSimMon = imc.FormStateEnumPosSimMon(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field commMon
    builder.commMon = imc.FormStateEnumCommMon(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field convergMon
    builder.convergMon = imc.FormStateEnumConvergMon(byteData.getUint8(byteOffset));
    byteOffset += 1;
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
    // field autonomy
    byteData.setUint8(byteOffset, message.autonomy.value);
    byteOffset += 1;
    // field mode
    var modeEncoded = utf8.encode(message.mode);
    var modeSSize = modeEncoded.length;
    byteData.setUint16(byteOffset, modeSSize, imc.endian_ser);
    byteOffset += 2;
    modeEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field autonomy
    builder.autonomy = imc.AutopilotModeEnumAutonomy(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field mode
    var modeSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var modeDData = List<int>(modeSSize);
    for (var i = 0; i < modeSSize; i++) {
      modeDData[i] = byteData.getUint8(byteOffset++);
    }
    var modeDecoded = utf8.decode(modeDData);
    builder.mode = modeDecoded;
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
    // field type
    byteData.setUint8(byteOffset, message.type.value);
    byteOffset += 1;
    // field op
    byteData.setUint8(byteOffset, message.op.value);
    byteOffset += 1;
    // field posSimErr
    byteData.setFloat32(byteOffset, message.posSimErr, imc.endian_ser);
    byteOffset += 4;
    // field converg
    byteData.setFloat32(byteOffset, message.converg, imc.endian_ser);
    byteOffset += 4;
    // field turbulence
    byteData.setFloat32(byteOffset, message.turbulence, imc.endian_ser);
    byteOffset += 4;
    // field posSimMon
    byteData.setUint8(byteOffset, message.posSimMon.value);
    byteOffset += 1;
    // field commMon
    byteData.setUint8(byteOffset, message.commMon.value);
    byteOffset += 1;
    // field convergMon
    byteData.setUint8(byteOffset, message.convergMon.value);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field type
    builder.type = imc.FormationStateEnumType(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field op
    builder.op = imc.FormationStateEnumOp(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field posSimErr
    builder.posSimErr = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field converg
    builder.converg = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field turbulence
    builder.turbulence = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field posSimMon
    builder.posSimMon = imc.FormationStateEnumPosSimMon(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field commMon
    builder.commMon = imc.FormationStateEnumCommMon(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field convergMon
    builder.convergMon = imc.FormationStateEnumConvergMon(byteData.getUint8(byteOffset));
    byteOffset += 1;
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
    // field op
    byteData.setUint8(byteOffset, message.op.value);
    byteOffset += 1;
    // field commInterface
    byteData.setUint8(byteOffset, message.commInterface.value);
    byteOffset += 1;
    // field period
    byteData.setUint16(byteOffset, message.period, imc.endian_ser);
    byteOffset += 2;
    // field sysDst
    var sysDstEncoded = utf8.encode(message.sysDst);
    var sysDstSSize = sysDstEncoded.length;
    byteData.setUint16(byteOffset, sysDstSSize, imc.endian_ser);
    byteOffset += 2;
    sysDstEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field op
    builder.op = imc.ReportControlEnumOp(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field commInterface
    builder.commInterface = imc.ReportControlBitfieldCommInterface(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field period
    builder.period = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field sysDst
    var sysDstSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var sysDstDData = List<int>(sysDstSSize);
    for (var i = 0; i < sysDstSSize; i++) {
      sysDstDData[i] = byteData.getUint8(byteOffset++);
    }
    var sysDstDecoded = utf8.decode(sysDstDData);
    builder.sysDst = sysDstDecoded;
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
    // field stime
    byteData.setUint32(byteOffset, message.stime, imc.endian_ser);
    byteOffset += 4;
    // field latitude
    byteData.setFloat32(byteOffset, message.latitude, imc.endian_ser);
    byteOffset += 4;
    // field longitude
    byteData.setFloat32(byteOffset, message.longitude, imc.endian_ser);
    byteOffset += 4;
    // field altitude
    byteData.setUint16(byteOffset, message.altitude, imc.endian_ser);
    byteOffset += 2;
    // field depth
    byteData.setUint16(byteOffset, message.depth, imc.endian_ser);
    byteOffset += 2;
    // field heading
    byteData.setUint16(byteOffset, message.heading, imc.endian_ser);
    byteOffset += 2;
    // field speed
    byteData.setInt16(byteOffset, message.speed, imc.endian_ser);
    byteOffset += 2;
    // field fuel
    byteData.setInt8(byteOffset, message.fuel);
    byteOffset += 1;
    // field execState
    byteData.setInt8(byteOffset, message.execState);
    byteOffset += 1;
    // field planChecksum
    byteData.setUint16(byteOffset, message.planChecksum, imc.endian_ser);
    byteOffset += 2;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field stime
    builder.stime = byteData.getUint32(byteOffset, endianess);
    byteOffset += 4;
    // field latitude
    builder.latitude = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field longitude
    builder.longitude = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field altitude
    builder.altitude = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field depth
    builder.depth = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field heading
    builder.heading = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field speed
    builder.speed = byteData.getInt16(byteOffset, endianess);
    byteOffset += 2;
    // field fuel
    builder.fuel = byteData.getInt8(byteOffset);
    byteOffset += 1;
    // field execState
    builder.execState = byteData.getInt8(byteOffset);
    byteOffset += 1;
    // field planChecksum
    builder.planChecksum = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
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
    // field reqId
    byteData.setUint16(byteOffset, message.reqId, imc.endian_ser);
    byteOffset += 2;
    // field commMean
    byteData.setUint8(byteOffset, message.commMean.value);
    byteOffset += 1;
    // field destination
    var destinationEncoded = utf8.encode(message.destination);
    var destinationSSize = destinationEncoded.length;
    byteData.setUint16(byteOffset, destinationSSize, imc.endian_ser);
    byteOffset += 2;
    destinationEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field deadline
    byteData.setFloat64(byteOffset, message.deadline, imc.endian_ser);
    byteOffset += 8;
    // field dataMode
    byteData.setUint8(byteOffset, message.dataMode.value);
    byteOffset += 1;
    // field msgData
    // field txtData
    var txtDataEncoded = utf8.encode(message.txtData);
    var txtDataSSize = txtDataEncoded.length;
    byteData.setUint16(byteOffset, txtDataSSize, imc.endian_ser);
    byteOffset += 2;
    txtDataEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field rawData
    var rawDataSSize = message.rawData.length;
    byteData.setUint16(byteOffset, rawDataSSize, imc.endian_ser);
    byteOffset += 2;
    message.rawData.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field reqId
    builder.reqId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field commMean
    builder.commMean = imc.TransmissionRequestEnumCommMean(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field destination
    var destinationSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var destinationDData = List<int>(destinationSSize);
    for (var i = 0; i < destinationSSize; i++) {
      destinationDData[i] = byteData.getUint8(byteOffset++);
    }
    var destinationDecoded = utf8.decode(destinationDData);
    builder.destination = destinationDecoded;
    // field deadline
    builder.deadline = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field dataMode
    builder.dataMode = imc.TransmissionRequestEnumDataMode(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field msgData
    // field txtData
    var txtDataSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var txtDataDData = List<int>(txtDataSSize);
    for (var i = 0; i < txtDataSSize; i++) {
      txtDataDData[i] = byteData.getUint8(byteOffset++);
    }
    var txtDataDecoded = utf8.decode(txtDataDData);
    builder.txtData = txtDataDecoded;
    // field rawData
    var rawDataSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var rawDataDData = List<int>(rawDataSSize);
    for (var i = 0; i < rawDataSSize; i++) {
      rawDataDData[i] = byteData.getUint8(byteOffset++);
    }
    builder.rawData = rawDataDData;
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
    // field reqId
    byteData.setUint16(byteOffset, message.reqId, imc.endian_ser);
    byteOffset += 2;
    // field status
    byteData.setUint8(byteOffset, message.status.value);
    byteOffset += 1;
    // field info
    var infoEncoded = utf8.encode(message.info);
    var infoSSize = infoEncoded.length;
    byteData.setUint16(byteOffset, infoSSize, imc.endian_ser);
    byteOffset += 2;
    infoEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field reqId
    builder.reqId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field status
    builder.status = imc.TransmissionStatusEnumStatus(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field info
    var infoSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var infoDData = List<int>(infoSSize);
    for (var i = 0; i < infoSSize; i++) {
      infoDData[i] = byteData.getUint8(byteOffset++);
    }
    var infoDecoded = utf8.decode(infoDData);
    builder.info = infoDecoded;
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
    // field reqId
    byteData.setUint16(byteOffset, message.reqId, imc.endian_ser);
    byteOffset += 2;
    // field destination
    var destinationEncoded = utf8.encode(message.destination);
    var destinationSSize = destinationEncoded.length;
    byteData.setUint16(byteOffset, destinationSSize, imc.endian_ser);
    byteOffset += 2;
    destinationEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field timeout
    byteData.setFloat64(byteOffset, message.timeout, imc.endian_ser);
    byteOffset += 8;
    // field smsText
    var smsTextEncoded = utf8.encode(message.smsText);
    var smsTextSSize = smsTextEncoded.length;
    byteData.setUint16(byteOffset, smsTextSSize, imc.endian_ser);
    byteOffset += 2;
    smsTextEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field reqId
    builder.reqId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field destination
    var destinationSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var destinationDData = List<int>(destinationSSize);
    for (var i = 0; i < destinationSSize; i++) {
      destinationDData[i] = byteData.getUint8(byteOffset++);
    }
    var destinationDecoded = utf8.decode(destinationDData);
    builder.destination = destinationDecoded;
    // field timeout
    builder.timeout = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field smsText
    var smsTextSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var smsTextDData = List<int>(smsTextSSize);
    for (var i = 0; i < smsTextSSize; i++) {
      smsTextDData[i] = byteData.getUint8(byteOffset++);
    }
    var smsTextDecoded = utf8.decode(smsTextDData);
    builder.smsText = smsTextDecoded;
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
    // field reqId
    byteData.setUint16(byteOffset, message.reqId, imc.endian_ser);
    byteOffset += 2;
    // field status
    byteData.setUint8(byteOffset, message.status.value);
    byteOffset += 1;
    // field info
    var infoEncoded = utf8.encode(message.info);
    var infoSSize = infoEncoded.length;
    byteData.setUint16(byteOffset, infoSSize, imc.endian_ser);
    byteOffset += 2;
    infoEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field reqId
    builder.reqId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field status
    builder.status = imc.SmsStatusEnumStatus(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field info
    var infoSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var infoDData = List<int>(infoSSize);
    for (var i = 0; i < infoSSize; i++) {
      infoDData[i] = byteData.getUint8(byteOffset++);
    }
    var infoDecoded = utf8.decode(infoDData);
    builder.info = infoDecoded;
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
    // field state
    byteData.setUint8(byteOffset, message.state.value);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field state
    builder.state = imc.VtolStateEnumState(byteData.getUint8(byteOffset));
    byteOffset += 1;
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
    // field state
    byteData.setUint8(byteOffset, message.state.value);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field state
    builder.state = imc.ArmingStateEnumState(byteData.getUint8(byteOffset));
    byteOffset += 1;
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
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

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
    // field planId
    var planIdEncoded = utf8.encode(message.planId);
    var planIdSSize = planIdEncoded.length;
    byteData.setUint16(byteOffset, planIdSSize, imc.endian_ser);
    byteOffset += 2;
    planIdEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field description
    var descriptionEncoded = utf8.encode(message.description);
    var descriptionSSize = descriptionEncoded.length;
    byteData.setUint16(byteOffset, descriptionSSize, imc.endian_ser);
    byteOffset += 2;
    descriptionEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field vnamespace
    var vnamespaceEncoded = utf8.encode(message.vnamespace);
    var vnamespaceSSize = vnamespaceEncoded.length;
    byteData.setUint16(byteOffset, vnamespaceSSize, imc.endian_ser);
    byteOffset += 2;
    vnamespaceEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field variables
    // field startManId
    var startManIdEncoded = utf8.encode(message.startManId);
    var startManIdSSize = startManIdEncoded.length;
    byteData.setUint16(byteOffset, startManIdSSize, imc.endian_ser);
    byteOffset += 2;
    startManIdEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field maneuvers
    // field transitions
    // field startActions
    // field endActions
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field planId
    var planIdSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var planIdDData = List<int>(planIdSSize);
    for (var i = 0; i < planIdSSize; i++) {
      planIdDData[i] = byteData.getUint8(byteOffset++);
    }
    var planIdDecoded = utf8.decode(planIdDData);
    builder.planId = planIdDecoded;
    // field description
    var descriptionSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var descriptionDData = List<int>(descriptionSSize);
    for (var i = 0; i < descriptionSSize; i++) {
      descriptionDData[i] = byteData.getUint8(byteOffset++);
    }
    var descriptionDecoded = utf8.decode(descriptionDData);
    builder.description = descriptionDecoded;
    // field vnamespace
    var vnamespaceSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var vnamespaceDData = List<int>(vnamespaceSSize);
    for (var i = 0; i < vnamespaceSSize; i++) {
      vnamespaceDData[i] = byteData.getUint8(byteOffset++);
    }
    var vnamespaceDecoded = utf8.decode(vnamespaceDData);
    builder.vnamespace = vnamespaceDecoded;
    // field variables
    // field startManId
    var startManIdSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var startManIdDData = List<int>(startManIdSSize);
    for (var i = 0; i < startManIdSSize; i++) {
      startManIdDData[i] = byteData.getUint8(byteOffset++);
    }
    var startManIdDecoded = utf8.decode(startManIdDData);
    builder.startManId = startManIdDecoded;
    // field maneuvers
    // field transitions
    // field startActions
    // field endActions
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
    // field maneuverId
    var maneuverIdEncoded = utf8.encode(message.maneuverId);
    var maneuverIdSSize = maneuverIdEncoded.length;
    byteData.setUint16(byteOffset, maneuverIdSSize, imc.endian_ser);
    byteOffset += 2;
    maneuverIdEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field data
    // field startActions
    // field endActions
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field maneuverId
    var maneuverIdSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var maneuverIdDData = List<int>(maneuverIdSSize);
    for (var i = 0; i < maneuverIdSSize; i++) {
      maneuverIdDData[i] = byteData.getUint8(byteOffset++);
    }
    var maneuverIdDecoded = utf8.decode(maneuverIdDData);
    builder.maneuverId = maneuverIdDecoded;
    // field data
    // field startActions
    // field endActions
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
    // field sourceMan
    var sourceManEncoded = utf8.encode(message.sourceMan);
    var sourceManSSize = sourceManEncoded.length;
    byteData.setUint16(byteOffset, sourceManSSize, imc.endian_ser);
    byteOffset += 2;
    sourceManEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field destMan
    var destManEncoded = utf8.encode(message.destMan);
    var destManSSize = destManEncoded.length;
    byteData.setUint16(byteOffset, destManSSize, imc.endian_ser);
    byteOffset += 2;
    destManEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field conditions
    var conditionsEncoded = utf8.encode(message.conditions);
    var conditionsSSize = conditionsEncoded.length;
    byteData.setUint16(byteOffset, conditionsSSize, imc.endian_ser);
    byteOffset += 2;
    conditionsEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field actions
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field sourceMan
    var sourceManSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var sourceManDData = List<int>(sourceManSSize);
    for (var i = 0; i < sourceManSSize; i++) {
      sourceManDData[i] = byteData.getUint8(byteOffset++);
    }
    var sourceManDecoded = utf8.decode(sourceManDData);
    builder.sourceMan = sourceManDecoded;
    // field destMan
    var destManSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var destManDData = List<int>(destManSSize);
    for (var i = 0; i < destManSSize; i++) {
      destManDData[i] = byteData.getUint8(byteOffset++);
    }
    var destManDecoded = utf8.decode(destManDData);
    builder.destMan = destManDecoded;
    // field conditions
    var conditionsSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var conditionsDData = List<int>(conditionsSSize);
    for (var i = 0; i < conditionsSSize; i++) {
      conditionsDData[i] = byteData.getUint8(byteOffset++);
    }
    var conditionsDecoded = utf8.decode(conditionsDData);
    builder.conditions = conditionsDecoded;
    // field actions
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
    // field command
    byteData.setUint8(byteOffset, message.command.value);
    byteOffset += 1;
    // field plan
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field command
    builder.command = imc.EmergencyControlEnumCommand(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field plan
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
    // field state
    byteData.setUint8(byteOffset, message.state.value);
    byteOffset += 1;
    // field planId
    var planIdEncoded = utf8.encode(message.planId);
    var planIdSSize = planIdEncoded.length;
    byteData.setUint16(byteOffset, planIdSSize, imc.endian_ser);
    byteOffset += 2;
    planIdEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field commLevel
    byteData.setUint8(byteOffset, message.commLevel);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field state
    builder.state = imc.EmergencyControlStateEnumState(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field planId
    var planIdSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var planIdDData = List<int>(planIdSSize);
    for (var i = 0; i < planIdSSize; i++) {
      planIdDData[i] = byteData.getUint8(byteOffset++);
    }
    var planIdDecoded = utf8.decode(planIdDData);
    builder.planId = planIdDecoded;
    // field commLevel
    builder.commLevel = byteData.getUint8(byteOffset);
    byteOffset += 1;
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
    // field type
    byteData.setUint8(byteOffset, message.type.value);
    byteOffset += 1;
    // field op
    byteData.setUint8(byteOffset, message.op.value);
    byteOffset += 1;
    // field requestId
    byteData.setUint16(byteOffset, message.requestId, imc.endian_ser);
    byteOffset += 2;
    // field planId
    var planIdEncoded = utf8.encode(message.planId);
    var planIdSSize = planIdEncoded.length;
    byteData.setUint16(byteOffset, planIdSSize, imc.endian_ser);
    byteOffset += 2;
    planIdEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field arg
    // field info
    var infoEncoded = utf8.encode(message.info);
    var infoSSize = infoEncoded.length;
    byteData.setUint16(byteOffset, infoSSize, imc.endian_ser);
    byteOffset += 2;
    infoEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field type
    builder.type = imc.PlanDBEnumType(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field op
    builder.op = imc.PlanDBEnumOp(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field requestId
    builder.requestId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field planId
    var planIdSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var planIdDData = List<int>(planIdSSize);
    for (var i = 0; i < planIdSSize; i++) {
      planIdDData[i] = byteData.getUint8(byteOffset++);
    }
    var planIdDecoded = utf8.decode(planIdDData);
    builder.planId = planIdDecoded;
    // field arg
    // field info
    var infoSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var infoDData = List<int>(infoSSize);
    for (var i = 0; i < infoSSize; i++) {
      infoDData[i] = byteData.getUint8(byteOffset++);
    }
    var infoDecoded = utf8.decode(infoDData);
    builder.info = infoDecoded;
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
    // field planCount
    byteData.setUint16(byteOffset, message.planCount, imc.endian_ser);
    byteOffset += 2;
    // field planSize
    byteData.setUint32(byteOffset, message.planSize, imc.endian_ser);
    byteOffset += 4;
    // field changeTime
    byteData.setFloat64(byteOffset, message.changeTime, imc.endian_ser);
    byteOffset += 8;
    // field changeSid
    byteData.setUint16(byteOffset, message.changeSid, imc.endian_ser);
    byteOffset += 2;
    // field changeSname
    var changeSnameEncoded = utf8.encode(message.changeSname);
    var changeSnameSSize = changeSnameEncoded.length;
    byteData.setUint16(byteOffset, changeSnameSSize, imc.endian_ser);
    byteOffset += 2;
    changeSnameEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field md5
    var md5SSize = message.md5.length;
    byteData.setUint16(byteOffset, md5SSize, imc.endian_ser);
    byteOffset += 2;
    message.md5.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field plansInfo
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field planCount
    builder.planCount = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field planSize
    builder.planSize = byteData.getUint32(byteOffset, endianess);
    byteOffset += 4;
    // field changeTime
    builder.changeTime = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field changeSid
    builder.changeSid = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field changeSname
    var changeSnameSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var changeSnameDData = List<int>(changeSnameSSize);
    for (var i = 0; i < changeSnameSSize; i++) {
      changeSnameDData[i] = byteData.getUint8(byteOffset++);
    }
    var changeSnameDecoded = utf8.decode(changeSnameDData);
    builder.changeSname = changeSnameDecoded;
    // field md5
    var md5SSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var md5DData = List<int>(md5SSize);
    for (var i = 0; i < md5SSize; i++) {
      md5DData[i] = byteData.getUint8(byteOffset++);
    }
    builder.md5 = md5DData;
    // field plansInfo
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
    // field planId
    var planIdEncoded = utf8.encode(message.planId);
    var planIdSSize = planIdEncoded.length;
    byteData.setUint16(byteOffset, planIdSSize, imc.endian_ser);
    byteOffset += 2;
    planIdEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field planSize
    byteData.setUint16(byteOffset, message.planSize, imc.endian_ser);
    byteOffset += 2;
    // field changeTime
    byteData.setFloat64(byteOffset, message.changeTime, imc.endian_ser);
    byteOffset += 8;
    // field changeSid
    byteData.setUint16(byteOffset, message.changeSid, imc.endian_ser);
    byteOffset += 2;
    // field changeSname
    var changeSnameEncoded = utf8.encode(message.changeSname);
    var changeSnameSSize = changeSnameEncoded.length;
    byteData.setUint16(byteOffset, changeSnameSSize, imc.endian_ser);
    byteOffset += 2;
    changeSnameEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field md5
    var md5SSize = message.md5.length;
    byteData.setUint16(byteOffset, md5SSize, imc.endian_ser);
    byteOffset += 2;
    message.md5.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field planId
    var planIdSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var planIdDData = List<int>(planIdSSize);
    for (var i = 0; i < planIdSSize; i++) {
      planIdDData[i] = byteData.getUint8(byteOffset++);
    }
    var planIdDecoded = utf8.decode(planIdDData);
    builder.planId = planIdDecoded;
    // field planSize
    builder.planSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field changeTime
    builder.changeTime = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field changeSid
    builder.changeSid = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field changeSname
    var changeSnameSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var changeSnameDData = List<int>(changeSnameSSize);
    for (var i = 0; i < changeSnameSSize; i++) {
      changeSnameDData[i] = byteData.getUint8(byteOffset++);
    }
    var changeSnameDecoded = utf8.decode(changeSnameDData);
    builder.changeSname = changeSnameDecoded;
    // field md5
    var md5SSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var md5DData = List<int>(md5SSize);
    for (var i = 0; i < md5SSize; i++) {
      md5DData[i] = byteData.getUint8(byteOffset++);
    }
    builder.md5 = md5DData;
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
    // field type
    byteData.setUint8(byteOffset, message.type.value);
    byteOffset += 1;
    // field op
    byteData.setUint8(byteOffset, message.op.value);
    byteOffset += 1;
    // field requestId
    byteData.setUint16(byteOffset, message.requestId, imc.endian_ser);
    byteOffset += 2;
    // field planId
    var planIdEncoded = utf8.encode(message.planId);
    var planIdSSize = planIdEncoded.length;
    byteData.setUint16(byteOffset, planIdSSize, imc.endian_ser);
    byteOffset += 2;
    planIdEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field flags
    byteData.setUint16(byteOffset, message.flags.value, imc.endian_ser);
    byteOffset += 2;
    // field arg
    // field info
    var infoEncoded = utf8.encode(message.info);
    var infoSSize = infoEncoded.length;
    byteData.setUint16(byteOffset, infoSSize, imc.endian_ser);
    byteOffset += 2;
    infoEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field type
    builder.type = imc.PlanControlEnumType(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field op
    builder.op = imc.PlanControlEnumOp(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field requestId
    builder.requestId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field planId
    var planIdSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var planIdDData = List<int>(planIdSSize);
    for (var i = 0; i < planIdSSize; i++) {
      planIdDData[i] = byteData.getUint8(byteOffset++);
    }
    var planIdDecoded = utf8.decode(planIdDData);
    builder.planId = planIdDecoded;
    // field flags
    builder.flags = imc.PlanControlBitfieldFlags(byteData.getUint16(byteOffset, endianess));
    byteOffset += 2;
    // field arg
    // field info
    var infoSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var infoDData = List<int>(infoSSize);
    for (var i = 0; i < infoSSize; i++) {
      infoDData[i] = byteData.getUint8(byteOffset++);
    }
    var infoDecoded = utf8.decode(infoDData);
    builder.info = infoDecoded;
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
    // field state
    byteData.setUint8(byteOffset, message.state.value);
    byteOffset += 1;
    // field planId
    var planIdEncoded = utf8.encode(message.planId);
    var planIdSSize = planIdEncoded.length;
    byteData.setUint16(byteOffset, planIdSSize, imc.endian_ser);
    byteOffset += 2;
    planIdEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field planEta
    byteData.setInt32(byteOffset, message.planEta, imc.endian_ser);
    byteOffset += 4;
    // field planProgress
    byteData.setFloat32(byteOffset, message.planProgress, imc.endian_ser);
    byteOffset += 4;
    // field manId
    var manIdEncoded = utf8.encode(message.manId);
    var manIdSSize = manIdEncoded.length;
    byteData.setUint16(byteOffset, manIdSSize, imc.endian_ser);
    byteOffset += 2;
    manIdEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field manType
    byteData.setUint16(byteOffset, message.manType, imc.endian_ser);
    byteOffset += 2;
    // field manEta
    byteData.setInt32(byteOffset, message.manEta, imc.endian_ser);
    byteOffset += 4;
    // field lastOutcome
    byteData.setUint8(byteOffset, message.lastOutcome.value);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field state
    builder.state = imc.PlanControlStateEnumState(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field planId
    var planIdSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var planIdDData = List<int>(planIdSSize);
    for (var i = 0; i < planIdSSize; i++) {
      planIdDData[i] = byteData.getUint8(byteOffset++);
    }
    var planIdDecoded = utf8.decode(planIdDData);
    builder.planId = planIdDecoded;
    // field planEta
    builder.planEta = byteData.getInt32(byteOffset, endianess);
    byteOffset += 4;
    // field planProgress
    builder.planProgress = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field manId
    var manIdSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var manIdDData = List<int>(manIdSSize);
    for (var i = 0; i < manIdSSize; i++) {
      manIdDData[i] = byteData.getUint8(byteOffset++);
    }
    var manIdDecoded = utf8.decode(manIdDData);
    builder.manId = manIdDecoded;
    // field manType
    builder.manType = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field manEta
    builder.manEta = byteData.getInt32(byteOffset, endianess);
    byteOffset += 4;
    // field lastOutcome
    builder.lastOutcome = imc.PlanControlStateEnumLastOutcome(byteData.getUint8(byteOffset));
    byteOffset += 1;
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
    // field name
    var nameEncoded = utf8.encode(message.name);
    var nameSSize = nameEncoded.length;
    byteData.setUint16(byteOffset, nameSSize, imc.endian_ser);
    byteOffset += 2;
    nameEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field value
    var valueEncoded = utf8.encode(message.value);
    var valueSSize = valueEncoded.length;
    byteData.setUint16(byteOffset, valueSSize, imc.endian_ser);
    byteOffset += 2;
    valueEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field type
    byteData.setUint8(byteOffset, message.type.value);
    byteOffset += 1;
    // field access
    byteData.setUint8(byteOffset, message.access.value);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field name
    var nameSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var nameDData = List<int>(nameSSize);
    for (var i = 0; i < nameSSize; i++) {
      nameDData[i] = byteData.getUint8(byteOffset++);
    }
    var nameDecoded = utf8.decode(nameDData);
    builder.name = nameDecoded;
    // field value
    var valueSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var valueDData = List<int>(valueSSize);
    for (var i = 0; i < valueSSize; i++) {
      valueDData[i] = byteData.getUint8(byteOffset++);
    }
    var valueDecoded = utf8.decode(valueDData);
    builder.value = valueDecoded;
    // field type
    builder.type = imc.PlanVariableEnumType(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field access
    builder.access = imc.PlanVariableEnumAccess(byteData.getUint8(byteOffset));
    byteOffset += 1;
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
    // field cmd
    byteData.setUint8(byteOffset, message.cmd.value);
    byteOffset += 1;
    // field op
    byteData.setUint8(byteOffset, message.op.value);
    byteOffset += 1;
    // field planId
    var planIdEncoded = utf8.encode(message.planId);
    var planIdSSize = planIdEncoded.length;
    byteData.setUint16(byteOffset, planIdSSize, imc.endian_ser);
    byteOffset += 2;
    planIdEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field params
    var paramsEncoded = utf8.encode(message.params);
    var paramsSSize = paramsEncoded.length;
    byteData.setUint16(byteOffset, paramsSSize, imc.endian_ser);
    byteOffset += 2;
    paramsEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field cmd
    builder.cmd = imc.PlanGenerationEnumCmd(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field op
    builder.op = imc.PlanGenerationEnumOp(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field planId
    var planIdSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var planIdDData = List<int>(planIdSSize);
    for (var i = 0; i < planIdSSize; i++) {
      planIdDData[i] = byteData.getUint8(byteOffset++);
    }
    var planIdDecoded = utf8.decode(planIdDData);
    builder.planId = planIdDecoded;
    // field params
    var paramsSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var paramsDData = List<int>(paramsSSize);
    for (var i = 0; i < paramsSSize; i++) {
      paramsDData[i] = byteData.getUint8(byteOffset++);
    }
    var paramsDecoded = utf8.decode(paramsDData);
    builder.params = paramsDecoded;
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
    // field groupName
    var groupNameEncoded = utf8.encode(message.groupName);
    var groupNameSSize = groupNameEncoded.length;
    byteData.setUint16(byteOffset, groupNameSSize, imc.endian_ser);
    byteOffset += 2;
    groupNameEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field op
    byteData.setUint8(byteOffset, message.op.value);
    byteOffset += 1;
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field height
    byteData.setFloat32(byteOffset, message.height, imc.endian_ser);
    byteOffset += 4;
    // field x
    byteData.setFloat32(byteOffset, message.x, imc.endian_ser);
    byteOffset += 4;
    // field y
    byteData.setFloat32(byteOffset, message.y, imc.endian_ser);
    byteOffset += 4;
    // field z
    byteData.setFloat32(byteOffset, message.z, imc.endian_ser);
    byteOffset += 4;
    // field phi
    byteData.setFloat32(byteOffset, message.phi, imc.endian_ser);
    byteOffset += 4;
    // field theta
    byteData.setFloat32(byteOffset, message.theta, imc.endian_ser);
    byteOffset += 4;
    // field psi
    byteData.setFloat32(byteOffset, message.psi, imc.endian_ser);
    byteOffset += 4;
    // field vx
    byteData.setFloat32(byteOffset, message.vx, imc.endian_ser);
    byteOffset += 4;
    // field vy
    byteData.setFloat32(byteOffset, message.vy, imc.endian_ser);
    byteOffset += 4;
    // field vz
    byteData.setFloat32(byteOffset, message.vz, imc.endian_ser);
    byteOffset += 4;
    // field p
    byteData.setFloat32(byteOffset, message.p, imc.endian_ser);
    byteOffset += 4;
    // field q
    byteData.setFloat32(byteOffset, message.q, imc.endian_ser);
    byteOffset += 4;
    // field r
    byteData.setFloat32(byteOffset, message.r, imc.endian_ser);
    byteOffset += 4;
    // field svx
    byteData.setFloat32(byteOffset, message.svx, imc.endian_ser);
    byteOffset += 4;
    // field svy
    byteData.setFloat32(byteOffset, message.svy, imc.endian_ser);
    byteOffset += 4;
    // field svz
    byteData.setFloat32(byteOffset, message.svz, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field groupName
    var groupNameSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var groupNameDData = List<int>(groupNameSSize);
    for (var i = 0; i < groupNameSSize; i++) {
      groupNameDData[i] = byteData.getUint8(byteOffset++);
    }
    var groupNameDecoded = utf8.decode(groupNameDData);
    builder.groupName = groupNameDecoded;
    // field op
    builder.op = imc.LeaderStateEnumOp(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field height
    builder.height = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field x
    builder.x = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field y
    builder.y = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field z
    builder.z = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field phi
    builder.phi = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field theta
    builder.theta = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field psi
    builder.psi = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field vx
    builder.vx = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field vy
    builder.vy = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field vz
    builder.vz = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field p
    builder.p = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field q
    builder.q = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field r
    builder.r = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field svx
    builder.svx = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field svy
    builder.svy = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field svz
    builder.svz = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field planId
    var planIdEncoded = utf8.encode(message.planId);
    var planIdSSize = planIdEncoded.length;
    byteData.setUint16(byteOffset, planIdSSize, imc.endian_ser);
    byteOffset += 2;
    planIdEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field type
    byteData.setUint8(byteOffset, message.type.value);
    byteOffset += 1;
    // field properties
    byteData.setUint8(byteOffset, message.properties.value);
    byteOffset += 1;
    // field durations
    var durationsEncoded = utf8.encode(message.durations);
    var durationsSSize = durationsEncoded.length;
    byteData.setUint16(byteOffset, durationsSSize, imc.endian_ser);
    byteOffset += 2;
    durationsEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field distances
    var distancesEncoded = utf8.encode(message.distances);
    var distancesSSize = distancesEncoded.length;
    byteData.setUint16(byteOffset, distancesSSize, imc.endian_ser);
    byteOffset += 2;
    distancesEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field actions
    var actionsEncoded = utf8.encode(message.actions);
    var actionsSSize = actionsEncoded.length;
    byteData.setUint16(byteOffset, actionsSSize, imc.endian_ser);
    byteOffset += 2;
    actionsEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field fuel
    var fuelEncoded = utf8.encode(message.fuel);
    var fuelSSize = fuelEncoded.length;
    byteData.setUint16(byteOffset, fuelSSize, imc.endian_ser);
    byteOffset += 2;
    fuelEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field planId
    var planIdSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var planIdDData = List<int>(planIdSSize);
    for (var i = 0; i < planIdSSize; i++) {
      planIdDData[i] = byteData.getUint8(byteOffset++);
    }
    var planIdDecoded = utf8.decode(planIdDData);
    builder.planId = planIdDecoded;
    // field type
    builder.type = imc.PlanStatisticsEnumType(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field properties
    builder.properties = imc.PlanStatisticsBitfieldProperties(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field durations
    var durationsSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var durationsDData = List<int>(durationsSSize);
    for (var i = 0; i < durationsSSize; i++) {
      durationsDData[i] = byteData.getUint8(byteOffset++);
    }
    var durationsDecoded = utf8.decode(durationsDData);
    builder.durations = durationsDecoded;
    // field distances
    var distancesSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var distancesDData = List<int>(distancesSSize);
    for (var i = 0; i < distancesSSize; i++) {
      distancesDData[i] = byteData.getUint8(byteOffset++);
    }
    var distancesDecoded = utf8.decode(distancesDData);
    builder.distances = distancesDecoded;
    // field actions
    var actionsSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var actionsDData = List<int>(actionsSSize);
    for (var i = 0; i < actionsSSize; i++) {
      actionsDData[i] = byteData.getUint8(byteOffset++);
    }
    var actionsDecoded = utf8.decode(actionsDData);
    builder.actions = actionsDecoded;
    // field fuel
    var fuelSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var fuelDData = List<int>(fuelSSize);
    for (var i = 0; i < fuelSSize; i++) {
      fuelDData[i] = byteData.getUint8(byteOffset++);
    }
    var fuelDecoded = utf8.decode(fuelDData);
    builder.fuel = fuelDecoded;
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
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field depth
    byteData.setFloat64(byteOffset, message.depth, imc.endian_ser);
    byteOffset += 8;
    // field roll
    byteData.setFloat64(byteOffset, message.roll, imc.endian_ser);
    byteOffset += 8;
    // field pitch
    byteData.setFloat64(byteOffset, message.pitch, imc.endian_ser);
    byteOffset += 8;
    // field yaw
    byteData.setFloat64(byteOffset, message.yaw, imc.endian_ser);
    byteOffset += 8;
    // field rcpTime
    byteData.setFloat64(byteOffset, message.rcpTime, imc.endian_ser);
    byteOffset += 8;
    // field sid
    var sidEncoded = utf8.encode(message.sid);
    var sidSSize = sidEncoded.length;
    byteData.setUint16(byteOffset, sidSSize, imc.endian_ser);
    byteOffset += 2;
    sidEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field sType
    byteData.setUint8(byteOffset, message.sType.value);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field depth
    builder.depth = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field roll
    builder.roll = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field pitch
    builder.pitch = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field yaw
    builder.yaw = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field rcpTime
    builder.rcpTime = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field sid
    var sidSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var sidDData = List<int>(sidSSize);
    for (var i = 0; i < sidSSize; i++) {
      sidDData[i] = byteData.getUint8(byteOffset++);
    }
    var sidDecoded = utf8.decode(sidDData);
    builder.sid = sidDecoded;
    // field sType
    builder.sType = imc.ReportedStateEnumSType(byteData.getUint8(byteOffset));
    byteOffset += 1;
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
    // field id
    var idEncoded = utf8.encode(message.id);
    var idSSize = idEncoded.length;
    byteData.setUint16(byteOffset, idSSize, imc.endian_ser);
    byteOffset += 2;
    idEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field sensorClass
    var sensorClassEncoded = utf8.encode(message.sensorClass);
    var sensorClassSSize = sensorClassEncoded.length;
    byteData.setUint16(byteOffset, sensorClassSSize, imc.endian_ser);
    byteOffset += 2;
    sensorClassEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field alt
    byteData.setFloat32(byteOffset, message.alt, imc.endian_ser);
    byteOffset += 4;
    // field heading
    byteData.setFloat32(byteOffset, message.heading, imc.endian_ser);
    byteOffset += 4;
    // field data
    var dataEncoded = utf8.encode(message.data);
    var dataSSize = dataEncoded.length;
    byteData.setUint16(byteOffset, dataSSize, imc.endian_ser);
    byteOffset += 2;
    dataEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field id
    var idSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var idDData = List<int>(idSSize);
    for (var i = 0; i < idSSize; i++) {
      idDData[i] = byteData.getUint8(byteOffset++);
    }
    var idDecoded = utf8.decode(idDData);
    builder.id = idDecoded;
    // field sensorClass
    var sensorClassSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var sensorClassDData = List<int>(sensorClassSSize);
    for (var i = 0; i < sensorClassSSize; i++) {
      sensorClassDData[i] = byteData.getUint8(byteOffset++);
    }
    var sensorClassDecoded = utf8.decode(sensorClassDData);
    builder.sensorClass = sensorClassDecoded;
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field alt
    builder.alt = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field heading
    builder.heading = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field data
    var dataSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var dataDData = List<int>(dataSSize);
    for (var i = 0; i < dataSSize; i++) {
      dataDData[i] = byteData.getUint8(byteOffset++);
    }
    var dataDecoded = utf8.decode(dataDData);
    builder.data = dataDecoded;
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
    // field id
    var idEncoded = utf8.encode(message.id);
    var idSSize = idEncoded.length;
    byteData.setUint16(byteOffset, idSSize, imc.endian_ser);
    byteOffset += 2;
    idEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field features
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field id
    var idSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var idDData = List<int>(idSSize);
    for (var i = 0; i < idSSize; i++) {
      idDData[i] = byteData.getUint8(byteOffset++);
    }
    var idDecoded = utf8.decode(idDData);
    builder.id = idDecoded;
    // field features
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
    // field id
    var idEncoded = utf8.encode(message.id);
    var idSSize = idEncoded.length;
    byteData.setUint16(byteOffset, idSSize, imc.endian_ser);
    byteOffset += 2;
    idEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field featureType
    byteData.setUint8(byteOffset, message.featureType.value);
    byteOffset += 1;
    // field rgbRed
    byteData.setUint8(byteOffset, message.rgbRed);
    byteOffset += 1;
    // field rgbGreen
    byteData.setUint8(byteOffset, message.rgbGreen);
    byteOffset += 1;
    // field rgbBlue
    byteData.setUint8(byteOffset, message.rgbBlue);
    byteOffset += 1;
    // field feature
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field id
    var idSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var idDData = List<int>(idSSize);
    for (var i = 0; i < idSSize; i++) {
      idDData[i] = byteData.getUint8(byteOffset++);
    }
    var idDecoded = utf8.decode(idDData);
    builder.id = idDecoded;
    // field featureType
    builder.featureType = imc.MapFeatureEnumFeatureType(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field rgbRed
    builder.rgbRed = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field rgbGreen
    builder.rgbGreen = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field rgbBlue
    builder.rgbBlue = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field feature
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
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field alt
    byteData.setFloat32(byteOffset, message.alt, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field alt
    builder.alt = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field type
    byteData.setUint8(byteOffset, message.type.value);
    byteOffset += 1;
    // field id
    var idEncoded = utf8.encode(message.id);
    var idSSize = idEncoded.length;
    byteData.setUint16(byteOffset, idSSize, imc.endian_ser);
    byteOffset += 2;
    idEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field arg
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field type
    builder.type = imc.CcuEventEnumType(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field id
    var idSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var idDData = List<int>(idSSize);
    for (var i = 0; i < idSSize; i++) {
      idDData[i] = byteData.getUint8(byteOffset++);
    }
    var idDecoded = utf8.decode(idDData);
    builder.id = idDecoded;
    // field arg
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
    // field localname
    var localnameEncoded = utf8.encode(message.localname);
    var localnameSSize = localnameEncoded.length;
    byteData.setUint16(byteOffset, localnameSSize, imc.endian_ser);
    byteOffset += 2;
    localnameEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field links
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field localname
    var localnameSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var localnameDData = List<int>(localnameSSize);
    for (var i = 0; i < localnameSSize; i++) {
      localnameDData[i] = byteData.getUint8(byteOffset++);
    }
    var localnameDecoded = utf8.decode(localnameDData);
    builder.localname = localnameDecoded;
    // field links
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
    // field timeline
    var timelineEncoded = utf8.encode(message.timeline);
    var timelineSSize = timelineEncoded.length;
    byteData.setUint16(byteOffset, timelineSSize, imc.endian_ser);
    byteOffset += 2;
    timelineEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field predicate
    var predicateEncoded = utf8.encode(message.predicate);
    var predicateSSize = predicateEncoded.length;
    byteData.setUint16(byteOffset, predicateSSize, imc.endian_ser);
    byteOffset += 2;
    predicateEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field attributes
    var attributesEncoded = utf8.encode(message.attributes);
    var attributesSSize = attributesEncoded.length;
    byteData.setUint16(byteOffset, attributesSSize, imc.endian_ser);
    byteOffset += 2;
    attributesEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field timeline
    var timelineSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var timelineDData = List<int>(timelineSSize);
    for (var i = 0; i < timelineSSize; i++) {
      timelineDData[i] = byteData.getUint8(byteOffset++);
    }
    var timelineDecoded = utf8.decode(timelineDData);
    builder.timeline = timelineDecoded;
    // field predicate
    var predicateSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var predicateDData = List<int>(predicateSSize);
    for (var i = 0; i < predicateSSize; i++) {
      predicateDData[i] = byteData.getUint8(byteOffset++);
    }
    var predicateDecoded = utf8.decode(predicateDData);
    builder.predicate = predicateDecoded;
    // field attributes
    var attributesSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var attributesDData = List<int>(attributesSSize);
    for (var i = 0; i < attributesSSize; i++) {
      attributesDData[i] = byteData.getUint8(byteOffset++);
    }
    var attributesDecoded = utf8.decode(attributesDData);
    builder.attributes = attributesDecoded;
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
    // field command
    byteData.setUint8(byteOffset, message.command.value);
    byteOffset += 1;
    // field goalId
    var goalIdEncoded = utf8.encode(message.goalId);
    var goalIdSSize = goalIdEncoded.length;
    byteData.setUint16(byteOffset, goalIdSSize, imc.endian_ser);
    byteOffset += 2;
    goalIdEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field goalXml
    var goalXmlEncoded = utf8.encode(message.goalXml);
    var goalXmlSSize = goalXmlEncoded.length;
    byteData.setUint16(byteOffset, goalXmlSSize, imc.endian_ser);
    byteOffset += 2;
    goalXmlEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field command
    builder.command = imc.TrexCommandEnumCommand(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field goalId
    var goalIdSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var goalIdDData = List<int>(goalIdSSize);
    for (var i = 0; i < goalIdSSize; i++) {
      goalIdDData[i] = byteData.getUint8(byteOffset++);
    }
    var goalIdDecoded = utf8.decode(goalIdDData);
    builder.goalId = goalIdDecoded;
    // field goalXml
    var goalXmlSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var goalXmlDData = List<int>(goalXmlSSize);
    for (var i = 0; i < goalXmlSSize; i++) {
      goalXmlDData[i] = byteData.getUint8(byteOffset++);
    }
    var goalXmlDecoded = utf8.decode(goalXmlDData);
    builder.goalXml = goalXmlDecoded;
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
    // field op
    byteData.setUint8(byteOffset, message.op.value);
    byteOffset += 1;
    // field goalId
    var goalIdEncoded = utf8.encode(message.goalId);
    var goalIdSSize = goalIdEncoded.length;
    byteData.setUint16(byteOffset, goalIdSSize, imc.endian_ser);
    byteOffset += 2;
    goalIdEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field token
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field op
    builder.op = imc.TrexOperationEnumOp(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field goalId
    var goalIdSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var goalIdDData = List<int>(goalIdSSize);
    for (var i = 0; i < goalIdSSize; i++) {
      goalIdDData[i] = byteData.getUint8(byteOffset++);
    }
    var goalIdDecoded = utf8.decode(goalIdDData);
    builder.goalId = goalIdDecoded;
    // field token
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
    // field name
    var nameEncoded = utf8.encode(message.name);
    var nameSSize = nameEncoded.length;
    byteData.setUint16(byteOffset, nameSSize, imc.endian_ser);
    byteOffset += 2;
    nameEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field attrType
    byteData.setUint8(byteOffset, message.attrType.value);
    byteOffset += 1;
    // field min
    var minEncoded = utf8.encode(message.min);
    var minSSize = minEncoded.length;
    byteData.setUint16(byteOffset, minSSize, imc.endian_ser);
    byteOffset += 2;
    minEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field max
    var maxEncoded = utf8.encode(message.max);
    var maxSSize = maxEncoded.length;
    byteData.setUint16(byteOffset, maxSSize, imc.endian_ser);
    byteOffset += 2;
    maxEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field name
    var nameSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var nameDData = List<int>(nameSSize);
    for (var i = 0; i < nameSSize; i++) {
      nameDData[i] = byteData.getUint8(byteOffset++);
    }
    var nameDecoded = utf8.decode(nameDData);
    builder.name = nameDecoded;
    // field attrType
    builder.attrType = imc.TrexAttributeEnumAttrType(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field min
    var minSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var minDData = List<int>(minSSize);
    for (var i = 0; i < minSSize; i++) {
      minDData[i] = byteData.getUint8(byteOffset++);
    }
    var minDecoded = utf8.decode(minDData);
    builder.min = minDecoded;
    // field max
    var maxSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var maxDData = List<int>(maxSSize);
    for (var i = 0; i < maxSSize; i++) {
      maxDData[i] = byteData.getUint8(byteOffset++);
    }
    var maxDecoded = utf8.decode(maxDData);
    builder.max = maxDecoded;
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
    // field timeline
    var timelineEncoded = utf8.encode(message.timeline);
    var timelineSSize = timelineEncoded.length;
    byteData.setUint16(byteOffset, timelineSSize, imc.endian_ser);
    byteOffset += 2;
    timelineEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field predicate
    var predicateEncoded = utf8.encode(message.predicate);
    var predicateSSize = predicateEncoded.length;
    byteData.setUint16(byteOffset, predicateSSize, imc.endian_ser);
    byteOffset += 2;
    predicateEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field attributes
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field timeline
    var timelineSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var timelineDData = List<int>(timelineSSize);
    for (var i = 0; i < timelineSSize; i++) {
      timelineDData[i] = byteData.getUint8(byteOffset++);
    }
    var timelineDecoded = utf8.decode(timelineDData);
    builder.timeline = timelineDecoded;
    // field predicate
    var predicateSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var predicateDData = List<int>(predicateSSize);
    for (var i = 0; i < predicateSSize; i++) {
      predicateDData[i] = byteData.getUint8(byteOffset++);
    }
    var predicateDecoded = utf8.decode(predicateDData);
    builder.predicate = predicateDecoded;
    // field attributes
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
    // field reactor
    var reactorEncoded = utf8.encode(message.reactor);
    var reactorSSize = reactorEncoded.length;
    byteData.setUint16(byteOffset, reactorSSize, imc.endian_ser);
    byteOffset += 2;
    reactorEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field tokens
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field reactor
    var reactorSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var reactorDData = List<int>(reactorSSize);
    for (var i = 0; i < reactorSSize; i++) {
      reactorDData[i] = byteData.getUint8(byteOffset++);
    }
    var reactorDecoded = utf8.decode(reactorDData);
    builder.reactor = reactorDecoded;
    // field tokens
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
    // field topic
    var topicEncoded = utf8.encode(message.topic);
    var topicSSize = topicEncoded.length;
    byteData.setUint16(byteOffset, topicSSize, imc.endian_ser);
    byteOffset += 2;
    topicEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field data
    var dataEncoded = utf8.encode(message.data);
    var dataSSize = dataEncoded.length;
    byteData.setUint16(byteOffset, dataSSize, imc.endian_ser);
    byteOffset += 2;
    dataEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field topic
    var topicSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var topicDData = List<int>(topicSSize);
    for (var i = 0; i < topicSSize; i++) {
      topicDData[i] = byteData.getUint8(byteOffset++);
    }
    var topicDecoded = utf8.decode(topicDData);
    builder.topic = topicDecoded;
    // field data
    var dataSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var dataDData = List<int>(dataSSize);
    for (var i = 0; i < dataSSize; i++) {
      dataDData[i] = byteData.getUint8(byteOffset++);
    }
    var dataDecoded = utf8.decode(dataDData);
    builder.data = dataDecoded;
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
    // field frameid
    byteData.setUint8(byteOffset, message.frameid);
    byteOffset += 1;
    // field data
    var dataSSize = message.data.length;
    byteData.setUint16(byteOffset, dataSSize, imc.endian_ser);
    byteOffset += 2;
    message.data.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field frameid
    builder.frameid = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field data
    var dataSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var dataDData = List<int>(dataSSize);
    for (var i = 0; i < dataSSize; i++) {
      dataDData[i] = byteData.getUint8(byteOffset++);
    }
    builder.data = dataDData;
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
    // field fps
    byteData.setUint8(byteOffset, message.fps);
    byteOffset += 1;
    // field quality
    byteData.setUint8(byteOffset, message.quality);
    byteOffset += 1;
    // field reps
    byteData.setUint8(byteOffset, message.reps);
    byteOffset += 1;
    // field tsize
    byteData.setUint8(byteOffset, message.tsize);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field fps
    builder.fps = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field quality
    builder.quality = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field reps
    builder.reps = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field tsize
    builder.tsize = byteData.getUint8(byteOffset);
    byteOffset += 1;
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
    // field lat
    byteData.setFloat32(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 4;
    // field lon
    byteData.setFloat32(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 4;
    // field depth
    byteData.setUint8(byteOffset, message.depth);
    byteOffset += 1;
    // field speed
    byteData.setFloat32(byteOffset, message.speed, imc.endian_ser);
    byteOffset += 4;
    // field psi
    byteData.setFloat32(byteOffset, message.psi, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field lat
    builder.lat = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field lon
    builder.lon = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field depth
    builder.depth = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field speed
    builder.speed = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field psi
    builder.psi = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field label
    var labelEncoded = utf8.encode(message.label);
    var labelSSize = labelEncoded.length;
    byteData.setUint16(byteOffset, labelSSize, imc.endian_ser);
    byteOffset += 2;
    labelEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field z
    byteData.setFloat32(byteOffset, message.z, imc.endian_ser);
    byteOffset += 4;
    // field zUnits
    byteData.setUint8(byteOffset, message.zUnits.value);
    byteOffset += 1;
    // field cog
    byteData.setFloat32(byteOffset, message.cog, imc.endian_ser);
    byteOffset += 4;
    // field sog
    byteData.setFloat32(byteOffset, message.sog, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field label
    var labelSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var labelDData = List<int>(labelSSize);
    for (var i = 0; i < labelSSize; i++) {
      labelDData[i] = byteData.getUint8(byteOffset++);
    }
    var labelDecoded = utf8.decode(labelDData);
    builder.label = labelDecoded;
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field z
    builder.z = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field zUnits
    builder.zUnits = imc.ZUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field cog
    builder.cog = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field sog
    builder.sog = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field name
    var nameEncoded = utf8.encode(message.name);
    var nameSSize = nameEncoded.length;
    byteData.setUint16(byteOffset, nameSSize, imc.endian_ser);
    byteOffset += 2;
    nameEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field value
    var valueEncoded = utf8.encode(message.value);
    var valueSSize = valueEncoded.length;
    byteData.setUint16(byteOffset, valueSSize, imc.endian_ser);
    byteOffset += 2;
    valueEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field name
    var nameSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var nameDData = List<int>(nameSSize);
    for (var i = 0; i < nameSSize; i++) {
      nameDData[i] = byteData.getUint8(byteOffset++);
    }
    var nameDecoded = utf8.decode(nameDData);
    builder.name = nameDecoded;
    // field value
    var valueSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var valueDData = List<int>(valueSSize);
    for (var i = 0; i < valueSSize; i++) {
      valueDData[i] = byteData.getUint8(byteOffset++);
    }
    var valueDecoded = utf8.decode(valueDData);
    builder.value = valueDecoded;
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
    // field name
    var nameEncoded = utf8.encode(message.name);
    var nameSSize = nameEncoded.length;
    byteData.setUint16(byteOffset, nameSSize, imc.endian_ser);
    byteOffset += 2;
    nameEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field params
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field name
    var nameSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var nameDData = List<int>(nameSSize);
    for (var i = 0; i < nameSSize; i++) {
      nameDData[i] = byteData.getUint8(byteOffset++);
    }
    var nameDecoded = utf8.decode(nameDData);
    builder.name = nameDecoded;
    // field params
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
    // field name
    var nameEncoded = utf8.encode(message.name);
    var nameSSize = nameEncoded.length;
    byteData.setUint16(byteOffset, nameSSize, imc.endian_ser);
    byteOffset += 2;
    nameEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field visibility
    var visibilityEncoded = utf8.encode(message.visibility);
    var visibilitySSize = visibilityEncoded.length;
    byteData.setUint16(byteOffset, visibilitySSize, imc.endian_ser);
    byteOffset += 2;
    visibilityEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field scope
    var scopeEncoded = utf8.encode(message.scope);
    var scopeSSize = scopeEncoded.length;
    byteData.setUint16(byteOffset, scopeSSize, imc.endian_ser);
    byteOffset += 2;
    scopeEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field name
    var nameSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var nameDData = List<int>(nameSSize);
    for (var i = 0; i < nameSSize; i++) {
      nameDData[i] = byteData.getUint8(byteOffset++);
    }
    var nameDecoded = utf8.decode(nameDData);
    builder.name = nameDecoded;
    // field visibility
    var visibilitySSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var visibilityDData = List<int>(visibilitySSize);
    for (var i = 0; i < visibilitySSize; i++) {
      visibilityDData[i] = byteData.getUint8(byteOffset++);
    }
    var visibilityDecoded = utf8.decode(visibilityDData);
    builder.visibility = visibilityDecoded;
    // field scope
    var scopeSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var scopeDData = List<int>(scopeSSize);
    for (var i = 0; i < scopeSSize; i++) {
      scopeDData[i] = byteData.getUint8(byteOffset++);
    }
    var scopeDecoded = utf8.decode(scopeDData);
    builder.scope = scopeDecoded;
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
    // field name
    var nameEncoded = utf8.encode(message.name);
    var nameSSize = nameEncoded.length;
    byteData.setUint16(byteOffset, nameSSize, imc.endian_ser);
    byteOffset += 2;
    nameEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field params
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field name
    var nameSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var nameDData = List<int>(nameSSize);
    for (var i = 0; i < nameSSize; i++) {
      nameDData[i] = byteData.getUint8(byteOffset++);
    }
    var nameDecoded = utf8.decode(nameDData);
    builder.name = nameDecoded;
    // field params
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
    // field name
    var nameEncoded = utf8.encode(message.name);
    var nameSSize = nameEncoded.length;
    byteData.setUint16(byteOffset, nameSSize, imc.endian_ser);
    byteOffset += 2;
    nameEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field name
    var nameSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var nameDData = List<int>(nameSSize);
    for (var i = 0; i < nameSSize; i++) {
      nameDData[i] = byteData.getUint8(byteOffset++);
    }
    var nameDecoded = utf8.decode(nameDData);
    builder.name = nameDecoded;
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
    // field timeout
    byteData.setUint32(byteOffset, message.timeout, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field timeout
    builder.timeout = byteData.getUint32(byteOffset, endianess);
    byteOffset += 4;
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
    // field sessid
    byteData.setUint32(byteOffset, message.sessid, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field sessid
    builder.sessid = byteData.getUint32(byteOffset, endianess);
    byteOffset += 4;
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
    // field sessid
    byteData.setUint32(byteOffset, message.sessid, imc.endian_ser);
    byteOffset += 4;
    // field messages
    var messagesEncoded = utf8.encode(message.messages);
    var messagesSSize = messagesEncoded.length;
    byteData.setUint16(byteOffset, messagesSSize, imc.endian_ser);
    byteOffset += 2;
    messagesEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field sessid
    builder.sessid = byteData.getUint32(byteOffset, endianess);
    byteOffset += 4;
    // field messages
    var messagesSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var messagesDData = List<int>(messagesSSize);
    for (var i = 0; i < messagesSSize; i++) {
      messagesDData[i] = byteData.getUint8(byteOffset++);
    }
    var messagesDecoded = utf8.decode(messagesDData);
    builder.messages = messagesDecoded;
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
    // field sessid
    byteData.setUint32(byteOffset, message.sessid, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field sessid
    builder.sessid = byteData.getUint32(byteOffset, endianess);
    byteOffset += 4;
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
    // field sessid
    byteData.setUint32(byteOffset, message.sessid, imc.endian_ser);
    byteOffset += 4;
    // field status
    byteData.setUint8(byteOffset, message.status.value);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field sessid
    builder.sessid = byteData.getUint32(byteOffset, endianess);
    byteOffset += 4;
    // field status
    builder.status = imc.SessionStatusEnumStatus(byteData.getUint8(byteOffset));
    byteOffset += 1;
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
    // field name
    var nameEncoded = utf8.encode(message.name);
    var nameSSize = nameEncoded.length;
    byteData.setUint16(byteOffset, nameSSize, imc.endian_ser);
    byteOffset += 2;
    nameEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field name
    var nameSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var nameDData = List<int>(nameSSize);
    for (var i = 0; i < nameSSize; i++) {
      nameDData[i] = byteData.getUint8(byteOffset++);
    }
    var nameDecoded = utf8.decode(nameDData);
    builder.name = nameDecoded;
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
    // field name
    var nameEncoded = utf8.encode(message.name);
    var nameSSize = nameEncoded.length;
    byteData.setUint16(byteOffset, nameSSize, imc.endian_ser);
    byteOffset += 2;
    nameEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field name
    var nameSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var nameDData = List<int>(nameSSize);
    for (var i = 0; i < nameSSize; i++) {
      nameDData[i] = byteData.getUint8(byteOffset++);
    }
    var nameDecoded = utf8.decode(nameDData);
    builder.name = nameDecoded;
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
    // field type
    byteData.setUint8(byteOffset, message.type.value);
    byteOffset += 1;
    // field error
    var errorEncoded = utf8.encode(message.error);
    var errorSSize = errorEncoded.length;
    byteData.setUint16(byteOffset, errorSSize, imc.endian_ser);
    byteOffset += 2;
    errorEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field type
    builder.type = imc.IoEventEnumType(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field error
    var errorSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var errorDData = List<int>(errorSSize);
    for (var i = 0; i < errorSSize; i++) {
      errorDData[i] = byteData.getUint8(byteOffset++);
    }
    var errorDecoded = utf8.decode(errorDData);
    builder.error = errorDecoded;
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
    // field seq
    byteData.setUint16(byteOffset, message.seq, imc.endian_ser);
    byteOffset += 2;
    // field sysDst
    var sysDstEncoded = utf8.encode(message.sysDst);
    var sysDstSSize = sysDstEncoded.length;
    byteData.setUint16(byteOffset, sysDstSSize, imc.endian_ser);
    byteOffset += 2;
    sysDstEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field flags
    byteData.setUint8(byteOffset, message.flags.value);
    byteOffset += 1;
    // field data
    var dataSSize = message.data.length;
    byteData.setUint16(byteOffset, dataSSize, imc.endian_ser);
    byteOffset += 2;
    message.data.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field seq
    builder.seq = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field sysDst
    var sysDstSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var sysDstDData = List<int>(sysDstSSize);
    for (var i = 0; i < sysDstSSize; i++) {
      sysDstDData[i] = byteData.getUint8(byteOffset++);
    }
    var sysDstDecoded = utf8.decode(sysDstDData);
    builder.sysDst = sysDstDecoded;
    // field flags
    builder.flags = imc.UamTxFrameBitfieldFlags(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field data
    var dataSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var dataDData = List<int>(dataSSize);
    for (var i = 0; i < dataSSize; i++) {
      dataDData[i] = byteData.getUint8(byteOffset++);
    }
    builder.data = dataDData;
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
    // field sysSrc
    var sysSrcEncoded = utf8.encode(message.sysSrc);
    var sysSrcSSize = sysSrcEncoded.length;
    byteData.setUint16(byteOffset, sysSrcSSize, imc.endian_ser);
    byteOffset += 2;
    sysSrcEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field sysDst
    var sysDstEncoded = utf8.encode(message.sysDst);
    var sysDstSSize = sysDstEncoded.length;
    byteData.setUint16(byteOffset, sysDstSSize, imc.endian_ser);
    byteOffset += 2;
    sysDstEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field flags
    byteData.setUint8(byteOffset, message.flags.value);
    byteOffset += 1;
    // field data
    var dataSSize = message.data.length;
    byteData.setUint16(byteOffset, dataSSize, imc.endian_ser);
    byteOffset += 2;
    message.data.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field sysSrc
    var sysSrcSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var sysSrcDData = List<int>(sysSrcSSize);
    for (var i = 0; i < sysSrcSSize; i++) {
      sysSrcDData[i] = byteData.getUint8(byteOffset++);
    }
    var sysSrcDecoded = utf8.decode(sysSrcDData);
    builder.sysSrc = sysSrcDecoded;
    // field sysDst
    var sysDstSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var sysDstDData = List<int>(sysDstSSize);
    for (var i = 0; i < sysDstSSize; i++) {
      sysDstDData[i] = byteData.getUint8(byteOffset++);
    }
    var sysDstDecoded = utf8.decode(sysDstDData);
    builder.sysDst = sysDstDecoded;
    // field flags
    builder.flags = imc.UamRxFrameBitfieldFlags(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field data
    var dataSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var dataDData = List<int>(dataSSize);
    for (var i = 0; i < dataSSize; i++) {
      dataDData[i] = byteData.getUint8(byteOffset++);
    }
    builder.data = dataDData;
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
    // field seq
    byteData.setUint16(byteOffset, message.seq, imc.endian_ser);
    byteOffset += 2;
    // field value
    byteData.setUint8(byteOffset, message.value.value);
    byteOffset += 1;
    // field error
    var errorEncoded = utf8.encode(message.error);
    var errorSSize = errorEncoded.length;
    byteData.setUint16(byteOffset, errorSSize, imc.endian_ser);
    byteOffset += 2;
    errorEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field seq
    builder.seq = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field value
    builder.value = imc.UamTxStatusEnumValue(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field error
    var errorSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var errorDData = List<int>(errorSSize);
    for (var i = 0; i < errorSSize; i++) {
      errorDData[i] = byteData.getUint8(byteOffset++);
    }
    var errorDecoded = utf8.decode(errorDData);
    builder.error = errorDecoded;
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
    // field seq
    byteData.setUint16(byteOffset, message.seq, imc.endian_ser);
    byteOffset += 2;
    // field sys
    var sysEncoded = utf8.encode(message.sys);
    var sysSSize = sysEncoded.length;
    byteData.setUint16(byteOffset, sysSSize, imc.endian_ser);
    byteOffset += 2;
    sysEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field value
    byteData.setFloat32(byteOffset, message.value, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field seq
    builder.seq = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field sys
    var sysSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var sysDData = List<int>(sysSSize);
    for (var i = 0; i < sysSSize; i++) {
      sysDData[i] = byteData.getUint8(byteOffset++);
    }
    var sysDecoded = utf8.decode(sysDData);
    builder.sys = sysDecoded;
    // field value
    builder.value = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field action
    byteData.setUint8(byteOffset, message.action.value);
    byteOffset += 1;
    // field lonGain
    byteData.setFloat32(byteOffset, message.lonGain, imc.endian_ser);
    byteOffset += 4;
    // field latGain
    byteData.setFloat32(byteOffset, message.latGain, imc.endian_ser);
    byteOffset += 4;
    // field bondThick
    byteData.setUint32(byteOffset, message.bondThick, imc.endian_ser);
    byteOffset += 4;
    // field leadGain
    byteData.setFloat32(byteOffset, message.leadGain, imc.endian_ser);
    byteOffset += 4;
    // field deconflGain
    byteData.setFloat32(byteOffset, message.deconflGain, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field action
    builder.action = imc.FormCtrlParamEnumAction(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field lonGain
    builder.lonGain = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field latGain
    builder.latGain = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field bondThick
    builder.bondThick = byteData.getUint32(byteOffset, endianess);
    byteOffset += 4;
    // field leadGain
    builder.leadGain = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field deconflGain
    builder.deconflGain = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field errMean
    byteData.setFloat32(byteOffset, message.errMean, imc.endian_ser);
    byteOffset += 4;
    // field distMinAbs
    byteData.setFloat32(byteOffset, message.distMinAbs, imc.endian_ser);
    byteOffset += 4;
    // field distMinMean
    byteData.setFloat32(byteOffset, message.distMinMean, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field errMean
    builder.errMean = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field distMinAbs
    builder.distMinAbs = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field distMinMean
    builder.distMinMean = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field action
    byteData.setUint8(byteOffset, message.action.value);
    byteOffset += 1;
    // field lonGain
    byteData.setFloat32(byteOffset, message.lonGain, imc.endian_ser);
    byteOffset += 4;
    // field latGain
    byteData.setFloat32(byteOffset, message.latGain, imc.endian_ser);
    byteOffset += 4;
    // field bondThick
    byteData.setFloat32(byteOffset, message.bondThick, imc.endian_ser);
    byteOffset += 4;
    // field leadGain
    byteData.setFloat32(byteOffset, message.leadGain, imc.endian_ser);
    byteOffset += 4;
    // field deconflGain
    byteData.setFloat32(byteOffset, message.deconflGain, imc.endian_ser);
    byteOffset += 4;
    // field accelSwitchGain
    byteData.setFloat32(byteOffset, message.accelSwitchGain, imc.endian_ser);
    byteOffset += 4;
    // field safeDist
    byteData.setFloat32(byteOffset, message.safeDist, imc.endian_ser);
    byteOffset += 4;
    // field deconflictOffset
    byteData.setFloat32(byteOffset, message.deconflictOffset, imc.endian_ser);
    byteOffset += 4;
    // field accelSafeMargin
    byteData.setFloat32(byteOffset, message.accelSafeMargin, imc.endian_ser);
    byteOffset += 4;
    // field accelLimX
    byteData.setFloat32(byteOffset, message.accelLimX, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field action
    builder.action = imc.FormationControlParamsEnumAction(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field lonGain
    builder.lonGain = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field latGain
    builder.latGain = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field bondThick
    builder.bondThick = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field leadGain
    builder.leadGain = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field deconflGain
    builder.deconflGain = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field accelSwitchGain
    builder.accelSwitchGain = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field safeDist
    builder.safeDist = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field deconflictOffset
    builder.deconflictOffset = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field accelSafeMargin
    builder.accelSafeMargin = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field accelLimX
    builder.accelLimX = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field type
    byteData.setUint8(byteOffset, message.type.value);
    byteOffset += 1;
    // field op
    byteData.setUint8(byteOffset, message.op.value);
    byteOffset += 1;
    // field errMean
    byteData.setFloat32(byteOffset, message.errMean, imc.endian_ser);
    byteOffset += 4;
    // field distMinAbs
    byteData.setFloat32(byteOffset, message.distMinAbs, imc.endian_ser);
    byteOffset += 4;
    // field distMinMean
    byteData.setFloat32(byteOffset, message.distMinMean, imc.endian_ser);
    byteOffset += 4;
    // field rollRateMean
    byteData.setFloat32(byteOffset, message.rollRateMean, imc.endian_ser);
    byteOffset += 4;
    // field time
    byteData.setFloat32(byteOffset, message.time, imc.endian_ser);
    byteOffset += 4;
    // field controlParams
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field type
    builder.type = imc.FormationEvaluationEnumType(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field op
    builder.op = imc.FormationEvaluationEnumOp(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field errMean
    builder.errMean = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field distMinAbs
    builder.distMinAbs = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field distMinMean
    builder.distMinMean = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field rollRateMean
    builder.rollRateMean = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field time
    builder.time = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field controlParams
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
    // field lat
    byteData.setFloat32(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 4;
    // field lon
    byteData.setFloat32(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 4;
    // field eta
    byteData.setUint32(byteOffset, message.eta, imc.endian_ser);
    byteOffset += 4;
    // field duration
    byteData.setUint16(byteOffset, message.duration, imc.endian_ser);
    byteOffset += 2;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field lat
    builder.lat = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field lon
    builder.lon = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field eta
    builder.eta = byteData.getUint32(byteOffset, endianess);
    byteOffset += 4;
    // field duration
    builder.duration = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
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
    // field planId
    byteData.setUint16(byteOffset, message.planId, imc.endian_ser);
    byteOffset += 2;
    // field waypoints
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field planId
    builder.planId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field waypoints
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
    // field type
    byteData.setUint8(byteOffset, message.type.value);
    byteOffset += 1;
    // field command
    byteData.setUint8(byteOffset, message.command.value);
    byteOffset += 1;
    // field settings
    var settingsEncoded = utf8.encode(message.settings);
    var settingsSSize = settingsEncoded.length;
    byteData.setUint16(byteOffset, settingsSSize, imc.endian_ser);
    byteOffset += 2;
    settingsEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field plan
    // field info
    var infoEncoded = utf8.encode(message.info);
    var infoSSize = infoEncoded.length;
    byteData.setUint16(byteOffset, infoSSize, imc.endian_ser);
    byteOffset += 2;
    infoEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field type
    builder.type = imc.SoiCommandEnumType(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field command
    builder.command = imc.SoiCommandEnumCommand(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field settings
    var settingsSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var settingsDData = List<int>(settingsSSize);
    for (var i = 0; i < settingsSSize; i++) {
      settingsDData[i] = byteData.getUint8(byteOffset++);
    }
    var settingsDecoded = utf8.decode(settingsDData);
    builder.settings = settingsDecoded;
    // field plan
    // field info
    var infoSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var infoDData = List<int>(infoSSize);
    for (var i = 0; i < infoSSize; i++) {
      infoDData[i] = byteData.getUint8(byteOffset++);
    }
    var infoDecoded = utf8.decode(infoDData);
    builder.info = infoDecoded;
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
    // field state
    byteData.setUint8(byteOffset, message.state.value);
    byteOffset += 1;
    // field planId
    byteData.setUint16(byteOffset, message.planId, imc.endian_ser);
    byteOffset += 2;
    // field wptId
    byteData.setUint8(byteOffset, message.wptId);
    byteOffset += 1;
    // field settingsChk
    byteData.setUint16(byteOffset, message.settingsChk, imc.endian_ser);
    byteOffset += 2;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field state
    builder.state = imc.SoiStateEnumState(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field planId
    builder.planId = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field wptId
    builder.wptId = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field settingsChk
    builder.settingsChk = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
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
    // field uid
    byteData.setUint8(byteOffset, message.uid);
    byteOffset += 1;
    // field fragNumber
    byteData.setUint8(byteOffset, message.fragNumber);
    byteOffset += 1;
    // field numFrags
    byteData.setUint8(byteOffset, message.numFrags);
    byteOffset += 1;
    // field data
    var dataSSize = message.data.length;
    byteData.setUint16(byteOffset, dataSSize, imc.endian_ser);
    byteOffset += 2;
    message.data.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field uid
    builder.uid = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field fragNumber
    builder.fragNumber = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field numFrags
    builder.numFrags = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field data
    var dataSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var dataDData = List<int>(dataSSize);
    for (var i = 0; i < dataSSize; i++) {
      dataDData[i] = byteData.getUint8(byteOffset++);
    }
    builder.data = dataDData;
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
    // field contentType
    var contentTypeEncoded = utf8.encode(message.contentType);
    var contentTypeSSize = contentTypeEncoded.length;
    byteData.setUint16(byteOffset, contentTypeSSize, imc.endian_ser);
    byteOffset += 2;
    contentTypeEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field content
    var contentSSize = message.content.length;
    byteData.setUint16(byteOffset, contentSSize, imc.endian_ser);
    byteOffset += 2;
    message.content.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field contentType
    var contentTypeSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var contentTypeDData = List<int>(contentTypeSSize);
    for (var i = 0; i < contentTypeSSize; i++) {
      contentTypeDData[i] = byteData.getUint8(byteOffset++);
    }
    var contentTypeDecoded = utf8.decode(contentTypeDData);
    builder.contentType = contentTypeDecoded;
    // field content
    var contentSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var contentDData = List<int>(contentSSize);
    for (var i = 0; i < contentSSize; i++) {
      contentDData[i] = byteData.getUint8(byteOffset++);
    }
    builder.content = contentDData;
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
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

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
    // field target
    byteData.setUint16(byteOffset, message.target, imc.endian_ser);
    byteOffset += 2;
    // field bearing
    byteData.setFloat32(byteOffset, message.bearing, imc.endian_ser);
    byteOffset += 4;
    // field elevation
    byteData.setFloat32(byteOffset, message.elevation, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field target
    builder.target = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field bearing
    builder.bearing = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field elevation
    builder.elevation = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field target
    byteData.setUint16(byteOffset, message.target, imc.endian_ser);
    byteOffset += 2;
    // field x
    byteData.setFloat32(byteOffset, message.x, imc.endian_ser);
    byteOffset += 4;
    // field y
    byteData.setFloat32(byteOffset, message.y, imc.endian_ser);
    byteOffset += 4;
    // field z
    byteData.setFloat32(byteOffset, message.z, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field target
    builder.target = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field x
    builder.x = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field y
    builder.y = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field z
    builder.z = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field target
    byteData.setUint16(byteOffset, message.target, imc.endian_ser);
    byteOffset += 2;
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field zUnits
    byteData.setUint8(byteOffset, message.zUnits.value);
    byteOffset += 1;
    // field z
    byteData.setFloat32(byteOffset, message.z, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field target
    builder.target = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field zUnits
    builder.zUnits = imc.ZUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field z
    builder.z = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field locale
    var localeEncoded = utf8.encode(message.locale);
    var localeSSize = localeEncoded.length;
    byteData.setUint16(byteOffset, localeSSize, imc.endian_ser);
    byteOffset += 2;
    localeEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field config
    var configSSize = message.config.length;
    byteData.setUint16(byteOffset, configSSize, imc.endian_ser);
    byteOffset += 2;
    message.config.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field locale
    var localeSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var localeDData = List<int>(localeSSize);
    for (var i = 0; i < localeSSize; i++) {
      localeDData[i] = byteData.getUint8(byteOffset++);
    }
    var localeDecoded = utf8.decode(localeDData);
    builder.locale = localeDecoded;
    // field config
    var configSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var configDData = List<int>(configSSize);
    for (var i = 0; i < configSSize; i++) {
      configDData[i] = byteData.getUint8(byteOffset++);
    }
    builder.config = configDData;
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
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

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
    // field camId
    byteData.setUint8(byteOffset, message.camId);
    byteOffset += 1;
    // field x
    byteData.setUint16(byteOffset, message.x, imc.endian_ser);
    byteOffset += 2;
    // field y
    byteData.setUint16(byteOffset, message.y, imc.endian_ser);
    byteOffset += 2;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field camId
    builder.camId = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field x
    builder.x = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field y
    builder.y = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
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
    // field camId
    byteData.setUint8(byteOffset, message.camId);
    byteOffset += 1;
    // field x
    byteData.setUint16(byteOffset, message.x, imc.endian_ser);
    byteOffset += 2;
    // field y
    byteData.setUint16(byteOffset, message.y, imc.endian_ser);
    byteOffset += 2;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field camId
    builder.camId = byteData.getUint8(byteOffset);
    byteOffset += 1;
    // field x
    builder.x = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    // field y
    builder.y = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
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
    // field tracking
    byteData.setUint8(byteOffset, message.tracking.value);
    byteOffset += 1;
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field x
    byteData.setFloat32(byteOffset, message.x, imc.endian_ser);
    byteOffset += 4;
    // field y
    byteData.setFloat32(byteOffset, message.y, imc.endian_ser);
    byteOffset += 4;
    // field z
    byteData.setFloat32(byteOffset, message.z, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field tracking
    builder.tracking = imc.BooleanEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field x
    builder.x = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field y
    builder.y = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field z
    builder.z = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field target
    var targetEncoded = utf8.encode(message.target);
    var targetSSize = targetEncoded.length;
    byteData.setUint16(byteOffset, targetSSize, imc.endian_ser);
    byteOffset += 2;
    targetEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field lbearing
    byteData.setFloat32(byteOffset, message.lbearing, imc.endian_ser);
    byteOffset += 4;
    // field lelevation
    byteData.setFloat32(byteOffset, message.lelevation, imc.endian_ser);
    byteOffset += 4;
    // field bearing
    byteData.setFloat32(byteOffset, message.bearing, imc.endian_ser);
    byteOffset += 4;
    // field elevation
    byteData.setFloat32(byteOffset, message.elevation, imc.endian_ser);
    byteOffset += 4;
    // field phi
    byteData.setFloat32(byteOffset, message.phi, imc.endian_ser);
    byteOffset += 4;
    // field theta
    byteData.setFloat32(byteOffset, message.theta, imc.endian_ser);
    byteOffset += 4;
    // field psi
    byteData.setFloat32(byteOffset, message.psi, imc.endian_ser);
    byteOffset += 4;
    // field accuracy
    byteData.setFloat32(byteOffset, message.accuracy, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field target
    var targetSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var targetDData = List<int>(targetSSize);
    for (var i = 0; i < targetSSize; i++) {
      targetDData[i] = byteData.getUint8(byteOffset++);
    }
    var targetDecoded = utf8.decode(targetDData);
    builder.target = targetDecoded;
    // field lbearing
    builder.lbearing = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field lelevation
    builder.lelevation = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field bearing
    builder.bearing = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field elevation
    builder.elevation = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field phi
    builder.phi = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field theta
    builder.theta = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field psi
    builder.psi = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field accuracy
    builder.accuracy = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field target
    var targetEncoded = utf8.encode(message.target);
    var targetSSize = targetEncoded.length;
    byteData.setUint16(byteOffset, targetSSize, imc.endian_ser);
    byteOffset += 2;
    targetEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field x
    byteData.setFloat32(byteOffset, message.x, imc.endian_ser);
    byteOffset += 4;
    // field y
    byteData.setFloat32(byteOffset, message.y, imc.endian_ser);
    byteOffset += 4;
    // field z
    byteData.setFloat32(byteOffset, message.z, imc.endian_ser);
    byteOffset += 4;
    // field n
    byteData.setFloat32(byteOffset, message.n, imc.endian_ser);
    byteOffset += 4;
    // field e
    byteData.setFloat32(byteOffset, message.e, imc.endian_ser);
    byteOffset += 4;
    // field d
    byteData.setFloat32(byteOffset, message.d, imc.endian_ser);
    byteOffset += 4;
    // field phi
    byteData.setFloat32(byteOffset, message.phi, imc.endian_ser);
    byteOffset += 4;
    // field theta
    byteData.setFloat32(byteOffset, message.theta, imc.endian_ser);
    byteOffset += 4;
    // field psi
    byteData.setFloat32(byteOffset, message.psi, imc.endian_ser);
    byteOffset += 4;
    // field accuracy
    byteData.setFloat32(byteOffset, message.accuracy, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field target
    var targetSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var targetDData = List<int>(targetSSize);
    for (var i = 0; i < targetSSize; i++) {
      targetDData[i] = byteData.getUint8(byteOffset++);
    }
    var targetDecoded = utf8.decode(targetDData);
    builder.target = targetDecoded;
    // field x
    builder.x = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field y
    builder.y = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field z
    builder.z = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field n
    builder.n = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field e
    builder.e = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field d
    builder.d = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field phi
    builder.phi = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field theta
    builder.theta = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field psi
    builder.psi = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field accuracy
    builder.accuracy = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field target
    var targetEncoded = utf8.encode(message.target);
    var targetSSize = targetEncoded.length;
    byteData.setUint16(byteOffset, targetSSize, imc.endian_ser);
    byteOffset += 2;
    targetEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field zUnits
    byteData.setUint8(byteOffset, message.zUnits.value);
    byteOffset += 1;
    // field z
    byteData.setFloat32(byteOffset, message.z, imc.endian_ser);
    byteOffset += 4;
    // field accuracy
    byteData.setFloat32(byteOffset, message.accuracy, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field target
    var targetSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var targetDData = List<int>(targetSSize);
    for (var i = 0; i < targetSSize; i++) {
      targetDData[i] = byteData.getUint8(byteOffset++);
    }
    var targetDecoded = utf8.decode(targetDData);
    builder.target = targetDecoded;
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field zUnits
    builder.zUnits = imc.ZUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field z
    builder.z = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field accuracy
    builder.accuracy = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field name
    var nameEncoded = utf8.encode(message.name);
    var nameSSize = nameEncoded.length;
    byteData.setUint16(byteOffset, nameSSize, imc.endian_ser);
    byteOffset += 2;
    nameEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // field lat
    byteData.setFloat64(byteOffset, message.lat, imc.endian_ser);
    byteOffset += 8;
    // field lon
    byteData.setFloat64(byteOffset, message.lon, imc.endian_ser);
    byteOffset += 8;
    // field z
    byteData.setFloat32(byteOffset, message.z, imc.endian_ser);
    byteOffset += 4;
    // field zUnits
    byteData.setUint8(byteOffset, message.zUnits.value);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field name
    var nameSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var nameDData = List<int>(nameSSize);
    for (var i = 0; i < nameSSize; i++) {
      nameDData[i] = byteData.getUint8(byteOffset++);
    }
    var nameDecoded = utf8.decode(nameDData);
    builder.name = nameDecoded;
    // field lat
    builder.lat = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field lon
    builder.lon = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field z
    builder.z = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field zUnits
    builder.zUnits = imc.ZUnitsEnum(byteData.getUint8(byteOffset));
    byteOffset += 1;
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
    // field op
    byteData.setUint8(byteOffset, message.op.value);
    byteOffset += 1;
    // field modems
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field op
    builder.op = imc.UsblConfigEnumOp(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field modems
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
    // field value
    byteData.setFloat32(byteOffset, message.value, imc.endian_ser);
    byteOffset += 4;
    // field type
    byteData.setUint8(byteOffset, message.type.value);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field type
    builder.type = imc.DissolvedOrganicMatterEnumType(byteData.getUint8(byteOffset));
    byteOffset += 1;
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
    // field value
    byteData.setFloat32(byteOffset, message.value, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field timestampLastService
    byteData.setFloat64(byteOffset, message.timestampLastService, imc.endian_ser);
    byteOffset += 8;
    // field timeNextService
    byteData.setFloat32(byteOffset, message.timeNextService, imc.endian_ser);
    byteOffset += 4;
    // field timeMotorNextService
    byteData.setFloat32(byteOffset, message.timeMotorNextService, imc.endian_ser);
    byteOffset += 4;
    // field timeIdleGround
    byteData.setFloat32(byteOffset, message.timeIdleGround, imc.endian_ser);
    byteOffset += 4;
    // field timeIdleAir
    byteData.setFloat32(byteOffset, message.timeIdleAir, imc.endian_ser);
    byteOffset += 4;
    // field timeIdleWater
    byteData.setFloat32(byteOffset, message.timeIdleWater, imc.endian_ser);
    byteOffset += 4;
    // field timeIdleUnderwater
    byteData.setFloat32(byteOffset, message.timeIdleUnderwater, imc.endian_ser);
    byteOffset += 4;
    // field timeIdleUnknown
    byteData.setFloat32(byteOffset, message.timeIdleUnknown, imc.endian_ser);
    byteOffset += 4;
    // field timeMotorGround
    byteData.setFloat32(byteOffset, message.timeMotorGround, imc.endian_ser);
    byteOffset += 4;
    // field timeMotorAir
    byteData.setFloat32(byteOffset, message.timeMotorAir, imc.endian_ser);
    byteOffset += 4;
    // field timeMotorWater
    byteData.setFloat32(byteOffset, message.timeMotorWater, imc.endian_ser);
    byteOffset += 4;
    // field timeMotorUnderwater
    byteData.setFloat32(byteOffset, message.timeMotorUnderwater, imc.endian_ser);
    byteOffset += 4;
    // field timeMotorUnknown
    byteData.setFloat32(byteOffset, message.timeMotorUnknown, imc.endian_ser);
    byteOffset += 4;
    // field rpmMin
    byteData.setInt16(byteOffset, message.rpmMin, imc.endian_ser);
    byteOffset += 2;
    // field rpmMax
    byteData.setInt16(byteOffset, message.rpmMax, imc.endian_ser);
    byteOffset += 2;
    // field depthMax
    byteData.setFloat32(byteOffset, message.depthMax, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field timestampLastService
    builder.timestampLastService = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // field timeNextService
    builder.timeNextService = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field timeMotorNextService
    builder.timeMotorNextService = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field timeIdleGround
    builder.timeIdleGround = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field timeIdleAir
    builder.timeIdleAir = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field timeIdleWater
    builder.timeIdleWater = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field timeIdleUnderwater
    builder.timeIdleUnderwater = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field timeIdleUnknown
    builder.timeIdleUnknown = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field timeMotorGround
    builder.timeMotorGround = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field timeMotorAir
    builder.timeMotorAir = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field timeMotorWater
    builder.timeMotorWater = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field timeMotorUnderwater
    builder.timeMotorUnderwater = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field timeMotorUnknown
    builder.timeMotorUnknown = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field rpmMin
    builder.rpmMin = byteData.getInt16(byteOffset, endianess);
    byteOffset += 2;
    // field rpmMax
    builder.rpmMax = byteData.getInt16(byteOffset, endianess);
    byteOffset += 2;
    // field depthMax
    builder.depthMax = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field severity
    byteData.setUint8(byteOffset, message.severity.value);
    byteOffset += 1;
    // field text
    var textEncoded = utf8.encode(message.text);
    var textSSize = textEncoded.length;
    byteData.setUint16(byteOffset, textSSize, imc.endian_ser);
    byteOffset += 2;
    textEncoded.forEach((b) => byteData.setUint8(byteOffset++, b));
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field severity
    builder.severity = imc.ApmStatusEnumSeverity(byteData.getUint8(byteOffset));
    byteOffset += 1;
    // field text
    var textSSize = byteData.getUint16(byteOffset, endianess);
    byteOffset += 2;
    var textDData = List<int>(textSSize);
    for (var i = 0; i < textSSize; i++) {
      textDData[i] = byteData.getUint8(byteOffset++);
    }
    var textDecoded = utf8.decode(textDData);
    builder.text = textDecoded;
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
    // field channel
    byteData.setInt8(byteOffset, message.channel);
    byteOffset += 1;
    // field value
    byteData.setInt32(byteOffset, message.value, imc.endian_ser);
    byteOffset += 4;
    // field gain
    byteData.setUint8(byteOffset, message.gain.value);
    byteOffset += 1;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field channel
    builder.channel = byteData.getInt8(byteOffset);
    byteOffset += 1;
    // field value
    builder.value = byteData.getInt32(byteOffset, endianess);
    byteOffset += 4;
    // field gain
    builder.gain = imc.SadcReadingsEnumGain(byteData.getUint8(byteOffset));
    byteOffset += 1;
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
    // field ch01
    byteData.setFloat32(byteOffset, message.ch01, imc.endian_ser);
    byteOffset += 4;
    // field ch02
    byteData.setFloat32(byteOffset, message.ch02, imc.endian_ser);
    byteOffset += 4;
    // field ch03
    byteData.setFloat32(byteOffset, message.ch03, imc.endian_ser);
    byteOffset += 4;
    // field ch04
    byteData.setFloat32(byteOffset, message.ch04, imc.endian_ser);
    byteOffset += 4;
    // field ch05
    byteData.setFloat32(byteOffset, message.ch05, imc.endian_ser);
    byteOffset += 4;
    // field ch06
    byteData.setFloat32(byteOffset, message.ch06, imc.endian_ser);
    byteOffset += 4;
    // field ch07
    byteData.setFloat32(byteOffset, message.ch07, imc.endian_ser);
    byteOffset += 4;
    // field ch08
    byteData.setFloat32(byteOffset, message.ch08, imc.endian_ser);
    byteOffset += 4;
    // field ch09
    byteData.setFloat32(byteOffset, message.ch09, imc.endian_ser);
    byteOffset += 4;
    // field ch10
    byteData.setFloat32(byteOffset, message.ch10, imc.endian_ser);
    byteOffset += 4;
    // field ch11
    byteData.setFloat32(byteOffset, message.ch11, imc.endian_ser);
    byteOffset += 4;
    // field ch12
    byteData.setFloat32(byteOffset, message.ch12, imc.endian_ser);
    byteOffset += 4;
    // field ch13
    byteData.setFloat32(byteOffset, message.ch13, imc.endian_ser);
    byteOffset += 4;
    // field ch14
    byteData.setFloat32(byteOffset, message.ch14, imc.endian_ser);
    byteOffset += 4;
    // field ch15
    byteData.setFloat32(byteOffset, message.ch15, imc.endian_ser);
    byteOffset += 4;
    // field ch16
    byteData.setFloat32(byteOffset, message.ch16, imc.endian_ser);
    byteOffset += 4;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field ch01
    builder.ch01 = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field ch02
    builder.ch02 = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field ch03
    builder.ch03 = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field ch04
    builder.ch04 = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field ch05
    builder.ch05 = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field ch06
    builder.ch06 = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field ch07
    builder.ch07 = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field ch08
    builder.ch08 = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field ch09
    builder.ch09 = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field ch10
    builder.ch10 = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field ch11
    builder.ch11 = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field ch12
    builder.ch12 = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field ch13
    builder.ch13 = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field ch14
    builder.ch14 = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field ch15
    builder.ch15 = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
    // field ch16
    builder.ch16 = byteData.getFloat32(byteOffset, endianess);
    byteOffset += 4;
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
    // field value
    byteData.setFloat64(byteOffset, message.value, imc.endian_ser);
    byteOffset += 8;
    // End payload

    var payloadSize = byteOffset - headerSize;
    imc.writePayloadSize(byteData, payloadSize);
    imc.calcAndAddFooter(byteData, 0, headerSize + payloadSize);
    byteOffset += 2;
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

    var calcCrc = imc.calcCrc(byteData, offset, imc.header_size + payloadSize);
    var readCrc = imc.getCrcFooter(byteData, offset + imc.header_size + payloadSize, endianess);
    if (calcCrc != readCrc)
      return null;

    // Payload
    // field value
    builder.value = byteData.getFloat64(byteOffset, endianess);
    byteOffset += 8;
    // End payload
    
    byteOffset = offset + imc.header_size + payloadSize;
    return builder.build();
  }
}
