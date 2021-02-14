import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: <Widget>[
          GestureDetector(
              onTap: () {},
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 30,
                ),
              )),
          Expanded(
              child: TextField(
            style: TextStyle(
              color: Colors.white70,
            ),
            decoration: InputDecoration(
              hintText: "Search",
              hintStyle: TextStyle(
                color: Colors.white70,
                fontSize: 25,
              ),
              border: InputBorder.none,
            ),
          )),
        ],
      ),
    );
  }
}
