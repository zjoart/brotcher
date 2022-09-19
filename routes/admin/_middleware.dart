import 'package:butcher/data/admin_interface_impl.dart';
import 'package:butcher/interfaces/admin_interface.dart';
import 'package:butcher/services/admin_services.dart';
import 'package:dart_frog/dart_frog.dart';

Handler middleware(Handler handler) {
  final _adminImpl = AdminInterfaceImpl();
  return handler
      .use(requestLogger())
      .use(provider<AdminInterface>((_) => _adminImpl))
      .use(provider<AdminService>((_) => AdminService(_adminImpl)));
}
