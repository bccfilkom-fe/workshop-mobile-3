import 'package:news_clean_architectur/core/usecase/base_usecase.dart';
import 'package:news_clean_architectur/features/news/domain/entities/news.dart';
import 'package:news_clean_architectur/features/news/domain/repository/news_repository.dart';

class GetListNewsUseCase implements BaseUseCase<List<NewsEntitiy>, void> {
  final NewsRepository _newsRepository;

  GetListNewsUseCase(this._newsRepository);
  @override
  Future<List<NewsEntitiy>> call({void params}) {
    // TODO: Uncoment This
    // return _newsRepository.getListNews();
    throw UnimplementedError();
  }
}
