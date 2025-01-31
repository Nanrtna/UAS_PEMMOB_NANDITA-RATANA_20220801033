import 'package:flutter/material.dart';
import 'package:myapp/domain/usecases/navigation_to_page.dart';

class HomeController extends ChangeNotifier {
  final NavigationToPage navigationToPage;

  HomeController(this.navigationToPage);

  void navigateToNumberLearning() {
    navigationToPage('numbers');
  }

  void navigateToAlphabetLearning() {
    navigationToPage('alphabet');
  }

  void navigateToColorLearning() {
    navigationToPage('colors');
  }
}
