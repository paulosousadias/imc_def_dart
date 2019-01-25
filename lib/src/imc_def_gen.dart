// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// IMC Code Generator
// **************************************************************************


import 'package:built_value/built_value.dart';
import 'package:imc_def/imc_def_base.dart';

part 'imc_def_e.dart';
part 'imc_def_el.dart';
part 'imc_def_m.dart';
part 'imc_def_i.dart';

const messagesToIds = {
  'EntityState': 1,
  'QueryEntityState': 2,
  'EntityInfo': 3,
  'QueryEntityInfo': 4,
  'EntityList': 5,
  'CpuUsage': 7,
  'TransportBindings': 8,
  'RestartSystem': 9,
  'DevCalibrationControl': 12,
  'DevCalibrationState': 13,
  'EntityActivationState': 14,
  'QueryEntityActivationState': 15,
  'VehicleOperationalLimits': 16,
  'MsgList': 20,
  'SimulatedState': 50,
  'LeakSimulation': 51,
  'UASimulation': 52,
  'DynamicsSimParam': 53,
  'StorageUsage': 100,
  'CacheControl': 101,
  'LoggingControl': 102,
  'LogBookEntry': 103,
  'LogBookControl': 104,
  'ReplayControl': 105,
  'ClockControl': 106,
  'HistoricCTD': 107,
  'HistoricTelemetry': 108,
  'HistoricSonarData': 109,
  'HistoricEvent': 110,
  'VerticalProfile': 111,
  'ProfileSample': 112,
  'Heartbeat': 150,
  'Announce': 151,
  'AnnounceService': 152,
  'RSSI': 153,
  'VSWR': 154,
  'LinkLevel': 155,
  'Sms': 156,
  'SmsTx': 157,
  'SmsRx': 158,
  'SmsState': 159,
  'TextMessage': 160,
  'IridiumMsgRx': 170,
  'IridiumMsgTx': 171,
  'IridiumTxStatus': 172,
  'GroupMembershipState': 180,
  'SystemGroup': 181,
  'LinkLatency': 182,
  'ExtendedRSSI': 183,
  'HistoricData': 184,
  'CompressedHistory': 185,
  'HistoricSample': 186,
  'HistoricDataQuery': 187,
  'RemoteCommand': 188,
  'CommSystemsQuery': 189,
  'TelemetryMsg': 190,
  'LblRange': 200,
  'LblBeacon': 202,
  'LblConfig': 203,
  'AcousticMessage': 206,
  'AcousticOperation': 211,
  'AcousticSystemsQuery': 212,
  'AcousticSystems': 213,
  'AcousticLink': 214,
  'Rpm': 250,
  'Voltage': 251,
  'Current': 252,
  'GpsFix': 253,
  'EulerAngles': 254,
  'EulerAnglesDelta': 255,
  'AngularVelocity': 256,
  'Acceleration': 257,
  'MagneticField': 258,
  'GroundVelocity': 259,
  'WaterVelocity': 260,
  'VelocityDelta': 261,
  'Distance': 262,
  'Temperature': 263,
  'Pressure': 264,
  'Depth': 265,
  'DepthOffset': 266,
  'SoundSpeed': 267,
  'WaterDensity': 268,
  'Conductivity': 269,
  'Salinity': 270,
  'WindSpeed': 271,
  'RelativeHumidity': 272,
  'DevDataText': 273,
  'DevDataBinary': 274,
  'Force': 275,
  'SonarData': 276,
  'Pulse': 277,
  'PulseDetectionControl': 278,
  'FuelLevel': 279,
  'GpsNavData': 280,
  'ServoPosition': 281,
  'DeviceState': 282,
  'BeamConfig': 283,
  'DataSanity': 284,
  'RhodamineDye': 285,
  'CrudeOil': 286,
  'FineOil': 287,
  'Turbidity': 288,
  'Chlorophyll': 289,
  'Fluorescein': 290,
  'Phycocyanin': 291,
  'Phycoerythrin': 292,
  'GpsFixRtk': 293,
  'ExternalNavData': 294,
  'DissolvedOxygen': 295,
  'AirSaturation': 296,
  'Throttle': 297,
  'PH': 298,
  'Redox': 299,
  'CameraZoom': 300,
  'SetThrusterActuation': 301,
  'SetServoPosition': 302,
  'SetControlSurfaceDeflection': 303,
  'RemoteActionsRequest': 304,
  'RemoteActions': 305,
  'ButtonEvent': 306,
  'LcdControl': 307,
  'PowerOperation': 308,
  'PowerChannelControl': 309,
  'QueryPowerChannelState': 310,
  'PowerChannelState': 311,
  'LedBrightness': 312,
  'QueryLedBrightness': 313,
  'SetLedBrightness': 314,
  'SetPWM': 315,
  'PWM': 316,
  'EstimatedState': 350,
  'EstimatedStreamVelocity': 351,
  'IndicatedSpeed': 352,
  'TrueSpeed': 353,
  'NavigationUncertainty': 354,
  'NavigationData': 355,
  'GpsFixRejection': 356,
  'LblRangeAcceptance': 357,
  'DvlRejection': 358,
  'LblEstimate': 360,
  'AlignmentState': 361,
  'GroupStreamVelocity': 362,
  'Airflow': 363,
  'DesiredHeading': 400,
  'DesiredZ': 401,
  'DesiredSpeed': 402,
  'DesiredRoll': 403,
  'DesiredPitch': 404,
  'DesiredVerticalRate': 405,
  'DesiredPath': 406,
  'DesiredControl': 407,
  'DesiredHeadingRate': 408,
  'DesiredVelocity': 409,
  'PathControlState': 410,
  'AllocatedControlTorques': 411,
  'ControlParcel': 412,
  'Brake': 413,
  'DesiredLinearState': 414,
  'DesiredThrottle': 415,
  'Goto': 450,
  'PopUp': 451,
  'Teleoperation': 452,
  'Loiter': 453,
  'IdleManeuver': 454,
  'LowLevelControl': 455,
  'Rows': 456,
  'FollowPath': 457,
  'PathPoint': 458,
  'YoYo': 459,
  'TeleoperationDone': 460,
  'StationKeeping': 461,
  'Elevator': 462,
  'FollowTrajectory': 463,
  'TrajectoryPoint': 464,
  'CustomManeuver': 465,
  'VehicleFormation': 466,
  'VehicleFormationParticipant': 467,
  'StopManeuver': 468,
  'RegisterManeuver': 469,
  'ManeuverControlState': 470,
  'FollowSystem': 471,
  'CommsRelay': 472,
  'CoverArea': 473,
  'PolygonVertex': 474,
  'CompassCalibration': 475,
  'FormationParameters': 476,
  'FormationPlanExecution': 477,
  'FollowReference': 478,
  'Reference': 479,
  'FollowRefState': 480,
  'FormationMonitor': 481,
  'RelativeState': 482,
  'Dislodge': 483,
  'Formation': 484,
  'Launch': 485,
  'Drop': 486,
  'ScheduledGoto': 487,
  'RowsCoverage': 488,
  'Sample': 489,
  'ImageTracking': 490,
  'Takeoff': 491,
  'Land': 492,
  'AutonomousSection': 493,
  'FollowPoint': 494,
  'Alignment': 495,
  'StationKeepingExtended': 496,
  'Magnetometer': 499,
  'VehicleState': 500,
  'VehicleCommand': 501,
  'MonitorEntityState': 502,
  'EntityMonitoringState': 503,
  'OperationalLimits': 504,
  'GetOperationalLimits': 505,
  'Calibration': 506,
  'ControlLoops': 507,
  'VehicleMedium': 508,
  'Collision': 509,
  'FormState': 510,
  'AutopilotMode': 511,
  'FormationState': 512,
  'ReportControl': 513,
  'StateReport': 514,
  'TransmissionRequest': 515,
  'TransmissionStatus': 516,
  'SmsRequest': 517,
  'SmsStatus': 518,
  'VtolState': 519,
  'ArmingState': 520,
  'Abort': 550,
  'PlanSpecification': 551,
  'PlanManeuver': 552,
  'PlanTransition': 553,
  'EmergencyControl': 554,
  'EmergencyControlState': 555,
  'PlanDB': 556,
  'PlanDBState': 557,
  'PlanDBInformation': 558,
  'PlanControl': 559,
  'PlanControlState': 560,
  'PlanVariable': 561,
  'PlanGeneration': 562,
  'LeaderState': 563,
  'PlanStatistics': 564,
  'ReportedState': 600,
  'RemoteSensorInfo': 601,
  'Map': 602,
  'MapFeature': 603,
  'MapPoint': 604,
  'CcuEvent': 606,
  'VehicleLinks': 650,
  'TrexObservation': 651,
  'TrexCommand': 652,
  'TrexOperation': 655,
  'TrexAttribute': 656,
  'TrexToken': 657,
  'TrexPlan': 658,
  'Event': 660,
  'CompressedImage': 702,
  'ImageTxSettings': 703,
  'RemoteState': 750,
  'Target': 800,
  'EntityParameter': 801,
  'EntityParameters': 802,
  'QueryEntityParameters': 803,
  'SetEntityParameters': 804,
  'SaveEntityParameters': 805,
  'CreateSession': 806,
  'CloseSession': 807,
  'SessionSubscription': 808,
  'SessionKeepAlive': 809,
  'SessionStatus': 810,
  'PushEntityParameters': 811,
  'PopEntityParameters': 812,
  'IoEvent': 813,
  'UamTxFrame': 814,
  'UamRxFrame': 815,
  'UamTxStatus': 816,
  'UamRxRange': 817,
  'FormCtrlParam': 820,
  'FormationEval': 821,
  'FormationControlParams': 822,
  'FormationEvaluation': 823,
  'SoiWaypoint': 850,
  'SoiPlan': 851,
  'SoiCommand': 852,
  'SoiState': 853,
  'MessagePart': 877,
  'NeptusBlob': 888,
  'Aborted': 889,
  'UsblAngles': 890,
  'UsblPosition': 891,
  'UsblFix': 892,
  'ParametersXml': 893,
  'GetParametersXml': 894,
  'SetImageCoords': 895,
  'GetImageCoords': 896,
  'GetWorldCoordinates': 897,
  'UsblAnglesExtended': 898,
  'UsblPositionExtended': 899,
  'UsblFixExtended': 900,
  'UsblModem': 901,
  'UsblConfig': 902,
  'DissolvedOrganicMatter': 903,
  'OpticalBackscatter': 904,
  'Tachograph': 905,
  'ApmStatus': 906,
  'SadcReadings': 907,
  'DmsDetection': 908,
  'TotalMagIntensity': 2006,
};

