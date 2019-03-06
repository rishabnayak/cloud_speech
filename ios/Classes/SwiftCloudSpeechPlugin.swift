import Flutter
import UIKit
import AVFoundation

@available(iOS 9.0, *)
public class SwiftCloudSpeechPlugin: NSObject, FlutterPlugin {
    
    let engine  = AVAudioEngine()
    
    func startRecording() {
        let input = engine.inputNode
        let bus = 0
        let inputFormat = input.outputFormat(forBus: 0)
        let outputFormat = AVAudioFormat(commonFormat: .pcmFormatFloat32, sampleRate: 8000, channels: 1, interleaved: true)!
        
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
            
            print(convertedBuffer)
        }
        
        try! engine.start()
    }
    
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "cloud_speech", binaryMessenger: registrar.messenger())
        let instance = SwiftCloudSpeechPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
      }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    startRecording()
    result("iOS " + UIDevice.current.systemVersion)
  }
}
