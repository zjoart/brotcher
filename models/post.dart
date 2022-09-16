import 'comments.dart';

class Post {
  Post({required this.title, required this.body, this.comments});

  final String title;
  final String body;
  final List<Comment>? comments;
}
