import 'package:news_clean_architectur/features/news/domain/entities/news.dart';
import 'package:news_clean_architectur/features/news/domain/repository/news_repository.dart';

class NewsRepositoryImpl implements NewsRepository {
  //ganti [NewsEntitiy] to [NewsModel]
  //TODO: langsung panggil getnewslist pada class [NewsApiServices]
  @override
  Future<List<NewsEntitiy>> getListNews() {
    // TODO: implement getListNews
    throw UnimplementedError();
  }
}
