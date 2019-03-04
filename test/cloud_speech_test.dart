import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:cloud_speech/cloud_speech.dart';

void main() {
  const MethodChannel channel = MethodChannel('cloud_speech');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await CloudSpeech.platformVersion, '42');
  });
}
