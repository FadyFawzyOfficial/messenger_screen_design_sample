import 'package:flutter/material.dart';

import '../widgets/app_bar_widgets/app_bar_action_button.dart';
import '../widgets/app_bar_widgets/app_bar_title.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        // titleSpacing: 16,
        title: const AppBarTitle(),
        actions: [
          AppBarActionButton(
            iconData: Icons.camera_alt_rounded,
            onPressed: () {},
          ),
          AppBarActionButton(
            iconData: Icons.edit_rounded,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
