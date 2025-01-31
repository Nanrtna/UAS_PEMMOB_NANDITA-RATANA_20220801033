import 'package:flutter/material.dart';

import '../controllers/home_controller.dart';
import 'settings.page.dart';

class BasePage extends StatelessWidget {
  final Widget child;
  final String title;

  const BasePage({Key? key, required this.child, required this.title, required int selectedIndex, required HomeController controller, required bodyContent}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: child,
    );
  }
}
