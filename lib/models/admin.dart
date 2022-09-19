import 'post.dart';

class Admin {
  Admin({required this.id, required this.name, this.posts});
  final int id;
  final String name;
  final List<Post>? posts;
  //TODO(create to json and fromjson)
}
