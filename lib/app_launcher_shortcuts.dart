
import 'app_launcher_shortcuts_platform_interface.dart';

class AppLauncherShortcuts {
  Future<String?> getPlatformVersion() {
    return AppLauncherShortcutsPlatform.instance.getPlatformVersion();
  }
}
