import 'dart:io';

class AdConstants {
  static const String androidBanner = 'ca-app-pub-3940256099942544/6300978111';
  static const String iosBanner = 'ca-app-pub-3940256099942544/2934735716';

  static const String androidInter = 'ca-app-pub-3940256099942544/1033173712';
  static const String iosInter = 'ca-app-pub-3940256099942544/4411468910';

  static String get bannerAdUnitId =>
      Platform.isAndroid ? androidBanner : iosBanner;
  static String get interstitialAdUnitId =>
      Platform.isAndroid ? androidInter : iosInter;
}
