// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ListDonars extends StatelessWidget {
  const ListDonars({super.key});

  get builder => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List of Donors"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: (ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.person),
              title: Text('shuceyb ibrahim ali'),
              subtitle: Text('Phonenumber'),
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
              subtitle: Text('56466'),
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
              subtitle: Text('45666'),
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
              subtitle: Text('863542'),
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
              subtitle: Text('85746266'),
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
