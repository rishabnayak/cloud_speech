import 'dart:async';
import 'package:flutter/material.dart';
import 'package:cloud_speech/cloud_speech.dart';
import 'package:googleapis/speech/v1.dart';
import 'package:googleapis_auth/auth_io.dart';

final _credentials = new ServiceAccountCredentials.fromJson({
    "private_key_id": "66b32544520b5ed9a71446cb786caaced50b3151",
    "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQDG20ncGLuDRmkK\nDpMR3h4nM7U2wyPdrHeMVMqV94Xc9Q9JDXhb99S755kIqeLVnwXGmuNUCEUSyZ/Y\n/jdrtVe7G/aQdDy0wFp/fAeC3D8iiNP10J04RCwn5rG0bbgUTs3IIpYsPUobyKyu\nVeysJhcw78tZqQxIt0cIP6zFiDHjk5mVO+p29cIpuuxwbwjwbnlBrzLMKd6gKEna\nvA+8zbWsPtoNdtULu06DtoycvsSCCvfP+O4tjxdxNVN/FRcE45ZlmCzWfsVtBtHX\nlgcR2wMiQGxjpYudAHSHyIiIJM+5kqzIGifAEnWmXvRVmrizn5RqNnMQvbJbCjwm\nJscC699HAgMBAAECggEANXr9crmeGJCjqEZCLHCByIZCCr/RkgkTv8SAFXQT5thr\na3i5cXaGGqEPScKy1EPn4EGAuPVeak6adFfuXMPRG+vJ1JDGUNBYpmebd4i3XBjT\ndI1N8zd2bqa/DSji9Gc7NcODgtNa7nz6YAqQ072MyCb9mBf8S0QrUN8bHqbhz/PF\nMomYTy7iQ0tmE3Y8wVWrDkNWP8X04EROK0lN4zZPu3/Jt3KmebjU4fouXuHQUyLv\noiILF2D8AaqLVacTSxVhEmV3F0XLOfASjwifhVOnDf/XdUtx0WNBNEX0hPVhS4UR\nYIht4bgAbZiGGVvCNPzfn+KPNSuhCwzZaaS1qc5OqQKBgQDufCw0dlE7UIjo3ugy\nxXurz1NxoEnVprZH+6bGqqZ2Q/95fVCf+iJ7zCJaUClRwiLcS3nZera7E2Bz+QrZ\nakyOyl8cSvUjEBvUfdQTcU0NGaAAe/HY72t0JrbNeVtIwQFf6Uzfzw21+FZ75XeQ\n+o8wb41PE0Nsf2mdEPWoC4WbTwKBgQDVdgy2wPUlMOJXmB3Br/MYOCkhKzuq2lxH\nm+pXa7jzOrwq9RL00ImkwePqeZtVuweqRQ0cn3B/l+KGrMclWmHePJ/4YzR8IZ/8\nUznsKY+Pe10dskhW0iOQgwKvuQPH7PM1+Jt4hgL7XdDCXnaTPliasjP4h58lssHe\nSwoTLB+eiQKBgDy6AceaGTUxXKtvl1DWWJd3Q5g7aJGu0duiiOUtrxWOWw9kiZMy\n7nT3lgfJQbw/4wCVd4GZbc5VMMpXMBwMpVH21iEuNR2ojG2fXNFWmHgtfkChTwQe\ncw4wjXvk2wm7m84AakLTRnp/sgX6eGfCZZO/1Au+q/yEtS/5kZQo2uyhAoGAHPmp\nQCVxIVtBXiKH54K6vM7ixl3X+5kobY/8f2Ff+aQ/ZpVdvV2RUYwAJBPdwgVhRPua\njAgYfTlgxmctoSRjpIcWL+FHfpIR5W5mrmf11MQqH53Ts/VSXotqEfBLUxgW63yT\nngiS3wwdCkVIUzRjUpxd8Z53O+bH6iTFeVTD9gECgYBy2T8MCXiFF28q8MakZU+1\nU97VB+WPQi3ileq/SI9S4yD4uE8UqrnorIka8z0vIEi9/4ZSLnhgu5QklEL9kbPE\nLkPPWC9puiVhCdwnKECUoIuMqGzG+iXebhTrxSzLyLWLfH2KIZzTdPbJ4IMvlOzD\nTAfYjO05Y+7bPB1gJ8iqOg==\n-----END PRIVATE KEY-----\n",
    "client_email": "nikzad@plucky-furnace-234312.iam.gserviceaccount.com",
    "client_id": "116615250100557806068",
    "type": "service_account"
});

const _SCOPES = const [SpeechApi.CloudPlatformScope];


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
    controller = new AudioController(CommonFormat.Int16, 8000, 2, true);
    initAudio();
  }

  Future<void> initAudio() async {
      await controller.intialize();
      controller.startAudioStream();
      var httpClient = await clientViaServiceAccount(_credentials, _SCOPES);
      var speechApi = SpeechApi(httpClient);
      var _json =  {
        "config": {
          "encoding":"FLAC",
          "sampleRateHertz": 16000,
          "languageCode": "en-US",
          "enableWordTimeOffsets": false
          },
        "audio": {
          "uri":"gs://cloud-samples-tests/speech/brooklyn.flac"
          }
        };
      var words = await speechApi.speech.recognize(RecognizeRequest.fromJson(_json));
      print(words.results[0].alternatives[0].transcript);
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
