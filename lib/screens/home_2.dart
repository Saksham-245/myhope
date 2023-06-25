import 'package:flutter/material.dart';
import 'package:myhope/screens/log_in.dart';
import 'package:myhope/widgets/message_banner.dart';
import 'package:myhope/widgets/profile_banner.dart';
import 'package:myhope/widgets/welcome_flag_text.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key, required this.title});

  final String title;

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Image(
          image: AssetImage('assets/images/logo_flame.png'),
        ),
        title: Row(
          children: [Text(widget.title)],
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {
              print("Language clicked");
            },
            icon: const Icon(Icons.language_outlined),
          ),
          IconButton(
            onPressed: () {
              print("menu clicked");
            },
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      body: ListView(
        children: [
          ProfileBanner(
            nameCardClicked: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LogIn(),
                ),
              );
            },
            onCallPresed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LogIn(),
                ),
              );
            },
            onInvition: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LogIn(),
                ),
              );
            },
            phoneCallPresed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LogIn(),
                ),
              );
            },
            searchClicked: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LogIn(),
                ),
              );
            },
            messageClicked: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LogIn(),
                ),
              );
            },
          ),
          Center(child: MessageBanner()),
          const WelcomeFlagText()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.message),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
      ),
    );
  }
}
