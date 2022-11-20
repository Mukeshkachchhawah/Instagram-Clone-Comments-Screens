import 'package:flutter/material.dart';

class StroyPage extends StatelessWidget {
  final String text;
  const StroyPage({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            child: CircleAvatar(
              child: Image.asset("assets/man.png"),
            ),
          ),
          Text(text)
        ],
      ),
    );
  }
}
