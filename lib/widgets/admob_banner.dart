/* import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'dart:io';

class AdMobBanner extends StatefulWidget {
  final double width; // Принимаем ширину от родителя
  const AdMobBanner({super.key, required this.width});

  @override
  State<AdMobBanner> createState() => _AdMobBannerState();
}

class _AdMobBannerState extends State<AdMobBanner> {
  BannerAd? _bannerAd;
  bool _isLoaded = false;

  String get _adUnitId => Platform.isAndroid
      ? 'ca-app-pub-2717584945928240/1857475363'
      : 'ca-app-pub-2717584945928240/1857475363';

  @override
  void initState() {
    super.initState();
    _loadAd();
  }

  Future<void> _loadAd() async {
    // Используем переданную ширину для расчета размера баннера
    final AdSize? adSize = await AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(widget.width.truncate());
    if (adSize == null) return;

    _bannerAd = BannerAd(
      adUnitId: _adUnitId,
      request: const AdRequest(),
      size: adSize,
      listener: BannerAdListener(
        onAdLoaded: (_) => setState(() => _isLoaded = true),
        onAdFailedToLoad: (ad, err) => ad.dispose(),
      ),
    )..load();
  }

  @override
  Widget build(BuildContext context) {
    if (!_isLoaded || _bannerAd == null) return const SizedBox.shrink();
    return SizedBox(
      width: _bannerAd!.size.width.toDouble(),
      height: _bannerAd!.size.height.toDouble(),
      child: AdWidget(ad: _bannerAd!),
    );
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    super.dispose();
  }
} */