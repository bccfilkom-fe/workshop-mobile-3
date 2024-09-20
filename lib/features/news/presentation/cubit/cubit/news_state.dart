part of 'news_cubit.dart';

enum NewsStatus { initial, loading, success, empty, eror }

class NewsState extends Equatable {
  const NewsState({
    required this.data,
    required this.status,
    required this.eror,
  });

  final NewsStatus status;
  final String eror;

  final List<NewsEntitiy> data;

  factory NewsState.initial() => const NewsState(
        data: [],
        status: NewsStatus.initial,
        eror: "",
      );

  @override
  List<Object> get props => [data, status, eror];

  NewsState copyWith({
    List<NewsEntitiy>? data,
    NewsStatus? status,
    String? eror,
  }) {
    return NewsState(
      data: data ?? this.data,
      status: status ?? this.status,
      eror: eror ?? this.eror,
    );
  }
}
