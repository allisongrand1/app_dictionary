import 'package:app_dictionary/data/model/remote_model/remote_word_model.dart';
import 'package:flutter/material.dart';

class NewWordWidget extends StatefulWidget {
  final RemoteWordModel word;
  const NewWordWidget({required this.word, super.key});

  @override
  State<NewWordWidget> createState() => _NewWordWidgetState();
}

class _NewWordWidgetState extends State<NewWordWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text('${widget.word.model.word}'),
      for ( var text in widget.word.model.phonetics)
      
      Row(
        children: [
          Checkbox(
          checkColor: Colors.white,
          fillColor: MaterialStateProperty.resolveWith(getColor),
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
    ),
    Text('${widget.word.model.phonetics}'),

        ],
      )
    ],);
  }
}