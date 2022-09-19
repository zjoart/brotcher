import '../interfaces/admin_interface.dart';
import '../../models/comments.dart';
import '../../models/post.dart';

class AdminInterfaceImpl implements AdminInterface {
  @override
  Future<Post> createPost(Post post) async {
    final _com = Comments(id: 2, time: DateTime.now(), comment: 'mmmmmmmmmm');
    post.comments = [_com];
    return post;
  }

  @override
  Future<List<Post>> fecthPostByAdmin(int adminId) {
    // TODO: implement fecthPostByAdmin
    throw UnimplementedError();
  }
}
