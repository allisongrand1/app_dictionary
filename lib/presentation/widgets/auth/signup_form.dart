import 'package:app_dictionary/presentation/widgets/auth/appbar.dart';
import 'package:app_dictionary/presentation/widgets/auth/textfield.dart';

import '../../../common/dictionary/dictionary.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              height: 300,
              child: AnimatedTextTyping(
                text: 'Регистрация',
                textStyle: TextCustomTheme()
                    .headlineLarge
                    .copyWith(color: Color.fromARGB(255, 0, 47, 112)),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFieldClass(
                  controller: emailController,
                  title: 'Email',
                  validator: (input) {
                    final bool emailValid = RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(input!);
                    if (emailValid) {
                      return null;
                    } else {
                      return "Проверьте почту";
                    }
                  },
                ),
                TextFieldClass(
                  controller: passwordController,
                  title: 'Пароль',
                  validator: (value) => value != null && value.length < 6
                      ? 'Минимум 6 знаков'
                      : null,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        /*   backgroundColor: AppColors.blue2,
                            foregroundColor: h1medium.color */
                      ),
                      onPressed: () {
                        BlocProvider.of<AuthBloc>(context).add(SignUpAuthEvent(
                            key: formKey,
                            email: emailController.text.trim(),
                            password: passwordController.text.trim()));
                      },
                      child: const Text('Регистрация')),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Уже есть аккаунт?',
                      /* style: TextStyle(color: AppColors.storm), */
                    ),
                    TextButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ), /*  foregroundColor: AppColors.blue2 */
                        ),
                        onPressed: () {
                          BlocProvider.of<AuthBloc>(context)
                              .add(InitialSignInAuthEvent());
                        },
                        child: const Text('Вход'))
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}
