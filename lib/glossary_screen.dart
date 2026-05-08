import 'package:flutter/material.dart';
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
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return  SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
            ),
            child: IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildGlossaryItem(l10n.term_01_title, l10n.term_01_body),
                  _buildGlossaryItem(l10n.term_02_title, l10n.term_02_body),
                  _buildGlossaryItem(l10n.term_03_title, l10n.term_03_body),
                  _buildGlossaryItem(l10n.term_04_title, l10n.term_04_body),
                  _buildGlossaryItem(l10n.term_05_title, l10n.term_05_body),
                  _buildGlossaryItem(l10n.term_06_title, l10n.term_06_body),
                  _buildGlossaryItem(l10n.term_07_title, l10n.term_07_body),
                  _buildGlossaryItem(l10n.term_08_title, l10n.term_08_body),
                  _buildGlossaryItem(l10n.term_09_title, l10n.term_09_body),
                  _buildGlossaryItem(l10n.term_10_title, l10n.term_10_body),
                  _buildGlossaryItem(l10n.term_11_title, l10n.term_11_body),
                  _buildGlossaryItem(l10n.term_12_title, l10n.term_12_body),
                  _buildGlossaryItem(l10n.term_13_title, l10n.term_13_body),
                  _buildGlossaryItem(l10n.term_14_title, l10n.term_14_body),
  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

  Widget _buildGlossaryItem(String term, String definition) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            term,
            style: const TextStyle(
              color: Color(0xFFFFC107),
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            definition,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 14,
              height: 1.5,
            ),
          ),
          const Divider(color: Color(0x26FFC107), height: 24),
        ],
      ),
    );
  }
