import 'dart:async';

import 'package:flutter/material.dart';
import 'package:cloud_speech/cloud_speech.dart';

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
    controller = new AudioController(CommonFormat.Int32, 8000, 2, true);
    initAudio();
  }

  Future<void> initAudio() async {
      await controller.intialize();
      controller.startAudioStream();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('Test Plugin'),
        ),
      ),
    );
  }
}
