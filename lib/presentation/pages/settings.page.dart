import 'package:flutter/material.dart';
import 'base_page.dart';
import '../controllers/home_controller.dart';

class SettingsPage extends StatelessWidget {
  final HomeController controller;

  SettingsPage(this.controller);

  BasePage build(BuildContext context) {
    return BasePage(
      bodyContent: Center(child: Text('Settings Page', style: null)),
      selectedIndex: 2, // Settings tab is selected
      controller: controller, child: null, title: '',
    );
  }
}

class Center {
}

class Widget {
}

class BuildContext {
}

class StatelessWidget {
}

class Text {
  Text(String s, {required style});
}