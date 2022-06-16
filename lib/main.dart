import 'package:flutter/material.dart';
import 'package:medic_meditation_app/auth/authorize.dart';
import 'package:medic_meditation_app/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: createMaterialColor(
            const Color(0xff375253),
          ),
        ),
        // https://medium.com/@nickysong/creating-a-custom-color-swatch-in-flutter-554bcdcb27f3
        canvasColor: const Color.fromARGB(255, 37, 52, 53),
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'Alegreya',
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
      ),
      home: const Authorize(),
      debugShowCheckedModeBanner: false,
    );
  }
}
