import 'dart:async';

import 'package:flutter/services.dart';

class CloudSpeech {
  static const MethodChannel _channel =
      const MethodChannel('cloud_speech');

  static Future<StreamSubscription> get audioStream async {
    StreamSubscription<dynamic> _audioStream;
    const EventChannel eventChannel =
      EventChannel('audio');
    _audioStream = eventChannel.receiveBroadcastStream().listen((dynamic audioData) {
      print(audioData);
    });
    return _audioStream;
  }

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
