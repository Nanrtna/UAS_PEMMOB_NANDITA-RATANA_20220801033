import 'package:flutter/material.dart';
import 'package:myapp/presentation/pages/base_page.dart';

import 'settings.page.dart';

class ColorLearningPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return BasePage(
      title: 'Learn Colors',
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Learn Colors', style: TextStyle(fontSize: 24)),
            // Gambar dan animasi warna
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman berikutnya atau game
              },
              child: Text('Start Learning Colors'),
            ),
          ],
        ),
      ),
    );
  }
}
