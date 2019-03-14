import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:cloud_speech/cloud_speech.dart';
import 'package:grpc/grpc.dart';
import 'package:async/async.dart';
import 'package:cloud_speech_example/src/generated/google/cloud/speech/v1/cloud_speech.pb.dart';
import 'package:cloud_speech_example/src/generated/google/cloud/speech/v1/cloud_speech.pbgrpc.dart';
import 'package:cloud_speech_example/src/generated/google/cloud/speech/v1/cloud_speech.pbenum.dart';

SpeechClient speech;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AudioController controller;

  @override
  void initState() {
    super.initState();
    controller = new AudioController(CommonFormat.Int16, 16000, 1, true);
    initSpeech();
    initAudio();
  }

  Future<void> initSpeech() async {
      final serviceAccountFile = new File('/Users/rishabnayak/Desktop/Projects/cloud_speech/example/lib/service_account_info.json');
      final _scopes = const ['https://www.googleapis.com/auth/cloud-platform'];
      final authenticator = new ServiceAccountAuthenticator(serviceAccountFile.readAsStringSync(), _scopes);
      final channel = new ClientChannel("speech.googleapis.com");
      speech = SpeechClient(channel, options: authenticator.toCallOptions);
  }

  Future<void> initAudio() async {
    var configreq = new StreamingRecognizeRequest();
    var recogconfig = new RecognitionConfig();
    var config = new StreamingRecognitionConfig();
    recogconfig.encoding = RecognitionConfig_AudioEncoding.LINEAR16;
    recogconfig.sampleRateHertz = 16000;
    recogconfig.languageCode = 'en-US';
    config.config = recogconfig;
    config.singleUtterance = true;
    config.interimResults = true;
    configreq.streamingConfig = config;
    var stream = new Stream.fromIterable([configreq]);
    await controller.intialize();
    var request = controller.startAudioStream().map((convert){
      var req = new StreamingRecognizeRequest();
      req.audioContent = convert;
      return req;
    });
    var nibba = StreamGroup.merge([stream, request]);
    var out = speech.streamingRecognize(nibba);
    out.forEach((action){
      print(action);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Builder(
          builder: (context) {
            return RaisedButton(
              onPressed: () {
                controller.stopAudioStream();
              },
              child: Text('Stop'),
            );
          },
        ),
      ),
    );
  }
}
