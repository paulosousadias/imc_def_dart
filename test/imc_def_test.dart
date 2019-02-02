import 'package:flutter_test/flutter_test.dart';

import 'package:imc_def/imc_def.dart' as imc;

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
      var serData = bufferSer.asUint8List(dataSer.offsetInBytes, dataSer.lengthInBytes);
      var bytesSerStr = "$n [";
      serData.forEach((b) {bytesSerStr +="0x${b.toRadixString(16)}, ";});
      bytesSerStr += "]";
      print("msg=$msg\nsize=${serData.lengthInBytes} | $bytesSerStr");

      var msgD = ser.deserialize(serData);
      print("msgD=$msgD");
      expect(msg == msgD, true);
      print("Match? ${msg == msgD}");
    });

    imc.Abort msg = (imc.AbortBuilder()
        ..src = 0x4001
        ..timestamp = DateTime.utc(1970)
      ).build();
    var ser = imc.AbortSerializer();
    var dataSer = ser.serialize(msg);
    var bufferSer = dataSer.buffer;
    var serData = bufferSer.asUint8List(dataSer.offsetInBytes, dataSer.lengthInBytes);
    var bytesSerStr = "[";
    serData.forEach((b) {bytesSerStr +="0x${b.toRadixString(16)}, ";});
    bytesSerStr += "]";
    print("msg=$msg\nsize=${serData.lengthInBytes} | $bytesSerStr");

    var msgD = ser.deserialize(serData);
    print("msgD=$msgD");
    expect(msg == msgD, true);
    print("Match? ${msg == msgD}");
  });

  test('serialize crc test', () {
    imc.Abort msg = (imc.AbortBuilder()
        ..src = 0x4001
        ..timestamp = DateTime.utc(1970)
      ).build();
    var ser = imc.AbortSerializer();
    var dataSer = ser.serialize(msg);
    dataSer.setUint16(dataSer.lengthInBytes - 2, 0);
    var bufferSer = dataSer.buffer;
    var serData = bufferSer.asUint8List(dataSer.offsetInBytes, dataSer.lengthInBytes);
    var bytesSerStr = "[";
    serData.forEach((b) {bytesSerStr +="0x${b.toRadixString(16)}, ";});
    bytesSerStr += "]";
    print("msg=$msg\nsize=${serData.lengthInBytes} | $bytesSerStr");
    var msgD = ser.deserialize(serData);
    expect(msgD, null);
  });

//   var list = Utf8.encode('xxx');
// var data = list is Uint8List ? list.buffer : new Uint8List.fromList(list).buffer;

}
