import 'package:flutter/material.dart';
import 'package:workpiece_diametr/l10n/app_localizations.dart';
import 'package:workpiece_diametr/table.dart';

import 'const.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Expanded(
            child: Text(
              maxLines: 3,
              AppLocalizations.of(context)!.appbar_title,
              style: const TextStyle(color: Color(0xffEEEEEE), fontSize: 18),
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const TableBlanksSquareAndHexagon()));
            },
            icon: const Icon(Icons.table_rows),
            color: Colors.white),
            
      ],
      elevation: 5,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kAppbarHeight);
}
