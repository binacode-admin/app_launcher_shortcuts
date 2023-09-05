import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'app_launcher_shortcuts_method_channel.dart';

abstract class AppLauncherShortcutsPlatform extends PlatformInterface {
  /// Constructs a AppLauncherShortcutsPlatform.
  AppLauncherShortcutsPlatform() : super(token: _token);

  static final Object _token = Object();

  static AppLauncherShortcutsPlatform _instance = MethodChannelAppLauncherShortcuts();

  /// The default instance of [AppLauncherShortcutsPlatform] to use.
  ///
  /// Defaults to [MethodChannelAppLauncherShortcuts].
  static AppLauncherShortcutsPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AppLauncherShortcutsPlatform] when
  /// they register themselves.
  static set instance(AppLauncherShortcutsPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
