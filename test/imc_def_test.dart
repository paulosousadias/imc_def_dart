// Copyright (c) 2019, Paulo Sousa Dias. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style 
// license that can be found in the LICENSE file.

import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';

import 'package:imc_def/imc_def.dart' as imc;

String _byteDataToHexString(List<int> serData) {
  var bytesSerStr = "[";
  serData.forEach((b) {
    var bhs = '${b.toRadixString(16)}';
    var bds = '$b';
    while (bds.length < 3)
      bds = '0$bds';
    bytesSerStr += "0x${bhs.length == 1 ? '0' : ''}$bhs ($bds), ";
  });
  bytesSerStr += "]";
  return bytesSerStr;
}

void main() {
  test('builders test', () {
    // final calculator = Calculator();
    // expect(calculator.addOne(2), 3);
    // expect(calculator.addOne(-7), -6);
    // expect(calculator.addOne(0), 1);
    // expect(() => calculator.addOne(null), throwsNoSuchMethodError);

    var globalSW = Stopwatch();
    globalSW.start();
    imc.messagesBuilders.values.forEach((b) {
      var msg = b.build() as imc.ImcMessage;
      print(msg?.toString());
      expect(msg != null, true);
    });
    globalSW.stop();
    print('---------- Took ${globalSW.elapsed}');
    
    print("0x${16.toRadixString(16)}");

    print("0x${0xFE54.toRadixString(16)}");
    print("0x${(0xFE54 >> 8).toRadixString(16)}");
    print("0x${(0xFE54 & 0xFF).toRadixString(16)}");
    print("0x${((0xFE54 & 0xFF) << 8 | 0xFE54 >> 8).toRadixString(16)}");
  });
  test('serialize test', () {
    var globalSW = Stopwatch();
    globalSW.start();

    imc.messagesBuilders.forEach((n, b) {
      (b as imc.ImcBuilderHeaderPart)
        ..src = 0x4001
        ..timestamp = DateTime.utc(1970);
      var msg = b.build() as imc.ImcMessage;
      var ser = imc.messagesSerializers[n];
      var dataSer = ser.serialize(msg);
      var bufferSer = dataSer.buffer;
      var serData =
          bufferSer.asUint8List(dataSer.offsetInBytes, dataSer.lengthInBytes);
      String bytesSerStr = _byteDataToHexString(serData);
      print("msg=$msg\nsize=${serData.lengthInBytes} | $bytesSerStr");

      var msgD = ser.deserialize(serData);
      print("msgD=$msgD");
      expect(msg == msgD, true);
      print("Match? ${msg == msgD}");
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
    String bytesSerStr = _byteDataToHexString(serData);
    print("msg=$msg\nsize=${serData.lengthInBytes} | $bytesSerStr");
    globalSW.stop();
    print('---------- Took ${globalSW.elapsed}');

    var msgD = ser.deserialize(serData);
    globalSW.stop();
    print('---------- Took ${globalSW.elapsed}');
    print("msgD=$msgD");
    expect(msg == msgD, true);
    print("Match? ${msg == msgD}");
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
    String bytesSerStr = _byteDataToHexString(serData);
    print("msg=$msg\nsize=${serData.lengthInBytes} | $bytesSerStr");
    var msgD = ser.deserialize(serData);
    expect(msgD, null);
  });

//   var list = Utf8.encode('xxx');
// var data = list is Uint8List ? list.buffer : new Uint8List.fromList(list).buffer;

  test("binary loading deserializing", () {
    // imc.endian_ser = Endian.little;

    // RPM
    // little endian
    var bytes1 = [
      0x54, 0xfe, 0xfa, 0x00, 0x02, 0x00, 0x0c, 0xb4, 
      0xba, 0x6e, 0x89, 0x15, 0xd7, 0x41, 0x1b, 0x00, 
      0x3c, 0xff, 0xff, 0xff, 0x00, 0x00, 0x68, 0x36,
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
    print("Msg Id: $msgId");
    print("msg1: $msgRpm\nmsg2: $msgRpmD\n");
    expect(msgRpm, msgRpmD);
    var byteData2 = serializerRpm.serialize(msgRpm);
    var bytes2 = byteData2.buffer
        .asUint8List(byteData2.offsetInBytes, byteData2.lengthInBytes);
    var msgRpmD2 = serializerRpm.deserialize(bytes2);
    expect(msgRpm, msgRpmD);
    print("msg2: $msgRpmD\nmsg3: $msgRpmD2\n");
    print("bytes1: ${_byteDataToHexString(bytes1)}\nbytes2: ${_byteDataToHexString(bytes2)}\n");
    // timestamps might have diferences, so binary may not be identical
    //expect(bytes1, bytes2);

    // Distance
    // little endian
    bytes1 = [
      0x54, 0xfe, 0x06, 0x01, 0x2d, 0x00, 0x67, 0xef, 
      0xcc, 0x6e, 0x89, 0x15, 0xd7, 0x41, 0x1b, 0x00, 
      0x31, 0xff, 0xff, 0xff, 0x01, 0x01, 0x00, 0x1a, 
      0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
      0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
      0x00, 0xdb, 0x0f, 0xc9, 0xbf, 0x00, 0x00, 0x00, 
      0x00, 0x01, 0x00, 0x1b, 0x01, 0x35, 0xfa, 0x8e, 
      0xbc, 0x35, 0xfa, 0x8e, 0xbc, 0x63, 0xef, 0x8a, 
      0x40, 0x1c, 0x77,
    ];
    msgId = 262;
    var msgBuilderDistance = imc.DistanceBuilder();
    var msgDistance = (msgBuilderDistance
          ..timestamp = DateTime.utc(2019, 02, 02, 23, 20, 27, 202)
          ..src = 0x1b //(27)
          ..srcEnt = 0x31 //(49),
          ..dst = 0xffff //(65535),
          ..dstEnt = 0xff //(255),
          ..validity = imc.DistanceEnumValidity.dv_valid
          ..location = [
            (imc.DeviceStateBuilder.fromHeader(msgBuilderDistance)
                ..x = 0
                ..y = 0
                ..z = 0
                ..phi = 0
                ..theta = -1.5707963705062866
                ..psi = 0
              ).build(),
          ]
          ..beamConfig = [
            (imc.BeamConfigBuilder.fromHeader(msgBuilderDistance)
                ..beamWidth = -0.01745329238474369
                ..beamHeight = -0.01745329238474369
              ).build(),
          ]
          ..value = 4.341722011566162)
        .build();
    var serializerDistance = imc.DistanceSerializer();
    var msgDistanceD = serializerDistance.deserialize(Uint8List.fromList(bytes1));
    print("Msg Id: $msgId");
    print("msg1: $msgDistance\nmsg2: $msgDistanceD\n");
    expect(msgDistance, msgDistanceD);
    byteData2 = serializerDistance.serialize(msgDistance);
    bytes2 = byteData2.buffer
        .asUint8List(byteData2.offsetInBytes, byteData2.lengthInBytes);
    var msgDistanceD2 = serializerDistance.deserialize(bytes2);
    expect(msgDistance, msgDistanceD);
    print("msg2: $msgDistanceD\nmsg3: $msgDistanceD2\n");
    print("bytes1: ${_byteDataToHexString(bytes1)}\nbytes2: ${_byteDataToHexString(bytes2)}\n");
    // timestamps might have diferences, so binary may not be identical
    //expect(bytes1, bytes2);

    // EstimatedState
    // little endian
    bytes1 = [
      0x54, 0xfe, 0x5e, 0x01, 0x58, 0x00, 0x70, 0x14, 
      0xdc, 0x6e, 0x89, 0x15, 0xd7, 0x41, 0x1b, 0x00, 
      0x29, 0xff, 0xff, 0xff, 0x48, 0xc5, 0x0c, 0xf2, 
      0x85, 0x00, 0xe7, 0x3f, 0xde, 0xa7, 0x9e, 0x8c, 
      0x28, 0x73, 0xc3, 0xbf, 0x33, 0x33, 0x2c, 0xbe, 
      0x0e, 0x5f, 0x5c, 0x3b, 0x43, 0xbe, 0x09, 0xb9, 
      0x5d, 0x25, 0xdb, 0xbd, 0x45, 0x1b, 0x72, 0xb7, 
      0xae, 0x01, 0x0c, 0xbd, 0x01, 0x1a, 0x2e, 0xb9, 
      0x44, 0xb7, 0xbb, 0x3b, 0xe5, 0x2c, 0xc5, 0x39, 
      0x03, 0x32, 0x47, 0x3e, 0xc3, 0xd0, 0x17, 0xbb, 
      0x4a, 0xd9, 0xc6, 0x39, 0x0c, 0x3b, 0x47, 0x3e, 
      0x55, 0xf0, 0x27, 0x38, 0x64, 0x3f, 0xa5, 0xbd, 
      0xfc, 0x4a, 0x8f, 0x38, 0x5d, 0x25, 0xdb, 0x3d, 
      0xb0, 0x76, 0x8a, 0x40, 0x79, 0x24,
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
    var msgEstimatedStateD = serializerEstimatedState.deserialize(Uint8List.fromList(bytes1));
    print("Msg Id: $msgId");
    print("msg1: $msgEstimatedState\nmsg2: $msgEstimatedStateD\n");
    expect(msgEstimatedState, msgEstimatedStateD);
    byteData2 = serializerEstimatedState.serialize(msgEstimatedState);
    bytes2 = byteData2.buffer
        .asUint8List(byteData2.offsetInBytes, byteData2.lengthInBytes);
    var msgEstimatedStateD2 = serializerEstimatedState.deserialize(bytes2);
    expect(msgEstimatedState, msgEstimatedStateD);
    print("msg2: $msgEstimatedStateD\nmsg3: $msgEstimatedStateD2\n");
    print("bytes1: ${_byteDataToHexString(bytes1)}\nbytes2: ${_byteDataToHexString(bytes2)}\n");
    // timestamps might have diferences, so binary may not be identical
    // expect(bytes1, bytes2);
  });

  test("enum like comparison test", () {
    var su1 = imc.SpeedUnitsEnum(imc.SpeedUnitsEnum.sunits_meters_ps.value);
    expect(su1 == imc.SpeedUnitsEnum.sunits_meters_ps, true);

    var su2 = imc.ZUnitsEnum(imc.SpeedUnitsEnum.sunits_meters_ps.value);
    expect(su2 == imc.SpeedUnitsEnum.sunits_meters_ps, false);
  });

  test("bitfields hasBits test", () {
    var su1 = imc.CommSystemsQueryBitfieldCommInterface.ciq_acoustic;
    var su2 = imc.CommSystemsQueryBitfieldCommInterface(imc.CommSystemsQueryBitfieldCommInterface.ciq_acoustic.value);
    var su3 = imc.CommSystemsQueryBitfieldCommInterface.fromBits([
      imc.CommSystemsQueryBitfieldCommInterface.ciq_acoustic,
      imc.CommSystemsQueryBitfieldCommInterface.ciq_satellite,
    ]);

    expect(su1.hasBits([
      imc.CommSystemsQueryBitfieldCommInterface.ciq_acoustic,
    ]), true);
    expect(su1.hasBits([
      imc.CommSystemsQueryBitfieldCommInterface.ciq_gsm,
    ]), false);
    expect(su1.hasBits(null), false);

    expect(su2.hasBits([
      imc.CommSystemsQueryBitfieldCommInterface.ciq_acoustic,
    ]), true);
    expect(su2.hasBits([
      imc.CommSystemsQueryBitfieldCommInterface.ciq_gsm,
    ]), false);
    expect(su2.hasBits(null), false);

    expect(su3.hasBits([
      imc.CommSystemsQueryBitfieldCommInterface.ciq_acoustic,
    ]), true);
    expect(su3.hasBits([
      imc.CommSystemsQueryBitfieldCommInterface.ciq_acoustic,
      imc.CommSystemsQueryBitfieldCommInterface.ciq_satellite,
    ]), true);
    expect(su3.hasBits([
      imc.CommSystemsQueryBitfieldCommInterface.ciq_acoustic,
      imc.CommSystemsQueryBitfieldCommInterface.ciq_satellite,
      imc.CommSystemsQueryBitfieldCommInterface.ciq_gsm,
    ]), false);
    expect(su3.hasBits([
      imc.CommSystemsQueryBitfieldCommInterface.ciq_gsm,
    ]), false);
    expect(su3.hasBits(null), false);
  });
}
