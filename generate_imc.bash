#!/usr/bin/env bash
dart run imc_def:imc_generator \
    && dart format lib/src/imc_*.dart
