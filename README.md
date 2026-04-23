# Application Commune — Taxi Users

![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?style=flat-square&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-3.x-0175C2?style=flat-square&logo=dart&logoColor=white)
![Firebase](https://img.shields.io/badge/Firebase-Auth%20%7C%20DB%20%7C%20Storage-FFCA28?style=flat-square&logo=firebase&logoColor=black)
![Google Maps](https://img.shields.io/badge/Google%20Maps-API-4285F4?style=flat-square&logo=googlemaps&logoColor=white)
![Android](https://img.shields.io/badge/Android-APK-3DDC84?style=flat-square&logo=android)
![License](https://img.shields.io/badge/License-All%20Rights%20Reserved-red?style=flat-square)

> Flutter mobile application — **user side** of a taxi/ride-hailing platform.  
> Phone OTP authentication, real-time GPS tracking and Google Maps integration.

---

## ðŸ“± Features

| Feature | Description |
|---------|-------------|
| ðŸ“ž **Phone Auth** | OTP verification via Firebase Auth (multi-country, default +225 ðŸ‡¨ðŸ‡®) |
| ðŸ—ºï¸ **Live Map** | Google Maps with real-time GPS position |
| ðŸ“ **Location Search** | Places autocomplete (Google Maps API) |
| 🔒 **Signup / Login** | Secure user registration with phone number |
| âš™ï¸ **Settings** | User preferences and profile management |
| ðŸŒ **Connectivity Check** | Graceful offline handling |

---

## ðŸ—ï¸ Structure

```
lib/
├── main.dart                        # App entry point + Firebase init
├── authentication/
│   ├── login_screen.dart            # Phone number + country code login
│   ├── signup_screen.dart           # New user registration
│   └── otp_verification_screen.dart # OTP code input & verification
├── pages/
│   └── home_page.dart               # Map screen + location + search
├── global/
│   ├── global_var.dart.example      # API key placeholder (see setup)
│   └── SettingsPage.dart
├── methods/
│   └── common_methods.dart          # Shared utilities
└── widgets/
    └── loading_dialog.dart
```

---

## âš™ï¸ Setup

### 1. Firebase

- Create a Firebase project at [console.firebase.google.com](https://console.firebase.google.com)
- Enable **Phone Authentication**
- Enable **Realtime Database** and **Storage**
- Download `google-services.json` ↑ place it in `android/app/`

### 2. Google Maps API Key

Create `lib/global/global_var.dart` :

```dart
class GlobalVar {
  static const String googleMapsApiKey = 'YOUR_GOOGLE_MAPS_API_KEY';
}
```

> ⚠ï¸ **Never commit your real API keys.** Both `google-services.json` and `global_var.dart` are in `.gitignore`.

### 3. Run

```bash
flutter pub get
flutter run
```

---

## ðŸ› ï¸ Tech Stack

| Layer | Technology |
|-------|-----------|
| Framework | Flutter 3 + Dart |
| Authentication | Firebase Auth (Phone OTP) |
| Database | Firebase Realtime Database |
| Storage | Firebase Storage |
| Maps | Google Maps Flutter + Places API |
| Location | Geolocator |

---

## Author

**Aboubacar Sidick Meite** — [@ApollonASM8977](https://github.com/ApollonASM8977)  
M.S. Cybersecurity Â· Montclair State University

---

© 2026 Aboubacar Sidick Meite (ApollonASM8977) — All Rights Reserved

