import '../interfaces/blog_interface.dart';
import '../../models/comments.dart';
import '../../models/post.dart';

class BlogInterfaceImpl implements BlogInterface {
  @override
  Future<List<Post>> getAllPosts() {
    // TODO: implement getAllPosts
    throw UnimplementedError();
  }

  @override
  Future<Post> getPostById(int id) {
    // TODO: implement getPostById
    throw UnimplementedError();
  }

  @override
  Future<List<Comments>> getPostComments(int postId) {
    // TODO: implement getPostComments
    throw UnimplementedError();
  }
}
