import 'package:flutter/material.dart';

class ProcessingScreen extends StatefulWidget {
  final String bmi;
  final String result;
  final String interpretation;

  const ProcessingScreen({
    Key? key,
    required this.bmi,
    required this.result,
    required this.interpretation,
  }) : super(key: key);

  @override
  _ProcessingScreenState createState() => _ProcessingScreenState();
}

class _ProcessingScreenState extends State<ProcessingScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.of(context).pushReplacementNamed(
        '/result',
        arguments: {
          'bmi': widget.bmi,
          'result': widget.result,
          'interpretation': widget.interpretation,
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0F71DA),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircularProgressIndicator(),
            const SizedBox(height: 24),
            const Text(
              'Calculating your BMI...',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
