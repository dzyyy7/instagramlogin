import 'package:flutter/material.dart';

class IGRegist2 extends StatefulWidget {
  const IGRegist2({super.key});

  @override
  State<IGRegist2> createState() => _IGRegist2();
}

class _IGRegist2 extends State<IGRegist2> {
  bool _rememberPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(color: Colors.white),
            child: Column(children: [
              SizedBox(height: 62),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Buat Kata Sandi",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Demi keamanan, kata sandi harus terdiri dari",
                    style: TextStyle(
                      fontSize: 14,
                      color: const Color.fromARGB(255, 171, 170, 170),
                    ),
                  ),
                  Text(
                    "6 karakter atau lebih.",
                    style: TextStyle(
                      fontSize: 14,
                      color: const Color.fromARGB(255, 171, 170, 170),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                margin: EdgeInsets.all(20),
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Kata Sandi',
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 172, 172, 172),
                    ),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7.0)),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 194, 194,
                            194), // Warna abu-abu saat tidak fokus
                      ),
                    ),
                    filled: true,
                    fillColor: Color.fromARGB(255, 245, 245, 245),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 204, 204, 204)),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 17),
                child: Row(
                  children: <Widget>[
                    Checkbox(
                      activeColor: Colors.blue, 
                      value: _rememberPassword,
                      onChanged: (bool? value) {
                        setState(() {
                          _rememberPassword = value ?? false;
                        });
                      },
                    ),
                    Text('Ingat kata sandi'),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 47,
                width: 300,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => IGRegist2()),
                      );
                    },
                    child: Text("Selanjutnya",
                        style: TextStyle(color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 33, 145, 243),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    )),
              ),
            ])));
  }
}
