# imc_def

A dart package for IMC messages manipulation.

## Getting Started

This package is both a generator and an IMC messages manipulation
package.

## Using the package

To use you need to import into your pubspec.yaml such as:

- In case to use the package with the bundle generated IMC

```dart
   imc_def: ^x.x.x
```

- In case you want to use the source to generate your own code
  
```dart
  imc_def:
    path: ../imc_def_dart
```

In your code just import: 

```dart
import 'package:imc_def/imc_def.dart' as imc;
```

An example of use is the following:

```dart
...
var hbMsgB = imc.HeartbeatBuilder();
new Timer.periodic(new Duration(milliseconds: 300), (Timer t) {
    var msg = (hbMsgB..timestamp = DateTime.now()).build();
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
...
```

This project is a starting point for a Dart
[package](https://flutter.io/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our
[online documentation](https://flutter.io/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
