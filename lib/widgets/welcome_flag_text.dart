// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class WelcomeFlagText extends StatelessWidget {
  const WelcomeFlagText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/childsupport_flag.png'),
        ),
      ),
      // child: Image.asset(
      // 'assets/images/childsupport_flag.png',
    );
  }
}
