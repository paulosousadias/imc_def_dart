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

    imc.messagesBuilders.values.forEach((b) {
      var msg = b.build() as imc.ImcMessage;
      print(msg?.toString());
      expect(msg != null, true);
    });

    print("0x${16.toRadixString(16)}");

    print("0x${0xFE54.toRadixString(16)}");
    print("0x${(0xFE54 >> 8).toRadixString(16)}");
    print("0x${(0xFE54 & 0xFF).toRadixString(16)}");
    print("0x${((0xFE54 & 0xFF) << 8 | 0xFE54 >> 8).toRadixString(16)}");
  });
  test('serialize test', () {
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

    var msgD = ser.deserialize(serData);
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
          ..validity = imc.DistanceEnumValidity.valid
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

  });
}
