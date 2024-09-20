import 'package:dio/dio.dart';
import 'package:news_clean_architectur/core/constants/constants.dart';
import 'package:news_clean_architectur/features/news/data/models/news_model.dart';

class NewsApiServices {
  Future<List<NewsModel>> getListNews() async {
    List<NewsModel> data = [];
    try {
      var respon = await Dio().get(listNewsEndpoint);
      if (respon.statusMessage == 200) {
        for (var item in respon.data) {
          NewsModel dataJson = NewsModel.fromJson(item);
          data.add(dataJson);
        }
      }
    } on DioException catch (e) {
      throw DioException(
        requestOptions: RequestOptions(path: listNewsEndpoint),
        message: e.message,
      );
    }
    return data;
  }
}
