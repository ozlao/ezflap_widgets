#!/bin/bash
cat template.pubspec.yaml | grep -v forRelease > pubspec.yaml
