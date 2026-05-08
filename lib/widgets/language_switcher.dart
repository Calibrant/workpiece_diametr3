import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workpiece_diametr/providers/locale_provider.dart';
import 'package:workpiece_diametr/widgets/language_bottom_sheet.dart';

class LanguageSwitcherButton extends StatelessWidget {
  const LanguageSwitcherButton({super.key});

  String _getFlag(String code) {
    switch (code) {
      case 'en': return '🇬🇧';
      case 'ru': return '🇷🇺';
      case 'hi': return '🇮🇳';
      case 'pt': return '🇧🇷';
      case 'es': return '🇪🇸';
      case 'ar': return '🇸🇦';
      case 'fr': return '🇫🇷';
      case 'de': return '🇩🇪';
      case 'zh': return '🇨🇳';
      case 'ja': return '🇯🇵';
      case 'ko': return '🇰🇷';
      case 'tr': return '🇹🇷';
      case 'it': return '🇮🇹';
      case 'pl': return '🇵🇱';
      case 'nl': return '🇳🇱';
      case 'sv': return '🇸🇪';
      case 'id': return '🇮🇩';
      case 'vi': return '🇻🇳';
      case 'fil': return '🇵🇭';
      case 'sw': return '🇰🇪';
      case 'loms': return '🇱🇦';
      default: return '🌐';
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentLocale = context.watch<LocaleProvider>().locale;
    return TextButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          backgroundColor: Colors.transparent,
          isScrollControlled: true,
          builder: (_) => const LanguageBottomSheet(),
        );
      },
      child: Text(
        '${_getFlag(currentLocale.languageCode)} ▾',
        style: const TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }
}