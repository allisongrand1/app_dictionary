import 'common/dictionary/dictionary.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (BuildContext context) => getIt<AuthBloc>(),
        ),
        BlocProvider<HomeBloc>(
          create: (BuildContext context) =>
              getIt<HomeBloc>()..add(DowloandHomePageEvent()),
        ),
        BlocProvider<AddWordBloc>(
          create: (BuildContext context) => getIt<AddWordBloc>(),
        ),
      ],
      child: MaterialApp(
        theme: CustomTheme().lightTheme,
        darkTheme: CustomTheme().darkTheme,
        title: 'App Dictionary',
        debugShowCheckedModeBanner: false,
        /*  initialRoute: '/', */
        onGenerateRoute: RouterFluro.router.generator,
      ),
    );
  }
}
