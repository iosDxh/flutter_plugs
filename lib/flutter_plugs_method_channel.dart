import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_plugs_platform_interface.dart';

/// An implementation of [FlutterPlugsPlatform] that uses method channels.
class MethodChannelFlutterPlugs extends FlutterPlugsPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_plugs');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<String?> hello() async {
    final msg = await methodChannel.invokeMethod<String>('hello');
    return msg;
  }
}
