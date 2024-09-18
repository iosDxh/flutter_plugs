import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_plugs_method_channel.dart';

abstract class FlutterPlugsPlatform extends PlatformInterface {
  /// Constructs a FlutterPlugsPlatform.
  FlutterPlugsPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterPlugsPlatform _instance = MethodChannelFlutterPlugs();

  /// The default instance of [FlutterPlugsPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterPlugs].
  static FlutterPlugsPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterPlugsPlatform] when
  /// they register themselves.
  static set instance(FlutterPlugsPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
  Future<String?> hello(){
    throw UnimplementedError('hello() has not been implemented.');
  }

}
