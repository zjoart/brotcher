import '../../models/comments.dart';
import '../../models/post.dart';

abstract class BlogInterface {
  Future<List<Post>> getAllPosts();
  Future<Post> getPostById(int id);

  Future<List<Comments>> getPostComments(int postId);
}
