///
//  Generated code. Do not modify.
//  source: google/longrunning/operations.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, Map, override;

import 'package:protobuf/protobuf.dart' as $pb;

import '../protobuf/any.pb.dart' as $1;
import '../rpc/status.pb.dart' as $2;
import '../protobuf/duration.pb.dart' as $3;

enum Operation_Result { error, response, notSet }

class Operation extends $pb.GeneratedMessage {
  static const Map<int, Operation_Result> _Operation_ResultByTag = {
    4: Operation_Result.error,
    5: Operation_Result.response,
    0: Operation_Result.notSet
  };
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Operation',
      package: const $pb.PackageName('google.longrunning'))
    ..aOS(1, 'name')
    ..a<$1.Any>(
        2, 'metadata', $pb.PbFieldType.OM, $1.Any.getDefault, $1.Any.create)
    ..aOB(3, 'done')
    ..a<$2.Status>(
        4, 'error', $pb.PbFieldType.OM, $2.Status.getDefault, $2.Status.create)
    ..a<$1.Any>(
        5, 'response', $pb.PbFieldType.OM, $1.Any.getDefault, $1.Any.create)
    ..oo(0, [4, 5])
    ..hasRequiredFields = false;

  Operation() : super();
  Operation.fromBuffer(List<int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  Operation.fromJson(String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  Operation clone() => new Operation()..mergeFromMessage(this);
  Operation copyWith(void Function(Operation) updates) =>
      super.copyWith((message) => updates(message as Operation));
  $pb.BuilderInfo get info_ => _i;
  static Operation create() => new Operation();
  Operation createEmptyInstance() => create();
  static $pb.PbList<Operation> createRepeated() => new $pb.PbList<Operation>();
  static Operation getDefault() => _defaultInstance ??= create()..freeze();
  static Operation _defaultInstance;

  Operation_Result whichResult() => _Operation_ResultByTag[$_whichOneof(0)];
  void clearResult() => clearField($_whichOneof(0));

  String get name => $_getS(0, '');
  set name(String v) {
    $_setString(0, v);
  }

  bool hasName() => $_has(0);
  void clearName() => clearField(1);

  $1.Any get metadata => $_getN(1);
  set metadata($1.Any v) {
    setField(2, v);
  }

  bool hasMetadata() => $_has(1);
  void clearMetadata() => clearField(2);

  bool get done => $_get(2, false);
  set done(bool v) {
    $_setBool(2, v);
  }

  bool hasDone() => $_has(2);
  void clearDone() => clearField(3);

  $2.Status get error => $_getN(3);
  set error($2.Status v) {
    setField(4, v);
  }

  bool hasError() => $_has(3);
  void clearError() => clearField(4);

  $1.Any get response => $_getN(4);
  set response($1.Any v) {
    setField(5, v);
  }

  bool hasResponse() => $_has(4);
  void clearResponse() => clearField(5);
}

class GetOperationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('GetOperationRequest',
      package: const $pb.PackageName('google.longrunning'))
    ..aOS(1, 'name')
    ..hasRequiredFields = false;

  GetOperationRequest() : super();
  GetOperationRequest.fromBuffer(List<int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  GetOperationRequest.fromJson(String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  GetOperationRequest clone() =>
      new GetOperationRequest()..mergeFromMessage(this);
  GetOperationRequest copyWith(void Function(GetOperationRequest) updates) =>
      super.copyWith((message) => updates(message as GetOperationRequest));
  $pb.BuilderInfo get info_ => _i;
  static GetOperationRequest create() => new GetOperationRequest();
  GetOperationRequest createEmptyInstance() => create();
  static $pb.PbList<GetOperationRequest> createRepeated() =>
      new $pb.PbList<GetOperationRequest>();
  static GetOperationRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static GetOperationRequest _defaultInstance;

  String get name => $_getS(0, '');
  set name(String v) {
    $_setString(0, v);
  }

  bool hasName() => $_has(0);
  void clearName() => clearField(1);
}

class ListOperationsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ListOperationsRequest',
      package: const $pb.PackageName('google.longrunning'))
    ..aOS(1, 'filter')
    ..a<int>(2, 'pageSize', $pb.PbFieldType.O3)
    ..aOS(3, 'pageToken')
    ..aOS(4, 'name')
    ..hasRequiredFields = false;

  ListOperationsRequest() : super();
  ListOperationsRequest.fromBuffer(List<int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  ListOperationsRequest.fromJson(String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  ListOperationsRequest clone() =>
      new ListOperationsRequest()..mergeFromMessage(this);
  ListOperationsRequest copyWith(
          void Function(ListOperationsRequest) updates) =>
      super.copyWith((message) => updates(message as ListOperationsRequest));
  $pb.BuilderInfo get info_ => _i;
  static ListOperationsRequest create() => new ListOperationsRequest();
  ListOperationsRequest createEmptyInstance() => create();
  static $pb.PbList<ListOperationsRequest> createRepeated() =>
      new $pb.PbList<ListOperationsRequest>();
  static ListOperationsRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ListOperationsRequest _defaultInstance;

  String get filter => $_getS(0, '');
  set filter(String v) {
    $_setString(0, v);
  }

  bool hasFilter() => $_has(0);
  void clearFilter() => clearField(1);

  int get pageSize => $_get(1, 0);
  set pageSize(int v) {
    $_setSignedInt32(1, v);
  }

  bool hasPageSize() => $_has(1);
  void clearPageSize() => clearField(2);

  String get pageToken => $_getS(2, '');
  set pageToken(String v) {
    $_setString(2, v);
  }

  bool hasPageToken() => $_has(2);
  void clearPageToken() => clearField(3);

  String get name => $_getS(3, '');
  set name(String v) {
    $_setString(3, v);
  }

  bool hasName() => $_has(3);
  void clearName() => clearField(4);
}

class ListOperationsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo(
      'ListOperationsResponse',
      package: const $pb.PackageName('google.longrunning'))
    ..pc<Operation>(1, 'operations', $pb.PbFieldType.PM, Operation.create)
    ..aOS(2, 'nextPageToken')
    ..hasRequiredFields = false;

  ListOperationsResponse() : super();
  ListOperationsResponse.fromBuffer(List<int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  ListOperationsResponse.fromJson(String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  ListOperationsResponse clone() =>
      new ListOperationsResponse()..mergeFromMessage(this);
  ListOperationsResponse copyWith(
          void Function(ListOperationsResponse) updates) =>
      super.copyWith((message) => updates(message as ListOperationsResponse));
  $pb.BuilderInfo get info_ => _i;
  static ListOperationsResponse create() => new ListOperationsResponse();
  ListOperationsResponse createEmptyInstance() => create();
  static $pb.PbList<ListOperationsResponse> createRepeated() =>
      new $pb.PbList<ListOperationsResponse>();
  static ListOperationsResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ListOperationsResponse _defaultInstance;

  List<Operation> get operations => $_getList(0);

  String get nextPageToken => $_getS(1, '');
  set nextPageToken(String v) {
    $_setString(1, v);
  }

  bool hasNextPageToken() => $_has(1);
  void clearNextPageToken() => clearField(2);
}

class CancelOperationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo(
      'CancelOperationRequest',
      package: const $pb.PackageName('google.longrunning'))
    ..aOS(1, 'name')
    ..hasRequiredFields = false;

  CancelOperationRequest() : super();
  CancelOperationRequest.fromBuffer(List<int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  CancelOperationRequest.fromJson(String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  CancelOperationRequest clone() =>
      new CancelOperationRequest()..mergeFromMessage(this);
  CancelOperationRequest copyWith(
          void Function(CancelOperationRequest) updates) =>
      super.copyWith((message) => updates(message as CancelOperationRequest));
  $pb.BuilderInfo get info_ => _i;
  static CancelOperationRequest create() => new CancelOperationRequest();
  CancelOperationRequest createEmptyInstance() => create();
  static $pb.PbList<CancelOperationRequest> createRepeated() =>
      new $pb.PbList<CancelOperationRequest>();
  static CancelOperationRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static CancelOperationRequest _defaultInstance;

  String get name => $_getS(0, '');
  set name(String v) {
    $_setString(0, v);
  }

  bool hasName() => $_has(0);
  void clearName() => clearField(1);
}

class DeleteOperationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo(
      'DeleteOperationRequest',
      package: const $pb.PackageName('google.longrunning'))
    ..aOS(1, 'name')
    ..hasRequiredFields = false;

  DeleteOperationRequest() : super();
  DeleteOperationRequest.fromBuffer(List<int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  DeleteOperationRequest.fromJson(String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  DeleteOperationRequest clone() =>
      new DeleteOperationRequest()..mergeFromMessage(this);
  DeleteOperationRequest copyWith(
          void Function(DeleteOperationRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteOperationRequest));
  $pb.BuilderInfo get info_ => _i;
  static DeleteOperationRequest create() => new DeleteOperationRequest();
  DeleteOperationRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteOperationRequest> createRepeated() =>
      new $pb.PbList<DeleteOperationRequest>();
  static DeleteOperationRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static DeleteOperationRequest _defaultInstance;

  String get name => $_getS(0, '');
  set name(String v) {
    $_setString(0, v);
  }

  bool hasName() => $_has(0);
  void clearName() => clearField(1);
}

class WaitOperationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('WaitOperationRequest',
      package: const $pb.PackageName('google.longrunning'))
    ..aOS(1, 'name')
    ..a<$3.Duration>(2, 'timeout', $pb.PbFieldType.OM, $3.Duration.getDefault,
        $3.Duration.create)
    ..hasRequiredFields = false;

  WaitOperationRequest() : super();
  WaitOperationRequest.fromBuffer(List<int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  WaitOperationRequest.fromJson(String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  WaitOperationRequest clone() =>
      new WaitOperationRequest()..mergeFromMessage(this);
  WaitOperationRequest copyWith(void Function(WaitOperationRequest) updates) =>
      super.copyWith((message) => updates(message as WaitOperationRequest));
  $pb.BuilderInfo get info_ => _i;
  static WaitOperationRequest create() => new WaitOperationRequest();
  WaitOperationRequest createEmptyInstance() => create();
  static $pb.PbList<WaitOperationRequest> createRepeated() =>
      new $pb.PbList<WaitOperationRequest>();
  static WaitOperationRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static WaitOperationRequest _defaultInstance;

  String get name => $_getS(0, '');
  set name(String v) {
    $_setString(0, v);
  }

  bool hasName() => $_has(0);
  void clearName() => clearField(1);

  $3.Duration get timeout => $_getN(1);
  set timeout($3.Duration v) {
    setField(2, v);
  }

  bool hasTimeout() => $_has(1);
  void clearTimeout() => clearField(2);
}

class OperationInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('OperationInfo',
      package: const $pb.PackageName('google.longrunning'))
    ..aOS(1, 'responseType')
    ..aOS(2, 'metadataType')
    ..hasRequiredFields = false;

  OperationInfo() : super();
  OperationInfo.fromBuffer(List<int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  OperationInfo.fromJson(String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  OperationInfo clone() => new OperationInfo()..mergeFromMessage(this);
  OperationInfo copyWith(void Function(OperationInfo) updates) =>
      super.copyWith((message) => updates(message as OperationInfo));
  $pb.BuilderInfo get info_ => _i;
  static OperationInfo create() => new OperationInfo();
  OperationInfo createEmptyInstance() => create();
  static $pb.PbList<OperationInfo> createRepeated() =>
      new $pb.PbList<OperationInfo>();
  static OperationInfo getDefault() => _defaultInstance ??= create()..freeze();
  static OperationInfo _defaultInstance;

  String get responseType => $_getS(0, '');
  set responseType(String v) {
    $_setString(0, v);
  }

  bool hasResponseType() => $_has(0);
  void clearResponseType() => clearField(1);

  String get metadataType => $_getS(1, '');
  set metadataType(String v) {
    $_setString(1, v);
  }

  bool hasMetadataType() => $_has(1);
  void clearMetadataType() => clearField(2);
}

class Operations {
  static final $pb.Extension operationInfo = new $pb.Extension<OperationInfo>(
      'google.protobuf.MethodOptions',
      'operationInfo',
      1049,
      $pb.PbFieldType.OM,
      OperationInfo.getDefault,
      OperationInfo.create);
  static void registerAllExtensions($pb.ExtensionRegistry registry) {
    registry.add(operationInfo);
  }
}
