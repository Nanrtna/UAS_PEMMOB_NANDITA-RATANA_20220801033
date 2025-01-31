import 'package:flutter/material.dart';
import 'package:myapp/presentation/pages/base_page.dart';

import 'alphabet_learning_page.dart';
import 'base_page.dart';
import 'settings.page.dart';

class ProfilePage extends StatelessWidget {
  final String name = "John Doe";  // Nama anak atau pengguna
  final int age = 5;  // Usia anak
  final String profileImageUrl = 'https://example.com/profile.jpg';

  ProfilePage(homeController);  // URL gambar profil

  BasePage build(BuildContext context) {
    return BasePage(
      title: 'Profile Page',
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Foto Profil
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(profileImageUrl),  // Menggunakan gambar dari URL
            ),
            SizedBox(height: 20),
            
            // Nama
            Text(
              name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            
            // Usia
            Text(
              newMethod,
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(height: 20),
            
            // Progress Pembelajaran
            Text(
              'Learning Progress:',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ProgressIndicatorWidget(progress: 0.75),  // Progress pembelajaran anak
            
            SizedBox(height: 30),
            
            // Tombol untuk Edit Profil
            ElevatedButton(
              onPressed: () {
                // Aksi edit profil, misalnya navigasi ke halaman EditProfilePage
              },
              child: Text('Edit Profile', style: null),
            ),
          ],
        ),
      ), selectedIndex: null, controller: null, bodyContent: null,
    );
  }

  String get newMethod => 'Age: $age years old';
}

class CrossAxisAlignment {
}

class NetworkImage {
  NetworkImage(profileImageUrl);
}

class Padding {
}

class TextStyle {
}

class Colors {
  static var grey;
}

class SizedBox {
}

class ProgressIndicatorWidget extends StatelessWidget {
  final double progress;

  const ProgressIndicatorWidget({required this.progress});

  Column build(BuildContext context) {
    return Column(
      children: [
        LinearProgressIndicator(
          value: progress,  // Menampilkan progres belajar anak (misalnya 75%)
          backgroundColor: Colors.grey[300],
          color: Colors.grey,
        ),
        SizedBox(height: 5),
        Text(
          '${(progress * 100).toStringAsFixed(0)}% Completed', // Menampilkan persentase progres
          style: TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}

LinearProgressIndicator({required double value, required backgroundColor, required color}) async {
}
