import 'package:flutter/material.dart';

import '../widgets/app_bar_widgets/app_bar_action_button.dart';
import '../widgets/app_bar_widgets/app_bar_title.dart';
import '../widgets/chat_item.dart';
import '../widgets/search_field.dart';
import '../widgets/story_item.dart';

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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SearchField(),
              const SizedBox(height: 16),
              SizedBox(
                height: 108,
                child: ListView.separated(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) => const StoryItem(),
                  separatorBuilder: (_, index) => const SizedBox(width: 16),
                ),
              ),
              const SizedBox(height: 24),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (_, index) => const ChatItem(),
                separatorBuilder: (_, index) => const SizedBox(height: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
