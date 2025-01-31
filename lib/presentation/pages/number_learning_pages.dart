import 'package:flutter/material.dart';
import 'package:myapp/presentation/pages/base_page.dart';

import 'alphabet_learning_page.dart';
import 'base_page.dart';
import 'profile_page.dart';
import 'settings.page.dart';

class NumberLearningPage extends StatelessWidget {
  BasePage build(BuildContext context) {
    return BasePage(
      title: 'Learn Numbers',
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Learn Numbers', style: TextStyle(fontSize: 24)),
            // Bisa ditambahkan gambar, suara, atau animasi untuk membuatnya interaktif
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman berikutnya atau game
              },
              child: Text('Start Learning Numbers', style: null),
            ),
          ],
        ),
      ), selectedIndex: null,
    );
  }
}
