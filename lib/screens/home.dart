import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  String email;
  Home({
    super.key,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Center(
              child: Text(
                '$email Login Successfully',
              ),
            )
          ],
        ),
      ),
    );
  }
}
