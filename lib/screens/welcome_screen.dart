
import 'package:flutter/material.dart';
import 'sign_in_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Text('AI Tutor', style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text('Персональный AI-репетитор по языкам — 10–15 минут в день', style: TextStyle(fontSize: 16)),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => SignInScreen()));
                },
                child: SizedBox(width: double.infinity, child: Center(child: Text('Начать'))),
              ),
              SizedBox(height: 12),
              TextButton(
                onPressed: () {},
                child: Center(child: Text('Уже есть аккаунт? Войти')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
