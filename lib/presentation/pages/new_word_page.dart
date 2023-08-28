import 'package:app_dictionary/common/dictionary/dictionary.dart';
import 'package:app_dictionary/infrastructure/add_word_bloc/add_word_bloc.dart';
import 'package:app_dictionary/infrastructure/add_word_bloc/add_word_event.dart';
import 'package:app_dictionary/infrastructure/add_word_bloc/add_word_state.dart';
import 'package:app_dictionary/presentation/widgets/new_word_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      appBar: AppBar(),
      body: Column(
        children: [
           TextFormField(controller: controller,onEditingComplete: () {
              context.read<AddWordBloc>().add(FindWordEvent(controller.text));
            },),
          BlocConsumer<AddWordBloc, AddWordState>(
            listener: (context, state){
              if (state is FailState){
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
              }
            },
            builder: (context, state) {
              if(state is InitialState){
                return const Center(child: Text('Введите какое-нибудь слово для начала...'),);
              }  else if (state is LoadingState){
                return const Center(child: CircularProgressIndicator(),);
              }else
              if(state is LoadedNewWordState) {
                return NewWordWidget(word: state.word);
              }
              return const Center(child: Text('Хм, экран куда-то пропал. Пойду поищу. А ты попробуй перезайти'),);
            }
          ),
        ],
      )
    );
  }
}
