import 'package:flutter_test/flutter_test.dart';
import 'package:app_launcher_shortcuts/app_launcher_shortcuts.dart';
import 'package:app_launcher_shortcuts/app_launcher_shortcuts_platform_interface.dart';
import 'package:app_launcher_shortcuts/app_launcher_shortcuts_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAppLauncherShortcutsPlatform
    with MockPlatformInterfaceMixin
    implements AppLauncherShortcutsPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AppLauncherShortcutsPlatform initialPlatform = AppLauncherShortcutsPlatform.instance;

  test('$MethodChannelAppLauncherShortcuts is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAppLauncherShortcuts>());
  });

  test('getPlatformVersion', () async {
    AppLauncherShortcuts appLauncherShortcutsPlugin = AppLauncherShortcuts();
    MockAppLauncherShortcutsPlatform fakePlatform = MockAppLauncherShortcutsPlatform();
    AppLauncherShortcutsPlatform.instance = fakePlatform;

    expect(await appLauncherShortcutsPlugin.getPlatformVersion(), '42');
  });
}
