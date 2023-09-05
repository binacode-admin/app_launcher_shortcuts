#ifndef FLUTTER_PLUGIN_APP_LAUNCHER_SHORTCUTS_PLUGIN_H_
#define FLUTTER_PLUGIN_APP_LAUNCHER_SHORTCUTS_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace app_launcher_shortcuts {

class AppLauncherShortcutsPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  AppLauncherShortcutsPlugin();

  virtual ~AppLauncherShortcutsPlugin();

  // Disallow copy and assign.
  AppLauncherShortcutsPlugin(const AppLauncherShortcutsPlugin&) = delete;
  AppLauncherShortcutsPlugin& operator=(const AppLauncherShortcutsPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace app_launcher_shortcuts

#endif  // FLUTTER_PLUGIN_APP_LAUNCHER_SHORTCUTS_PLUGIN_H_
