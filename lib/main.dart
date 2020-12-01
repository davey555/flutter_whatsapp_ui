import 'package:flutter/material.dart';
import 'Screens/screens.dart';

void main() => runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'HomePage',
        routes: {
          'HomePage': (context) => WhatsApp(),
        }));

class WhatsApp extends StatefulWidget {
  @override
  _WhatsAppState createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  DefaultTabController contror;
  @override
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF003A24),
          title: Text(
            'Whatsapp',
          ),
          actions: [
            Icon(
              Icons.search,
            ),
            SizedBox(width: 20),
            Icon(Icons.more_vert),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.camera),
              ),
              Tab(child: Text('Chats')),
              Tab(child: Text('Status')),
              Tab(child: Text('Calls')),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Chats(chats: Text('Hey Whatsup'), img: CircleAvatar(

            ),),

            Text('hi'),
            Text('hi'),
            Text('hi'),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.message),
          onPressed: () {},
          backgroundColor: Color(0xFF29B100),
        ),
      ),
    );
  }
}
