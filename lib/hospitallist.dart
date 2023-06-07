// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Hospiatllist extends StatelessWidget {
  const Hospiatllist({super.key});

  get builder => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List of Hospitals"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: (ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Kalkal hospital'),
              subtitle: Text('isgoska digfer'),
              trailing: IconButton(
                icon: Icon(Icons.link_rounded),
                onPressed: () {
                  // Delete the item from the list
                },
              ),
              onTap: () {
                // Do something when the ListTile is tapped
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Digfeer hospital'),
              subtitle: Text('isgoska digfeer'),
              trailing: IconButton(
                icon: Icon(Icons.link_rounded),
                onPressed: () {
                  // Delete the item from the list
                },
              ),
              onTap: () {
                // Do something when the ListTile is tapped
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('smakaab hospital'),
              subtitle: Text('wadada cabdimqasim'),
              trailing: IconButton(
                icon: Icon(Icons.link_rounded),
                onPressed: () {
                  // Delete the item from the list
                },
              ),
              onTap: () {
                // Do something when the ListTile is tapped
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('benadir hospital'),
              subtitle: Text('isgoska benadir '),
              trailing: IconButton(
                icon: Icon(Icons.link_rounded),
                onPressed: () {
                  // Delete the item from the list
                },
              ),
              onTap: () {
                // Do something when the ListTile is tapped
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('shafi hospital'),
              subtitle: Text('isgoskadigfer'),
              trailing: IconButton(
                icon: Icon(Icons.link_rounded),
                onPressed: () {
                  // Delete the item from the list
                },
              ),
              onTap: () {
                // Do something when the ListTile is tapped
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('somali sudanes hospital'),
              subtitle: Text('isgoskadigfer'),
              trailing: IconButton(
                icon: Icon(Icons.link_rounded),
                onPressed: () {
                  // Delete the item from the list
                },
              ),
              onTap: () {
                // Do something when the ListTile is tapped
              },
            ),
          ],
        )));
  }
}
