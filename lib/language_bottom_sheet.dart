import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workpiece_diametr/providers/locale_provider.dart';
import 'package:workpiece_diametr/l10n/app_localizations.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  static const List<Map<String, String>> languages = [
    {"flag": "🇬🇧", "native": "English", "eng": "English", "code": "en"},
    {"flag": "🇷🇺", "native": "Русский", "eng": "Russian", "code": "ru"},
    {"flag": "HI", "native": "हिन्दी", "eng": "Hindi", "code": "hi"},
    {"flag": "🇧🇷", "native": "Português", "eng": "Portuguese", "code": "pt"},
    {"flag": "🇪🇸", "native": "Español", "eng": "Spanish", "code": "es"},
    {"flag": "🇸🇦", "native": "العربية", "eng": "Arabic", "code": "ar"},
    {"flag": "🇫🇷", "native": "Français", "eng": "French", "code": "fr"},
    {"flag": "🇩🇪", "native": "Deutsch", "eng": "German", "code": "de"},
    {"flag": "🇨🇳", "native": "中文", "eng": "Chinese", "code": "zh"},
    {"flag": "🇯🇵", "native": "日本語", "eng": "Japanese", "code": "ja"},
    {"flag": "🇰🇷", "native": "한국어", "eng": "Korean", "code": "ko"},
    {"flag": "🇹🇷", "native": "Türkçe", "eng": "Turkish", "code": "tr"},
    {"flag": "🇮🇹", "native": "Italiano", "eng": "Italian", "code": "it"},
    {"flag": "🇵🇱", "native": "Polski", "eng": "Polish", "code": "pl"},
    {"flag": "🇳🇱", "native": "Nederlands", "eng": "Dutch", "code": "nl"},
    {"flag": "🇸🇪", "native": "Svenska", "eng": "Swedish", "code": "sv"},
    {"flag": "🇮🇩", "native": "Bahasa Indonesia", "eng": "Indonesian", "code": "id"},
    {"flag": "🇻🇳", "native": "Tiếng Việt", "eng": "Vietnamese", "code": "vi"},
    {"flag": "🇵🇭", "native": "Filipino", "eng": "Filipino", "code": "fil"},
    {"flag": "🇰🇪", "native": "Kiswahili", "eng": "Swahili", "code": "sw"},
    {"flag": "🇱🇦", "native": "ລາວ", "eng": "Lao", "code": "loms"},
  ];

  @override
  Widget build(BuildContext context) {
    final currentLocale = context.watch<LocaleProvider>().locale;

    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF222831),
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 40,
            height: 4,
            margin: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          Text(
            AppLocalizations.of(context)!.select_language,
            style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const Divider(color: Colors.white12),
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height * 0.6),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: languages.length,
              itemBuilder: (context, index) {
                final lang = languages[index];
                final isSelected = currentLocale.languageCode == lang['code'];

                return ListTile(
                  leading: Text(lang['flag']!, style: const TextStyle(fontSize: 28)),
                  title: Text(lang['native']!, style: const TextStyle(color: Colors.white, fontSize: 15)),
                  subtitle: Text(lang['eng']!, style: const TextStyle(color: Colors.white54, fontSize: 12)),
                  trailing: isSelected ? const Icon(Icons.check_rounded, color: Color(0xFFFFC107)) : null,
                  onTap: () {
                    context.read<LocaleProvider>().setLocale(Locale(lang['code']!));
                    Navigator.pop(context);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}