import 'package:flutter/material.dart';
import 'Pages/home_screen.dart';
import 'Pages/processing_screen.dart';
import 'Pages/result_screen.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xE6E6E6E6),
      ),
      home: const HomeScreen(),
      routes: {
        '/processing': (context) {
          final args = ModalRoute.of(context)!.settings.arguments
              as Map<String, dynamic>;
          return ProcessingScreen(
            bmi: args['bmi'],
            result: args['result'],
            interpretation: args['interpretation'],
          );
        },
        '/result': (context) {
          final args = ModalRoute.of(context)!.settings.arguments
              as Map<String, dynamic>;
          return ResultsScreen(
            bmiResult: args['bmi'],
            resultText: args['result'],
            interpretation: args['interpretation'],
          );
        },
      },
    );
  }
}
