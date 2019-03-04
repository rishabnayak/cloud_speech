import 'dart:async';

import 'package:flutter/services.dart';

class CloudSpeech {
  static const MethodChannel _channel =
      const MethodChannel('cloud_speech');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
