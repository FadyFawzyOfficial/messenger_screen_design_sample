import 'package:flutter/material.dart';
import 'package:messenger_screen_design_sample/widgets/circle_image_with_name.dart';

import '../widgets/app_bar_widgets/app_bar_action_button.dart';
import '../widgets/app_bar_widgets/app_bar_title.dart';
import '../widgets/search_field.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SearchField(),
            const SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  CircleImageWithName(),
                  SizedBox(width: 16),
                  CircleImageWithName(),
                  SizedBox(width: 16),
                  CircleImageWithName(),
                  SizedBox(width: 16),
                  CircleImageWithName(),
                  SizedBox(width: 16),
                  CircleImageWithName(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
