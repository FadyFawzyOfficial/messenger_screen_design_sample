import 'package:flutter/material.dart';

import 'circle_image.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64,
      child: Column(
        children: const [
          CircleImage(),
          SizedBox(height: 8),
          Text(
            'Fady Fawzy Nassif Youssef',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
