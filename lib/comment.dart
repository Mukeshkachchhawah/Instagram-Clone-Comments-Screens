import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Comments_Screens extends StatefulWidget {
  const Comments_Screens({Key? key}) : super(key: key);

  @override
  State<Comments_Screens> createState() => _Comments_ScreensState();
}

class _Comments_ScreensState extends State<Comments_Screens> {
  List<String> _comments = [];

  void _addcomments(String value) {
    setState(() {
      _comments.add(value);
    });
  }

  Widget _buildCommentsList() {
    return ListView.builder(
        itemCount: _comments.length,
        itemBuilder: (context, index) {
          return _buildCommentsItems(_comments[index]);
        });
  }
  // Widget _buildCommentsList() {
  //   return ListView.builder(itemBuilder: (context, index) {
  //     if (index < _comments.length) {
  //       return _buildCommentsItems(_comments[index]);
  //     } else {
  //       SizedBox();
  //     }
  //   });
  // }

  Widget _buildCommentsItems(String Commenst) {
    return ListTile(
      title: Text(Commenst),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Comments"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(child: _buildCommentsList()),
          SizedBox(
            height: 200,
          ),
          TextField(
            onSubmitted: (String value) {
              _addcomments(value);
            },
            decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20), hintText: "reply Comments"),
          )
        ],
      ),
    );
  }
}
