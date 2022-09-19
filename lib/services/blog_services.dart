import 'dart:async';

import 'package:dart_frog/dart_frog.dart';

import '../interfaces/blog_interface.dart';
import '../models/api_response.dart';

class BlogService {
  BlogService(this._blog);

  final BlogInterface _blog;

  FutureOr<Response> getPosts() async {
    try {
      final _posts = await _blog.getAllPosts();
      return Response.json(
        body: ApiResponse(
          code: '00',
          description: 'Request Successfull',
          data: _posts,
        ),
      );
    } catch (e) {
      return Response.json(
        body: ApiResponse(
          code: '99',
          description: 'An ',
        ),
      );
    }
  }
}
