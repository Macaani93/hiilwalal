// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Listseeker extends StatelessWidget {
  const Listseeker({super.key});

  get builder => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List of Seekers"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: (ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.person),
              title: Text('shuceyb ibrahim ali'),
              subtitle: Text('A+'),
              trailing: IconButton(
                icon: Icon(Icons.call),
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
              title: Text('MOHAMED AHMED ISSE'),
              subtitle: Text('B+'),
              trailing: IconButton(
                icon: Icon(Icons.call),
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
              subtitle: Text('A-'),
              trailing: IconButton(
                icon: Icon(Icons.call),
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
              title: Text('ZAKI DAHIR FARAH'),
              subtitle: Text('O+'),
              trailing: IconButton(
                icon: Icon(Icons.call),
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
              title: Text('CUBEYD CABDI SHEIKH'),
              subtitle: Text('AB+'),
              trailing: IconButton(
                icon: Icon(Icons.call),
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
