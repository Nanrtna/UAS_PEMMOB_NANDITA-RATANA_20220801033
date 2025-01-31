import "package:flutter/material.dart";
import 'package:myapp/presentation/pages/base_page.dart';

import 'base_page.dart';
import 'settings.page.dart';

class AlphabetLearningPage extends StatelessWidget {
  BasePage build(BuildContext context) {
    return BasePage(
      title: 'Learn Alphabets',
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Learn Alphabets', style: TextStyle(fontSize: 24)),
            // Interaksi seperti mengenal huruf dengan gambar dan suara
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman berikutnya atau game
              },
              child: Text('Start Learning Alphabets', style: null),
            ),
          ],
        ),
      ), selectedIndex: null, controller: null, bodyContent: null,
    );
  }
  
  TextStyle({required int fontSize}) {}
}

class ElevatedButton {
}

class MainAxisAlignment {
  static var center;
}

class Column {
}
