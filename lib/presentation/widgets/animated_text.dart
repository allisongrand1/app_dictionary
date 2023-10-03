import '../../common/dictionary/dictionary.dart';

class AnimatedTextTyping extends StatelessWidget {
  final String text;
  VoidCallback? onFinished;
  final TextStyle textStyle;
  AnimatedTextTyping(
      {required this.text,
      this.onFinished,
      required this.textStyle,
      super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
        /* repeatForever: false, */
        isRepeatingAnimation: false,
        /* onFinished: (onFinished != null) ? onFinished : null, */
        animatedTexts: [
          TypewriterAnimatedText(
            text,
            textStyle: textStyle,
            speed: const Duration(milliseconds: 200),
          ),
        ]);
  }
}
