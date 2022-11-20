import 'package:flutter/material.dart';
import 'package:flutter_comments_screen/stroypage.dart';
import 'package:flutter_comments_screen/userpage.dart';

// import 'package:flutter_comments_screen/comment.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Story page
  final List people = [
    'Your Story',
    'Story 1',
    'Story 2',
    'Story 3',
    'Story 4',
    'Story 5',
    'Story 6',
    'Story 7',
    'Story 8',
    'Story 9',
    'Story 10'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '𝐈𝐧𝐬𝐭𝐚𝐠𝐫𝐚𝐦',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Row(
              children: [
                Icon(
                  Icons.add_box_sharp,
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 10),
                  child: Icon(
                    Icons.chat_rounded,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
              height: 130,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return StroyPage(text: people[index]);
                  })),

          //     instagram User pages

// user pages varitakal
          Expanded(
              child: ListView.builder(
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return UserPage(name: people[index]);
                  }))
        ],
      ),
    );
  }
}




/* class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool likes = false;

// add favarit Icon like and dislike icons
  void addFavariticon() {
    setState(() {
      likes = !likes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //   backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text("Home Screen Comment screens"),
      ),
      body: Column(
        children: [
          Container(
            child: Image.asset(
              "assets/leptop.jpg",
              width: double.infinity,
            ),
          ),
          Expanded(
              flex: 0,
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
              )),
        ],
      ),
    );
  }
}
*/