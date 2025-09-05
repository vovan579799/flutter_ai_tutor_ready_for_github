
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
              Text('РџРµСЂСЃРѕРЅР°Р»СЊРЅС‹Р№ AI-СЂРµРїРµС‚РёС‚РѕСЂ РїРѕ СЏР·С‹РєР°Рј вЂ” 10вЂ“15 РјРёРЅСѓС‚ РІ РґРµРЅСЊ', style: TextStyle(fontSize: 16)),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => SignInScreen()));
                },
                child: SizedBox(width: double.infinity, child: Center(child: Text('РќР°С‡Р°С‚СЊ'))),
              ),
              SizedBox(height: 12),
              TextButton(
                onPressed: () {},
                child: Center(child: Text('РЈР¶Рµ РµСЃС‚СЊ Р°РєРєР°СѓРЅС‚? Р’РѕР№С‚Рё')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



