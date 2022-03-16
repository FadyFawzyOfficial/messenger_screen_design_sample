import 'package:flutter/material.dart';

import 'circle_image.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleImage(),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Fady Fawzy',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Hello, My name is Fady Fawzy Nassif Youssef',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    width: 8,
                    height: 8,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const Text('02:30 PM'),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
