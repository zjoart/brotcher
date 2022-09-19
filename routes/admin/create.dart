import 'dart:async';

import 'package:butcher/helpers/app_helpers.dart';
import 'package:butcher/services/admin_services.dart';
import 'package:dart_frog/dart_frog.dart';

FutureOr<Response?> onRequest(RequestContext context) {
  final _requestType = context.request.method;
  if (_requestType == HttpMethod.post) {
    return _createPost(context);
  }
  return AppHelpers.metthodNotAllowed;
}

FutureOr<Response> _createPost(RequestContext context) async {
  final _data = await context.request.json();

  final _service = context.read<AdminService>();
  return _service.createPost(_data);
}
