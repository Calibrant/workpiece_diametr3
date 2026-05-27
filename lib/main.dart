import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import 'package:workpiece_diametr/providers/locale_provider.dart';
import 'package:workpiece_diametr/l10n/app_localizations.dart';
import 'package:workpiece_diametr/square_hexagon.dart';
import 'package:workpiece_diametr/unit_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();

  final localeProvider = LocaleProvider();
  await localeProvider.loadSavedLocale();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => localeProvider),
        ChangeNotifierProvider(create: (_) => UnitProvider()),
      ],
      child: const MyApp(), // Ваш основной виджет приложения
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: context.watch<LocaleProvider>().locale,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      onGenerateTitle: (BuildContext context) => AppLocalizations.of(context)!.main_title,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xff222831),
            actionsIconTheme: IconThemeData(color: Colors.white),
            iconTheme: IconThemeData(color: Colors.white),
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
          ),
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xff222831),
            brightness: Brightness.light,
          )),
      home: const SquareAndHexagon(title: 'Workpiece diameter'),
    );
  }
}
