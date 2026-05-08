import 'package:flutter/material.dart';

class GlossaryItem extends StatelessWidget {
  final String term;
  final String definition;

  const GlossaryItem({super.key, required this.term, required this.definition});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(term,
              style: const TextStyle(
                  color: Color(0xFFFFC107),
                  fontSize: 15,
                  fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Text(definition,
              style: const TextStyle(
                  color: Colors.white70, fontSize: 14, height: 1.5)),
          const SizedBox(height: 12),
          const Divider(color: Color(0x26FFC107), height: 1),
        ],
      ),
    );
  }
}