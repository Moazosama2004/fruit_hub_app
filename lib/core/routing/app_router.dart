import 'package:flutter/material.dart';
import 'package:fruit_hub_app/core/routing/routes.dart';
import 'package:fruit_hub_app/features/splash/presentation/views/splash_view.dart';

class AppRouter {
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashView:
        return MaterialPageRoute(builder: (_) => const SplashView());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No Route Defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
