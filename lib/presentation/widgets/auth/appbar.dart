import '../../../common/dictionary/dictionary.dart';

class AppBarAuth extends StatelessWidget {
  final String title;
  final String subTitle;
  const AppBarAuth({super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 450),
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              title, /* style: h1medium.copyWith(color: AppColors.blue4) */
            ),
          ),
          Text(
              subTitle /* , style: b2medium.copyWith(color: AppColors.greyText) */),
        ],
      ),
    );
  }
}
