import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:latihan_cpns_2026/core/constants/ad_constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AdService {
  InterstitialAd? _interstitialAd;
  bool _isLoaded = false;

  void loadInterstitial() {
    InterstitialAd.load(
      adUnitId: AdConstants.interstitialAdUnitId,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          _interstitialAd = ad;
          _isLoaded = true;
        },
        onAdFailedToLoad: (err) {
          _isLoaded = false;
          // Retry loading the ad
          loadInterstitial();
        },
      ),
    );
  }

  void showInterstitial() {
    if (!_isLoaded || _interstitialAd == null) return;

    _interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
      onAdDismissedFullScreenContent: (ad) {
        ad.dispose();
        // Preload the next ad
        loadInterstitial();
      },
      onAdFailedToShowFullScreenContent: (ad, error) {
        ad.dispose();
        loadInterstitial();
      },
    );

    _interstitialAd!.show();
    _isLoaded = false;
  }

  void dispose() {
    _interstitialAd?.dispose();
  }
}

final adServiceProvider = Provider<AdService>((ref) => AdService());
