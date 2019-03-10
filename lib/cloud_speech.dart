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
//AVAudioFormat Inputs
class AudioSettings extends CloudSpeech {
  //Getting Audio Format Vals
  int channelCount;
  int channelLayout;
  double sampleRate;
  //Determining the Audio Format
  bool isStandard;
  bool isInterleaved;
  String commonFormat;
  //Default Constructor
  AudioSettings() {
    this.channelCount = 1;
    this.sampleRate = 8000;
    this.isInterleaved = true;
    this.commonFormat = '.pcmFormat16';
  }
  //Custom Constructor
  AudioSettings.other(this.channelCount, this.channelLayout,
    this.sampleRate, this.isInterleaved, this.isStandard,
    this.commonFormat);
}
