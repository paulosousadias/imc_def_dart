# Changelog

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
