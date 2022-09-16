import 'package:dart_frog/dart_frog.dart';

import '../../helpers/logger.dart';

Handler middleware(Handler handler) {
  return (context) async {
    await letMeKnow('Starting url  ${context.request.url}');

    final response = await handler(context);

    // Execute code after request is handled.
    await letMeKnow('Ending url  ${context.request.url}');

    // Return a response.
    return response;
  };
}
