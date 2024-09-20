import 'package:flutter/material.dart';
import 'package:news_clean_architectur/features/news/presentation/pages/list_news_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ListNewsPage(),
    );
  }
}
