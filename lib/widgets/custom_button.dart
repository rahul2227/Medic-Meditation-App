import 'package:flutter/cupertino.dart';

class CustomButtonResponsive extends StatelessWidget {
  final Color? buttonColor;
  final buttonText;
  const CustomButtonResponsive(
      {Key? key, this.buttonColor, required this.buttonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: (buttonColor != null) ? buttonColor : const Color(0xff7c9a92),
      ),
      height: 60,
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: Center(
        child: Text(
          buttonText,
          style: const TextStyle(
            fontFamily: 'Alegreya Sans',
            fontWeight: FontWeight.w500,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
