import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  final CircleAvatar img;
  final Text chats;
  Chats({this.chats, this.img});

  final Map<String, dynamic> titles = {
    'Gabriel Media': 'Afternoon Brother',
  };
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (BuildContext context, int index) {
        return Divider(
          color: Colors.grey,
          thickness: 1,
        );
      },
      itemCount: titles.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: img,
          title: Text(''),
          subtitle: Text('messages'),
          trailing: Text('12: 32'),
        );
      },
    );
  }
}
