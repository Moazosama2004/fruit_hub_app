import 'package:flutter/material.dart';
import 'package:fruit_hub_app/core/routing/app_router.dart';

class FruitHubApp extends StatelessWidget {
  const FruitHubApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}
