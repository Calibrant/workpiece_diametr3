import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'dart:io';

class BannerAdWidget extends StatefulWidget {
  const BannerAdWidget({super.key});

  @override
  State<BannerAdWidget> createState() => _BannerAdWidgetState();
}

class _BannerAdWidgetState extends State<BannerAdWidget> {
  BannerAd? _bannerAd;
  bool _isLoaded = false;

  final String _adUnitId = Platform.isAndroid
      ? 'ca-app-pub-2717584945928240/1857475363'
      : 'ca-app-pub-2717584945928240/1857475363';

  @override
  void initState() {
    super.initState();
    _loadAd();
  }

  void _loadAd() {
    _bannerAd = BannerAd(
      adUnitId: _adUnitId,
      request: const AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          setState(() {
            _isLoaded = true;
          });
        },
        onAdFailedToLoad: (ad, err) {
          ad.dispose();
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
      child: SizedBox(
          width: _bannerAd!.size.width.toDouble(),
          height: _bannerAd!.size.height.toDouble(),
          child: AdWidget(ad: _bannerAd!)),
    );
  }
}

/* class BannerAdWidget extends StatefulWidget {
  const BannerAdWidget({super.key});

  @override
  State<BannerAdWidget> createState() => _BannerAdWidgetState();
}

class _BannerAdWidgetState extends State<BannerAdWidget> {
  BannerAd? _bannerAd;
  bool _isLoaded = false;
  bool _isLoading = false; // guard против повторной загрузки

  final String _adUnitId = Platform.isAndroid
    ? 'ca-app-pub-3940256099942544/9214589741'
    : 'ca-app-pub-3940256099942544/9214589741';

  void _loadAd(int width) {
    if (_isLoading || _isLoaded) return; // не грузить дважды
    _isLoading = true;

    _bannerAd = BannerAd(
      adUnitId: _adUnitId,
      request: const AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          if (mounted) {
            setState(() { _isLoaded = true; });
          }
        },
        onAdFailedToLoad: (ad, err) {
          ad.dispose();
          if (mounted) {
            setState(() {
              _isLoading = false;
              _bannerAd = null;
            });
          }
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
    // MediaQuery вызывается здесь — контекст 100% готов
    final width = MediaQuery.of(context).size.width.truncate();

    // Запускаем загрузку при первом build
    if (!_isLoading && !_isLoaded) {
      _loadAd(width);
    }

    if (!_isLoaded || _bannerAd == null) {
      return const SizedBox.shrink();
    }

    return SafeArea(
      child: SizedBox(
        width: _bannerAd!.size.width.toDouble(),
        height: _bannerAd!.size.height.toDouble(),
        child: AdWidget(ad: _bannerAd!),
      ),
    );
  }
} */