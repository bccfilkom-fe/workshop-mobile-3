import 'package:dio/dio.dart';
import 'package:news_clean_architectur/core/constants/constants.dart';

class NewsApiServices {
  final Dio _dio = Dio();

  Future<List<Map<String, dynamic>>?> getListNews() async {
    try {
      var respon = await _dio.get(listNewsEndpoint);
      if (respon.statusCode == 200) {
        if (respon.data is List) {
          List<Map<String, dynamic>> dataList = (respon.data as List)
              .map((item) => item as Map<String, dynamic>)
              .toList();
          return dataList;
        } else {
          throw DioException(
            requestOptions: RequestOptions(path: listNewsEndpoint),
            message: "Unexpected data format",
          );
        }
      }
    } on DioException catch (e) {
      throw DioException(
        requestOptions: RequestOptions(path: listNewsEndpoint),
        message: e.message,
      );
    }
    return null;
  }
}
