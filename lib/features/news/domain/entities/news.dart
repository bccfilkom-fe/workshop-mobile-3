import 'package:equatable/equatable.dart';

class NewsEntitiy extends Equatable {
  final String? title;
  final String? thumb;
  final String? author;
  final String? tag;
  final String? time;
  final String? desc;
  final String? key;

  const NewsEntitiy({
    this.title,
    this.thumb,
    this.author,
    this.tag,
    this.time,
    this.desc,
    this.key,
  });

  factory NewsEntitiy.fromJson(Map<String, dynamic> json) => NewsEntitiy(
        title: json["title"],
        thumb: json["thumb"],
        author: json["author"],
        tag: json["tag"],
        time: json["time"],
        desc: json["desc"],
        key: json["key"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "thumb": thumb,
        "author": author,
        "tag": tag,
        "time": time,
        "desc": desc,
        "key": key,
      };

  @override
  List<Object?> get props => [
        title,
        thumb,
        author,
        tag,
        time,
        desc,
        key,
      ];
}
