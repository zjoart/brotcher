import 'dart:async';

import 'package:dart_frog/dart_frog.dart';

FutureOr<Response?> onRequest(RequestContext context) {
  final _requestType = context.request.method;
  if (_requestType == HttpMethod.get) {
    return _getMethod(context);
  }

  return Response.json(statusCode: 500);
}

FutureOr<Response?> _getMethod(RequestContext context) {
  return Response.json(statusCode: 500);
}
