import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  const CircleImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: const [
        CircleAvatar(
          radius: 32,
          backgroundImage:
              NetworkImage('https://avatars.githubusercontent.com/u/72890741'),
        ),
        CircleAvatar(
          radius: 9,
          backgroundColor: Colors.white,
        ),
        CircleAvatar(
          radius: 8,
          backgroundColor: Colors.green,
        ),
      ],
    );
  }
}
