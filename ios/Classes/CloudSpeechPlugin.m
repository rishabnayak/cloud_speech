#import "CloudSpeechPlugin.h"
#import <cloud_speech/cloud_speech-Swift.h>

@implementation CloudSpeechPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftCloudSpeechPlugin registerWithRegistrar:registrar];
}
@end
