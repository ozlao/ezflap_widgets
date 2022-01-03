#!/bin/bash
cat template.pubspec.yaml | grep -v forDevelopment > pubspec.yaml
