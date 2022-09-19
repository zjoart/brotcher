import 'dart:async';

import 'package:butcher/helpers/app_helpers.dart';
import 'package:butcher/services/blog_services.dart';
import 'package:dart_frog/dart_frog.dart';

FutureOr<Response?> onRequest(RequestContext context) {
  final _requestType = context.request.method;
  if (_requestType == HttpMethod.get) {
    return _getPosts(context);
  }

  return AppHelpers.metthodNotAllowed;
}

FutureOr<Response?> _getPosts(RequestContext context) {
  final _service = context.read<BlogService>();

  return _service.getPosts();
}
