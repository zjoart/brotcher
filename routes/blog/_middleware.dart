import 'package:butcher/data/blog_interface_impl.dart';
import 'package:butcher/interfaces/blog_interface.dart';
import 'package:butcher/services/blog_services.dart';
import 'package:dart_frog/dart_frog.dart';

Handler middleware(Handler handler) {
  final _blogImpl = BlogInterfaceImpl();
  return handler
      .use(requestLogger())
      .use(provider<BlogInterface>((_) => _blogImpl))
      .use(provider<BlogService>((_) => BlogService(_blogImpl)));
}
