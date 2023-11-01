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
      body: Center(
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.95,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Color(0xffEA9FDE),
                width: 2,
              ),
            ),
            child: Stack(
              children: [
                Container(
                  height: 70,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xffEA9FDE),
                        width: 2,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.close)),
                      Container(
                          padding: EdgeInsets.only(right: 20),
                          width: 250,
                          child: TextField(
                            decoration: InputDecoration(
                                fillColor: Color(0xffEA9FDE), filled: true),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
