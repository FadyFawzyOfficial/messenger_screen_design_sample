import 'package:flutter/material.dart';

class AppBarActionButton extends StatelessWidget {
  final IconData iconData;
  final void Function() onPressed;

  const AppBarActionButton({
    Key? key,
    required this.iconData,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: CircleAvatar(
        backgroundColor: Colors.blue,
        child: Icon(
          iconData,
          color: Colors.white,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
