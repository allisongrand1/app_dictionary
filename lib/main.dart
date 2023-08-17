import 'common/dictionary/dictionary.dart';

void main() {
  runApp(const App());
  log = Logger();
  WidgetsFlutterBinding.ensureInitialized();
  RouterFluro.defineRoutes();
}
