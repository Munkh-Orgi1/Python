import 'package:flutter/material.dart';
import '../widgets/help_content_builder.dart';

class HelpDetailScreen extends StatelessWidget {
  final String title;
  final String type; // Content-ийг ялгах түлхүүр

  const HelpDetailScreen({super.key, required this.title, required this.type});

  @override
  Widget build(BuildContext context) {
    final HelpContent content = HelpContentBuilder.build(type);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Таны сонорт"),
        leading: IconButton(icon: const Icon(Icons.arrow_back, color: Colors.white), onPressed: () => Navigator.pop(context)),
      ),
      backgroundColor: const Color(0xFF0E0E10),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 40),
        children: [
          // 1) Гарчиг
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 8),

          // 2) Огноо
          Text(
            content.date,
            style: const TextStyle(color: Color(0xFFA3A3A3), fontSize: 14),
          ),
          const SizedBox(height: 16),

          // 3) Divider
          const Divider(color: Color(0xFF2A2A2D), thickness: 1),
          const SizedBox(height: 16),

          // 4) Body Content
          ...content.body,
        ],
      ),
    );
  }
}

class HelpContent {
  final String date;
  final List<Widget> body;

  HelpContent({required this.date, required this.body});
}
