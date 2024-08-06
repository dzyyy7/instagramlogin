// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'InstaRegis.dart';

class IgLogin extends StatefulWidget {
  const IgLogin({super.key});

  @override
  State<IgLogin> createState() => _igLogin();
}

class _igLogin extends State<IgLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFFDEEF8),
              Color(0xFFE2F4FD),
            ],
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 40),
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {},
              ),
            ),
            SizedBox(height: 10),
            Container(
              child: Text(
                "Bahasa Indonesia",
                style: TextStyle(
                    fontSize: 13, color: const Color.fromARGB(255, 44, 44, 44)),
              ),
            ),
            Spacer(),
            Center(
              child: Image.asset(
                'assets/InstagramLogo.png',
                width: 60,
                height: 60,
              ),
            ),
            Spacer(),
            SizedBox(
              height: 35,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Nama pengguna, email, atau nomor ponsel',
                      labelStyle: TextStyle(
                          color: const Color.fromARGB(255, 10, 10, 10)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(13.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(13.0)),
                        borderSide: BorderSide(
                          color: const Color.fromARGB(255, 194, 194, 194), // Warna abu-abu saat tidak fokus
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(13.0)), // Tetap menggunakan radius
                        borderSide: BorderSide(
                          color: const Color.fromARGB(255, 10, 10,
                              10), // Mengubah warna border saat fokus
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 14),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Kata sandi',
                      labelStyle: TextStyle(
                          color: const Color.fromARGB(255, 10, 10, 10)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(13.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(13.0)),
                        borderSide: BorderSide(
                          color: const Color.fromARGB(255, 194, 194, 194), // Warna abu-abu saat tidak fokus
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(13.0)), // Tetap menggunakan radius
                        borderSide: BorderSide(
                          color: const Color.fromARGB(255, 10, 10,
                              10), // Mengubah warna border saat fokus
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 42,
              width: 335,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Login", style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 33, 96, 243),
                  )),
            ),
            TextButton(
              onPressed: () {},
              child: Text("Lupa sata sandi?",
                  style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0))),
            ),
            Spacer(),
            Spacer(),
            Column(
              children: [
                Container(
                  height: 42,
                  width: 335,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => IGRegist()),
                      );
                    },
                    child: Text("Buat akun baru",
                        style:
                            TextStyle(color: Color.fromARGB(255, 23, 44, 149))),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                          color: Colors.blue, width: 1), // Warna border biru
                      backgroundColor: Color.fromARGB(255, 226, 244, 253),
                    ),
                  ),
                ),
                Center(
                  child: Image.asset(
                    'assets/MetaLogoHI.png',
                    width: 60,
                    height: 60,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
