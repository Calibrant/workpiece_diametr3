import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workpiece_diametr/l10n/app_localizations.dart';
import 'package:workpiece_diametr/unit_provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Настройки'),
      ),
      body: Consumer<UnitProvider>(
        builder: (context, unitProvider, child) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  AppLocalizations.of(context)!.units_select,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              RadioGroup<AppUnit>(
                groupValue: unitProvider.currentUnit,
                onChanged: (AppUnit? value) {
                  if (value != null) {
                    unitProvider.setUnit(value);
                    Navigator.pop(context);
                  }
                },
                child: RadioListTile(
                  title: Text(AppUnit.mm.displayName),
                  value: AppUnit.mm,
                ),
              ),
              RadioGroup<AppUnit>(
                groupValue: unitProvider.currentUnit,
                onChanged: (AppUnit? value) {
                  if (value != null) {
                    unitProvider.setUnit(value);
                    Navigator.pop(context); //inch
                  }
                },
                child: RadioListTile(
                  title: Text(AppUnit.inch.displayName),
                  value: AppUnit.inch,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
