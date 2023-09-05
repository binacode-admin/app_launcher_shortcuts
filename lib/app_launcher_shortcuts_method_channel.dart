import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'app_launcher_shortcuts_platform_interface.dart';

/// An implementation of [AppLauncherShortcutsPlatform] that uses method channels.
class MethodChannelAppLauncherShortcuts extends AppLauncherShortcutsPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('app_launcher_shortcuts');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
