#import "FlutterPlugsPlugin.h"
#if __has_include(<flutter_plugs/flutter_plugs-Swift.h>)
#import <flutter_plugs/flutter_plugs-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_plugs-Swift.h"
#endif

@implementation FlutterPlugsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterPlugsPlugin registerWithRegistrar:registrar];
}
@end
