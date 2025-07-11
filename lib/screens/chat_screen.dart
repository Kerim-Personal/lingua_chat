import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat with a Stranger'),
        // Sohbeti bitirme butonu eklenebilir
      ),
      body: Column(
        children: <Widget>[
          // 1. Kısım: Mesajların listeleneceği alan (şimdilik boş)
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
              children: [
                // Mesaj baloncukları buraya gelecek
                // Örnek bir mesaj balonu
                Text('Hi there!', style: TextStyle(backgroundColor: Colors.black12)),
              ],
            ),
          ),
          // 2. Kısım: Mesaj yazma alanı
          Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.teal, width: 2.0),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                      hintText: 'Type your message...',
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send, color: Colors.teal),
                  onPressed: () {
                    // Mesaj gönderme mantığı buraya gelecek
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}