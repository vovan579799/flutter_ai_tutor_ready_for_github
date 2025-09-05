
import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(AITutorApp());
}

class AITutorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AI Tutor Starter',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: WelcomeScreen(),
    );
  }
}



