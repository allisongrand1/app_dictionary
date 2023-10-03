import '../../../common/dictionary/dictionary.dart';

class BlocOfText<T> extends StatelessWidget {
  final List<T> list;
  const BlocOfText({required this.list, super.key});

  @override
  Widget build(BuildContext context) {
    if (list.isNotEmpty) {
      return Column(
        children: [for (var index in list) Text('${index}')],
      );
    } else {
      return Container();
    }
  }
}
