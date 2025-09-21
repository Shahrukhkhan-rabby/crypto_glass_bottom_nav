import 'package:flutter/cupertino.dart';

class SearchNav extends StatelessWidget {
  const SearchNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Row(
        children: [
          const Expanded(
            child: Text(
              'Explore \nCollections',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              border: Border.all(
                width: 5,
                color: const Color(0xFFE8F0EE),
              ),
            ),
            child: const Icon(CupertinoIcons.search),
          ),
        ],
      ),
    );
  }
}
