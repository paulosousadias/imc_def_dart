# Changelog

## [5.0.1] - 15 Jun 2024

* Fix to return always the deserialized sync number as the not reversed.

## [5.0.0] - 15 Jun 2024

* **Breaking change**: Reworked to use alternative syncNumbers to deserialize and also serialize with a specific syncNumber (**Use with care**).
* Set minimum dart version to v3.4.
* Cleanup formating warnings from lints package.
* Updated IMC to v5.4.30 @Git#867be70.

## [4.0.0] - 20 Ago 2023

* Update dependencies.
* **Potential breaking change** removed dependency of built_value.
* Added option of toJson to message and fromJson on builder.
* Small tweak on BuilderWithInstanciator return (should).
* Adding possibility to change the endianness to the serialization (CAREFUL).

## [3.0.1] - 10 Jun 2022

* Adding sha256 hash of the imc used.
* Adding advance usage way to programatically change the sync number (**Use with care**).
* Updated dependencies.
* Cleanup formating warnings from lints package.
* Updated IMC to v5.4.30 @Git#6038ec6.

## [3.0.0] - 19 Dec 2021

* Making it now a Dart package and not a Flutter.
* Replacing flutter_lints (pedantic was deprecated) with lints.
* Example is now null safety.
* **Breaking change**: IMC info and version constants follow now camelcase convention.
* **Breaking change**: Enumerated and bitfield values are now camelcase.
* Cleanup formating warnings from lints package.
* Updated IMC to v5.4.30 @Git#8be592a.

## [2.0.0] - 16 Apr 2021

* Null safety support.
* **Breaking change**: On Bitfield#fromBits you must not use null but [] if you want an empty one.
* For bitfields you can call empty() to get an empty bitfield.
* Minimal SDK is now 2.12.0.

## [2.0.0-nullsafety.1] - 26 Mar 2021

* Pre-release of null safety migration, thus contains **breaking changes**.

## [1.0.1] - 24 Mar 2021

* Updated dependencies: built_value: ^8.0.4, xml: ^5.0.2, crypto: ^3.0.0, yaml: ^3.1.0, collection: ^1.15.0.
* Added pedantic: ^1.9.2 for formatting warnings.
* Reformated code.
* Added githash property for imc generation. (Filled by hand.)
* Updated IMC to v5.4.11 @Git#f19a343.

## [1.0.0] - 24 Mai 2020

* Added dependencies: collection to ^1.14.12.
* Fix comparing message-list and rawdata. Also comparing doubles with
  delta error.
* Cleaning with the help of pedantic package (but not added permanently
  as dependency).

## [0.7.2] - 10 Mai 2020

* Updated dependencies: built_value: ^7.0.1, xml: ^3.6.1, crypto: ^2.1.4,
  and yaml: ^2.2.1.

## [0.7.1] - 2 Jan 2020

* Fixing README.md example.
* Adding analysis_options.yaml and clear warnings.

## [0.7.0] - 18 Dec 2019

* Changing generated messagesBuilders, messagesSerializers, and
  messagesIdsSerializers to be a function that creates a new instance on call.
  (BREAKING CHANGE)

## [0.6.5] - 15 Nov 2019

* Adding factory methods to the messages.

## [0.6.4] - 2 Nov 2019

* Updated dependencies: built_value: ^7.0.0.

## [0.6.3+1] - 23 Oct 2019

* Cleanups for publishing.

## [0.6.3] - 23 Oct 2019

* Cleanups.

## [0.6.2] - 23 Oct 2019

* Fix toPrettyString() problem in BitfieldType.

## [0.6.1] - 14 Oct 2019

* Added toPrettyString() to EnumType and BitfieldType.
* Updated dependencies: built_value: ^6.7.1; crypto: ^2.1.3.

## [0.6.0] - 09 Oct 2019

* Adding reading generator parameters by the `pubspec.yaml` or `imc_def.yaml`
  files for generating the IMC code on production.

## [0.5.1] - 05 Oct 2019

* Now you can test EnumLike (EnumType and BitfieldType) with ==.
* Added test for checking if BitfieldType has bits at '1'.

## [0.5.0] - 14 Jul 2019

* First working base with IMC v5.4.11 @Git#d60a40a8c55bef407bbf1f49cfc1ab78103a3cc3.

## [0.0.1] - n/a

* Initial release.
