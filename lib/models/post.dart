import 'comments.dart';

class Post {
  Post({
    required this.id,
    required this.creatorId,
    required this.title,
    required this.body,
    required this.time,
    this.comments,
  });
  factory Post.fromJson(Map<String, dynamic> json) => Post(
        id: json['id'] as int,
        creatorId: json['creatorId'] as int,
        title: json['title'] as String,
        body: json['body'] as String,
        time: DateTime.parse(json['time'] as String),
      );

  final int id;
  final int creatorId;
  final String title;
  final String body;
  final DateTime time;
  List<Comments>? comments;

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['creatorId'] = creatorId;
    _data['title'] = title;
    _data['body'] = body;
    _data['time'] = time.toString();
    _data['comments'] = comments?.map((e) => e.toJson()).toList();
    return _data;
  }
}
