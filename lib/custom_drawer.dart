import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:workpiece_diametr/const.dart';
import 'package:workpiece_diametr/l10n/app_localizations.dart';
import 'package:workpiece_diametr/screens/how_it_works_screen.dart';
import 'package:workpiece_diametr/screens/glossary_screen.dart';
import 'package:workpiece_diametr/table.dart';
import 'package:workpiece_diametr/unit_provider.dart';

import 'launch_url.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  Future<void> feedback() async {
    String? encodeQueryParameters(Map<String, String> params) {
      return params.entries.map((MapEntry<String, String> e) => '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}').join('&');
    }

    final Uri emailLauncherUri = Uri(
        scheme: 'mailTo',
        path: kEmail,
        query: encodeQueryParameters(<String, String>{
          'subject': 'Give us a Like',
          'body': "",
        }));
    if (await canLaunchUrl(emailLauncherUri)) {
      launchUrl(emailLauncherUri);
    } else {
      throw Exception('Could not launch $emailLauncherUri');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF252A34),
              ),
              child: Center(
                child: DrawerHeaderWidget(),
              )),
          Consumer<UnitProvider>(
            builder: (context, unitProvider, _) {
              return ListTile(
                leading: const Icon(Icons.straighten, color: Color(0xFF08D9D6)),
                 title: Text(AppLocalizations.of(context)!.units_label),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'mm',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: unitProvider.currentUnit == AppUnit.mm ? FontWeight.bold : FontWeight.normal,
                        color: unitProvider.currentUnit == AppUnit.mm ? Colors.amber[700] : Colors.grey,
                      ),
                    ),
                    Switch(
                      value: unitProvider.currentUnit == AppUnit.inch,
                      activeColor: Colors.amber[700],
                      onChanged: (val) {
                        unitProvider.setUnit(val ? AppUnit.inch : AppUnit.mm);
                      },
                    ),
                    Text(
                      'in',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: unitProvider.currentUnit == AppUnit.inch ? FontWeight.bold : FontWeight.normal,
                        color: unitProvider.currentUnit == AppUnit.inch ? Colors.amber[700] : Colors.grey,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.help_outline, color: Color(0xFF08D9D6)),
            title: Text(AppLocalizations.of(context)!.menu_how_it_works),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (_) => const HowItWorksScreen()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.book_outlined, color: Color(0xFF08D9D6)),
            title: Text(AppLocalizations.of(context)!.menu_glossary),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (_) => const GlossaryScreen()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.table_chart, color: Color(0xFF08D9D6)),
            title: Text(AppLocalizations.of(context)!.appbar_table),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (_) => const TableBlanksSquareAndHexagon()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.email, color: Color(0xFF08D9D6)),
            title: Text(AppLocalizations.of(context)!.feedback),
            onTap: () async => feedback(),
          ),
          ListTile(
            leading: const Icon(Icons.privacy_tip, color: Color(0xFF08D9D6)),
            title: const DrawerTitlePrivacyWidget(),
            onTap: () {
              const prPolicy = LaunchUrl();
              prPolicy.openURL(Url.pp);
            },
          ),
          const ListTile(
            leading: Icon(Icons.verified, color: Color(0xFF08D9D6)),
            title: VersionWidget(),
          ),
        ],
      ),
    );
  }
}

class VersionWidget extends StatelessWidget {
  const VersionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text('Version 1.3.0', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500));
  }
}

class DrawerTitlePrivacyWidget extends StatelessWidget {
  const DrawerTitlePrivacyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(AppLocalizations.of(context)!.drawer_title_privacy, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500));
  }
}

class DrawerTitleRateWidget extends StatelessWidget {
  const DrawerTitleRateWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      AppLocalizations.of(context)!.drawer_title_rate,
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
    );
  }
}

class DrawerHeaderWidget extends StatelessWidget {
  const DrawerHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      AppLocalizations.of(context)!.drawer_header,
      style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.yellow, fontSize: 24),
    );
  }
}
