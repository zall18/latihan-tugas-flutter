import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[900],
        title: Text(
          "Angkatan 17",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.add_box_rounded,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Center(
        child: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              backgroundColor: Colors.grey[300],
              child: Icon(Icons.person),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Nama User",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text(
              "Nama User",
              style: TextStyle(fontSize: 12),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              child: ElevatedButton(onPressed: () {}, child: Text("Keluar")),
            ),
          ],
        )),
      ),
    );
  }
}
