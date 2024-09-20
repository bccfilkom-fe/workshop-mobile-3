import 'package:news_clean_architectur/core/usecase/base_usecase.dart';
import 'package:news_clean_architectur/core/utils/base_data_state.dart';
import 'package:news_clean_architectur/features/news/domain/entities/news.dart';
import 'package:news_clean_architectur/features/news/domain/repository/news_repository.dart';

class GetListNewsUseCase
    implements BaseUseCase<DataState<List<NewsEntitiy>>, void> {
  final NewsRepository _newsRepository;

  GetListNewsUseCase(this._newsRepository);
  @override
  Future<DataState<List<NewsEntitiy>>> call({void params}) async {
    return await _newsRepository.getListNews();
  }
}
