import 'package:news_clean_architectur/features/news/domain/entities/news.dart';

abstract class NewsRepository {
  Future<List<NewsEntitiy>> getListNews();
}
