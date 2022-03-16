import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: Row(
        children: const [
          Icon(Icons.search_rounded),
          Text('Search'),
        ],
      ),
    );
  }
}
