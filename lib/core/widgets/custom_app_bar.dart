import 'package:flutter/material.dart';
import 'package:fruit_hub_app/core/theming/style.dart';

AppBar buildAppBar(context, {required String title}) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back_ios_new)),
    centerTitle: true,
    title: Text(
      title,
      style: TextStyles.bold19,
    ),
  );
}
