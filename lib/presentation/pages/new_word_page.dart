import 'package:app_dictionary/common/dictionary/dictionary.dart';
import 'package:app_dictionary/infrastructure/add_word_bloc/add_word_bloc.dart';
import 'package:app_dictionary/infrastructure/add_word_bloc/add_word_state.dart';
import 'package:app_dictionary/presentation/widgets/new_word_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewWordPage extends StatefulWidget {
  const NewWordPage({super.key});

  @override
  State<NewWordPage> createState() => _NewWordPageState();
}

class _NewWordPageState extends State<NewWordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocConsumer<AddWordBloc, AddWordState>(
        listener: (context, state){
          if (state is FailState){
             ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(
                    SnackBar(
                      duration: Duration(seconds: 5),
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
                          Icon(Icons.error, color: Colors.white),
                        ],
                      ),
                      backgroundColor: Colors.red[900],
                    ),
                  );
          }
        },
        builder: (context, state) {
          if(state is InitialState){
            return Center(child: Text('Думаем...'),);
          }  else if (state is LoadingState){
            return Center(child: CircularProgressIndicator(),);
          }else
          if(state is LoadedNewWordState) {
            return Column(children: [
            TextFormField(),
            StreamBuilder(stream: state.stream, builder: (context, snapshot){
              return NewWordWidget();
            })
          ],);
          }
          return Center(child: Text('Хм, экран куда-то пропал. Пойду поищу. А ты попробуй перезайти'),);
        }
      )
    );
  }
}
