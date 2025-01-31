import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/bindings/settings_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/home/views/settings_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SettingsView,
      page: () => SettingsView(),
      binding: SettingsBinding(),
    ),
  ];
}
