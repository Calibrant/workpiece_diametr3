import 'package:flutter/material.dart';
import 'package:workpiece_diametr/glossary_item.dart';
import 'package:workpiece_diametr/l10n/app_localizations.dart';
import 'package:workpiece_diametr/widgets/language_switcher.dart';

class GlossaryScreen extends StatelessWidget {
  const GlossaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: const Color(0xFF222831),
      appBar: AppBar(
        title: Text(l10n.title_glossary),
        actions: const [LanguageSwitcherButton()],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            GlossaryItem(
                term: l10n.term_01_title, definition: l10n.term_01_body),
            GlossaryItem(
                term: l10n.term_02_title, definition: l10n.term_02_body),
            GlossaryItem(
                term: l10n.term_03_title, definition: l10n.term_03_body),
            GlossaryItem(
                term: l10n.term_04_title, definition: l10n.term_04_body),
            GlossaryItem(
                term: l10n.term_05_title, definition: l10n.term_05_body),
            GlossaryItem(
                term: l10n.term_06_title, definition: l10n.term_06_body),
            GlossaryItem(
                term: l10n.term_07_title, definition: l10n.term_07_body),
            GlossaryItem(
                term: l10n.term_08_title, definition: l10n.term_08_body),
            GlossaryItem(
                term: l10n.term_09_title, definition: l10n.term_09_body),
            GlossaryItem(
                term: l10n.term_10_title, definition: l10n.term_10_body),
            GlossaryItem(
                term: l10n.term_11_title, definition: l10n.term_11_body),
            GlossaryItem(
                term: l10n.term_12_title, definition: l10n.term_12_body),
            GlossaryItem(
                term: l10n.term_13_title, definition: l10n.term_13_body),
            GlossaryItem(
                term: l10n.term_14_title, definition: l10n.term_14_body),
          ],
        ),
      ),
    );
  }
}
