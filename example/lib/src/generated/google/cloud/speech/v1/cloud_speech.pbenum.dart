///
//  Generated code. Do not modify.
//  source: google/cloud/speech/v1/cloud_speech.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart' as $pb;

class RecognitionConfig_AudioEncoding extends $pb.ProtobufEnum {
  static const RecognitionConfig_AudioEncoding ENCODING_UNSPECIFIED =
      const RecognitionConfig_AudioEncoding._(0, 'ENCODING_UNSPECIFIED');
  static const RecognitionConfig_AudioEncoding LINEAR16 =
      const RecognitionConfig_AudioEncoding._(1, 'LINEAR16');
  static const RecognitionConfig_AudioEncoding FLAC =
      const RecognitionConfig_AudioEncoding._(2, 'FLAC');
  static const RecognitionConfig_AudioEncoding MULAW =
      const RecognitionConfig_AudioEncoding._(3, 'MULAW');
  static const RecognitionConfig_AudioEncoding AMR =
      const RecognitionConfig_AudioEncoding._(4, 'AMR');
  static const RecognitionConfig_AudioEncoding AMR_WB =
      const RecognitionConfig_AudioEncoding._(5, 'AMR_WB');
  static const RecognitionConfig_AudioEncoding OGG_OPUS =
      const RecognitionConfig_AudioEncoding._(6, 'OGG_OPUS');
  static const RecognitionConfig_AudioEncoding SPEEX_WITH_HEADER_BYTE =
      const RecognitionConfig_AudioEncoding._(7, 'SPEEX_WITH_HEADER_BYTE');

  static const List<RecognitionConfig_AudioEncoding> values =
      const <RecognitionConfig_AudioEncoding>[
    ENCODING_UNSPECIFIED,
    LINEAR16,
    FLAC,
    MULAW,
    AMR,
    AMR_WB,
    OGG_OPUS,
    SPEEX_WITH_HEADER_BYTE,
  ];

  static final Map<int, RecognitionConfig_AudioEncoding> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static RecognitionConfig_AudioEncoding valueOf(int value) => _byValue[value];

  const RecognitionConfig_AudioEncoding._(int v, String n) : super(v, n);
}

class StreamingRecognizeResponse_SpeechEventType extends $pb.ProtobufEnum {
  static const StreamingRecognizeResponse_SpeechEventType
      SPEECH_EVENT_UNSPECIFIED =
      const StreamingRecognizeResponse_SpeechEventType._(
          0, 'SPEECH_EVENT_UNSPECIFIED');
  static const StreamingRecognizeResponse_SpeechEventType
      END_OF_SINGLE_UTTERANCE =
      const StreamingRecognizeResponse_SpeechEventType._(
          1, 'END_OF_SINGLE_UTTERANCE');

  static const List<StreamingRecognizeResponse_SpeechEventType> values =
      const <StreamingRecognizeResponse_SpeechEventType>[
    SPEECH_EVENT_UNSPECIFIED,
    END_OF_SINGLE_UTTERANCE,
  ];

  static final Map<int, StreamingRecognizeResponse_SpeechEventType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static StreamingRecognizeResponse_SpeechEventType valueOf(int value) =>
      _byValue[value];

  const StreamingRecognizeResponse_SpeechEventType._(int v, String n)
      : super(v, n);
}
