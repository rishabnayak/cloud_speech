import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

final MethodChannel _channel = const MethodChannel('cloud_speech');

enum CommonFormat { Int16, Int32 }

class AudioValue {
  const AudioValue({
    this.isInitialized: false,
    this.isStreamingAudio: false,
  });

  const AudioValue.uninitialized()
      : this(isInitialized: false, isStreamingAudio: false);

  /// True after [AudioController.initialize] has completed successfully.
  final bool isInitialized;
  final bool isStreamingAudio;

  AudioValue copyWith({
    bool isInitialized,
    bool isStreamingAudio,
  }) {
    return AudioValue(
      isInitialized: isInitialized ?? this.isInitialized,
      isStreamingAudio: isStreamingAudio ?? this.isStreamingAudio,
    );
  }

  @override
  String toString() {
    return '$runtimeType('
        'isInitialized: $isInitialized,'
        'isStreamingAudio: $isStreamingAudio)';
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

String _parseCommonFormat(CommonFormat format) {
  switch (format) {
    case CommonFormat.Int16:
      return "AVAudioCommonFormat.pcmFormatInt16";
    case CommonFormat.Int32:
      return "AVAudioCommonFormat.pcmFormatInt32";
  }
  throw ArgumentError('Unknown CameraLensDirection value');
}

class CloudSpeech {
  //Stream Setup
  static Future<StreamSubscription> get audioStream async {
    try {
      StreamSubscription<dynamic> _audioStream;
      const EventChannel eventChannel = EventChannel('audio');
      _audioStream =
          eventChannel.receiveBroadcastStream().listen((dynamic audioData) {
        print(audioData);
      });
      return _audioStream;
    } on PlatformException catch (e) {
      throw (AudioControllerException(e.code, e.message));
    }
  }

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}

class AudioDescription {
  AudioDescription({this.sampleRate, this.interleaved, this.channelCount});

  final int sampleRate;
  final bool interleaved;
  final int channelCount;

  @override
  bool operator ==(Object o) {
    return o is AudioDescription &&
        o.sampleRate == sampleRate &&
        o.interleaved == interleaved &&
        o.channelCount == channelCount;
  }

  @override
  int get hashCode {
    return hashValues(sampleRate, interleaved, channelCount);
  }

  @override
  String toString() {
    return '$runtimeType($sampleRate, $interleaved, $channelCount)';
  }
}

//AVAudioFormat Inputs
class AudioController extends ValueNotifier<AudioValue> {
  AudioController(this.description, this.commonFormat)
      : super(const AudioValue.uninitialized());

  final AudioDescription description;
  final CommonFormat commonFormat;

  StreamSubscription<dynamic> _audioStreamSubscription;

  //Control Features
  bool isStreaming;
  bool _isDisposed = false;

  Future<void> intialize() async {
    if (_isDisposed) {
      return Future<void>.value();
    }
    try {
      await _channel.invokeMethod(
        'initialize',
        <String, dynamic>{
          'commonFormat': _parseCommonFormat(commonFormat),
          'sampleRate': description.sampleRate,
          'interleaved': description.interleaved,
          'channelCount': description.channelCount
        },
      );
      value = value.copyWith(
        isInitialized: true,
      );
    } on PlatformException catch (e) {
      throw AudioControllerException(e.code, e.message);
    }
  }

  Future<void> startAudioStream() async {
    if (!value.isInitialized || _isDisposed) {
      throw AudioControllerException(
        'Uninitialized AudioController',
        'startAudioStream was called on uninitialized AudioController.',
      );
    }
    if (value.isStreamingAudio) {
      throw AudioControllerException(
        'A mic has started streaming audio.',
        'startAudioStream was called while a mic was streaming audio.',
      );
    }

    try {
      await _channel.invokeMethod('startAudioStream');
      value = value.copyWith(isStreamingAudio: true);
    } on PlatformException catch (e) {
      throw AudioControllerException(e.code, e.message);
    }
    const EventChannel audioChannel = EventChannel('audio');
    _audioStreamSubscription = audioChannel.receiveBroadcastStream().listen(
      (dynamic data) {
        print(data);
      },
    );
  }
  //add a completer

  //Releases Microphone
  Future<void> stopAudioStream() async {
    if (!value.isInitialized || _isDisposed) {
      throw AudioControllerException(
        'Uninitialized AudioController',
        'startAudioStream was called on uninitialized AudioController.',
      );
    }
    if (value.isStreamingAudio) {
      throw AudioControllerException(
        'A mic has started streaming audio.',
        'startAudioStream was called while a mic was streaming audio.',
      );
    }

    try {
      value = value.copyWith(isStreamingAudio: false);
      // TODO(amirh): remove this on when the invokeMethod update makes it to stable Flutter.
      // https://github.com/flutter/flutter/issues/26431
      // ignore: strong_mode_implicit_dynamic_method
      await _channel.invokeMethod('stopImageStream');
    } on PlatformException catch (e) {
      throw AudioControllerException(e.code, e.message);
    }

    _audioStreamSubscription.cancel();
    _audioStreamSubscription = null;
  }

  @override
  Future<void> dispose() async {
    if (_isDisposed) {
      return;
    }
    _isDisposed = true;
    super.dispose();
  }
}
