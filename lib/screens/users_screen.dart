import 'package:flutter/material.dart';

import '../models/user.dart';
import '../widgets/user_item.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({Key? key}) : super(key: key);

  static const List<User> users = [
    User(
      id: 1,
      name: 'Fady Fawzy',
      phone: '+201287811176',
    ),
    User(
      id: 2,
      name: 'Phillip Fawzy',
      phone: '+201287822276',
    ),
    User(
      id: 3,
      name: 'Febronia Fawzy',
      phone: '+201287833376',
    ),
    User(
      id: 4,
      name: 'Max Payne',
      phone: '+201287844476',
    ),
    User(
      id: 5,
      name: 'Mona Sax',
      phone: '+201287855576',
    ),
    User(
      id: 6,
      name: 'Fady Fawzy',
      phone: '+201287811176',
    ),
    User(
      id: 7,
      name: 'Phillip Fawzy',
      phone: '+201287822276',
    ),
    User(
      id: 8,
      name: 'Febronia Fawzy',
      phone: '+201287833376',
    ),
    User(
      id: 9,
      name: 'Max Payne',
      phone: '+201287844476',
    ),
    User(
      id: 10,
      name: 'Mona Sax',
      phone: '+201287855576',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: users.length,
        itemBuilder: (context, index) => UserItem(user: users[index]),
        separatorBuilder: (context, index) => const Divider(indent: 16),
      ),
    );
  }
}
