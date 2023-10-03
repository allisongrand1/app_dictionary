import 'package:app_dictionary/common/dictionary/dictionary.dart';

class CustomTheme {
  ThemeData get lightTheme {
    return ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xffb1b8ba),
        ),
        useMaterial3: true,
        textTheme: TextTheme());
  }

  ThemeData get darkTheme {
    return ThemeData(
      primaryColor: Colors.amber,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    );
  }
}
