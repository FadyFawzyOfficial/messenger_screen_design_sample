import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        CircleAvatar(
          radius: 24,
          backgroundImage:
              NetworkImage('https://avatars.githubusercontent.com/u/72890741'),
        ),
        SizedBox(width: 16),
        Text(
          'Chats',
          style: TextStyle(color: Colors.black),
        ),
      ],
    );
  }
}
