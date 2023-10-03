import '../../../common/dictionary/dictionary.dart';

class TextFieldClass extends StatelessWidget {
  final TextEditingController controller;
  String? Function(String?)? validator;
  String? title;
  TextFieldClass(
      {super.key,
      required this.controller,
      required this.title,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints(maxWidth: 450),
        height: 100,
        child: TextFormField(
          /*  style: b2medium.copyWith(color: AppColors.greyText), */
          controller: controller,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            labelText: title,
          ),
          validator: validator,
        ));
  }
}
