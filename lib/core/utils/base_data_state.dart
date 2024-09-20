import 'package:dio/dio.dart';

abstract class DataState<T> {
  final T? data;
  final DioException? eror;

  const DataState({this.data, this.eror});
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataState<T> {
  const DataFailed(DioException eror) : super(eror: eror);
}
