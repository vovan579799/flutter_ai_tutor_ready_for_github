
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Р’С…РѕРґ')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(decoration: InputDecoration(labelText: 'Email')),
            SizedBox(height: 12),
            TextField(decoration: InputDecoration(labelText: 'РџР°СЂРѕР»СЊ'), obscureText: true),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: Text('Р’РѕР№С‚Рё')),
            SizedBox(height: 12),
            OutlinedButton(onPressed: () {}, child: Text('Р РµРіРёСЃС‚СЂР°С†РёСЏ')),
          ],
        ),
      ),
    );
  }
}



