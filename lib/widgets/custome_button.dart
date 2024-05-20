part of 'widgets.dart';

class CustomeButton extends StatelessWidget {
  final double height;
  final Color color;
  final String title;
  final VoidCallback? onTap;
  const CustomeButton(
      {super.key,
      required this.height,
      required this.color,
      required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Align(
          alignment: Alignment.center,
            child: Text(title, style: whiteTextStyle.copyWith(fontWeight: bold, fontSize: 14),)),
      ),
    );
  }
}
