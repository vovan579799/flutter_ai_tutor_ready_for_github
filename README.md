
AI Language Tutor — Flutter + Firebase Starter
=============================================

Что в архиве:
- Базовый Flutter-проект с экранами: Welcome, SignIn, Goals, PlacementTest, Home, Lesson, ChatVoice, SRS, Profile, Paywall.
- Заглушки для интеграции с Firebase (firebase_core, auth, firestore, storage).
- Инструкции по подключению Firebase и как тестировать на Android/iOS устройстве.

ВАЖНО: Для работы нужно добавить свои Firebase-конфигурационные файлы:
- Android: android/app/google-services.json
- iOS: ios/Runner/GoogleService-Info.plist

Шаги по запуску (локально):
1. Установи Flutter (https://flutter.dev/docs/get-started/install) и убедись, что `flutter doctor` чистый.
2. Склонируй/распакуй проект и открой терминал в папке проекта.
3. Установи зависимости:
   flutter pub get
4. Настрой Firebase:
   - Создай проект в Firebase Console.
   - Добавь Android‑app (package name: com.example.ai_tutor_starter) и скачай google-services.json -> положи в android/app/
   - Добавь iOS‑app (bundle id: com.example.aiTutorStarter) и скачай GoogleService-Info.plist -> положи в ios/Runner/
   - Включи Authentication (Email/Google), Firestore, Storage.
5. Запуск на Android‑устройстве:
   - Подключи телефон через USB, включи отладку.
   - flutter run -d <device-id>
6. Запуск на iOS‑устройстве:
   - Открой ios/Runner.xcworkspace в Xcode, проверь Signing & Capabilities (Team).
   - Подключи iPhone и запусти через Xcode или flutter run -d <device-id>

Как тестировать поведение приложения:
- Онбординг и SignIn используют Firebase Auth.
- Примеры экранов показывают структуру навигации и где вставлять вызовы к ИИ (Edge Functions).
- Для полного AI/LLM поведения нужно подключить backend endpoint (Edge Functions/Debounced LLM proxy) и добавить ключи в .env (см. .env.example).

Если хочешь — могу дополнительно:
- Подключить basic Firebase Edge Function (TypeScript) прокси для LLM вызовов и добавить примеры запросов.
- Собрать и выдать готовый debug APK/IPA (ты сможешь установить на устройства для теста).

