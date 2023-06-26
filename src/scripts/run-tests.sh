#!/usr/bin/env sh

API_KEY=$(eval echo \$"$ORB_API_KEY_ENV_VAR")

marathon-cloud -api-key "$API_KEY" -app "$ORB_APPLICATION" -testapp "$ORB_TEST_APPLICATION" -o "$ORB_OUTPUT" -platform "$ORB_PLATFORM"
