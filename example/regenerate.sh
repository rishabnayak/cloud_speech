#!/usr/bin/env bash

if [ ! -d "$PROTOBUF" ]; then
  echo "Please set the PROTOBUF environment variable to your clone of google/protobuf."
  exit -1
fi

if [ ! -d "$GOOGLEAPIS" ]; then
  echo "Please set the GOOGLEAPIS environment variable to your clone of googleapis/googleapis."
  exit -1
fi

PROTOC="protoc --dart_out=grpc:lib/src/generated -I$PROTOBUF/src -I$GOOGLEAPIS"

$PROTOC $GOOGLEAPIS/google/cloud/speech/v1/cloud_speech.proto

$PROTOC $GOOGLEAPIS/google/api/annotations.proto
$PROTOC $GOOGLEAPIS/google/api/http.proto

$PROTOC $GOOGLEAPIS/google/rpc/status.proto

$PROTOC $GOOGLEAPIS/google/longrunning/operations.proto

$PROTOC $PROTOBUF/src/google/protobuf/any.proto
$PROTOC $PROTOBUF/src/google/protobuf/duration.proto
$PROTOC $PROTOBUF/src/google/protobuf/empty.proto
$PROTOC $PROTOBUF/src/google/protobuf/timestamp.proto

dartfmt -w lib/src/generated
