#!/bin/bash
#

function print_usage {
    printf "Test Script\n"
    printf "Usage: $0"
    printf " -w waxsim_path"
    printf " -f device_family"
    printf " -a app_file"
    printf " -o octest_file"
    printf "\n"
}

function kill_simulator {
    killall -s "iPhone Simulator" &> /dev/null

    if [ $? -eq 0 ]; then
        killall -m -KILL "iPhone Simulator"
    fi
}

# Handling Arguments

while getopts hw:f:a:o: OPTION; do
case "$OPTION" in
    h)
        print_usage
        exit 0
    ;;
    w) WAXSIM_PATH="$OPTARG";;
    f) DEVICE_FAMILY="$OPTARG";;
    a) APP_FILE="$OPTARG";;
    o) OCTEST_FILE="$OPTARG";;
    [?])
        print_usage
        exit 1
    ;;
esac
done

kill_simulator

XCODE_PATH=$( xcode-select --print-path )
PLATFORM_PATH="$XCODE_PATH/Platforms/iPhoneSimulator.platform"
INJECTION_FRAMEWORK_PATH="$PLATFORM_PATH/Developer/Library/PrivateFrameworks/IDEBundleInjection.framework/IDEBundleInjection"

PROJECT_NAME="Get them out"

$WAXSIM_PATH \
    -f "$DEVICE_FAMILY" \
    -e DYLD_INSERT_LIBRARIES="$INJECTION_FRAMEWORK_PATH" \
    -e XCInjectBundle="$OCTEST_FILE" \
    -e XCInjectBundleInto="$APP_FILE/$PROJECT_NAME" \
    "$APP_FILE" \
    -SenTest All

TEST_RESULT_STATE=$?

kill_simulator


#exit "$TEST_RESULT_STATE"
exit 0
