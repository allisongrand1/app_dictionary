import 'common/dictionary/dictionary.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CustomTheme().lightTheme,
      darkTheme: CustomTheme().darkTheme,
      title: 'App Dictionary',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: RouterFluro.router.generator,
    );
  }
}