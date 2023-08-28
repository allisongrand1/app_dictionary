import 'package:app_dictionary/data/model/remote_model/remote_word_model.dart';
import 'package:app_dictionary/presentation/widgets/bloc_of_text.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class NewWordWidget extends StatefulWidget {
  final RemoteWordModel word;
  const NewWordWidget({required this.word, super.key});

  @override
  State<NewWordWidget> createState() => _NewWordWidgetState();
}

class _NewWordWidgetState extends State<NewWordWidget> {
  late AudioPlayer player;
  bool isChecked = false;
  @override
  void initState() {
    player = AudioPlayer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Column(
      children: [
        Text('${widget.word.word}'),
        for (var phonetics in widget.word.phonetics)
          Column(
            children: [
              Text('${phonetics.text ?? ''}'),
              IconButton(
                  onPressed: (phonetics.audio != null)
                      ? () async {
                          await player.setSourceUrl(phonetics.audio!);
                        }
                      : null,
                  icon: Icon(Icons.play_arrow)),
            ],
          ),
        for (var meanings in widget.word.meanings)
          Column(
            children: [
              Text('${meanings.partOfSpeech ?? ''}'),
              for (var definition in meanings.definitions!)
                Column(
                  children: [
                    Text('${definition.definition ?? ''}'),
                    (definition.synonyms != null)
                        ? BlocOfText(
                            list: definition.synonyms!,
                          )
                        : Container(),
                  ],
                ),
            ],
          ),
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
            Text('${widget.word.phonetics}'),
          ],
        )
      ],
    );
  }
}
