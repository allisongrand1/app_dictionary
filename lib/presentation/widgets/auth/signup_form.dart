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
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Color(0xff8DA1B1),
                    width: 1,
                  ),
                ),
                child: Column(
                  children: [
                    Flexible(
                      child: Container(
                        alignment: Alignment.center,
                        /* height: 300, */
                        child: AnimatedTextTyping(
                          text: 'Регистрация',
                          textStyle: TextCustomTheme()
                              .headlineLarge
                              .copyWith(color: Color(0xff8DA1B1)),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextFieldClass(
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
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextFieldClass(
                              controller: passwordController,
                              title: 'Пароль',
                              validator: (value) =>
                                  value != null && value.length < 6
                                      ? 'Минимум 6 знаков'
                                      : null,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xffEA9FDE),
                                foregroundColor: Color(0xffffffff),
                                fixedSize: Size(100, 80),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                              ),
                              onPressed: () {
                                BlocProvider.of<AuthBloc>(context)
                                    .add(InitialSignInAuthEvent());
                              },
                              child: const Text(
                                'Вход',
                              )),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xffEA9FDE),
                                  foregroundColor: Color(0xffffffff),
                                  fixedSize: Size(100, 80),
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                ),
                                onPressed: () {
                                  BlocProvider.of<AuthBloc>(context).add(
                                      SignUpAuthEvent(
                                          key: formKey,
                                          email: emailController.text.trim(),
                                          password:
                                              passwordController.text.trim()));
                                },
                                child: Icon(Icons.done_outline)),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xffEA9FDE),
                                foregroundColor: Color(0xffffffff),
                                fixedSize: Size(100, 80),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                              ),
                              onPressed: () {
                                BlocProvider.of<AuthBloc>(context)
                                    .add(InitialSignUpAuthEvent());
                              },
                              child: const Text(
                                'Регистрация',
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
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
