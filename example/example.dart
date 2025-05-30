// Copyright (c) 2019-2025, Paulo Sousa Dias. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:imc_def/imc_def.dart' as imc;

//InternetAddress.ANY_IP_V4
void main() async {
  imc.alternativeSyncNumbers = [0x0102];

  await RawDatagramSocket.bind(InternetAddress.anyIPv4, 4444)
      .then((RawDatagramSocket socket) {
    print('Datagram socket ready to receive');
    print('${socket.address.address}:${socket.port}');
    socket.listen((RawSocketEvent e) {
      Datagram? d = socket.receive();
      if (d == null) return;

      try {
        var data = d.data;
        var uData = Uint8List.fromList(data);
        var bData = uData.buffer.asByteData();
        var (msgId, syncNumber) =
            imc.getMessageIdFromHeaderIfSyncNumberOk(bData, 0);
        var bytesSerStr = " [";
        for (var b in uData) {
          bytesSerStr += "0x${b.toRadixString(16)}, ";
        }
        bytesSerStr += "]";
        print(
            "SyncNumber: 0x${syncNumber?.toRadixString(16).padLeft(4, '0').toUpperCase()}  "
            "|  Msg ID: $msgId\nsize=${uData.lengthInBytes} | $bytesSerStr");
        if (msgId == imc.ImcId.nullId) return;

        var serializer = imc
            .messagesSerializers[imc.idsToMessages[msgId] ?? imc.ImcId.nullId]
            ?.call();
        print("Msg Serializer: $serializer");
        if (serializer == null) return;

        var msg = serializer.deserialize(uData);
        print('Datagram from ${d.address.address}:${d.port}: \n$msg');
      } catch (e) {
        print("Error: $e");
      }
    });

    // ignore: unused_local_variable
    var hbMsgB = imc.HeartbeatBuilder()
      ..src = 0x16
      ..dst = 0x17;
    // ignore: unused_local_variable
    var dstEnt = 0;
    Timer.periodic(Duration(milliseconds: 300), (Timer t) {
      var msg = (hbMsgB
            ..timestamp = DateTime.now()
            ..dstEnt = dstEnt++ & 0xFF)
          .build();
      //stdout.write("Sending ${msg.abbrev}  \n");
      var dataB =
          imc.messagesIdsSerializers[msg.msgId]?.call().serialize(msg, 0x0102);
      var bytes =
          dataB?.buffer.asUint8List(dataB.offsetInBytes, dataB.lengthInBytes);
      if (dataB != null && bytes != null) {
        var bs = socket.send(bytes, InternetAddress("0.0.0.0"), 4444);
        print(
            "Bytes sent $bs | ${dataB.offsetInBytes}, ${dataB.lengthInBytes}");
      }
    });
  });
}
