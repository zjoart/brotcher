import 'dart:async';

import 'package:dart_frog/dart_frog.dart';

import '../helpers/app_helpers.dart';
import '../interfaces/admin_interface.dart';
import '../models/api_response.dart';
import '../models/post.dart';

class AdminService {
  AdminService(this._admin);

  final AdminInterface _admin;

  FutureOr<Response> createPost(Map<String, dynamic> posts) async {
    try {
      final _post = Post.fromJson(posts);

      final _posts = await _admin.createPost(_post);

      return Response.json(
        body: ApiResponse(
          code: '00',
          description: 'Request Successfull',
          data: _posts.toJson(),
        ).toJson(),
      );
    } catch (e) {
      return Response.json(
        statusCode: 400,
        body: ApiResponse(
          code: '99',
          description: '${AppHelpers.catchErrorMessage} Fecthing Posts',
        ).toJson(),
      );
    }
  }
}
