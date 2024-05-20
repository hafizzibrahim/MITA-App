part of 'widgets.dart';

class CustomeTextField extends StatelessWidget {
  final String labelText;
  final bool obscureText;
  const CustomeTextField({super.key, required this.labelText, this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: labelText,
      ),
    );
  }
}
