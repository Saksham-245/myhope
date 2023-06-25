import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:myhope/screens/home_2.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  static const kBackgroundColor = Color.fromRGBO(248, 238, 226, 1);

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(
        seconds: (5),
      ),
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Lottie.asset(
        'assets/images/fire.json',
        controller: _controller,
        height: MediaQuery.of(context).size.height * 1,
        animate: true,
        onLoaded: (composition) {
          _controller
            ..duration = composition.duration
            ..forward().whenComplete(
              () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const Home2(
                    title: '',
                  ),
                ),
              ),
            );
        },
      ),
    );
  }
}
