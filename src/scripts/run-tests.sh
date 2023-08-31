#!/usr/bin/env sh

API_KEY=$(eval echo \$"$ORB_API_KEY_ENV_VAR")

command="marathon-cloud -api-key \"$API_KEY\" -app \"$ORB_APPLICATION\" -testapp \"$ORB_TEST_APPLICATION\" -o \"$ORB_OUTPUT\" -platform \"$ORB_PLATFORM\""

if [ -n "$ORB_OS_VERSION" ]; then
    command="$command -os-version \"$ORB_OS_VERSION\""
fi

if [ -n "$ORB_LINK" ]; then
    command="$command -link \"$ORB_LINK\""
fi

if [ -n "$ORB_NAME" ]; then
    command="$command -name \"$ORB_NAME\""
fi

echo "Executing command: $command"
eval "$command"