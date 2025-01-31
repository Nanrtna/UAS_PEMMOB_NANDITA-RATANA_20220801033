import 'package:flutter/material.dart';

class NavigationService {
  static navigatorKey() async {
    return GlobalKey<NavigatorState>();
  }

  Future<dynamic> navigateTo(String routeName) {
    return navigatorKey().currentState!.pushNamed(routeName);
  }

  void goBack() {
    return navigatorKey().currentState!.pop();
  }
}

class GlobalKey {
}

class NavigatorState {
}