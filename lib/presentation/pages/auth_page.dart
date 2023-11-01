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
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              child: BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  if (state is InitialSignInAuthState) {
                    return StreamBuilder(
                        stream: state.streamUsers,
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return HomePage();
                            /*   WidgetsBinding.instance.addPostFrameCallback((_) {
                              Navigator.of(context).pushNamedAndRemoveUntil(
                                  '/home', ModalRoute.withName('/'));
                            }); */
                          } else if (snapshot.hasError) {
                            return Center(
                              child: Text(snapshot.error.toString()),
                            );
                          }
                          return const LogInForm();
                        });
                  } else if (state is InitialSignUpAuthState) {
                    return SignUpForm();
                  }
                  return const Center(child: CircularProgressIndicator());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
