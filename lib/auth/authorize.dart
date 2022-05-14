import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medic_meditation_app/widgets/custom_button.dart';

class Authorize extends StatelessWidget {
  const Authorize({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/auth_background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage('assets/images/Logo.png'),
                ),
                SizedBox(
                  height: 94,
                  width: 226,
                  child: Column(
                    children: const [
                      Text(
                        'Welcome',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 34,
                        ),
                      ),
                      Text(
                        'Do meditation. Stay focused. Live a healthy life.',
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        style: TextStyle(
                          fontFamily: 'Alegreya Sans',
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomButtonResponsive(buttonText: 'Login With Email')
              ],
            ),
          )
        ],
      ),
    );
  }
}
