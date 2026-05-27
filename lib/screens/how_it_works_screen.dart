import 'package:flutter/material.dart';
import 'package:workpiece_diametr/ad_helper.dart';
import 'package:workpiece_diametr/l10n/app_localizations.dart';
import 'package:workpiece_diametr/widgets/admob_banner_secondary.dart';
import 'package:workpiece_diametr/widgets/step_card.dart';
import 'package:workpiece_diametr/widgets/language_switcher.dart';

class HowItWorksScreen extends StatelessWidget {
  const HowItWorksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: const Color(0xFF222831),
      appBar: AppBar(
        title: Text(l10n.title_how_it_works),
       // actions: const [LanguageSwitcherButton()],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Основной контент
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _buildDiagramColumn('assets/images/square_diag.png',
                                'D₁ = a × 1.414'),
                            _buildDiagramColumn(
                                'assets/images/hex_diag.png', 'D₂ = b × 1.155'),
                          ],
                        ),
                        const SizedBox(height: 24),
                        StepCard(
                          accentColor: const Color(0xFFFFC107),
                          title: l10n.section_square_title,
                          body: l10n.section_square_body,
                        ),
                        StepCard(
                          accentColor: const Color(0xFFFFC107),
                          title: l10n.section_hex_title,
                          body: l10n.section_hex_body,
                        ),
                        StepCard(
                          accentColor: const Color(0xFFF44336),
                          title: l10n.section_mistakes_title,
                          body: l10n.section_mistakes_body,
                        ),
                        const SizedBox(height: 16),
                        SizedBox(
                          width: double.infinity,
                          height: 48,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFFFC107),
                              foregroundColor: Colors.black,
                            ),
                            onPressed: () => Navigator.of(context).pop(),
                            child: Text(l10n.btn_open_calculator),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Баннер прижат к низу, вне скролла
        //  AdMobBannerSecondary(adUnitId: AdHelper.secondaryBannerAdUnitId),
        ],
      ),
    );
  }

  Widget _buildDiagramColumn(String asset, String label) {
    return Column(
      children: [
        Image.asset(
          asset,
          height: 100,
          errorBuilder: (_, __, ___) =>
              const Icon(Icons.image, size: 100, color: Colors.white24),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
