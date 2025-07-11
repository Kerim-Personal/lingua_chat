import 'package:flutter/material.dart';
import 'package:lingua_chat/screens/chat_screen.dart'; // Şimdilik geçiş için

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              // Çıkış yapma mantığı buraya gelecek
              Navigator.pop(context); // Şimdilik giriş ekranına geri dönsün
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text('Ready to practice your English?'),
            SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                textStyle: TextStyle(fontSize: 18),
              ),
              child: Text('Find a Practice Partner'),
              onPressed: () {
                // Eşleşme mantığı buraya gelecek
                // Şimdilik direkt sohbet ekranına gidelim
                Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}