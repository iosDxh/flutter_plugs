
import 'flutter_plugs_platform_interface.dart';

class FlutterPlugs {
  Future<String?> getPlatformVersion() {
    return FlutterPlugsPlatform.instance.getPlatformVersion();
  }

  Future<String?> hello() {
    return FlutterPlugsPlatform.instance.hello();
  }
}
