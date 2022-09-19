import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

class AppHelpers {
  static Response metthodNotAllowed = Response.json(
    statusCode: HttpStatus.methodNotAllowed,
    body: {'message': 'Method not allowed'},
  );
  static String catchErrorMessage = 'An Error Occured';
}
