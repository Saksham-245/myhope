import 'package:flutter/material.dart';
import 'package:myhope/widgets/message_banner.dart';
import 'package:myhope/widgets/profile_banner.dart';
import 'package:myhope/widgets/welcome_flag_text.dart';

class Home extends StatefulWidget {
  Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Image(
          image: AssetImage('assets/images/logo_flame.png'),
        ),
        title: const Row(
          children: [
            Text(
              'My Hope',
            ),
          ],
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
            searchClicked: () {},
            messageClicked: () {},
            nameCardClicked: () {},
            onCallPresed: () {},
            onInvition: () {},
            phoneCallPresed: () {},
          ),
          const Center(child: MessageBanner()),
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
