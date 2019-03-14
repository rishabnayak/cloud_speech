///
//  Generated code. Do not modify.
//  source: google/longrunning/operations.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async' as $async;

import 'package:grpc/service_api.dart' as $grpc;
import 'operations.pb.dart';
import '../protobuf/empty.pb.dart' as $0;
export 'operations.pb.dart';

class OperationsClient extends $grpc.Client {
  static final _$listOperations =
      new $grpc.ClientMethod<ListOperationsRequest, ListOperationsResponse>(
          '/google.longrunning.Operations/ListOperations',
          (ListOperationsRequest value) => value.writeToBuffer(),
          (List<int> value) => new ListOperationsResponse.fromBuffer(value));
  static final _$getOperation =
      new $grpc.ClientMethod<GetOperationRequest, Operation>(
          '/google.longrunning.Operations/GetOperation',
          (GetOperationRequest value) => value.writeToBuffer(),
          (List<int> value) => new Operation.fromBuffer(value));
  static final _$deleteOperation =
      new $grpc.ClientMethod<DeleteOperationRequest, $0.Empty>(
          '/google.longrunning.Operations/DeleteOperation',
          (DeleteOperationRequest value) => value.writeToBuffer(),
          (List<int> value) => new $0.Empty.fromBuffer(value));
  static final _$cancelOperation =
      new $grpc.ClientMethod<CancelOperationRequest, $0.Empty>(
          '/google.longrunning.Operations/CancelOperation',
          (CancelOperationRequest value) => value.writeToBuffer(),
          (List<int> value) => new $0.Empty.fromBuffer(value));
  static final _$waitOperation =
      new $grpc.ClientMethod<WaitOperationRequest, Operation>(
          '/google.longrunning.Operations/WaitOperation',
          (WaitOperationRequest value) => value.writeToBuffer(),
          (List<int> value) => new Operation.fromBuffer(value));

  OperationsClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<ListOperationsResponse> listOperations(
      ListOperationsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listOperations, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<Operation> getOperation(GetOperationRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getOperation, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.Empty> deleteOperation(DeleteOperationRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteOperation, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.Empty> cancelOperation(CancelOperationRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$cancelOperation, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<Operation> waitOperation(WaitOperationRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$waitOperation, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }
}

abstract class OperationsServiceBase extends $grpc.Service {
  String get $name => 'google.longrunning.Operations';

  OperationsServiceBase() {
    $addMethod(
        new $grpc.ServiceMethod<ListOperationsRequest, ListOperationsResponse>(
            'ListOperations',
            listOperations_Pre,
            false,
            false,
            (List<int> value) => new ListOperationsRequest.fromBuffer(value),
            (ListOperationsResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<GetOperationRequest, Operation>(
        'GetOperation',
        getOperation_Pre,
        false,
        false,
        (List<int> value) => new GetOperationRequest.fromBuffer(value),
        (Operation value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<DeleteOperationRequest, $0.Empty>(
        'DeleteOperation',
        deleteOperation_Pre,
        false,
        false,
        (List<int> value) => new DeleteOperationRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<CancelOperationRequest, $0.Empty>(
        'CancelOperation',
        cancelOperation_Pre,
        false,
        false,
        (List<int> value) => new CancelOperationRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<WaitOperationRequest, Operation>(
        'WaitOperation',
        waitOperation_Pre,
        false,
        false,
        (List<int> value) => new WaitOperationRequest.fromBuffer(value),
        (Operation value) => value.writeToBuffer()));
  }

  $async.Future<ListOperationsResponse> listOperations_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return listOperations(call, await request);
  }

  $async.Future<Operation> getOperation_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return getOperation(call, await request);
  }

  $async.Future<$0.Empty> deleteOperation_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return deleteOperation(call, await request);
  }

  $async.Future<$0.Empty> cancelOperation_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return cancelOperation(call, await request);
  }

  $async.Future<Operation> waitOperation_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return waitOperation(call, await request);
  }

  $async.Future<ListOperationsResponse> listOperations(
      $grpc.ServiceCall call, ListOperationsRequest request);
  $async.Future<Operation> getOperation(
      $grpc.ServiceCall call, GetOperationRequest request);
  $async.Future<$0.Empty> deleteOperation(
      $grpc.ServiceCall call, DeleteOperationRequest request);
  $async.Future<$0.Empty> cancelOperation(
      $grpc.ServiceCall call, CancelOperationRequest request);
  $async.Future<Operation> waitOperation(
      $grpc.ServiceCall call, WaitOperationRequest request);
}
