import 'package:app_dictionary/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

import 'common/dictionary/dictionary.dart';

void main() {
  initialize().then((value)=> runApp(const App()));

}

Future initialize() async{
   
  log = Logger();
  WidgetsFlutterBinding.ensureInitialized();
  RouterFluro.defineRoutes();
	  await Firebase.initializeApp(
	    options: DefaultFirebaseOptions.currentPlatform,
	  );
}