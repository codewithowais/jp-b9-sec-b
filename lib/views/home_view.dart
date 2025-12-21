import 'package:flutter/material.dart';
import 'package:secbjp9/views/call_view.dart';
import 'package:secbjp9/views/status_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: ListView(
        children: [
          Image.asset('assets/images/bmw.jpg'),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(30),
            height: 200,
            width: 200,
            color: Colors.blueGrey[200],
            child: Text("data", style: TextStyle()),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (context) => const StatusView(),
                ),
              );
            },
            child: Text("GO TO STATUS VIEW"),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(builder: (context) => const CallView()),
              );
            },
            child: Text("GO TO CALL VIEW"),
          ),
          Text("THIS IS HOME VIEW"),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: UserAccountsDrawerHeader(
                accountName: Text("codewithowais"),
                accountEmail: Text("codewithowais"),
                currentAccountPicture: Image.network(
                  'https://cdn.pixabay.com/photo/2017/09/26/14/43/bmw-2788828_1280.jpg',
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(leading: Icon(Icons.info_outline), title: Text("About")),
            ListTile(
              leading: Icon(Icons.contact_phone_rounded),
              title: Text("Contact"),
            ),
          ],
        ),
      ),
    );
  }
}
