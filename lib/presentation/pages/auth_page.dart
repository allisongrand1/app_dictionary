import 'package:app_dictionary/common/dictionary/dictionary.dart';
import 'package:app_dictionary/presentation/widgets/auth/login_form.dart';
import 'package:app_dictionary/presentation/widgets/auth/signup_form.dart';

class AuthPage extends StatefulWidget {
  const AuthPage();
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Container(
        color: Color(0XFF07185e),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            border: Border.all(color: Color(0XFF07185e), width: 15),
            gradient: RadialGradient(
                stops: [0.3, 2],
                radius: 1.3,
                colors: [Color(0XFF00bdfd), Color(0XFF0267f7)]),
            /*   color: Color(0XFF00bdfd), */
          ),
          child: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              if (state is InitialSignInAuthState) {
                return StreamBuilder(
                    stream: state.streamUsers,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              '/home', ModalRoute.withName('/'));
                        });
                      } else if (snapshot.hasError) {
                        return Center(
                          child: Text(snapshot.error.toString()),
                        );
                      }
                      return const LogInForm();
                    });
              } else if (state is InitialSignUpAuthState) {
                return SignUpForm();
              } /*  else if (state is FailAuthState) {
                return CustomDialogContainer(
                  title: 'Ошибка',
                  descriptions: [
                    (state.failure.join(
                      (request) =>
                          'Отсутствует подключени к интернету, \nработа приложение продолжиться',
                      (server) => 'Ошибка сервера',
                      (cache) => '',
                      (unknown) => '${unknown.description}',
                    ))
                  ],
                  textButton: 'Продолжить',
                  onPressed: () {
                    BlocProvider.of<AuthBloc>(context).add(InitialSignInAuthEvent());
                    Navigator.of(context).pop();
                  },
                );
              } */
              return const Center(child: CircularProgressIndicator());
            },
          ),
        ),
      ),
    )));
  }
}
