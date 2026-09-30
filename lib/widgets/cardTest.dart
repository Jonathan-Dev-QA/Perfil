import 'package:flutter/material.dart';

class Cardtest extends StatelessWidget {
  final String text;
  final String title;

  const Cardtest({super.key, required this.text, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.deepPurple.shade50,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [Text(title), const SizedBox(height: 12), Text(text)],
      ),
    );
  }
}
