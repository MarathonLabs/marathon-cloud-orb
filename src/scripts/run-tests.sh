#!/usr/bin/env sh

API_KEY=$(eval echo \$"$ORB_API_KEY_ENV_VAR")
echo "$ORB_API_KEY_ENV_VAR"
echo "$API_KEY"

marathon-cloud -api-key "$API_KEY" -apk "$ORB_APPLICATION" -testapk "$ORB_TEST_APPLICATION" -o "$ORB_OUTPUT"
