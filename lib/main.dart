import 'package:flutter/material.dart';
import 'presentation/pages/alphabet_learning_page.dart';
import 'presentation/pages/base_page.dart';
import 'presentation/pages/color_learning_page.dart';
import 'presentation/pages/home_page.dart';
import 'presentation/pages/number_learning_pages.dart';
import 'presentation/pages/profile_page.dart';
import 'presentation/pages/settings.page.dart';
import 'core/navigation/navigation_service.dart';
import 'presentation/controllers/home_controller.dart';
import 'domain/usecases/navigate_to_page.dart';

void main() {
  runApp(MyApp());
}

void runApp(MyApp myApp) {
}

class MyApp extends StatelessWidget {
  MaterialApp build(BuildContext context) {
    // Initialize services and controllers
    final navigationService = NavigationService();
    final navigateToPageUseCase = NavigateToPageUseCase(navigationService);
    final homeController = HomeController(navigateToPageUseCase);

    return MaterialApp(
      navigatorKey: NavigationService.navigatorKey(), // Use global navigator key
      title: 'Pert4',
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(homeController),
        '/profile': (context) => ProfilePage(homeController),
        '/settings': (context) => SettingsPage(homeController),
      },
    );
  }
}

class HomePage {
  HomePage(homeController);
}

class MaterialApp {
}