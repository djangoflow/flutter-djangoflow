#!/bin/sh
export TARGET_DIR=./openapi
export DART_POST_PROCESS_FILE="/usr/local/bin/dartfmt -w"
export API_VERSION=v1
cd "$(dirname "${BASH_SOURCE[0]}")"/.. || exit
hostname=${1-https://api.djangoflow.com}

[ "$1" == "-l" ] && hostname="http://127.0.0.1:8000"
[ "$1" == "-d" ] && hostname="https://api.djangoflow.com"
[ -d ${TARGET_DIR} ] || mkdir -p ${TARGET_DIR}
${OPENAPI_GENERATOR:-openapi-generator} generate -g dart-dio -p browserClient=false -p nullableFields=true \
  -p serializationLibrary=json_serializable \
    -i ${hostname}/api/${API_VERSION}/schema -o ${TARGET_DIR} \
  # Apply patches here if needed
  cd ${TARGET_DIR} \
  && grep -rl 'includeIfNull: truefalse' lib  | xargs sed -i '' 's/includeIfNull: truefalse/includeIfNull: true/g' \
  && flutter pub get \
  && flutter pub run build_runner build --delete-conflicting-outputs