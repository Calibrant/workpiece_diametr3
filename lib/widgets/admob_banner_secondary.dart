import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'dart:io';

class AdMobBannerSecondary extends StatefulWidget {
  const AdMobBannerSecondary({super.key});

  @override
  State<AdMobBannerSecondary> createState() => _AdMobBannerSecondaryState();
}

class _AdMobBannerSecondaryState extends State<AdMobBannerSecondary> {
  BannerAd? _bannerAd;
  bool _isLoaded = false;

  String get _adUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-3940256099942544/9214589741'; // ← ваш новый ID
    } else if (Platform.isIOS) {
      return 'ca-app-pub-XXXXXXXXXXXXXXXX/XXXXXXXXXX'; // ← ваш iOS ID
    } else {
      return 'ca-app-pub-3940256099942544/9214589741'; // тестовый
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_bannerAd == null && !_isLoaded) {
      _loadAdaptiveBanner();
    }
  }

  Future<void> _loadAdaptiveBanner() async {
    final int width = MediaQuery.of(context).size.width.truncate();

    final AnchoredAdaptiveBannerAdSize? adSize =
        await AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(width);

    if (adSize == null) {
      debugPrint('❌ AdMob Secondary: Failed to get adaptive banner size');
      return;
    }

    _bannerAd = BannerAd(
      adUnitId: _adUnitId,
      request: const AdRequest(),
      size: adSize,
      listener: BannerAdListener(
        onAdLoaded: (Ad ad) {
          debugPrint('✅ AdMob Secondary: Banner loaded');
          if (mounted) setState(() => _isLoaded = true);
        },
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          debugPrint('❌ AdMob Secondary: Failed: $error');
          ad.dispose();
          _bannerAd = null;
          if (mounted) setState(() => _isLoaded = false);
        },
      ),
    )..load();
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_isLoaded || _bannerAd == null) {
      return const SizedBox.shrink();
    }

    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(bottom: 4),
        child: Center(
          child: SizedBox(
            width: _bannerAd!.size.width.toDouble(),
            height: _bannerAd!.size.height.toDouble(),
            child: AdWidget(ad: _bannerAd!),
          ),
        ),
      ),
    );
  }
}