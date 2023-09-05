import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:app_launcher_shortcuts/app_launcher_shortcuts_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelAppLauncherShortcuts platform = MethodChannelAppLauncherShortcuts();
  const MethodChannel channel = MethodChannel('app_launcher_shortcuts');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
