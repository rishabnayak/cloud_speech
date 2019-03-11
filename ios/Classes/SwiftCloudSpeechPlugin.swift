import Flutter
import UIKit
import AVFoundation


@available(iOS 9.0, *)
public class SwiftCloudSpeechPlugin: NSObject, FlutterPlugin, FlutterStreamHandler {

    let engine = AVAudioEngine()
    private var eventSink: FlutterEventSink?
    struct AudioVals{
        static var commonFormat = "AVAudioCommonFormat.pcmFormatInt16"
        static var SampleRate = 8000
        static var interleaved = true
        static var channelCount = 2
    }

    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "cloud_speech", binaryMessenger: registrar.messenger())
        let eventChannel = FlutterEventChannel(name: "audio", binaryMessenger: registrar.messenger())
        let instance = SwiftCloudSpeechPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
        eventChannel.setStreamHandler(instance)
      }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
          switch call.method {
          case "initialize":
            let AudioVals.commonFormat : String = args["commonFormat"]! as! String
            let AudioVals.sampleRate: Double = args["interleaved"] as! Double
            let AudioVals.interleaved: Bool = args["sampleRate"] as! Bool
            let AudioVals.channelCount : Int = args["channelCount"]! as! Int

            return args

          case "startAudioStream":
            return nil!

          case "stopImageStream":
            return nil!

          default:
            return nil!

          }
    }

    public func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
        // Switch for parsing commonFormat - Can abstract later
        switch AudioVals.commonFormat{
            case "AVAudioCommonFormat.pcmFormatInt16"
                var AudioVals.commonFormat = .pcmformatInt16
            case "AVAudioCommonFormat.pcmFormatInt32"
                var AudioVals.commonFormat = .pcmFormatInt32
        }

        let input = engine.inputNode
        let bus = 0
        let inputFormat = input.outputFormat(forBus: 0)
        let outputFormat = AVAudioFormat(commonFormat: AudioVals.commonFormat,
                                         sampleRate: sampleAudioVals.sampleRate,
                                         channels: AudioVals.channelCount,
                                         interleaved: AudioVals.interleaved)!

        let converter = AVAudioConverter(from: inputFormat, to: outputFormat)!

        input.installTap(onBus: bus, bufferSize: 512, format: inputFormat) { (buffer, time) -> Void in
            var newBufferAvailable = true

            let inputCallback: AVAudioConverterInputBlock = { inNumPackets, outStatus in
                if newBufferAvailable {
                    outStatus.pointee = .haveData
                    newBufferAvailable = false
                    return buffer
                } else {
                    outStatus.pointee = .noDataNow
                    return nil
                }
            }

            let convertedBuffer = AVAudioPCMBuffer(pcmFormat: outputFormat, frameCapacity: AVAudioFrameCount(outputFormat.sampleRate) * buffer.frameLength / AVAudioFrameCount(buffer.format.sampleRate))!

            var error: NSError?
            let status = converter.convert(to: convertedBuffer, error: &error, withInputFrom: inputCallback)
            assert(status != .error)

            let values = UnsafeBufferPointer(start: convertedBuffer.int16ChannelData![0], count: Int(convertedBuffer.frameLength))
            let arr = Array(values)
            events(arr)

        }

        try! engine.start()

        return nil

    }

    public func onCancel(withArguments arguments: Any?) -> FlutterError? {

        return nil

    }
}
