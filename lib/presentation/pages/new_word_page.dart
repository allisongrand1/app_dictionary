import 'package:app_dictionary/common/dictionary/dictionary.dart';
import 'package:app_dictionary/infrastructure/add_word_bloc/add_word_bloc.dart';
import 'package:app_dictionary/infrastructure/add_word_bloc/add_word_event.dart';
import 'package:app_dictionary/infrastructure/add_word_bloc/add_word_state.dart';
import 'package:app_dictionary/presentation/widgets/new_word_widget.dart';

class NewWordPage extends StatefulWidget {
  const NewWordPage({super.key});

  @override
  State<NewWordPage> createState() => _NewWordPageState();
}

class _NewWordPageState extends State<NewWordPage> {
  late TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController(text: '');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffb1b8ba),
          elevation: 1,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[Colors.white, Color(0xffb1b8ba)]),
            ),
          ),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 50,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xffb1b8ba),
                          border: Border.all(color: Colors.white)),
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border(
                        top: BorderSide(color: Color(0xffb1b8ba), width: 5),
                        right: BorderSide(color: Color(0xffb1b8ba), width: 15),
                        left: BorderSide(color: Color(0xffb1b8ba), width: 15),
                        bottom: BorderSide(color: Color(0xffb1b8ba), width: 5),
                      )),
                      child: TextFormField(
                        /* decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide(
                                width: 3,
                                color: Color.fromARGB(255, 118, 123, 124)),
                          ),
                        ), */
                        controller: controller,
                        onEditingComplete: () {
                          context
                              .read<AddWordBloc>()
                              .add(FindWordEvent(controller.text));
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xffb1b8ba),
                          border: Border.all(color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: BlocConsumer<AddWordBloc, AddWordState>(
                  listener: (context, state) {
                if (state is FailState) {
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(
                      SnackBar(
                        duration: const Duration(seconds: 5),
                        content: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                '${state.failure.join(
                                  (request) => 'Нет подключения к интернету!',
                                  (server) => 'Ошибка сервера',
                                  (cache) => '',
                                  (unknown) => unknown.description,
                                )}',
                                /*  style: subtitleErrorText, */
                              ),
                            ),
                            const Icon(Icons.error, color: Colors.white),
                          ],
                        ),
                        backgroundColor: Colors.red[900],
                      ),
                    );
                } else if (state is InitialState) {
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(
                      SnackBar(
                        duration: const Duration(seconds: 5),
                        content: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  'Введите какое-нибудь слово. Для начала...'),
                            ),
                          ],
                        ),
                        backgroundColor: Colors.red[900],
                      ),
                    );
                }
              }, builder: (context, state) {
                if (state is InitialState) {
                  return Center(
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'Для начала введите какое-нибудь слово',
                          textStyle: const TextStyle(
                            fontFamily: 'Handjet',
                            fontWeight: FontWeight.w500,
                            fontSize: 24,
                          ),
                          speed: const Duration(milliseconds: 200),
                        ),
                      ],
                      totalRepeatCount: 1,
                      pause: const Duration(milliseconds: 100),
                      displayFullTextOnTap: true,
                      stopPauseOnTap: true,
                    ),
                  );
                } else if (state is LoadingState) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is LoadedNewWordState) {
                  return SingleChildScrollView(
                      child: NewWordWidget(word: state.word));
                }
                return const Center(
                  child: Text(
                      'Хм, экран куда-то пропал. Пойду поищу. А ты попробуй перезайти'),
                );
              }),
            ),
          ],
        ));
  }
}
