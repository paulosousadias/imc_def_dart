#!/usr/bin/env bash
flutter pub run imc_def:imc_generator \
    && flutter format lib/src/imc_*.dart
