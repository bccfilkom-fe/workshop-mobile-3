import 'package:news_clean_architectur/core/utils/base_data_state.dart';
import 'package:news_clean_architectur/features/news/domain/entities/news.dart';

abstract class NewsRepository {
  Future<DataState<List<NewsEntitiy>>> getListNews();
}
