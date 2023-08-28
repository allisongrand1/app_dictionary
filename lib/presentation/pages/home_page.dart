import 'package:app_dictionary/common/dictionary/dictionary.dart';
import 'package:app_dictionary/infrastructure/add_word_bloc/add_word_bloc.dart';
import 'package:app_dictionary/infrastructure/add_word_bloc/add_word_event.dart';
import 'package:app_dictionary/infrastructure/home_bloc/add_word_bloc/home_bloc.dart';
import 'package:app_dictionary/infrastructure/home_bloc/add_word_bloc/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state is InitialState) {
            return Container();
          } else if (state is LoadingState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is LoadedHomeState) {
            if (state.listOfWords.isNotEmpty) {
              return ListView.builder(itemBuilder: (context, index) {
                return ListTile(
                  leading: Text(state.listOfWords[index].word),
                  title: Text(state.listOfWords[index].meanings[index]
                      .definitions[index].definition!),
                );
              });
            }
            return Center(
              child: Text(
                  'Спиcок пока пуст:( /n/n Попробуйте дополнить его новыми словами!'),
            );
          } else if (state is FailState) {
            return Center(
              child: Text('Ошибка'),
            );
          }
          return Container();
        },
      ),
      bottomNavigationBar: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 10,
            child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5, -5),
                    spreadRadius: 1,
                    blurRadius: 15),
                BoxShadow(
                    color: Color.fromARGB(143, 84, 112, 124),
                    offset: Offset(5, 5),
                    spreadRadius: 1,
                    blurRadius: 15),
              ],
                  border: Border.all(color: Color.fromARGB(24, 84, 112, 124)),
                  shape: BoxShape.circle,
                  color: Colors.amber,
                ),
                child: IconButton(
                    icon: Icon(
                      Icons.add,
                      color: Color.fromARGB(108, 84, 112, 124),
                    ),
                    onPressed: () {
                      
                      Navigator.of(context).pushNamed('/new');
                    }),
              ),
          
          ),
          Container(
            height: 70,
          ),
        ],
      ),
    );
  }
}
