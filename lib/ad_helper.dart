import 'dart:io';

class AdHelper {
  // Для страницы How It Works
  static String get secondaryBannerAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-3940256099942544/9214589741"; // Тестовый
      //  return "ca-app-pub-2717584945928240/1857475363"; // Рабочий
    } else if (Platform.isIOS) {
      return "ca-app-pub-3940256099942544/9214589741"; // Тестовый
    } else {
      throw UnsupportedError("Unsupported platform");
    }
  }

// Для страницы Glossary
  static String get mainAndTablePage {
    if (Platform.isAndroid) {
      return "ca-app-pub-3940256099942544/9214589741"; // Тестовый
      // return "ca-app-pub-2717584945928240/3173670043"; // Рабочий
    } else if (Platform.isIOS) {
      return "ca-app-pub-3940256099942544/9214589741"; // Тестовый
    } else {
      throw UnsupportedError("Unsupported platform");
    }
  }

  static String get interstitialAdUnitId {
    if (Platform.isAndroid) {
      // Test ID: ca-app-pub-3940256099942544/1033173712
      // Replace with real ID before production
      return "ca-app-pub-3940256099942544/1033173712"; // Тестовый
      // return "ca-app-pub-2717584945928240/7379932225"; // Рабочий
    } else if (Platform.isIOS) {
      return "ca-app-pub-3940256099942544/1033173712"; // Тестовый
    } else {
      throw UnsupportedError("Unsupported platform");
    }
  }
}
