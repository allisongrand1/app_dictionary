import 'package:app_dictionary/presentation/pages/home_page.dart';
import 'package:app_dictionary/presentation/pages/new_word_page.dart';

import 'common/dictionary/dictionary.dart';

class RouterFluro {
  static FluroRouter router = FluroRouter();
  static const routerHomePage = '/';
  static const routerNewWordPage = '/new';

  static final homePageHandler =
      Handler(handlerFunc: (context, Map<String, dynamic> params) {
    return const HomePage();
  });

  static final newWordPageHandler =
      Handler(handlerFunc: (context, Map<String, dynamic> params) {
    return const NewWordPage();
  });

  static void defineRoutes() {
    router.define(routerHomePage,
        handler: homePageHandler, transitionType: TransitionType.material);
    router.define(routerNewWordPage,
        handler: newWordPageHandler,
        transitionType: TransitionType.cupertinoFullScreenDialog);
  }
}
