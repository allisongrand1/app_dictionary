import 'package:app_dictionary/configs.dart';
import 'package:app_dictionary/firebase_options.dart';
import 'package:app_dictionary/service_locator.dart';
import 'package:firebase_core/firebase_core.dart';

import 'common/dictionary/dictionary.dart';

void main() {
  initialize().whenComplete(() => runApp(const App()));
}

Future initialize() async {
  registerServices();
  log = getIt<Logger>();
  WidgetsFlutterBinding.ensureInitialized();
  RouterFluro.defineRoutes();
}
