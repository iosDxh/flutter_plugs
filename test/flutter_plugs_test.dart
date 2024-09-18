import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_plugs/flutter_plugs.dart';
import 'package:flutter_plugs/flutter_plugs_platform_interface.dart';
import 'package:flutter_plugs/flutter_plugs_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterPlugsPlatform
    with MockPlatformInterfaceMixin
    implements FlutterPlugsPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<String?> hello() {
    // TODO: implement hello
    throw UnimplementedError();
  }
}

void main() {
  final FlutterPlugsPlatform initialPlatform = FlutterPlugsPlatform.instance;

  test('$MethodChannelFlutterPlugs is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterPlugs>());
  });

  test('getPlatformVersion', () async {
    FlutterPlugs flutterPlugsPlugin = FlutterPlugs();
    MockFlutterPlugsPlatform fakePlatform = MockFlutterPlugsPlatform();
    FlutterPlugsPlatform.instance = fakePlatform;

    expect(await flutterPlugsPlugin.getPlatformVersion(), '42');
  });
}
