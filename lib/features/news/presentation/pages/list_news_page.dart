import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_clean_architectur/features/news/domain/entities/news.dart';
import 'package:news_clean_architectur/features/news/presentation/cubit/cubit/news_cubit.dart';
import 'package:news_clean_architectur/features/news/presentation/widgets/news_card.dart';

class ListNewsPage extends StatelessWidget {
  const ListNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    NewsEntitiy dummy = NewsEntitiy.fromJson(const {
      "title":
          "Review GUNDAM BREAKER 4: Kustomisasi Gundam yang Semakin Mantap!",
      "thumb":
          "https://thelazy.media/wp-content/uploads/2024/09/Review-Thumbnail-copy-2-218x150.jpg",
      "author": "Teo Ariesda",
      "tag": "Games",
      "time": "September 13, 2024",
      "desc":
          "Jum'at (13/9) — Sudah ditunggu kehadirannya oleh para fans, akhirnya GUNDAM BREAKER 4 rilis juga pada akhir Agustus lalu. Simak ulasan selengkapnya di bawah!\n\n\n\nDiulas oleh Teo Ariesda\nUntuk versi PlayStation 5\nPremis Cerita Berperan...",
      "key": "2024/09/13/gundam-breaker-4-13092024"
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text("News Today"),
      ),
      body: SafeArea(
        child: BlocBuilder<NewsCubit, NewsState>(
          builder: (context, state) {
            if (state.status == NewsStatus.loading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state.status == NewsStatus.success) {
              return ListView.separated(
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 16,
                ),
                itemCount: state.data.length,
                separatorBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Divider(),
                  );
                },
                itemBuilder: (context, index) =>
                    NewsCard(data: state.data[index]),
              );
            } else if (state.status == NewsStatus.eror) {
              return Center(child: Text("eror = ${state.eror}"));
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
