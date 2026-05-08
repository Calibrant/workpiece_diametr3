import 'dart:io';

class AdHelper {
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-3940256099942544/9214589741"; //Тестовый удалить
    //  return "ca-app-pub-2717584945928240/3173670043"; //Рабочий вкл
    } else if (Platform.isIOS) {
      return "ca-app-pub-2717584945928240/3173670043";
    } else {
      throw UnsupportedError("Unsupported platform");
    }
  }

  static String get interstitialAdUnitId {
    if (Platform.isAndroid) {
      // Test ID: ca-app-pub-3940256099942544/1033173712
      // Replace with real ID before production
      return "app-pub-3940256099942544/1033173712"; // Тестовый
   //   return "ca-app-pub-2717584945928240/7379932225"; // Рабочий
    } else if (Platform.isIOS) {
      return "ca-app-pub-3940256099942544/1033173712";
    } else {
      throw UnsupportedError("Unsupported platform");
    }
  }
}
