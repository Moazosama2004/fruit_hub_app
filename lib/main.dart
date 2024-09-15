import 'package:flutter/material.dart';
import 'package:fruit_hub_app/core/routing/app_router.dart';
import 'package:fruit_hub_app/core/services/shared_preferences_singleton.dart';
import 'package:fruit_hub_app/fruit_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Prefs.init();
  runApp(FruitHubApp(
    appRouter: AppRouter(),
  ));
}
