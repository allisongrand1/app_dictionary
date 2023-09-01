import 'package:app_dictionary/data/model/remote_model/remote_word_model.dart';
import 'package:flutter/material.dart';

class PhoneticsSelectDropList extends StatefulWidget {
  final String phoneticsSelected;
  final List<DefinitionsDetailed> definationList;

  PhoneticsSelectDropList({
    required this.phoneticsSelected,
    required this.definationList,
  });

  @override
  _PhoneticsSelectDropListState createState() =>
      _PhoneticsSelectDropListState();
}

class _PhoneticsSelectDropListState extends State<PhoneticsSelectDropList>
    with SingleTickerProviderStateMixin {
  late AnimationController expandController;
  late Animation<double> animation;
  bool isSelected = false;
  bool isShow = false;

  @override
  void initState() {
    super.initState();
    expandController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 350));
    animation = CurvedAnimation(
      parent: expandController,
      curve: Curves.fastOutSlowIn,
    );
    _runExpandCheck();
  }

  void _runExpandCheck() {
    if (isShow) {
      expandController.forward();
    } else {
      expandController.reverse();
    }
  }

  @override
  void dispose() {
    expandController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Color(0xffb1b8ba),
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  offset: const Offset(0, 10),
                  color: const Color(0xffe9d8cf).withOpacity(0.8),
                )
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    isShow = !isShow;
                    _runExpandCheck();
                    setState(() {});
                  },
                  child: Text(
                    widget.phoneticsSelected,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                )),
                Align(
                  alignment: Alignment(1, 0),
                  child: Icon(
                    isShow ? Icons.arrow_drop_down : Icons.arrow_right,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          SizeTransition(
              axisAlignment: 1.0,
              sizeFactor: animation,
              child: Container(
                  padding: const EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    color: Colors.white,
                    // boxShadow: [
                    //   BoxShadow(
                    //       blurRadius: 4,
                    //       color: Colors.black26,
                    //       offset: Offset(0, 4))
                    // ],
                  ),
                  child: _buildDropListOptions(
                    items: widget.definationList,
                    context: context,
                  ))),
          Divider(
            color: Colors.grey.shade300,
            height: 1,
          ),
        ],
      ),
    );
  }

  Column _buildDropListOptions({
    required List<DefinitionsDetailed> items,
    required BuildContext context,
  }) {
    return Column(
      children: items.map((item) => _buildSubMenu(item, context)).toList(),
    );
  }

  Widget _buildSubMenu(DefinitionsDetailed item, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 5, bottom: 5),
      child: GestureDetector(
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.only(top: 20, bottom: 3, right: 5),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 10),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              item.definition!,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                              maxLines: 3,
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(
                            width: 50,
                            child: Checkbox(
                                value: isSelected,
                                onChanged: (value) {
                                  setState(() {
                                    isSelected = value!;
                                  });
                                }),
                          )
                        ],
                      ),
                    ),
                    item.antonyms != null
                        ? Visibility(
                            visible:
                                (item.antonyms!.isEmpty == true ? false : true),
                            child: Column(
                              children: [
                                Text('Antonyms:'),
                                Column(
                                  children: item.antonyms!
                                      .map((e) => Text('- $e'))
                                      .toList(),
                                )
                              ],
                            ))
                        : Container(),
                    item.synonyms != null
                        ? Visibility(
                            visible:
                                (item.synonyms!.isEmpty == true ? false : true),
                            child: Column(
                              children: [
                                Text('Synonyms:'),
                                Column(
                                  children: item.synonyms!
                                      .map((e) => Text('- $e'))
                                      .toList(),
                                )
                              ],
                            ))
                        : Container(),
                    item.example != null
                        ? Visibility(
                            visible:
                                (item.example!.isEmpty == true ? false : true),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Example:'),
                                Text(
                                  '"${item.example}"',
                                  style: TextStyle(fontStyle: FontStyle.italic),
                                )
                              ],
                            ))
                        : Container(),
                  ],
                ),
              ),
            ),
            /* for (var def in item.definitions!) Text(def.definition!) */
          ],
        ),
        onTap: () {
          /*   widget.workTypeSelected = item;
          isShow = false;
          expandController.reverse();
          widget.onOptionSelected(item); */
        },
      ),
    );
  }
}
