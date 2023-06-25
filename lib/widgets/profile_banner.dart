import 'package:flutter/material.dart';

class ProfileBanner extends StatefulWidget {
  final VoidCallback onInvition;
  final VoidCallback onCallPresed;
  final VoidCallback phoneCallPresed;
  final VoidCallback nameCardClicked;
  final VoidCallback searchClicked;
  final VoidCallback messageClicked;

  const ProfileBanner({
    super.key,
    required this.onInvition,
    required this.onCallPresed,
    required this.phoneCallPresed,
    required this.nameCardClicked,
    required this.searchClicked,
    required this.messageClicked,
  });

  @override
  State<ProfileBanner> createState() => _ProfileBannerState();
}

class _ProfileBannerState extends State<ProfileBanner> {
  late final Function callPresed;
  late final Function emailClicked;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      // profile picture with name
      Column(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/default_pp.png'),
              ),
            ),
          ),
          const Text('Name'),
        ],
      ),

      // invitation mail
      ElevatedButton(
        onPressed: widget.onInvition,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(0.0),
          backgroundColor: Colors.white,
        ),
        child: Image.asset(
          'assets/images/invitationmail.png',
        ),
      ),

      // follow
      ElevatedButton(
        onPressed: widget.onInvition,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(0.0),
          backgroundColor: Colors.white,
        ),
        child: Image.asset(
          'assets/images/follow.png',
        ),
      ),

      // namecard
      ElevatedButton(
        onPressed: widget.nameCardClicked,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(0.0),
          backgroundColor: Colors.white,
        ),
        child: Image.asset(
          'assets/images/namecard.png',
        ),
      ),

      // search
      ElevatedButton(
        onPressed: widget.searchClicked,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(0.0),
          backgroundColor: Colors.white,
        ),
        child: Image.asset(
          'assets/images/search.png',
        ),
      ),

      // messagee
      ElevatedButton(
        onPressed: widget.messageClicked,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(0.0),
          backgroundColor: Colors.white,
        ),
        child: Image.asset(
          'assets/images/message.png',
        ),
      ),

      // call
      ElevatedButton(
        onPressed: widget.onCallPresed,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(0.0),
          backgroundColor: Colors.white,
        ),
        child: Image.asset(
          'assets/images/call.png',
        ),
      ),
    ]);
  }
}
