import 'package:flutter/material.dart';

class CustomButtonResponsive extends StatelessWidget {
  final Color? buttonColor;
  final String buttonText;
  const CustomButtonResponsive(
      {Key? key, this.buttonColor, required this.buttonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color?>(
              (buttonColor != null) ? buttonColor : const Color(0xff7c9a92),
            ),
          ),
          onPressed: () {
            print('clicked');
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                buttonText,
                style: const TextStyle(
                  fontFamily: 'Alegreya Sans',
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                ),
              ),
            ],
          )),
    );
  }
}
