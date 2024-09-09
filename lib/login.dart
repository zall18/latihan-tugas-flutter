import 'package:flutter/material.dart';
import 'package:tugas_flutter/Home.dart';
import 'package:tugas_flutter/bottomnavbar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.lightBlue[900],
        child: Center(
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Angkatan 17",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 100,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Masukan Email",
                        filled: true,
                        fillColor: Colors.white),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Masukan Password",
                        filled: true,
                        fillColor: Colors.white),
                    keyboardType: TextInputType.visiblePassword,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BottomNavBar(id: 0)),
                          (route) => false);
                    },
                    child: Text("Login"),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[200],
                        minimumSize: Size(double.infinity, 60)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
