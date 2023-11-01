import 'package:flutter/services.dart';

import 'common/dictionary/dictionary.dart';

void main() {
  initialize().whenComplete(() => runApp(const App()));
}

Future initialize() async {
  registerServices();
  log = getIt<Logger>();
  WidgetsFlutterBinding.ensureInitialized();
  RouterFluro.defineRoutes();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.white,
  ));
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
