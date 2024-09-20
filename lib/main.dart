import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_clean_architectur/features/news/presentation/cubit/cubit/news_cubit.dart';
import 'package:news_clean_architectur/features/news/presentation/pages/list_news_page.dart';
import 'package:news_clean_architectur/injection_container.dart';

Future<void> main() async {
  await initializeDepenencied();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewsCubit>(
      create: (context) => sl()..getALlNews(),
      child: const MaterialApp(
        home: ListNewsPage(),
      ),
    );
  }
}
