import 'dart:async';
import 'package:flutter/services.dart';

class CloudSpeech {
  //Method Channel Setup
  static const MethodChannel _channel =
      const MethodChannel('cloud_speech');
  //Stream Setup
  static Future<StreamSubscription> get audioStream async {
    try{
        StreamSubscription<dynamic> _audioStream;
        const EventChannel eventChannel =
              EventChannel('audio');
        _audioStream = eventChannel.receiveBroadcastStream()
                                   .listen((dynamic audioData) {
                                            print(audioData);});
        return _audioStream;
      } on PlatformException catch(e) {
        throw(AudioControllerException(e.code, e.message));
      }
  }

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}

//AVAudioFormat Inputs
class AudioController extends CloudSpeech {
  //Getting Audio Format Vals
  int channelCount;
  int channelLayout;
  double sampleRate;

  //Determining the Audio Format
  bool isStandard;
  bool isInterleaved;
  String commonFormat;

  //Control Features
  bool isStreaming;
  bool _isDisposed = false;


  Future<void> intialize() async{}
  //add a stopper for event channel
  Future<void> startAudioStream;
  //add a completer

  //Releases Microphone
  @override
  Future<void> dispose() async {
    if (_isDisposed) {
      return;
    }
    _isDisposed = true;
    super.dispose();
    if (_creatingCompleter != null) {
      await _creatingCompleter.future;
      // TODO(amirh): remove this on when the invokeMethod update makes it to stable Flutter.
      // https://github.com/flutter/flutter/issues/26431
      // ignore: strong_mode_implicit_dynamic_method
      await _channel.invokeMethod()
      await audioStream?.cancel();
    }
}
}

class AudioValue {

  const AudioValue() {
    this.channelCount = 1;
    this.sampleRate = 8000;
    this.isInterleaved = true;
    this.commonFormat = 'int16';}

  const AudioValue.custom(this.channelCount,
    this.channelLayout,
    this.sampleRate,
    this.isInterleaved,
    this.commonFormat);

  const AudioValue.uninitialized()
      : this(
            isInitialized: false,
            isRecordingVideo: false,
            isTakingPicture: false,
            isStreamingImages: false);

  /// True after [AudioController.initialize] has completed successfully.
  final bool isInitialized;
  final double sampleRate;
  final bool isInterleaved;
  final int channelLayout;
  final bool isStreaming;
  final String commonFormat;

  AudioValue copyWith({
    bool isInitialized,
    double sampleRate,
    bool isInterleaved,
    bool isStreaming,
    String commonFormat,
  }) {
    return AudioValue.custom(
      isInitialized: isInitialized ?? this.isInitialized,
      sampleRate: sampleRate ?? this.sampleRate,
      isInterleaved: isInterleaved ?? this.isInterleaved,
      isStreaming: isStreaming ?? this.isStreaming,
      channelLayout: channelLayout ?? this.channelLayout,
    );
  }

  @override
  String toString() {
    return '$runtimeType('
        'isInitialized: $isInitialized, '
        'previewSize: $previewSize, '
        'isStreaming: $isStreaming)';
  }
}


//Exception Handling
class AudioControllerException implements Exception {
  AudioControllerException(this.code, this.message);
  String code;
  String message;

  @override
  String toString() => '$runtimeType($code, $message)';
}
