#!/usr/bin/env sh

marathon-cloud -api-key "$ORB_API_KEY" -apk "$ORB_APPLICATION" -testapk "$ORB_TEST_APPLICATION" -o "$ORB_OUTPUT"
