import 'package:dio/dio.dart';
import 'package:news_clean_architectur/core/constants/constants.dart';
import 'package:news_clean_architectur/core/utils/base_data_state.dart';
import 'package:news_clean_architectur/features/news/data/data_sources/remote/news_api_services.dart';
import 'package:news_clean_architectur/features/news/data/models/news_model.dart';
import 'package:news_clean_architectur/features/news/domain/repository/news_repository.dart';

class NewsRepositoryImpl implements NewsRepository {
  final NewsApiServices _newsApiServices;

  NewsRepositoryImpl(this._newsApiServices);

  @override
  Future<DataState<List<NewsModel>>> getListNews() async {
    final respon = await _newsApiServices.getListNews();
    List<NewsModel> listData = [];

    try {
      if (respon != null) {
        if (respon.isNotEmpty) {
          for (var item in (respon)) {
            NewsModel dataJson = NewsModel.fromJson(item);
            listData.add(dataJson);
          }
        }
        print("Ini pada repo implementasi = $listData");
        return DataSuccess(listData);
      } else {
        return DataFailed(DioException(
          requestOptions: RequestOptions(path: listNewsEndpoint),
          message: "Terdapat eror",
        ));
      }
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }
}
