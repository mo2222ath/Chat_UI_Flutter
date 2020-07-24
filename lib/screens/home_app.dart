import 'package:chat_ui_mhr/widgets/category_selector.dart';
import 'package:chat_ui_mhr/widgets/favorite_contacts.dart';
import 'package:chat_ui_mhr/widgets/home_chat.dart';
import 'package:flutter/material.dart';

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          iconSize: 30,
          color: Colors.white,
          onPressed: () {},
        ),
        title: Text(
          "Chats",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              iconSize: 30,
              color: Colors.white,
              onPressed: () {}),
        ],
      ),
      body: Column(
        children: <Widget>[
          CategorySelector(),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Column(
              children: <Widget>[
                FavoriteContacts(),
                HomeChat(),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
