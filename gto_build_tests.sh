#!/bin/bash
#

function print_usage {
   printf "Tests Command Line Build Script\n"
   printf "Usage: $0"
   printf " -c configuration"
   printf " -p platform"
   printf " -s src_dir"
   printf " -n build_number"
   printf " -d dest_dir"
   printf "\n"
}

# Handling Arguments

while getopts hc:p:s:n:d: OPTION; do
case "$OPTION" in
    h)
        print_usage
        exit 0
    ;;
    c) CONFIG="$OPTARG";;
    p) PLATFORM="$OPTARG";;
    s) SRC="$OPTARG";;
    n) BUILD_NUMBER="$OPTARG";;
    d) DEST_DIR="$OPTARG";;
    [?])
        print_usage
        exit 1
    ;;
esac
done

PROJECT_NAME="Get them out"

APP_FILE=$SRC/build/$CONFIG-$PLATFORM/"$PROJECT_NAME".app
DSYM_FILE="$APP_FILE.dSYM"
TEST_FILE=$SRC/build/$CONFIG-$PLATFORM/"$PROJECT_NAME"Tests.octest

echo "##### Clean Up #####"

echo "##### Building Get them out #####"

rm -rf $SRC/build

xcodebuild \
    -project $SRC/"$PROJECT_NAME".xcodeproj \
    -target "$PROJECT_NAME"Tests \
    -sdk "$PLATFORM" \
    -configuration "$CONFIG" \
    clean build

if [ $? != 0 ]; then
    exit 1
fi

if [ -n "$DEST_DIR" ]; then
    cp -rv "$APP_FILE" "$DSYM_FILE" "$TEST_FILE" "$DEST_DIR"
fi

echo "##### Success! #####"