const idsToMessages = {
  1: 'EntityState',
  2: 'QueryEntityState',
  3: 'EntityInfo',
  4: 'QueryEntityInfo',
  5: 'EntityList',
  7: 'CpuUsage',
  8: 'TransportBindings',
  9: 'RestartSystem',
  12: 'DevCalibrationControl',
  13: 'DevCalibrationState',
  14: 'EntityActivationState',
  15: 'QueryEntityActivationState',
  16: 'VehicleOperationalLimits',
  20: 'MsgList',
  50: 'SimulatedState',
  51: 'LeakSimulation',
  52: 'UASimulation',
  53: 'DynamicsSimParam',
  100: 'StorageUsage',
  101: 'CacheControl',
  102: 'LoggingControl',
  103: 'LogBookEntry',
  104: 'LogBookControl',
  105: 'ReplayControl',
  106: 'ClockControl',
  107: 'HistoricCTD',
  108: 'HistoricTelemetry',
  109: 'HistoricSonarData',
  110: 'HistoricEvent',
  111: 'VerticalProfile',
  112: 'ProfileSample',
  150: 'Heartbeat',
  151: 'Announce',
  152: 'AnnounceService',
  153: 'RSSI',
  154: 'VSWR',
  155: 'LinkLevel',
  156: 'Sms',
  157: 'SmsTx',
  158: 'SmsRx',
  159: 'SmsState',
  160: 'TextMessage',
  170: 'IridiumMsgRx',
  171: 'IridiumMsgTx',
  172: 'IridiumTxStatus',
  180: 'GroupMembershipState',
  181: 'SystemGroup',
  182: 'LinkLatency',
  183: 'ExtendedRSSI',
  184: 'HistoricData',
  185: 'CompressedHistory',
  186: 'HistoricSample',
  187: 'HistoricDataQuery',
  188: 'RemoteCommand',
  189: 'CommSystemsQuery',
  190: 'TelemetryMsg',
  200: 'LblRange',
  202: 'LblBeacon',
  203: 'LblConfig',
  206: 'AcousticMessage',
  211: 'AcousticOperation',
  212: 'AcousticSystemsQuery',
  213: 'AcousticSystems',
  214: 'AcousticLink',
  250: 'Rpm',
  251: 'Voltage',
  252: 'Current',
  253: 'GpsFix',
  254: 'EulerAngles',
  255: 'EulerAnglesDelta',
  256: 'AngularVelocity',
  257: 'Acceleration',
  258: 'MagneticField',
  259: 'GroundVelocity',
  260: 'WaterVelocity',
  261: 'VelocityDelta',
  262: 'Distance',
  263: 'Temperature',
  264: 'Pressure',
  265: 'Depth',
  266: 'DepthOffset',
  267: 'SoundSpeed',
  268: 'WaterDensity',
  269: 'Conductivity',
  270: 'Salinity',
  271: 'WindSpeed',
  272: 'RelativeHumidity',
  273: 'DevDataText',
  274: 'DevDataBinary',
  275: 'Force',
  276: 'SonarData',
  277: 'Pulse',
  278: 'PulseDetectionControl',
  279: 'FuelLevel',
  280: 'GpsNavData',
  281: 'ServoPosition',
  282: 'DeviceState',
  283: 'BeamConfig',
  284: 'DataSanity',
  285: 'RhodamineDye',
  286: 'CrudeOil',
  287: 'FineOil',
  288: 'Turbidity',
  289: 'Chlorophyll',
  290: 'Fluorescein',
  291: 'Phycocyanin',
  292: 'Phycoerythrin',
  293: 'GpsFixRtk',
  294: 'ExternalNavData',
  295: 'DissolvedOxygen',
  296: 'AirSaturation',
  297: 'Throttle',
  298: 'PH',
  299: 'Redox',
  300: 'CameraZoom',
  301: 'SetThrusterActuation',
  302: 'SetServoPosition',
  303: 'SetControlSurfaceDeflection',
  304: 'RemoteActionsRequest',
  305: 'RemoteActions',
  306: 'ButtonEvent',
  307: 'LcdControl',
  308: 'PowerOperation',
  309: 'PowerChannelControl',
  310: 'QueryPowerChannelState',
  311: 'PowerChannelState',
  312: 'LedBrightness',
  313: 'QueryLedBrightness',
  314: 'SetLedBrightness',
  315: 'SetPWM',
  316: 'PWM',
  350: 'EstimatedState',
  351: 'EstimatedStreamVelocity',
  352: 'IndicatedSpeed',
  353: 'TrueSpeed',
  354: 'NavigationUncertainty',
  355: 'NavigationData',
  356: 'GpsFixRejection',
  357: 'LblRangeAcceptance',
  358: 'DvlRejection',
  360: 'LblEstimate',
  361: 'AlignmentState',
  362: 'GroupStreamVelocity',
  363: 'Airflow',
  400: 'DesiredHeading',
  401: 'DesiredZ',
  402: 'DesiredSpeed',
  403: 'DesiredRoll',
  404: 'DesiredPitch',
  405: 'DesiredVerticalRate',
  406: 'DesiredPath',
  407: 'DesiredControl',
  408: 'DesiredHeadingRate',
  409: 'DesiredVelocity',
  410: 'PathControlState',
  411: 'AllocatedControlTorques',
  412: 'ControlParcel',
  413: 'Brake',
  414: 'DesiredLinearState',
  415: 'DesiredThrottle',
  450: 'Goto',
  451: 'PopUp',
  452: 'Teleoperation',
  453: 'Loiter',
  454: 'IdleManeuver',
  455: 'LowLevelControl',
  456: 'Rows',
  457: 'FollowPath',
  458: 'PathPoint',
  459: 'YoYo',
  460: 'TeleoperationDone',
  461: 'StationKeeping',
  462: 'Elevator',
  463: 'FollowTrajectory',
  464: 'TrajectoryPoint',
  465: 'CustomManeuver',
  466: 'VehicleFormation',
  467: 'VehicleFormationParticipant',
  468: 'StopManeuver',
  469: 'RegisterManeuver',
  470: 'ManeuverControlState',
  471: 'FollowSystem',
  472: 'CommsRelay',
  473: 'CoverArea',
  474: 'PolygonVertex',
  475: 'CompassCalibration',
  476: 'FormationParameters',
  477: 'FormationPlanExecution',
  478: 'FollowReference',
  479: 'Reference',
  480: 'FollowRefState',
  481: 'FormationMonitor',
  482: 'RelativeState',
  483: 'Dislodge',
  484: 'Formation',
  485: 'Launch',
  486: 'Drop',
  487: 'ScheduledGoto',
  488: 'RowsCoverage',
  489: 'Sample',
  490: 'ImageTracking',
  491: 'Takeoff',
  492: 'Land',
  493: 'AutonomousSection',
  494: 'FollowPoint',
  495: 'Alignment',
  496: 'StationKeepingExtended',
  499: 'Magnetometer',
  500: 'VehicleState',
  501: 'VehicleCommand',
  502: 'MonitorEntityState',
  503: 'EntityMonitoringState',
  504: 'OperationalLimits',
  505: 'GetOperationalLimits',
  506: 'Calibration',
  507: 'ControlLoops',
  508: 'VehicleMedium',
  509: 'Collision',
  510: 'FormState',
  511: 'AutopilotMode',
  512: 'FormationState',
  513: 'ReportControl',
  514: 'StateReport',
  515: 'TransmissionRequest',
  516: 'TransmissionStatus',
  517: 'SmsRequest',
  518: 'SmsStatus',
  519: 'VtolState',
  520: 'ArmingState',
  550: 'Abort',
  551: 'PlanSpecification',
  552: 'PlanManeuver',
  553: 'PlanTransition',
  554: 'EmergencyControl',
  555: 'EmergencyControlState',
  556: 'PlanDB',
  557: 'PlanDBState',
  558: 'PlanDBInformation',
  559: 'PlanControl',
  560: 'PlanControlState',
  561: 'PlanVariable',
  562: 'PlanGeneration',
  563: 'LeaderState',
  564: 'PlanStatistics',
  600: 'ReportedState',
  601: 'RemoteSensorInfo',
  602: 'Map',
  603: 'MapFeature',
  604: 'MapPoint',
  606: 'CcuEvent',
  650: 'VehicleLinks',
  651: 'TrexObservation',
  652: 'TrexCommand',
  655: 'TrexOperation',
  656: 'TrexAttribute',
  657: 'TrexToken',
  658: 'TrexPlan',
  660: 'Event',
  702: 'CompressedImage',
  703: 'ImageTxSettings',
  750: 'RemoteState',
  800: 'Target',
  801: 'EntityParameter',
  802: 'EntityParameters',
  803: 'QueryEntityParameters',
  804: 'SetEntityParameters',
  805: 'SaveEntityParameters',
  806: 'CreateSession',
  807: 'CloseSession',
  808: 'SessionSubscription',
  809: 'SessionKeepAlive',
  810: 'SessionStatus',
  811: 'PushEntityParameters',
  812: 'PopEntityParameters',
  813: 'IoEvent',
  814: 'UamTxFrame',
  815: 'UamRxFrame',
  816: 'UamTxStatus',
  817: 'UamRxRange',
  820: 'FormCtrlParam',
  821: 'FormationEval',
  822: 'FormationControlParams',
  823: 'FormationEvaluation',
  850: 'SoiWaypoint',
  851: 'SoiPlan',
  852: 'SoiCommand',
  853: 'SoiState',
  877: 'MessagePart',
  888: 'NeptusBlob',
  889: 'Aborted',
  890: 'UsblAngles',
  891: 'UsblPosition',
  892: 'UsblFix',
  893: 'ParametersXml',
  894: 'GetParametersXml',
  895: 'SetImageCoords',
  896: 'GetImageCoords',
  897: 'GetWorldCoordinates',
  898: 'UsblAnglesExtended',
  899: 'UsblPositionExtended',
  900: 'UsblFixExtended',
  901: 'UsblModem',
  902: 'UsblConfig',
  903: 'DissolvedOrganicMatter',
  904: 'OpticalBackscatter',
  905: 'Tachograph',
  906: 'ApmStatus',
  907: 'SadcReadings',
  908: 'DmsDetection',
  2006: 'TotalMagIntensity',
};

const messageGroups = {
  'Maneuver': [
      'Goto',
      'PopUp',
      'Teleoperation',
      'Launch',
      'Loiter',
      'IdleManeuver',
      'LowLevelControl',
      'Rows',
      'FollowPath',
      'YoYo',
      'StationKeeping',
      'Elevator',
      'FollowTrajectory',
      'CustomManeuver',
      'VehicleFormation',
      'CompassCalibration',
      'CoverArea',
      'FollowReference',
      'CommsRelay',
      'FormationPlanExecution',
      'Dislodge',
      'Drop',
      'Sample',
      'ScheduledGoto',
      'RowsCoverage',
      'ImageTracking',
      'Takeoff',
      'Land',
      'AutonomousSection',
      'FollowPoint',
      'Alignment',
      'StationKeepingExtended',
      'Magnetometer',
    ],
  'ControlCommand': [
      'DesiredZ',
      'DesiredHeading',
      'DesiredRoll',
      'DesiredPitch',
      'DesiredSpeed',
      'DesiredPath',
      'DesiredThrottle',
    ],
  'RemoteData': [
      'RemoteCommand',
      'HistoricSample',
    ],
};
