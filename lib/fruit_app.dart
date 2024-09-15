import 'package:flutter/material.dart';
import 'package:fruit_hub_app/core/routing/app_router.dart';
import 'package:fruit_hub_app/core/routing/routes.dart';

class FruitHubApp extends StatelessWidget {
  const FruitHubApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.onGenerateRoute,
      initialRoute: Routes.splashView,
    );
  }
}
