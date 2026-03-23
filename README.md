# 📱 Latihan CPNS 2026

**Aplikasi Latihan Soal CPNS (Calon Pegawai Negeri Sipil) Indonesia**

Aplikasi mobile dan web untuk belajar dan berlatih soal-soal CPNS dengan ribuan soal, tracking progress, dan fitur-fitur canggih untuk memaksimalkan persiapan ujian Anda.

## ✨ Features

- ✅ **Practice Quizzes**: Latihan dengan ribuan soal CPNS pilihan
- ✅ **Categorized Content**: Soal terorganisir per kategori
- ✅ **Progress Tracking**: Monitor pembelajaran Anda
- ✅ **Results Analysis**: Analisis detail hasil ujian
- ✅ **Bookmarks**: Simpan soal favorit
- ✅ **Daily Streak**: Motivasi belajar konsisten
- ✅ **Statistics & Charts**: Visualisasi progress
- ✅ **Dark/Light Mode**: Tema sesuai preferensi
- ✅ **Multi-language**: Bahasa Indonesia & English

## 🚀 Getting Started

### Prerequisites

- Flutter 3.41.5+
- Dart 3.11.3+
- Android SDK (untuk build APK)
- Java 11+ (untuk Android builds)

### Installation

1. **Clone repository**
```bash
git clone https://github.com/kikykurniady/Latihan-CPNS-2026.git
cd Latihan-CPNS-2026
```

2. **Get dependencies**
```bash
flutter pub get
```

3. **Run app**
```bash
# Web
flutter run -d web-server

# Mobile (iOS/Android)
flutter run
```

## 📱 Platforms

| Platform | Status | Build |
|----------|--------|-------|
| Web | ✅ Ready | `flutter build web --release` |
| Android | ✅ Ready | See [Android Build Guide](ANDROID_BUILD_GUIDE.md) |
| iOS | 🔄 In Progress | |
| Windows | 🔄 In Progress | |
| macOS | 🔄 In Progress | |
| Linux | 🔄 In Progress | |

## 🔨 Building & Deployment

### Web Build
```bash
flutter build web --release
# Output: build/web/
```

See [Web Deployment Guide](#web-deployment) below.

### Android APK Build
See detailed guide in [ANDROID_BUILD_GUIDE.md](ANDROID_BUILD_GUIDE.md)

**Quick build:**
```bash
chmod +x build-apk.sh
./build-apk.sh
```

## 🌐 Web Deployment

### Option 1: Firebase Hosting
```bash
firebase login
firebase deploy --only hosting
```

### Option 2: Netlify
- Drag & drop `build/web/` folder to Netlify
- Auto-deploy in seconds

### Option 3: Docker
```bash
docker build -t latihan-cpns .
docker run -p 8080:8080 latihan-cpns
```

### Option 4: Simple Server (Testing)
```bash
cd build/web
python3 -m http.server 8080
```

## 🏗️ Project Structure

```
lib/
├── main.dart              # Entry point
├── app.dart              # App configuration
├── core/
│   ├── constants/        # App constants & strings
│   ├── theme.dart        # Theme configuration
│   └── services/         # Business logic
├── data/
│   ├── database/         # Local database (Drift/SQLite)
│   ├── models/           # Data models
│   └── repositories/     # Data access layer
├── models/               # UI models
├── providers/            # Riverpod state management
├── ui/
│   ├── components/       # Reusable widgets
│   └── screens/          # App screens
└── navigation/           # Routing with GoRouter

build/
├── web/                  # Web build output
└── app/outputs/flutter-apk/  # Android APK output
```

## 📊 Tech Stack

**Frontend:**
- Flutter 3.41.5
- Dart 3.11.3

**State Management:**
- Riverpod with code generation

**Database:**
- Drift (Type-safe database)
- SQLite

**Networking:**
- HTTP package
- Json serialization

**UI/UX:**
- Material Design 3
- Dark/Light Themes
- Responsive layouts

**Analytics:**
- fl_chart for visualizations
- Custom scoring algorithms

**Utilities:**
- go_router for navigation
- shared_preferences for local storage
- intl for internationalization
- uuid for unique IDs

## 🗄️ Database

Uses Drift (formerly moor) for type-safe database access with SQLite.

```dart
// Example: Query all bookmarks
final bookmarks = await db.getAllBookmarks();

// Example: Add quiz session
await db.insertQuizSession(session);
```

## 🎨 Theming

Supports Material Design 3 with dynamic theming:

- **Light Theme**: Professional and clean design
- **Dark Theme**: Easy on the eyes for night study sessions
- **System Theme**: Follows device system settings

## 🌍 Internationalization

Supported languages:
- 🇮🇩 Indonesian (Bahasa Indonesia)
- 🇬🇧 English

Add new languages in `lib/core/constants/app_strings.dart`

## 🔑 Key Files & Components

| File | Purpose |
|------|---------|
| `lib/main.dart` | App entry point & Riverpod setup |
| `lib/navigation/app_router.dart` | Route definitions |
| `lib/core/theme.dart` | Theme configuration |
| `lib/data/database/app_database.dart` | Database setup |
| `lib/providers/` | State management |
| `pubspec.yaml` | Dependencies |

## 📝 Release Notes

See [RELEASE_NOTES.md](RELEASE_NOTES.md) for version history and updates.

## 🐛 Troubleshooting

### Build Issues

**Web build fails:**
```bash
flutter clean
flutter pub get
flutter build web --release
```

**Android build fails:**
- Check [ANDROID_BUILD_GUIDE.md](ANDROID_BUILD_GUIDE.md)
- Verify Java version (should be 11, 17, or 21)
- Run `flutter doctor` to check setup

**Database generation issues:**
```bash
flutter pub get
dart run build_runner build --delete-conflicting-outputs
```

## 🛠️ Development

### Run with hot reload
```bash
flutter run -d web-server  # Web
flutter run                # Mobile
```

### Generate code
```bash
dart run build_runner watch
```

### Run tests
```bash
flutter test
```

### Code analysis
```bash
flutter analyze
dart fix --apply .
```

## 📚 Resources

- [Flutter Documentation](https://flutter.dev)
- [Riverpod Documentation](https://riverpod.dev)
- [Drift Documentation](https://drift.simonbinder.eu)
- [Material Design 3](https://m3.material.io)

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📄 License

This project is licensed under the MIT License - see LICENSE file for details.

## 👨‍💻 Author

**Kiki Kurniadi** (@kikykurniadi)
- GitHub: https://github.com/kikykurniadi

## 📞 Support

- GitHub Issues: [Report a bug](https://github.com/kikykurniady/Latihan-CPNS-2026/issues)
- GitHub Discussions: [Ask a question](https://github.com/kikykurniady/Latihan-CPNS-2026/discussions)

---

**Built with ❤️ for Indonesia | Persiapan Ujian CPNS dimulai dari sini! 🇮🇩**
