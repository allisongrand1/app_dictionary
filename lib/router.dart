import 'common/dictionary/dictionary.dart';

class RouterFluro {
  static FluroRouter router = FluroRouter();
  static const routerAuthPage = '/';
  static const routerHomePage = '/home';
  static const routerNewWordPage = '/new';

  static final authPageHandler =
      Handler(handlerFunc: (context, Map<String, dynamic> params) {
    return const AuthPage();
  });

  static final homePageHandler =
      Handler(handlerFunc: (context, Map<String, dynamic> params) {
    return const HomePage();
  });

  static final newWordPageHandler =
      Handler(handlerFunc: (context, Map<String, dynamic> params) {
    return const NewWordPage();
  });

  static void defineRoutes() {
    router.define(routerAuthPage,
        handler: authPageHandler, transitionType: TransitionType.material);
    router.define(routerHomePage,
        handler: homePageHandler, transitionType: TransitionType.material);
    router.define(routerNewWordPage,
        handler: newWordPageHandler,
        transitionType: TransitionType.cupertinoFullScreenDialog);
  }
}
