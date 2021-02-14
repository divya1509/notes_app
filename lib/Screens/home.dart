import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:notesapp/Screens/pinned.dart';
import 'package:notesapp/Screens/search.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var pinnedAlready = new List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            SystemChannels.platform.invokeMethod<void>('SystemNavigator.pop');
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xffd7a931),
          ),
        ),
        title: Text(
          'Folders',
          style: TextStyle(
            color: Color(0xffd7a931),
          ),
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Color(0xffd7a931),
                  width: 2,
                )),
            child: Icon(
              Icons.more_horiz,
              color: Color(0xffd7a931),
              size: 30,
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(left: 16.0),
            alignment: Alignment.topLeft,
            child: SizedBox(
              child: Text(
                'Notes',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Search(),
          SizedBox(
            height: 40,
            width: 40,
          ),
          buildRow(),
        ],
      ),
      extendBodyBehindAppBar: false,
    );
  }
}
