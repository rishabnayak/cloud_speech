///
//  Generated code. Do not modify.
//  source: google/cloud/speech/v1/cloud_speech.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, Map, override;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../protobuf/timestamp.pb.dart' as $2;
import '../../../rpc/status.pb.dart' as $3;
import '../../../protobuf/duration.pb.dart' as $4;

import 'cloud_speech.pbenum.dart';

export 'cloud_speech.pbenum.dart';

class RecognizeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('RecognizeRequest',
      package: const $pb.PackageName('google.cloud.speech.v1'))
    ..a<RecognitionConfig>(1, 'config', $pb.PbFieldType.OM,
        RecognitionConfig.getDefault, RecognitionConfig.create)
    ..a<RecognitionAudio>(2, 'audio', $pb.PbFieldType.OM,
        RecognitionAudio.getDefault, RecognitionAudio.create)
    ..hasRequiredFields = false;

  RecognizeRequest() : super();
  RecognizeRequest.fromBuffer(List<int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  RecognizeRequest.fromJson(String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  RecognizeRequest clone() => new RecognizeRequest()..mergeFromMessage(this);
  RecognizeRequest copyWith(void Function(RecognizeRequest) updates) =>
      super.copyWith((message) => updates(message as RecognizeRequest));
  $pb.BuilderInfo get info_ => _i;
  static RecognizeRequest create() => new RecognizeRequest();
  RecognizeRequest createEmptyInstance() => create();
  static $pb.PbList<RecognizeRequest> createRepeated() =>
      new $pb.PbList<RecognizeRequest>();
  static RecognizeRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static RecognizeRequest _defaultInstance;

  RecognitionConfig get config => $_getN(0);
  set config(RecognitionConfig v) {
    setField(1, v);
  }

  bool hasConfig() => $_has(0);
  void clearConfig() => clearField(1);

  RecognitionAudio get audio => $_getN(1);
  set audio(RecognitionAudio v) {
    setField(2, v);
  }

  bool hasAudio() => $_has(1);
  void clearAudio() => clearField(2);
}

class LongRunningRecognizeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo(
      'LongRunningRecognizeRequest',
      package: const $pb.PackageName('google.cloud.speech.v1'))
    ..a<RecognitionConfig>(1, 'config', $pb.PbFieldType.OM,
        RecognitionConfig.getDefault, RecognitionConfig.create)
    ..a<RecognitionAudio>(2, 'audio', $pb.PbFieldType.OM,
        RecognitionAudio.getDefault, RecognitionAudio.create)
    ..hasRequiredFields = false;

  LongRunningRecognizeRequest() : super();
  LongRunningRecognizeRequest.fromBuffer(List<int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  LongRunningRecognizeRequest.fromJson(String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  LongRunningRecognizeRequest clone() =>
      new LongRunningRecognizeRequest()..mergeFromMessage(this);
  LongRunningRecognizeRequest copyWith(
          void Function(LongRunningRecognizeRequest) updates) =>
      super.copyWith(
          (message) => updates(message as LongRunningRecognizeRequest));
  $pb.BuilderInfo get info_ => _i;
  static LongRunningRecognizeRequest create() =>
      new LongRunningRecognizeRequest();
  LongRunningRecognizeRequest createEmptyInstance() => create();
  static $pb.PbList<LongRunningRecognizeRequest> createRepeated() =>
      new $pb.PbList<LongRunningRecognizeRequest>();
  static LongRunningRecognizeRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static LongRunningRecognizeRequest _defaultInstance;

  RecognitionConfig get config => $_getN(0);
  set config(RecognitionConfig v) {
    setField(1, v);
  }

  bool hasConfig() => $_has(0);
  void clearConfig() => clearField(1);

  RecognitionAudio get audio => $_getN(1);
  set audio(RecognitionAudio v) {
    setField(2, v);
  }

  bool hasAudio() => $_has(1);
  void clearAudio() => clearField(2);
}

enum StreamingRecognizeRequest_StreamingRequest {
  streamingConfig,
  audioContent,
  notSet
}

class StreamingRecognizeRequest extends $pb.GeneratedMessage {
  static const Map<int, StreamingRecognizeRequest_StreamingRequest>
      _StreamingRecognizeRequest_StreamingRequestByTag = {
    1: StreamingRecognizeRequest_StreamingRequest.streamingConfig,
    2: StreamingRecognizeRequest_StreamingRequest.audioContent,
    0: StreamingRecognizeRequest_StreamingRequest.notSet
  };
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo(
      'StreamingRecognizeRequest',
      package: const $pb.PackageName('google.cloud.speech.v1'))
    ..a<StreamingRecognitionConfig>(
        1,
        'streamingConfig',
        $pb.PbFieldType.OM,
        StreamingRecognitionConfig.getDefault,
        StreamingRecognitionConfig.create)
    ..a<List<int>>(2, 'audioContent', $pb.PbFieldType.OY)
    ..oo(0, [1, 2])
    ..hasRequiredFields = false;

  StreamingRecognizeRequest() : super();
  StreamingRecognizeRequest.fromBuffer(List<int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  StreamingRecognizeRequest.fromJson(String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  StreamingRecognizeRequest clone() =>
      new StreamingRecognizeRequest()..mergeFromMessage(this);
  StreamingRecognizeRequest copyWith(
          void Function(StreamingRecognizeRequest) updates) =>
      super
          .copyWith((message) => updates(message as StreamingRecognizeRequest));
  $pb.BuilderInfo get info_ => _i;
  static StreamingRecognizeRequest create() => new StreamingRecognizeRequest();
  StreamingRecognizeRequest createEmptyInstance() => create();
  static $pb.PbList<StreamingRecognizeRequest> createRepeated() =>
      new $pb.PbList<StreamingRecognizeRequest>();
  static StreamingRecognizeRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static StreamingRecognizeRequest _defaultInstance;

  StreamingRecognizeRequest_StreamingRequest whichStreamingRequest() =>
      _StreamingRecognizeRequest_StreamingRequestByTag[$_whichOneof(0)];
  void clearStreamingRequest() => clearField($_whichOneof(0));

  StreamingRecognitionConfig get streamingConfig => $_getN(0);
  set streamingConfig(StreamingRecognitionConfig v) {
    setField(1, v);
  }

  bool hasStreamingConfig() => $_has(0);
  void clearStreamingConfig() => clearField(1);

  List<int> get audioContent => $_getN(1);
  set audioContent(List<int> v) {
    $_setBytes(1, v);
  }

  bool hasAudioContent() => $_has(1);
  void clearAudioContent() => clearField(2);
}

class StreamingRecognitionConfig extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo(
      'StreamingRecognitionConfig',
      package: const $pb.PackageName('google.cloud.speech.v1'))
    ..a<RecognitionConfig>(1, 'config', $pb.PbFieldType.OM,
        RecognitionConfig.getDefault, RecognitionConfig.create)
    ..aOB(2, 'singleUtterance')
    ..aOB(3, 'interimResults')
    ..hasRequiredFields = false;

  StreamingRecognitionConfig() : super();
  StreamingRecognitionConfig.fromBuffer(List<int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  StreamingRecognitionConfig.fromJson(String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  StreamingRecognitionConfig clone() =>
      new StreamingRecognitionConfig()..mergeFromMessage(this);
  StreamingRecognitionConfig copyWith(
          void Function(StreamingRecognitionConfig) updates) =>
      super.copyWith(
          (message) => updates(message as StreamingRecognitionConfig));
  $pb.BuilderInfo get info_ => _i;
  static StreamingRecognitionConfig create() =>
      new StreamingRecognitionConfig();
  StreamingRecognitionConfig createEmptyInstance() => create();
  static $pb.PbList<StreamingRecognitionConfig> createRepeated() =>
      new $pb.PbList<StreamingRecognitionConfig>();
  static StreamingRecognitionConfig getDefault() =>
      _defaultInstance ??= create()..freeze();
  static StreamingRecognitionConfig _defaultInstance;

  RecognitionConfig get config => $_getN(0);
  set config(RecognitionConfig v) {
    setField(1, v);
  }

  bool hasConfig() => $_has(0);
  void clearConfig() => clearField(1);

  bool get singleUtterance => $_get(1, false);
  set singleUtterance(bool v) {
    $_setBool(1, v);
  }

  bool hasSingleUtterance() => $_has(1);
  void clearSingleUtterance() => clearField(2);

  bool get interimResults => $_get(2, false);
  set interimResults(bool v) {
    $_setBool(2, v);
  }

  bool hasInterimResults() => $_has(2);
  void clearInterimResults() => clearField(3);
}

class RecognitionConfig extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('RecognitionConfig',
      package: const $pb.PackageName('google.cloud.speech.v1'))
    ..e<RecognitionConfig_AudioEncoding>(
        1,
        'encoding',
        $pb.PbFieldType.OE,
        RecognitionConfig_AudioEncoding.ENCODING_UNSPECIFIED,
        RecognitionConfig_AudioEncoding.valueOf,
        RecognitionConfig_AudioEncoding.values)
    ..a<int>(2, 'sampleRateHertz', $pb.PbFieldType.O3)
    ..aOS(3, 'languageCode')
    ..a<int>(4, 'maxAlternatives', $pb.PbFieldType.O3)
    ..aOB(5, 'profanityFilter')
    ..pc<SpeechContext>(
        6, 'speechContexts', $pb.PbFieldType.PM, SpeechContext.create)
    ..a<int>(7, 'audioChannelCount', $pb.PbFieldType.O3)
    ..aOB(8, 'enableWordTimeOffsets')
    ..aOB(11, 'enableAutomaticPunctuation')
    ..aOB(12, 'enableSeparateRecognitionPerChannel')
    ..aOS(13, 'model')
    ..aOB(14, 'useEnhanced')
    ..hasRequiredFields = false;

  RecognitionConfig() : super();
  RecognitionConfig.fromBuffer(List<int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  RecognitionConfig.fromJson(String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  RecognitionConfig clone() => new RecognitionConfig()..mergeFromMessage(this);
  RecognitionConfig copyWith(void Function(RecognitionConfig) updates) =>
      super.copyWith((message) => updates(message as RecognitionConfig));
  $pb.BuilderInfo get info_ => _i;
  static RecognitionConfig create() => new RecognitionConfig();
  RecognitionConfig createEmptyInstance() => create();
  static $pb.PbList<RecognitionConfig> createRepeated() =>
      new $pb.PbList<RecognitionConfig>();
  static RecognitionConfig getDefault() =>
      _defaultInstance ??= create()..freeze();
  static RecognitionConfig _defaultInstance;

  RecognitionConfig_AudioEncoding get encoding => $_getN(0);
  set encoding(RecognitionConfig_AudioEncoding v) {
    setField(1, v);
  }

  bool hasEncoding() => $_has(0);
  void clearEncoding() => clearField(1);

  int get sampleRateHertz => $_get(1, 0);
  set sampleRateHertz(int v) {
    $_setSignedInt32(1, v);
  }

  bool hasSampleRateHertz() => $_has(1);
  void clearSampleRateHertz() => clearField(2);

  String get languageCode => $_getS(2, '');
  set languageCode(String v) {
    $_setString(2, v);
  }

  bool hasLanguageCode() => $_has(2);
  void clearLanguageCode() => clearField(3);

  int get maxAlternatives => $_get(3, 0);
  set maxAlternatives(int v) {
    $_setSignedInt32(3, v);
  }

  bool hasMaxAlternatives() => $_has(3);
  void clearMaxAlternatives() => clearField(4);

  bool get profanityFilter => $_get(4, false);
  set profanityFilter(bool v) {
    $_setBool(4, v);
  }

  bool hasProfanityFilter() => $_has(4);
  void clearProfanityFilter() => clearField(5);

  List<SpeechContext> get speechContexts => $_getList(5);

  int get audioChannelCount => $_get(6, 0);
  set audioChannelCount(int v) {
    $_setSignedInt32(6, v);
  }

  bool hasAudioChannelCount() => $_has(6);
  void clearAudioChannelCount() => clearField(7);

  bool get enableWordTimeOffsets => $_get(7, false);
  set enableWordTimeOffsets(bool v) {
    $_setBool(7, v);
  }

  bool hasEnableWordTimeOffsets() => $_has(7);
  void clearEnableWordTimeOffsets() => clearField(8);

  bool get enableAutomaticPunctuation => $_get(8, false);
  set enableAutomaticPunctuation(bool v) {
    $_setBool(8, v);
  }

  bool hasEnableAutomaticPunctuation() => $_has(8);
  void clearEnableAutomaticPunctuation() => clearField(11);

  bool get enableSeparateRecognitionPerChannel => $_get(9, false);
  set enableSeparateRecognitionPerChannel(bool v) {
    $_setBool(9, v);
  }

  bool hasEnableSeparateRecognitionPerChannel() => $_has(9);
  void clearEnableSeparateRecognitionPerChannel() => clearField(12);

  String get model => $_getS(10, '');
  set model(String v) {
    $_setString(10, v);
  }

  bool hasModel() => $_has(10);
  void clearModel() => clearField(13);

  bool get useEnhanced => $_get(11, false);
  set useEnhanced(bool v) {
    $_setBool(11, v);
  }

  bool hasUseEnhanced() => $_has(11);
  void clearUseEnhanced() => clearField(14);
}

class SpeechContext extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('SpeechContext',
      package: const $pb.PackageName('google.cloud.speech.v1'))
    ..pPS(1, 'phrases')
    ..hasRequiredFields = false;

  SpeechContext() : super();
  SpeechContext.fromBuffer(List<int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  SpeechContext.fromJson(String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  SpeechContext clone() => new SpeechContext()..mergeFromMessage(this);
  SpeechContext copyWith(void Function(SpeechContext) updates) =>
      super.copyWith((message) => updates(message as SpeechContext));
  $pb.BuilderInfo get info_ => _i;
  static SpeechContext create() => new SpeechContext();
  SpeechContext createEmptyInstance() => create();
  static $pb.PbList<SpeechContext> createRepeated() =>
      new $pb.PbList<SpeechContext>();
  static SpeechContext getDefault() => _defaultInstance ??= create()..freeze();
  static SpeechContext _defaultInstance;

  List<String> get phrases => $_getList(0);
}

enum RecognitionAudio_AudioSource { content, uri, notSet }

class RecognitionAudio extends $pb.GeneratedMessage {
  static const Map<int, RecognitionAudio_AudioSource>
      _RecognitionAudio_AudioSourceByTag = {
    1: RecognitionAudio_AudioSource.content,
    2: RecognitionAudio_AudioSource.uri,
    0: RecognitionAudio_AudioSource.notSet
  };
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('RecognitionAudio',
      package: const $pb.PackageName('google.cloud.speech.v1'))
    ..a<List<int>>(1, 'content', $pb.PbFieldType.OY)
    ..aOS(2, 'uri')
    ..oo(0, [1, 2])
    ..hasRequiredFields = false;

  RecognitionAudio() : super();
  RecognitionAudio.fromBuffer(List<int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  RecognitionAudio.fromJson(String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  RecognitionAudio clone() => new RecognitionAudio()..mergeFromMessage(this);
  RecognitionAudio copyWith(void Function(RecognitionAudio) updates) =>
      super.copyWith((message) => updates(message as RecognitionAudio));
  $pb.BuilderInfo get info_ => _i;
  static RecognitionAudio create() => new RecognitionAudio();
  RecognitionAudio createEmptyInstance() => create();
  static $pb.PbList<RecognitionAudio> createRepeated() =>
      new $pb.PbList<RecognitionAudio>();
  static RecognitionAudio getDefault() =>
      _defaultInstance ??= create()..freeze();
  static RecognitionAudio _defaultInstance;

  RecognitionAudio_AudioSource whichAudioSource() =>
      _RecognitionAudio_AudioSourceByTag[$_whichOneof(0)];
  void clearAudioSource() => clearField($_whichOneof(0));

  List<int> get content => $_getN(0);
  set content(List<int> v) {
    $_setBytes(0, v);
  }

  bool hasContent() => $_has(0);
  void clearContent() => clearField(1);

  String get uri => $_getS(1, '');
  set uri(String v) {
    $_setString(1, v);
  }

  bool hasUri() => $_has(1);
  void clearUri() => clearField(2);
}

class RecognizeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('RecognizeResponse',
      package: const $pb.PackageName('google.cloud.speech.v1'))
    ..pc<SpeechRecognitionResult>(
        2, 'results', $pb.PbFieldType.PM, SpeechRecognitionResult.create)
    ..hasRequiredFields = false;

  RecognizeResponse() : super();
  RecognizeResponse.fromBuffer(List<int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  RecognizeResponse.fromJson(String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  RecognizeResponse clone() => new RecognizeResponse()..mergeFromMessage(this);
  RecognizeResponse copyWith(void Function(RecognizeResponse) updates) =>
      super.copyWith((message) => updates(message as RecognizeResponse));
  $pb.BuilderInfo get info_ => _i;
  static RecognizeResponse create() => new RecognizeResponse();
  RecognizeResponse createEmptyInstance() => create();
  static $pb.PbList<RecognizeResponse> createRepeated() =>
      new $pb.PbList<RecognizeResponse>();
  static RecognizeResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static RecognizeResponse _defaultInstance;

  List<SpeechRecognitionResult> get results => $_getList(0);
}

class LongRunningRecognizeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo(
      'LongRunningRecognizeResponse',
      package: const $pb.PackageName('google.cloud.speech.v1'))
    ..pc<SpeechRecognitionResult>(
        2, 'results', $pb.PbFieldType.PM, SpeechRecognitionResult.create)
    ..hasRequiredFields = false;

  LongRunningRecognizeResponse() : super();
  LongRunningRecognizeResponse.fromBuffer(List<int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  LongRunningRecognizeResponse.fromJson(String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  LongRunningRecognizeResponse clone() =>
      new LongRunningRecognizeResponse()..mergeFromMessage(this);
  LongRunningRecognizeResponse copyWith(
          void Function(LongRunningRecognizeResponse) updates) =>
      super.copyWith(
          (message) => updates(message as LongRunningRecognizeResponse));
  $pb.BuilderInfo get info_ => _i;
  static LongRunningRecognizeResponse create() =>
      new LongRunningRecognizeResponse();
  LongRunningRecognizeResponse createEmptyInstance() => create();
  static $pb.PbList<LongRunningRecognizeResponse> createRepeated() =>
      new $pb.PbList<LongRunningRecognizeResponse>();
  static LongRunningRecognizeResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static LongRunningRecognizeResponse _defaultInstance;

  List<SpeechRecognitionResult> get results => $_getList(0);
}

class LongRunningRecognizeMetadata extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo(
      'LongRunningRecognizeMetadata',
      package: const $pb.PackageName('google.cloud.speech.v1'))
    ..a<int>(1, 'progressPercent', $pb.PbFieldType.O3)
    ..a<$2.Timestamp>(2, 'startTime', $pb.PbFieldType.OM,
        $2.Timestamp.getDefault, $2.Timestamp.create)
    ..a<$2.Timestamp>(3, 'lastUpdateTime', $pb.PbFieldType.OM,
        $2.Timestamp.getDefault, $2.Timestamp.create)
    ..hasRequiredFields = false;

  LongRunningRecognizeMetadata() : super();
  LongRunningRecognizeMetadata.fromBuffer(List<int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  LongRunningRecognizeMetadata.fromJson(String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  LongRunningRecognizeMetadata clone() =>
      new LongRunningRecognizeMetadata()..mergeFromMessage(this);
  LongRunningRecognizeMetadata copyWith(
          void Function(LongRunningRecognizeMetadata) updates) =>
      super.copyWith(
          (message) => updates(message as LongRunningRecognizeMetadata));
  $pb.BuilderInfo get info_ => _i;
  static LongRunningRecognizeMetadata create() =>
      new LongRunningRecognizeMetadata();
  LongRunningRecognizeMetadata createEmptyInstance() => create();
  static $pb.PbList<LongRunningRecognizeMetadata> createRepeated() =>
      new $pb.PbList<LongRunningRecognizeMetadata>();
  static LongRunningRecognizeMetadata getDefault() =>
      _defaultInstance ??= create()..freeze();
  static LongRunningRecognizeMetadata _defaultInstance;

  int get progressPercent => $_get(0, 0);
  set progressPercent(int v) {
    $_setSignedInt32(0, v);
  }

  bool hasProgressPercent() => $_has(0);
  void clearProgressPercent() => clearField(1);

  $2.Timestamp get startTime => $_getN(1);
  set startTime($2.Timestamp v) {
    setField(2, v);
  }

  bool hasStartTime() => $_has(1);
  void clearStartTime() => clearField(2);

  $2.Timestamp get lastUpdateTime => $_getN(2);
  set lastUpdateTime($2.Timestamp v) {
    setField(3, v);
  }

  bool hasLastUpdateTime() => $_has(2);
  void clearLastUpdateTime() => clearField(3);
}

class StreamingRecognizeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo(
      'StreamingRecognizeResponse',
      package: const $pb.PackageName('google.cloud.speech.v1'))
    ..a<$3.Status>(
        1, 'error', $pb.PbFieldType.OM, $3.Status.getDefault, $3.Status.create)
    ..pc<StreamingRecognitionResult>(
        2, 'results', $pb.PbFieldType.PM, StreamingRecognitionResult.create)
    ..e<StreamingRecognizeResponse_SpeechEventType>(
        4,
        'speechEventType',
        $pb.PbFieldType.OE,
        StreamingRecognizeResponse_SpeechEventType.SPEECH_EVENT_UNSPECIFIED,
        StreamingRecognizeResponse_SpeechEventType.valueOf,
        StreamingRecognizeResponse_SpeechEventType.values)
    ..hasRequiredFields = false;

  StreamingRecognizeResponse() : super();
  StreamingRecognizeResponse.fromBuffer(List<int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  StreamingRecognizeResponse.fromJson(String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  StreamingRecognizeResponse clone() =>
      new StreamingRecognizeResponse()..mergeFromMessage(this);
  StreamingRecognizeResponse copyWith(
          void Function(StreamingRecognizeResponse) updates) =>
      super.copyWith(
          (message) => updates(message as StreamingRecognizeResponse));
  $pb.BuilderInfo get info_ => _i;
  static StreamingRecognizeResponse create() =>
      new StreamingRecognizeResponse();
  StreamingRecognizeResponse createEmptyInstance() => create();
  static $pb.PbList<StreamingRecognizeResponse> createRepeated() =>
      new $pb.PbList<StreamingRecognizeResponse>();
  static StreamingRecognizeResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static StreamingRecognizeResponse _defaultInstance;

  $3.Status get error => $_getN(0);
  set error($3.Status v) {
    setField(1, v);
  }

  bool hasError() => $_has(0);
  void clearError() => clearField(1);

  List<StreamingRecognitionResult> get results => $_getList(1);

  StreamingRecognizeResponse_SpeechEventType get speechEventType => $_getN(2);
  set speechEventType(StreamingRecognizeResponse_SpeechEventType v) {
    setField(4, v);
  }

  bool hasSpeechEventType() => $_has(2);
  void clearSpeechEventType() => clearField(4);
}

class StreamingRecognitionResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo(
      'StreamingRecognitionResult',
      package: const $pb.PackageName('google.cloud.speech.v1'))
    ..pc<SpeechRecognitionAlternative>(1, 'alternatives', $pb.PbFieldType.PM,
        SpeechRecognitionAlternative.create)
    ..aOB(2, 'isFinal')
    ..a<double>(3, 'stability', $pb.PbFieldType.OF)
    ..a<int>(5, 'channelTag', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  StreamingRecognitionResult() : super();
  StreamingRecognitionResult.fromBuffer(List<int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  StreamingRecognitionResult.fromJson(String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  StreamingRecognitionResult clone() =>
      new StreamingRecognitionResult()..mergeFromMessage(this);
  StreamingRecognitionResult copyWith(
          void Function(StreamingRecognitionResult) updates) =>
      super.copyWith(
          (message) => updates(message as StreamingRecognitionResult));
  $pb.BuilderInfo get info_ => _i;
  static StreamingRecognitionResult create() =>
      new StreamingRecognitionResult();
  StreamingRecognitionResult createEmptyInstance() => create();
  static $pb.PbList<StreamingRecognitionResult> createRepeated() =>
      new $pb.PbList<StreamingRecognitionResult>();
  static StreamingRecognitionResult getDefault() =>
      _defaultInstance ??= create()..freeze();
  static StreamingRecognitionResult _defaultInstance;

  List<SpeechRecognitionAlternative> get alternatives => $_getList(0);

  bool get isFinal => $_get(1, false);
  set isFinal(bool v) {
    $_setBool(1, v);
  }

  bool hasIsFinal() => $_has(1);
  void clearIsFinal() => clearField(2);

  double get stability => $_getN(2);
  set stability(double v) {
    $_setFloat(2, v);
  }

  bool hasStability() => $_has(2);
  void clearStability() => clearField(3);

  int get channelTag => $_get(3, 0);
  set channelTag(int v) {
    $_setSignedInt32(3, v);
  }

  bool hasChannelTag() => $_has(3);
  void clearChannelTag() => clearField(5);
}

class SpeechRecognitionResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo(
      'SpeechRecognitionResult',
      package: const $pb.PackageName('google.cloud.speech.v1'))
    ..pc<SpeechRecognitionAlternative>(1, 'alternatives', $pb.PbFieldType.PM,
        SpeechRecognitionAlternative.create)
    ..a<int>(2, 'channelTag', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  SpeechRecognitionResult() : super();
  SpeechRecognitionResult.fromBuffer(List<int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  SpeechRecognitionResult.fromJson(String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  SpeechRecognitionResult clone() =>
      new SpeechRecognitionResult()..mergeFromMessage(this);
  SpeechRecognitionResult copyWith(
          void Function(SpeechRecognitionResult) updates) =>
      super.copyWith((message) => updates(message as SpeechRecognitionResult));
  $pb.BuilderInfo get info_ => _i;
  static SpeechRecognitionResult create() => new SpeechRecognitionResult();
  SpeechRecognitionResult createEmptyInstance() => create();
  static $pb.PbList<SpeechRecognitionResult> createRepeated() =>
      new $pb.PbList<SpeechRecognitionResult>();
  static SpeechRecognitionResult getDefault() =>
      _defaultInstance ??= create()..freeze();
  static SpeechRecognitionResult _defaultInstance;

  List<SpeechRecognitionAlternative> get alternatives => $_getList(0);

  int get channelTag => $_get(1, 0);
  set channelTag(int v) {
    $_setSignedInt32(1, v);
  }

  bool hasChannelTag() => $_has(1);
  void clearChannelTag() => clearField(2);
}

class SpeechRecognitionAlternative extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo(
      'SpeechRecognitionAlternative',
      package: const $pb.PackageName('google.cloud.speech.v1'))
    ..aOS(1, 'transcript')
    ..a<double>(2, 'confidence', $pb.PbFieldType.OF)
    ..pc<WordInfo>(3, 'words', $pb.PbFieldType.PM, WordInfo.create)
    ..hasRequiredFields = false;

  SpeechRecognitionAlternative() : super();
  SpeechRecognitionAlternative.fromBuffer(List<int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  SpeechRecognitionAlternative.fromJson(String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  SpeechRecognitionAlternative clone() =>
      new SpeechRecognitionAlternative()..mergeFromMessage(this);
  SpeechRecognitionAlternative copyWith(
          void Function(SpeechRecognitionAlternative) updates) =>
      super.copyWith(
          (message) => updates(message as SpeechRecognitionAlternative));
  $pb.BuilderInfo get info_ => _i;
  static SpeechRecognitionAlternative create() =>
      new SpeechRecognitionAlternative();
  SpeechRecognitionAlternative createEmptyInstance() => create();
  static $pb.PbList<SpeechRecognitionAlternative> createRepeated() =>
      new $pb.PbList<SpeechRecognitionAlternative>();
  static SpeechRecognitionAlternative getDefault() =>
      _defaultInstance ??= create()..freeze();
  static SpeechRecognitionAlternative _defaultInstance;

  String get transcript => $_getS(0, '');
  set transcript(String v) {
    $_setString(0, v);
  }

  bool hasTranscript() => $_has(0);
  void clearTranscript() => clearField(1);

  double get confidence => $_getN(1);
  set confidence(double v) {
    $_setFloat(1, v);
  }

  bool hasConfidence() => $_has(1);
  void clearConfidence() => clearField(2);

  List<WordInfo> get words => $_getList(2);
}

class WordInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('WordInfo',
      package: const $pb.PackageName('google.cloud.speech.v1'))
    ..a<$4.Duration>(1, 'startTime', $pb.PbFieldType.OM, $4.Duration.getDefault,
        $4.Duration.create)
    ..a<$4.Duration>(2, 'endTime', $pb.PbFieldType.OM, $4.Duration.getDefault,
        $4.Duration.create)
    ..aOS(3, 'word')
    ..hasRequiredFields = false;

  WordInfo() : super();
  WordInfo.fromBuffer(List<int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  WordInfo.fromJson(String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  WordInfo clone() => new WordInfo()..mergeFromMessage(this);
  WordInfo copyWith(void Function(WordInfo) updates) =>
      super.copyWith((message) => updates(message as WordInfo));
  $pb.BuilderInfo get info_ => _i;
  static WordInfo create() => new WordInfo();
  WordInfo createEmptyInstance() => create();
  static $pb.PbList<WordInfo> createRepeated() => new $pb.PbList<WordInfo>();
  static WordInfo getDefault() => _defaultInstance ??= create()..freeze();
  static WordInfo _defaultInstance;

  $4.Duration get startTime => $_getN(0);
  set startTime($4.Duration v) {
    setField(1, v);
  }

  bool hasStartTime() => $_has(0);
  void clearStartTime() => clearField(1);

  $4.Duration get endTime => $_getN(1);
  set endTime($4.Duration v) {
    setField(2, v);
  }

  bool hasEndTime() => $_has(1);
  void clearEndTime() => clearField(2);

  String get word => $_getS(2, '');
  set word(String v) {
    $_setString(2, v);
  }

  bool hasWord() => $_has(2);
  void clearWord() => clearField(3);
}
