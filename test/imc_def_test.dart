// Copyright (c) 2019-24, Paulo Sousa Dias. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:convert';
import 'dart:typed_data';

import 'package:test/test.dart';

import 'package:imc_def/imc_def.dart' as imc;

String _byteDataToHexString(List<int> serData) {
  var bytesSerStr = '[';
  for (var b in serData) {
    var bhs = b.toRadixString(16);
    var bds = '$b';
    while (bds.length < 3) {
      bds = '0$bds';
    }
    bytesSerStr += "0x${bhs.length == 1 ? '0' : ''}$bhs ($bds), ";
  }
  bytesSerStr += ']';
  return bytesSerStr;
}

void main() {
  test('sync number reverse test', () {
    int s1 = 0x1234;
    int s2 = s1.reverseAsSyncNumber();
    print(
        'Sync number ${s1.toRadixString(16)} and reversed ${s2.toRadixString(16)}');
    expect(0x3412, s2);
  });

  test('builders test', () {
    // final calculator = Calculator();
    // expect(calculator.addOne(2), 3);
    // expect(calculator.addOne(-7), -6);
    // expect(calculator.addOne(0), 1);
    // expect(() => calculator.addOne(null), throwsNoSuchMethodError);

    var globalSW = Stopwatch();
    globalSW.start();
    for (var b in imc.messagesBuilders.values) {
      imc.ImcMessage? msg;
      try {
        msg = b().build() as imc.ImcMessage;
        print(msg.toString());
      } catch (e) {
        print(e);
      }
      expect(msg != null, true);
    }
    globalSW.stop();
    print('---------- Took ${globalSW.elapsed}');

    print('0x${16.toRadixString(16)}');

    print('0x${0xFE54.toRadixString(16)}');
    print('0x${(0xFE54 >> 8).toRadixString(16)}');
    print('0x${(0xFE54 & 0xFF).toRadixString(16)}');
    print('0x${((0xFE54 & 0xFF) << 8 | 0xFE54 >> 8).toRadixString(16)}');
  });
  test('serialize test', () {
    var globalSW = Stopwatch();
    globalSW.start();

    imc.messagesBuilders.forEach((n, bf) {
      var b = bf();
      (b as imc.ImcBuilderHeaderPart)
        ..src = 0x4001
        ..timestamp = DateTime.utc(1970);
      var msg = b.build() as imc.ImcMessage;
      var ser = imc.messagesSerializers[n]!();
      var dataSer = ser.serialize(msg);
      var bufferSer = dataSer.buffer;
      var serData =
          bufferSer.asUint8List(dataSer.offsetInBytes, dataSer.lengthInBytes);
      var bytesSerStr = _byteDataToHexString(serData);
      print('msg=$msg\nsize=${serData.lengthInBytes} | $bytesSerStr');

      var msgD = ser.deserialize(serData);
      print('msgD=$msgD');
      expect(msg == msgD, true);
      print('Match? ${msg == msgD}');
    });
    globalSW.stop();
    print('---------- Took ${globalSW.elapsed}');

    globalSW.reset();
    globalSW.start();
    imc.Abort msg = (imc.AbortBuilder()
          ..src = 0x4001
          ..timestamp = DateTime.utc(1970))
        .build();
    var ser = imc.AbortSerializer();
    var dataSer = ser.serialize(msg);
    var bufferSer = dataSer.buffer;
    var serData =
        bufferSer.asUint8List(dataSer.offsetInBytes, dataSer.lengthInBytes);
    var bytesSerStr = _byteDataToHexString(serData);
    print('msg=$msg\nsize=${serData.lengthInBytes} | $bytesSerStr');
    globalSW.stop();
    print('---------- Took ${globalSW.elapsed}');

    var msgD = ser.deserialize(serData);
    globalSW.stop();
    print('---------- Took ${globalSW.elapsed}');
    print('msgD=$msgD');
    expect(msg == msgD, true);
    print('Match? ${msg == msgD}');
  });

  test('serialize crc test', () {
    imc.Abort msg = (imc.AbortBuilder()
          ..src = 0x4001
          ..timestamp = DateTime.utc(1970))
        .build();
    var ser = imc.AbortSerializer();
    var dataSer = ser.serialize(msg);
    dataSer.setUint16(dataSer.lengthInBytes - 2, 0);
    var bufferSer = dataSer.buffer;
    var serData =
        bufferSer.asUint8List(dataSer.offsetInBytes, dataSer.lengthInBytes);
    var bytesSerStr = _byteDataToHexString(serData);
    print('msg=$msg\nsize=${serData.lengthInBytes} | $bytesSerStr');
    var msgD = ser.deserialize(serData);
    expect(msgD, null);
  });

//   var list = Utf8.encode('xxx');
// var data = list is Uint8List ? list.buffer : Uint8List.fromList(list).buffer;

  test('binary loading deserializing', () {
    // imc.endian_ser = Endian.little;

    // RPM
    // little endian
    var bytes1 = [
      0x54, 0xfe, 0xfa, 0x00, 0x02, 0x00, 0x0c, 0xb4, 0xba, 0x6e, // le
      0x89, 0x15, 0xd7, 0x41, 0x1b, 0x00, 0x3c, 0xff, 0xff, 0xff,
      0x00, 0x00, 0x68, 0x36,
    ];
    var msgId = 250;
    var msgRpm = (imc.RpmBuilder()
          ..timestamp = DateTime.utc(2019, 2, 2, 23, 20, 26, 917)
          ..src = 0x1b //(27)
          ..srcEnt = 0x3c //(60),
          ..dst = 0xffff //(65535),
          ..dstEnt = 0xff //(255),
          ..value = 0)
        .build();
    var serializerRpm = imc.RpmSerializer();
    var msgRpmD = serializerRpm.deserialize(Uint8List.fromList(bytes1));
    print('Msg Id: $msgId');
    print('msg1: $msgRpm\nmsg2: $msgRpmD\n');
    expect(msgRpm, msgRpmD);
    var byteData2 = serializerRpm.serialize(msgRpm);
    var bytes2 = byteData2.buffer
        .asUint8List(byteData2.offsetInBytes, byteData2.lengthInBytes);
    var msgRpmD2 = serializerRpm.deserialize(bytes2);
    expect(msgRpm, msgRpmD);
    print('msg2: $msgRpmD\nmsg3: $msgRpmD2\n');
    print(
        'bytes1: ${_byteDataToHexString(bytes1)}\nbytes2: ${_byteDataToHexString(bytes2)}\n');
    // timestamps might have diferences, so binary may not be identical
    //expect(bytes1, bytes2);

    // Distance
    // little endian
    bytes1 = [
      0x54, 0xfe, 0x06, 0x01, 0x2d, 0x00, 0x67, 0xef, 0xcc, 0x6e, //le
      0x89, 0x15, 0xd7, 0x41, 0x1b, 0x00, 0x31, 0xff, 0xff, 0xff,
      0x01, 0x01, 0x00, 0x1a, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,
      0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
      0x00, 0xdb, 0x0f, 0xc9, 0xbf, 0x00, 0x00, 0x00, 0x00, 0x01,
      0x00, 0x1b, 0x01, 0x35, 0xfa, 0x8e, 0xbc, 0x35, 0xfa, 0x8e,
      0xbc, 0x63, 0xef, 0x8a, 0x40, 0x1c, 0x77,
    ];
    msgId = 262;
    var msgBuilderDistance = imc.DistanceBuilder();
    var msgDistance = (msgBuilderDistance
          ..timestamp = DateTime.utc(2019, 02, 02, 23, 20, 27, 202)
          ..src = 0x1b //(27)
          ..srcEnt = 0x31 //(49),
          ..dst = 0xffff //(65535),
          ..dstEnt = 0xff //(255),
          ..validity = imc.DistanceEnumValidity.dvValid
          ..location = [
            (imc.DeviceStateBuilder.fromHeader(msgBuilderDistance)
                  ..x = 0
                  ..y = 0
                  ..z = 0
                  ..phi = 0
                  ..theta = -1.5707963705062866
                  ..psi = 0)
                .build(),
          ]
          ..beamConfig = [
            (imc.BeamConfigBuilder.fromHeader(msgBuilderDistance)
                  ..beamWidth = -0.01745329238474369
                  ..beamHeight = -0.01745329238474369)
                .build(),
          ]
          ..value = 4.341722011566162)
        .build();
    var serializerDistance = imc.DistanceSerializer();
    var msgDistanceD =
        serializerDistance.deserialize(Uint8List.fromList(bytes1));
    print('Msg Id: $msgId');
    print('msg1: $msgDistance\nmsg2: $msgDistanceD\n');
    expect(msgDistance, msgDistanceD);
    byteData2 = serializerDistance.serialize(msgDistance);
    bytes2 = byteData2.buffer
        .asUint8List(byteData2.offsetInBytes, byteData2.lengthInBytes);
    var msgDistanceD2 = serializerDistance.deserialize(bytes2);
    expect(msgDistance, msgDistanceD);
    print('msg2: $msgDistanceD\nmsg3: $msgDistanceD2\n');
    print(
        'bytes1: ${_byteDataToHexString(bytes1)}\nbytes2: ${_byteDataToHexString(bytes2)}\n');
    // timestamps might have diferences, so binary may not be identical
    //expect(bytes1, bytes2);

    // EstimatedState
    // little endian
    bytes1 = [
      0x54, 0xfe, 0x5e, 0x01, 0x58, 0x00, 0x70, 0x14, 0xdc, 0x6e, //le
      0x89, 0x15, 0xd7, 0x41, 0x1b, 0x00, 0x29, 0xff, 0xff, 0xff,
      0x48, 0xc5, 0x0c, 0xf2, 0x85, 0x00, 0xe7, 0x3f, 0xde, 0xa7,
      0x9e, 0x8c, 0x28, 0x73, 0xc3, 0xbf, 0x33, 0x33, 0x2c, 0xbe,
      0x0e, 0x5f, 0x5c, 0x3b, 0x43, 0xbe, 0x09, 0xb9, 0x5d, 0x25,
      0xdb, 0xbd, 0x45, 0x1b, 0x72, 0xb7, 0xae, 0x01, 0x0c, 0xbd,
      0x01, 0x1a, 0x2e, 0xb9, 0x44, 0xb7, 0xbb, 0x3b, 0xe5, 0x2c,
      0xc5, 0x39, 0x03, 0x32, 0x47, 0x3e, 0xc3, 0xd0, 0x17, 0xbb,
      0x4a, 0xd9, 0xc6, 0x39, 0x0c, 0x3b, 0x47, 0x3e, 0x55, 0xf0,
      0x27, 0x38, 0x64, 0x3f, 0xa5, 0xbd, 0xfc, 0x4a, 0x8f, 0x38,
      0x5d, 0x25, 0xdb, 0x3d, 0xb0, 0x76, 0x8a, 0x40, 0x79, 0x24,
    ];
    msgId = 350;
    var msgBuilderEstimatedState = imc.EstimatedStateBuilder();
    var msgEstimatedState = (msgBuilderEstimatedState
          ..timestamp = DateTime.utc(2019, 02, 02, 23, 20, 27, 438)
          ..src = 0x1b //(27)
          ..srcEnt = 0x29 //(41),
          ..dst = 0xffff //(65535),
          ..dstEnt = 0xff //(255),
          ..lat = 0.7188138701950857
          ..lon = -0.15195185533713035
          ..height = -0.16816405951976776
          ..x = 0.0033625992946326733
          ..y = -0.00013136216148268431
          ..z = -0.10700485855340958
          ..phi = -0.000014430673218157608
          ..theta = -0.03418128937482834
          ..psi = -0.00016603620315436274
          ..u = 0.00572863407433033
          ..v = 0.00037608217098750174
          ..w = 0.19452671706676483
          ..vx = -0.0023165203165262938
          ..vy = 0.00037927395896986127
          ..vz = 0.1945611834526062
          ..p = 0.000040039729356067255
          ..q = -0.08068731427192688
          ..r = 0.00006832738290540874
          ..depth = 0.10700485855340958
          ..alt = 4.326988220214844)
        .build();
    var serializerEstimatedState = imc.EstimatedStateSerializer();
    var msgEstimatedStateD =
        serializerEstimatedState.deserialize(Uint8List.fromList(bytes1));
    print('Msg Id: $msgId');
    print('msg1: $msgEstimatedState\nmsg2: $msgEstimatedStateD\n');
    expect(msgEstimatedState, msgEstimatedStateD);
    byteData2 = serializerEstimatedState.serialize(msgEstimatedState);
    bytes2 = byteData2.buffer
        .asUint8List(byteData2.offsetInBytes, byteData2.lengthInBytes);
    var msgEstimatedStateD2 = serializerEstimatedState.deserialize(bytes2);
    expect(msgEstimatedState, msgEstimatedStateD);
    print('msg2: $msgEstimatedStateD\nmsg3: $msgEstimatedStateD2\n');
    print(
        'bytes1: ${_byteDataToHexString(bytes1)}\nbytes2: ${_byteDataToHexString(bytes2)}\n');
    // timestamps might have diferences, so binary may not be identical
    // expect(bytes1, bytes2);
  });

  test('enum like comparison test', () {
    var su1 = imc.SpeedUnitsEnum(imc.SpeedUnitsEnum.sunitsMetersPs.value);
    expect(su1 == imc.SpeedUnitsEnum.sunitsMetersPs, true);

    var su2 = imc.ZUnitsEnum(imc.SpeedUnitsEnum.sunitsMetersPs.value);
    expect(su2 == imc.SpeedUnitsEnum.sunitsMetersPs, false);
  });

  test('bitfields hasBits test', () {
    var su1 = imc.CommSystemsQueryBitfieldCommInterface.ciqAcoustic;
    var su2 = imc.CommSystemsQueryBitfieldCommInterface(
        imc.CommSystemsQueryBitfieldCommInterface.ciqAcoustic.value);
    var su3 = imc.CommSystemsQueryBitfieldCommInterface.fromBits([
      imc.CommSystemsQueryBitfieldCommInterface.ciqAcoustic,
      imc.CommSystemsQueryBitfieldCommInterface.ciqSatellite,
    ]);

    expect(
        su1.hasBits([
          imc.CommSystemsQueryBitfieldCommInterface.ciqAcoustic,
        ]),
        true);
    expect(
        su1.hasBits([
          imc.CommSystemsQueryBitfieldCommInterface.ciqGsm,
        ]),
        false);
    expect(su1.hasBits(null), false);

    expect(
        su2.hasBits([
          imc.CommSystemsQueryBitfieldCommInterface.ciqAcoustic,
        ]),
        true);
    expect(
        su2.hasBits([
          imc.CommSystemsQueryBitfieldCommInterface.ciqGsm,
        ]),
        false);
    expect(su2.hasBits(null), false);

    expect(
        su3.hasBits([
          imc.CommSystemsQueryBitfieldCommInterface.ciqAcoustic,
        ]),
        true);
    expect(
        su3.hasBits([
          imc.CommSystemsQueryBitfieldCommInterface.ciqAcoustic,
          imc.CommSystemsQueryBitfieldCommInterface.ciqSatellite,
        ]),
        true);
    expect(
        su3.hasBits([
          imc.CommSystemsQueryBitfieldCommInterface.ciqAcoustic,
          imc.CommSystemsQueryBitfieldCommInterface.ciqSatellite,
          imc.CommSystemsQueryBitfieldCommInterface.ciqGsm,
        ]),
        false);
    expect(
        su3.hasBits([
          imc.CommSystemsQueryBitfieldCommInterface.ciqGsm,
        ]),
        false);
    expect(su3.hasBits(null), false);
  });

  test('enumerations toPrettyString() test', () {
    var su1 = imc.SpeedUnitsEnum(imc.SpeedUnitsEnum.sunitsMetersPs.value);
    expect(su1.toPrettyString() == 'Meters per second', true);
    var su2 = imc.SpeedUnitsEnum(9);
    expect(su2.toPrettyString() == su2.toString(), true);
  });

  test('bitfields toPrettyString() test', () {
    var su1 = imc.CommSystemsQueryBitfieldCommInterface.ciqAcoustic;
    var su2 = imc.CommSystemsQueryBitfieldCommInterface.fromBits([
      imc.CommSystemsQueryBitfieldCommInterface.ciqAcoustic,
      imc.CommSystemsQueryBitfieldCommInterface.ciqSatellite,
    ]);
    var su3 = imc.CommSystemsQueryBitfieldCommInterface(0);
    var su4 = imc.CommSystemsQueryBitfieldCommInterface(0x80);
    var su5 = imc.CommSystemsQueryBitfieldCommInterface.fromBits([
      su2,
      su4,
    ]);

    print('${su1.toPrettyString()} == \'Acoustic\'');
    expect(su1.toPrettyString() == 'Acoustic', true);
    print('${su2.toPrettyString()} == \'Acoustic|Satellite\'');
    expect(su2.toPrettyString() == 'Acoustic|Satellite', true);
    print('${su3.toPrettyString()} == \'\'');
    expect(su3.toPrettyString() == '', true);
    print('${su4.toPrettyString()} == \'?\'');
    expect(su4.toPrettyString() == '?', true);
    print('${su5.toPrettyString()} == \'Acoustic|Satellite|?\'');
    expect(su5.toPrettyString() == 'Acoustic|Satellite|?', true);
  });

  test('factories test', () {
    imc.Abort msg = (imc.AbortBuilder()
          ..src = 0x4001
          ..timestamp = DateTime.utc(1970))
        .build();
    var msg2 = imc.Abort((b) => b..src = 0x4001);

    expect(msg.src, msg2.src);
  });

  test('messagelist msg test', () {
    var msgA = imc.Abort((b) => b..src = 0x4002);
    imc.MsgList msg = (imc.MsgListBuilder()
          ..src = 0x4001
          ..timestamp = DateTime.utc(1970)
          ..msgs.add(msgA))
        .build();
    var serializer = imc.MsgListSerializer();
    var data = serializer.serialize(msg);
    var msgR = serializer.deserialize(data.buffer.asUint8List())!;
    var dataR = serializer.serialize(msgR);
    print(msg);
    print(msgR);
    expect(data.toString(), dataR.toString());
  });

  test('toJson test', () {
    var globalSW = Stopwatch();
    globalSW.start();
    for (var b in imc.messagesBuilders.values) {
      imc.ImcMessage? msg;
      try {
        msg = b().build() as imc.ImcMessage;
        print(jsonEncode(msg.toJson()));
      } catch (e) {
        print(e);
      }
      expect(msg != null, true);
    }
    globalSW.stop();
    print('---------- Took ${globalSW.elapsed}');
  });

  test('toFromJson test', () {
    var globalSW = Stopwatch();
    globalSW.start();

    for (var b in imc.messagesBuilders.values) {
      imc.ImcMessage? msg, msg2;
      try {
        msg = b().build() as imc.ImcMessage;
        var toJson = jsonEncode(msg.toJson());

        msg2 = b().fromJson(jsonDecode(toJson)).build() as imc.ImcMessage;
        var fromJson = jsonEncode(msg2.toJson());

        print(toJson);
        print(fromJson);
        expect(toJson, fromJson);
      } catch (e) {
        print('ERROR :: ${msg?.abbrev} >> $e');
      }
      expect(msg != null, true);
      expect(msg2 != null, true);
    }
    globalSW.stop();
    print('---------- Took ${globalSW.elapsed}');
  });

  test('toFromJson EntityList test', () {
    var globalSW = Stopwatch();
    globalSW.start();

    imc.EntityList? msg, msg2;
    imc.EntityListBuilder msgBldr = imc.EntityListBuilder();
    imc.EntityListBuilder msgBldr2 = msgBldr.newInstance();

    msgBldr.op = imc.EntityListEnumOp.opQuery;
    msgBldr.list = 'one=1;two=2';

    msg = msgBldr.build();
    var toJson = jsonEncode(msg.toJson());

    msg2 = msgBldr2.fromJson(jsonDecode(toJson)).build();
    var fromJson = jsonEncode(msg2.toJson());

    print(toJson);
    print(fromJson);
    // expect(msg, msg2); // issues in the timestamp
    expect(toJson, fromJson);

    globalSW.stop();
    print('---------- Took ${globalSW.elapsed}');
  });

  test('toFromJson MessageList test', () {
    var globalSW = Stopwatch();
    globalSW.start();

    imc.MsgList? msg, msg2;
    imc.MsgListBuilder msgBldr = imc.MsgListBuilder();
    imc.MsgListBuilder msgBldr2 = msgBldr.newInstance();

    msgBldr.msgs = [];
    msgBldr.msgs.add((imc.CpuUsageBuilder()..value = 10).build());
    msgBldr.msgs.add(imc.PulseBuilder().build());
    msgBldr.msgs.add((imc.CcuEventBuilder()
          ..type = imc.CcuEventEnumType.evtTeleoperationEnded
          ..id = 'uuid-fwte'
          ..arg = (imc.RemoteActionsBuilder()..actions = "Exit=1").build())
        .build());
    msgBldr.msgs.add((imc.IoEventBuilder()
          ..type = imc.IoEventEnumType.iovTypeInputError)
        .build());
    msgBldr.msgs.add((imc.SonarDataBuilder()
          ..type = imc.SonarDataEnumType.stEchosounder
          ..frequency = 700000
          ..data = <int>[0x32, 0x31, 0x00]
          ..beamConfig = [
            (imc.BeamConfigBuilder()
                  ..beamHeight = 10
                  ..beamWidth = 20)
                .build()
          ])
        .build());
    msgBldr.msgs.add((imc.DesiredPathBuilder()
          ..pathRef = 223
          ..flags = imc.DesiredPathBitfieldFlags.fromBits([
            imc.DesiredPathBitfieldFlags.flStart,
            imc.DesiredPathBitfieldFlags.flNoZ
          ]))
        .build());

    msg = msgBldr.build();
    var toJson = jsonEncode(msg.toJson());

    msg2 = msgBldr2.fromJson(jsonDecode(toJson)).build();
    var fromJson = jsonEncode(msg2.toJson());

    print(toJson);
    print(fromJson);
    // expect(msg, msg2); // issues in the timestamp
    expect(toJson, fromJson);

    globalSW.stop();
    print('---------- Took ${globalSW.elapsed}');
  });

  test('multiple syncnumbers test', () {
    imc.alternativeSyncNumbers = [0xFE57];

    ByteData data = ByteData(20);
    data.setUint16(0, 0xFE57);

    var (endianness, syncNumber) = imc.getEndianness(data, 0);
    expect(endianness, Endian.big);
    expect(syncNumber, 0xFE57);
  });
}
