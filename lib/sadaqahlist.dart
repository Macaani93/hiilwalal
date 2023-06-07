// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class sadaqahlist extends StatelessWidget {
  const sadaqahlist({super.key});

  get builder => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List of sadaqah"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: (ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.person),
              title: Text('shuceyb ibrahim ali'),
              subtitle: Text('location '),
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
              title: Text('shuceyb ibrahim ali'),
              subtitle: Text('location '),
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
              title: Text('shuceyb ibrahim ali'),
              subtitle: Text('location '),
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
              title: Text('shuceyb ibrahim ali'),
              subtitle: Text('location '),
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
              title: Text('shuceyb ibrahim ali'),
              subtitle: Text('location '),
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
