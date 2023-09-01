import 'package:app_dictionary/data/model/remote_model/remote_word_model.dart';
import 'package:app_dictionary/presentation/widgets/bloc_of_text.dart';
import 'package:app_dictionary/presentation/widgets/work_type_select_drop_list.dart';
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
    return Column(
      children: [
        Center(child: Text('${widget.word.word}')),
        for (var phonetics in widget.word.phonetics)
          Row(
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
        Text('Meanings'),
        _buildDropList(widget.word.meanings, context),
      ],
    );
  }

  Widget _buildDropList(List<MeaningsDetailed> meanings, BuildContext context) {
    return Column(
        children: meanings
            .map((e) => PhoneticsSelectDropList(
                phoneticsSelected: e.partOfSpeech!,
                definationList: e.definitions!))
            .toList());
  }
}
