# imc_def

[![pub package](https://img.shields.io/pub/v/imc_def?color=blue)](https://pub.dev/packages/imc_def)

A dart package for IMC messages manipulation.

## Getting Started

This package is both a generator and an IMC messages manipulation
package.

The IMC definition is found [here](https://github.com/LSTS/imc).

## Using the package

To use you need to import into your pubspec.yaml such as:

- In case to use the package with the bundle generated IMC

```yaml
dependencies:
   imc_def: ^x.x.x
```

Don't forget to `flutter pub get`.

- In case you want to use the source to generate your own code
add your settings to your project's pubspec.yaml file or create
a file in your root project folder named imc_def.yaml with your settings.
  
```yaml
imc_def:
  imc: <path_to_imc_file_definitions>
  githash: <git repo owner>@<git hash reduced> # please add this info (example for LSTS would be 'lsts@f19a343')
  # package: imc # optional, will create in src inside the folder(s)
```

After adding your settings, run the package with

```bash
flutter pub run imc_def:imc_generator
```

In your code just import:

```dart
import 'package:imc_def/imc_def.dart' as imc;
```

or if generating:

```dart
import 'package:<project_name>/src/<package/>imc_def.dart' as imc;
```

An example of use is the following:

```dart
...
var hbMsgB = imc.HeartbeatBuilder()
  ..src = 0x16
  ..dst = 0x17;
var dstEnt = 0;
Timer.periodic(Duration(milliseconds: 300), (Timer t) {
  var msg = (hbMsgB
        ..timestamp = DateTime.now()
        ..dstEnt = dstEnt++ & 0xFF)
      .build();
  var dataB = imc.messagesIdsSerializers[msg.msgId]?.call().serialize(msg);
  var bytes =
      dataB?.buffer.asUint8List(dataB.offsetInBytes, dataB.lengthInBytes);
  if (dataB != null && bytes != null) {
    var bs = socket.send(bytes, InternetAddress("0.0.0.0"), 4444);
    print(
        "Bytes sent $bs | ${dataB.offsetInBytes}, ${dataB.lengthInBytes}");
  }
});
...
```

To use alternative sync numbers also do:

```dart
...
imc.alternativeSyncNumbers = [0x0102];
...
var hbMsgB = imc.HeartbeatBuilder()
  ..src = 0x16
  ..dst = 0x17;
var dstEnt = 0;
Timer.periodic(Duration(milliseconds: 300), (Timer t) {
  var msg = (hbMsgB
        ..timestamp = DateTime.now()
        ..dstEnt = dstEnt++ & 0xFF)
      .build();
  var dataB = imc.messagesIdsSerializers[msg.msgId]?.call().serialize(msg, 0x0102);
  var bytes =
      dataB?.buffer.asUint8List(dataB.offsetInBytes, dataB.lengthInBytes);
  if (dataB != null && bytes != null) {
    var bs = socket.send(bytes, InternetAddress("0.0.0.0"), 4444);
    print(
        "Bytes sent $bs | ${dataB.offsetInBytes}, ${dataB.lengthInBytes}");
  }
});
...
```