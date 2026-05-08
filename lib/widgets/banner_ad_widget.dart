import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'dart:io';

class AdMobBanner extends StatefulWidget {
  const AdMobBanner({super.key});

  @override
  State<AdMobBanner> createState() => _AdMobBannerState();
}

class _AdMobBannerState extends State<AdMobBanner> {
  BannerAd? _bannerAd;
  bool _isLoaded = false;

  // Твой ID (я проверил — он одинаковый для Android и iOS в твоём коде)
  String get _adUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-2717584945928240/1857475363';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-2717584945928240/1857475363'; // Замени на свой iOS ID
    } else {
      return 'ca-app-pub-3940256099942544/6300978111'; // Тестовый для Web/Desktop
    }
  }

  @override
  void initState() {
    super.initState();
    _loadAdaptiveBanner();
  }

  /// Адаптивный баннер, который подстраивается под ширину экрана
  Future<void> _loadAdaptiveBanner() async {
    // Получаем ширину экрана
    final int width = MediaQuery.of(context).size.width.truncate();

    // ✅ ИСПРАВЛЕНО: получаем адаптивный размер АСИНХРОННО
    final AnchoredAdaptiveBannerAdSize? adSize =
        await AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(width);

    if (adSize == null) {
      debugPrint('❌ AdMob: Failed to get adaptive banner size');
      return;
    }

    _bannerAd = BannerAd(
      adUnitId: _adUnitId,
      request: const AdRequest(),
      size: adSize, // Теперь тип правильный
      listener: BannerAdListener(
        onAdLoaded: (Ad ad) {
          debugPrint('✅ AdMob: Banner loaded successfully');
          if (mounted) {
            setState(() {
              _isLoaded = true;
            });
          }
        },
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          debugPrint('❌ AdMob: Failed to load banner: $error');
          ad.dispose();
          _bannerAd = null;
          if (mounted) {
            setState(() {
              _isLoaded = false;
            });
          }
        },
        onAdOpened: (Ad ad) => debugPrint('📍 AdMob: Banner opened'),
        onAdClosed: (Ad ad) => debugPrint('📍 AdMob: Banner closed'),
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
      return const SizedBox.shrink(); // Пока не загрузился — не показываем
    }

    // Центрируем баннер и добавляем отступы
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Center(
        child: SizedBox(
          width: _bannerAd!.size.width.toDouble(),
          height: _bannerAd!.size.height.toDouble(),
          child: AdWidget(ad: _bannerAd!),
        ),
      ),
    );
  }
}
