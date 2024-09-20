import 'package:news_clean_architectur/features/news/domain/entities/news.dart';

class NewsModel extends NewsEntitiy {
  const NewsModel(
      {super.title,
      super.thumb,
      super.author,
      super.tag,
      super.time,
      super.desc,
      super.key});

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
        title: json["title"],
        thumb: json["thumb"],
        author: json["author"],
        tag: json["tag"],
        time: json["time"],
        desc: json["desc"],
        key: json["key"],
      );
}
