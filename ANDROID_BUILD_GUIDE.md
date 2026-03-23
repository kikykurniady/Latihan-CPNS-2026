# 📱 Android APK Build Guide

## Requirements

Untuk build APK secara lokal, Anda memerlukan:

### 1. Java Development Kit (JDK)
- **JDK 11, 17, atau 21** (NOT Java 25)
- Download: https://www.oracle.com/java/technologies/downloads/

```bash
# Verify Java version
java -version
# Output should be: version "11.x", "17.x", or "21.x"
```

### 2. Android SDK
- **Android Studio** (includes Android SDK)
- Download: https://developer.android.com/studio

Atau gunakan command-line tools:
```bash
# Set Android SDK path
export ANDROID_HOME=~/Android/sdk
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/bin:$ANDROID_HOME/platform-tools
```

### 3. Flutter
```bash
flutter doctor  # Verify all requirements
```

---

## Build APK (Release)

### Step 1: Set Environment Variables
```bash
export ANDROID_HOME=~/Android/sdk
export JAVA_HOME=/path/to/jdk  # Set to Java 11/17/21
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/bin:$ANDROID_HOME/platform-tools
```

### Step 2: Build APK
```bash
cd Latihan-CPNS-2026
flutter build apk --release
```

Output akan tersimpan di:
```
build/app/outputs/flutter-apk/app-release.apk
```

### Step 3 (Optional): Build Split APKs for Multiple Architectures
```bash
flutter build apk --release --split-per-abi
```

Output:
```
build/app/outputs/flutter-apk/
├── app-armeabi-v7a-release.apk    (32-bit ARM)
├── app-arm64-v8a-release.apk      (64-bit ARM)
└── app-x86_64-release.apk         (64-bit x86)
```

---

## Using Docker (Recommended for CI/CD)

Jika tidak ingin setup lokal, gunakan Docker:

### Step 1: Pull Flutter + Android Docker Image
```bash
# Using official Flutter image with Android SDK
docker run --rm -it \
  -v ~/.android:/home/flutter/.android \
  -v ~/projects/Latihan-CPNS-2026:/workspace \
  -w /workspace \
  cirrusci/flutter:latest \
  flutter build apk --release
```

### Step 2: Output APK
APK akan tersimpan di `build/app/outputs/flutter-apk/app-release.apk`

---

## Upload to Google Play Store

### Create Release Bundle (AAB) untuk Google Play
```bash
flutter build appbundle --release
# Output: build/app/outputs/bundle/release/app-release.aab
```

### Steps:
1. Create Google Play Console account
2. Create new app: **Latihan CPNS**
3. Upload `.aab` file
4. Fill in app details (screenshots, description, etc)
5. Set version and pricing
6. Submit for review (~2-4 hours)

### Store Requirements:
- **Minimum SDK**: API 21 (Android 5.0)
- **Target SDK**: API 34 (Android 14)
- **Package Name**: `id.cpns.latihan2026`
- **App Name**: Latihan CPNS 2026
- **Description**: Aplikasi latihan soal CPNS dengan ribuan soal dan tracking progress

---

## Troubleshooting

### ❌ Error: "java.lang.IllegalArgumentException: 25.0.1"
**Cause**: Java 25 adalah terlalu baru untuk Gradle
**Solution**: Switch ke Java 11, 17, atau 21

```bash
# Check current Java
java -version

# Set JAVA_HOME (example for macOS)
export JAVA_HOME=$(/usr/libexec/java_home -v 17)

# Verify
java -version
```

### ❌ Error: "Android SDK not found"
**Solution**:
```bash
export ANDROID_HOME=~/Android/sdk
flutter config --android-sdk=$ANDROID_HOME
```

### ❌ Error: "Android License not accepted"
**Solution**:
```bash
flutter doctor --android-licenses
# Press 'y' to accept all licenses
```

### ❌ Error: "No Android SDK found"
**Solution**: Install Android Studio or SDK command-line tools

---

## .gitignore for Build Files

Tambahkan ke `.gitignore`:
```
# Android
build/
app/outputs/
.gradle/
local.properties

# Build outputs
*.apk
*.aab
*.jks
```

---

## CI/CD Integration

### GitHub Actions Example
```yaml
name: Build Android APK

on: [push, pull_request]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - uses: subosito/flutter-action@v2
        with:
          flutter-version: '3.41.5'
      
      - name: Build APK
        run: |
          flutter pub get
          flutter build apk --release
      
      - name: Upload APK
        uses: actions/upload-artifact@v3
        with:
          name: app-release.apk
          path: build/app/outputs/flutter-apk/app-release.apk
```

---

## App Signing (Production)

Untuk upload ke Google Play, Anda perlu **signing key**:

### Create Signing Key
```bash
keytool -genkey -v -keystore ~/key.jks \
  -keyalg RSA -keysize 2048 -validity 10000 \
  -alias upload-key
```

### Configure Signing in `android/app/build.gradle.kts`

```kotlin
signingConfigs {
    release {
        keyAlias = "upload-key"
        keyPassword = "keypassword"
        storeFile = file("/path/to/key.jks")
        storePassword = "storepassword"
    }
}

buildTypes {
    release {
        signingConfig = signingConfigs.release
    }
}
```

---

## Next Steps

1. ✅ Setup Java 11/17
2. ✅ Setup Android SDK
3. ✅ Run `flutter build apk --release`
4. ✅ Test APK on device/emulator
5. ✅ Create signing key for production
6. ✅ Upload to Google Play Store

---

## Support

- Flutter Docs: https://flutter.dev/docs/deployment/android
- Android Studio Setup: https://developer.android.com/studio/setup
- Google Play Console: https://play.google.com/console

**Happy building! 🚀**
