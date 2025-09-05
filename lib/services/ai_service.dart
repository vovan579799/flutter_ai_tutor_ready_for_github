
import 'dart:convert';
import 'package:http/http.dart' as http;

class AiService {
  /// Р‘Р°Р·РѕРІС‹Р№ URL РґР»СЏ Edge proxy. 
  /// Р”Р»СЏ Android-СЌРјСѓР»СЏС‚РѕСЂР° РёСЃРїРѕР»СЊР·СѓР№С‚Рµ http://10.0.2.2:3000
  /// Р”Р»СЏ С„РёР·РёС‡РµСЃРєРѕРіРѕ С‚РµР»РµС„РѕРЅР° СѓРєР°Р¶РёС‚Рµ IP РІР°С€РµР№ РјР°С€РёРЅС‹ РІ Р»РѕРєР°Р»СЊРЅРѕР№ СЃРµС‚Рё, РЅР°РїСЂРёРјРµСЂ http://192.168.1.100:3000
  final String baseUrl;

  AiService({this.baseUrl = 'http://10.0.2.2:3000'});

  Future<Map<String, dynamic>> generateLesson(String userId, Map<String, dynamic> goal) async {
    final url = Uri.parse('\$baseUrl/generate_lesson');
    final resp = await http.post(url, headers: {'Content-Type': 'application/json'}, body: jsonEncode({'userId': userId, 'goal': goal}));
    if (resp.statusCode != 200) {
      throw Exception('Failed to generate lesson: \${resp.statusCode}');
    }
    return jsonDecode(resp.body) as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> gradeSpeech(String transcript) async {
    final url = Uri.parse('\$baseUrl/grade_speech');
    final resp = await http.post(url, headers: {'Content-Type': 'application/json'}, body: jsonEncode({'transcript': transcript}));
    if (resp.statusCode != 200) {
      throw Exception('Failed to grade speech: \${resp.statusCode}');
    }
    return jsonDecode(resp.body) as Map<String, dynamic>;
  }
}



