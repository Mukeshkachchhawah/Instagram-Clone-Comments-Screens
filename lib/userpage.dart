import 'dart:ui';

import 'package:flutter/material.dart';

import 'comment.dart';

class UserPage extends StatefulWidget {
  final String name;
  const UserPage({Key? key, required this.name}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  bool likes = false;
  bool seved = false;

  void addSevaedimage() {
    setState(() {
      seved = !seved;
    });
  }

// add favarit Icon like and dislike icons
  void addFavariticon() {
    setState(() {
      likes = !likes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey, shape: BoxShape.circle),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    widget.name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(Icons.more_vert)
            ],
          ),
        ),
        Container(
          child: Image.asset("assets/leptop.jpg"),
        ),
        // Blow this post = Like, Communtns, shere, Save post

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => FavHeart(),
                  //     ));
                },
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () => addFavariticon(),
                        iconSize: 26,
                        icon: Icon(
                          likes ? Icons.favorite : Icons.favorite_border,
                          color: likes ? Colors.red : null,
                        )),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Comments_Screens()));
                        },
                        iconSize: 26,
                        icon: Icon(
                          Icons.chat,
                          color: Colors.grey,
                        )),
                  ],
                ),
              ),
              IconButton(
                  onPressed: () => addSevaedimage(),
                  iconSize: 26,
                  icon: Icon(
                    seved ? Icons.bookmark : Icons.bookmark_border,
                    color: seved ? Colors.black : null,
                  )),
            ],
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.only(left: 15),
        //   child: Row(
        //     children: [
        //       Text('Liked by'),
        //       Text(
        //         '  Mukesh kachchhawaha',
        //         style: TextStyle(
        //           fontWeight: FontWeight.bold,
        //         ),
        //       ),
        //       Text('  and'),
        //       Text('  others')
        //     ],
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.only(top: 8),
        //   child: RichText(
        //     text: TextSpan(style: TextStyle(color: Colors.black), children: [
        //       TextSpan(
        //           text: widget.name,
        //           style: TextStyle(fontWeight: FontWeight.bold)),
        //       TextSpan(text: '  very nice Photo')
        //     ]),
        //   ),
        // )
      ],
    );
  }
}
