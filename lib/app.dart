import 'package:app_dictionary/data/repository/repository.dart';
import 'package:app_dictionary/data/server/server.dart';
import 'package:app_dictionary/infrastructure/add_word_bloc/add_word_bloc.dart';
import 'package:app_dictionary/infrastructure/home_bloc/add_word_bloc/home_bloc.dart';
import 'package:app_dictionary/infrastructure/home_bloc/add_word_bloc/home_event.dart';
import 'package:app_dictionary/service_locator.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'common/dictionary/dictionary.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
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
        initialRoute: '/',
        onGenerateRoute: RouterFluro.router.generator,
      ),
    );
  }
}
