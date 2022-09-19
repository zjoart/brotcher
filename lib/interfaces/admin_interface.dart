import '../../models/post.dart';

abstract class AdminInterface {
  Future<Post> createPost(Post post);
  Future<List<Post>> fecthPostByAdmin(int adminId);
}
