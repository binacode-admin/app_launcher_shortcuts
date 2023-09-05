#include "include/app_launcher_shortcuts/app_launcher_shortcuts_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "app_launcher_shortcuts_plugin.h"

void AppLauncherShortcutsPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  app_launcher_shortcuts::AppLauncherShortcutsPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
