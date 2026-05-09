// lib/widgets/admob_banner_secondary.dart
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdMobBannerSecondary extends StatefulWidget {
  final String adUnitId; // ← ID передаётся снаружи

  const AdMobBannerSecondary({
    super.key,
    required this.adUnitId,
  });

  @override
  State<AdMobBannerSecondary> createState() => _AdMobBannerSecondaryState();
}

class _AdMobBannerSecondaryState extends State<AdMobBannerSecondary> {
  BannerAd? _bannerAd;
  bool _isLoaded = false;

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
      debugPrint('❌ AdMob Secondary: не удалось получить размер баннера');
      return;
    }

    _bannerAd = BannerAd(
      adUnitId: widget.adUnitId, // ← берём ID из параметра
      request: const AdRequest(),
      size: adSize,
      listener: BannerAdListener(
        onAdLoaded: (Ad ad) {
          debugPrint('✅ AdMob Secondary: баннер загружен');
          if (mounted) setState(() => _isLoaded = true);
        },
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          debugPrint('❌ AdMob Secondary: ошибка — $error');
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
