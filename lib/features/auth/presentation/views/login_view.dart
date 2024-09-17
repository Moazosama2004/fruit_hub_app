import 'package:flutter/material.dart';
import 'package:fruit_hub_app/core/widgets/custom_app_bar.dart';
import 'package:fruit_hub_app/features/auth/presentation/views/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        title: 'تسجيل دخول',
        context
      ),
      body: const LoginViewBody(),
    );
  }
}
