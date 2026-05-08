import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'ad_helper.dart';

class InterstitialAdManager {
  InterstitialAd? _interstitialAd;
  int _calculationCount = 0;

  /// Pre-loads an interstitial ad from AdMob
  void loadAd() {
    InterstitialAd.load(
      adUnitId: AdHelper.interstitialAdUnitId,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          _interstitialAd = ad;
        },
        onAdFailedToLoad: (LoadAdError error) {
          print('InterstitialAd failed to load: $error');
          _interstitialAd = null;
        },
      ),
    );
  }

  /// Increments the internal counter and shows the ad every 3 calculations
  void showAdIfReady() {
    _calculationCount++;
    if (_calculationCount % 3 == 0) {
      if (_interstitialAd != null) {
        _interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
          onAdDismissedFullScreenContent: (ad) {
            ad.dispose();
            loadAd(); // Pre-load the next ad immediately after closing
          },
          onAdFailedToShowFullScreenContent: (ad, error) {
            ad.dispose();
            loadAd();
          },
        );
        _interstitialAd!.show();
        _interstitialAd = null;
      } else {
        loadAd(); // If ad wasn't ready, attempt to load for next time
      }
    }
  }

  void dispose() {
    _interstitialAd?.dispose();
  }
}