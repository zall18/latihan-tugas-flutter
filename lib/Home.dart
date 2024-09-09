import 'package:flutter/material.dart';
import 'package:tugas_flutter/edit.dart';
import 'package:tugas_flutter/tambahData.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TambahPage()));
            },
            child: Icon(
              Icons.add_box_rounded,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Container(
        child: Expanded(
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => EditPage()));
                },
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey[300],
                    child: Icon(Icons.person),
                  ),
                  title: Text('Nama'),
                  subtitle: Text('Email'),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.delete),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
