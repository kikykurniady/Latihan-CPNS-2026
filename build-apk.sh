#!/bin/bash

# Flutter Android APK Build Script
# =================================
# Automated build script untuk Latihan CPNS 2026 Android APK

set -e

# Colors untuk output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}"
echo "╔════════════════════════════════════════════════════╗"
echo "║  Latihan CPNS 2026 - Android APK Build Script      ║"
echo "╚════════════════════════════════════════════════════╝"
echo -e "${NC}"

# Check requirements
echo -e "${YELLOW}📋 Checking requirements...${NC}"

# Check Java
if ! command -v java &> /dev/null; then
    echo -e "${RED}❌ Java not found. Please install JDK 11, 17, or 21${NC}"
    exit 1
fi

JAVA_VERSION=$(java -version 2>&1 | awk -F'"' '{print $2}')
echo -e "${GREEN}✓ Java ${JAVA_VERSION}${NC}"

# Check Flutter
if ! command -v flutter &> /dev/null; then
    echo -e "${RED}❌ Flutter not found. Please install Flutter${NC}"
    exit 1
fi

FLUTTER_VERSION=$(flutter --version | head -1)
echo -e "${GREEN}✓ ${FLUTTER_VERSION}${NC}"

# Check Android SDK
if [ -z "$ANDROID_HOME" ]; then
    echo -e "${YELLOW}⚠ ANDROID_HOME not set. Trying defaults...${NC}"
    
    if [ -d "$HOME/Android/sdk" ]; then
        export ANDROID_HOME="$HOME/Android/sdk"
        echo -e "${GREEN}✓ Using Android SDK at: $ANDROID_HOME${NC}"
    else
        echo -e "${RED}❌ Android SDK not found at $HOME/Android/sdk${NC}"
        echo -e "${YELLOW}Please set ANDROID_HOME or install Android SDK${NC}"
        exit 1
    fi
else
    echo -e "${GREEN}✓ ANDROID_HOME: $ANDROID_HOME${NC}"
fi

# Get dependencies
echo -e "${BLUE}\n📦 Getting Flutter dependencies...${NC}"
flutter pub get

# Clean previous builds
echo -e "${BLUE}\n🧹 Cleaning previous builds...${NC}"
flutter clean

# Build APK
echo -e "${BLUE}\n🔨 Building APK (Release)...${NC}"
flutter build apk --release

# Check if build successful
if [ -f "build/app/outputs/flutter-apk/app-release.apk" ]; then
    APK_SIZE=$(du -h build/app/outputs/flutter-apk/app-release.apk | cut -f1)
    echo -e "${GREEN}\n✅ APK Build Successful!${NC}"
    echo -e "${GREEN}📁 Output: build/app/outputs/flutter-apk/app-release.apk${NC}"
    echo -e "${GREEN}📊 Size: ${APK_SIZE}${NC}"
    
    # Optional: Build split APKs
    read -p "Do you want to build split APKs (for multiple architectures)? (y/n) " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo -e "${BLUE}\n🔨 Building split APKs...${NC}"
        flutter build apk --release --split-per-abi
        echo -e "${GREEN}✅ Split APKs built successfully!${NC}"
        echo -e "${GREEN}📁 Output: build/app/outputs/flutter-apk/${NC}"
        ls -lh build/app/outputs/flutter-apk/*.apk
    fi
    
    # Optional: Build AAB for Google Play
    read -p "Do you want to build App Bundle (AAB) for Google Play Store? (y/n) " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo -e "${BLUE}\n🔨 Building App Bundle...${NC}"
        flutter build appbundle --release
        AAB_SIZE=$(du -h build/app/outputs/bundle/release/app-release.aab | cut -f1)
        echo -e "${GREEN}✅ App Bundle built successfully!${NC}"
        echo -e "${GREEN}📁 Output: build/app/outputs/bundle/release/app-release.aab${NC}"
        echo -e "${GREEN}📊 Size: ${AAB_SIZE}${NC}"
    fi
    
else
    echo -e "${RED}\n❌ APK Build Failed!${NC}"
    exit 1
fi

echo -e "${BLUE}\n════════════════════════════════════════════════════${NC}"
echo -e "${GREEN}Build process completed successfully!${NC}"
echo -e "${BLUE}════════════════════════════════════════════════════${NC}"

echo -e "\n${YELLOW}📝 Next Steps:${NC}"
echo "1. Test APK on device or emulator:"
echo "   flutter install --release"
echo ""
echo "2. Upload to Google Play Store:"
echo "   Use Google Play Console to upload the AAB file"
echo ""
echo "3. Share the APK:"
echo "   You can directly share the APK for testing"
echo ""
echo -e "${GREEN}Happy deployment! 🚀${NC}"
