import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:imc_def/imc_def.dart' as imc;

//InternetAddress.ANY_IP_V4
void main(List<String> args) {
  RawDatagramSocket.bind(InternetAddress.anyIPv4, 4444)
      .then((RawDatagramSocket socket) {
    print('Datagram socket ready to receive');
    print('${socket.address.address}:${socket.port}');
    socket.listen((RawSocketEvent e) {
      Datagram d = socket.receive();
      if (d == null) return;

      try {
        var data = d.data;
        var uData = Uint8List.fromList(data);
        var bData = uData.buffer.asByteData();
        var msgId = imc.getMessageIdFromHeaderIfSyncNumberOk(bData, 0);
        var bytesSerStr = " [";
        uData.forEach((b) {
          bytesSerStr += "0x${b.toRadixString(16)}, ";
        });
        bytesSerStr += "]";
        print("Msg ID: $msgId\nsize=${uData.lengthInBytes} | $bytesSerStr");
        if (msgId == imc.ImcId.nullId) return;

        var serializer = imc
            .messagesSerializers[imc.idsToMessages[msgId] ?? imc.ImcId.nullId];
        print("Msg Serializer: $serializer");
        if (serializer == null) return;

        var msg = serializer.deserialize(uData);
        print('Datagram from ${d.address.address}:${d.port}: \n$msg');
      } catch (e) {
        print("Error: $e");
      }
    });

    var hbMsgB = imc.HeartbeatBuilder();
    new Timer.periodic(new Duration(milliseconds: 300), (Timer t) {
      var msg = (hbMsgB..timestamp = DateTime.now()).build();
      //stdout.write("Sending ${msg.abbrev}  \n");
      var dataB = imc.messagesIdsSerializers[msg.msgId]?.serialize(msg);
      var bytes = dataB?.buffer?.asUint8List(dataB.offsetInBytes, dataB.lengthInBytes);
      if (bytes != null) {
        var bs = socket.send(
            bytes,
            InternetAddress("0.0.0.0"),
            6002);
        print("Bytes sent $bs | ${dataB.offsetInBytes}, ${dataB.lengthInBytes}");
      }
    });
  });
}
