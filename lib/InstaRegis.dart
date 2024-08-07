import 'package:flutter/material.dart';
import 'InstaReg2.dart';

class IGRegist extends StatefulWidget {
  const IGRegist({super.key});

  @override
  State<IGRegist> createState() => _IGRegist();
}

class _IGRegist extends State<IGRegist> {
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
                  "Pilih nama pengguna",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 7),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Anda selalu dapat mengubahnya nanti.",
                  style: TextStyle(
                    fontSize: 14,
                    color: const Color.fromARGB(255, 171, 170, 170),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Nama pengguna',
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 172, 172, 172),
                    ),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7.0)),
                        borderSide: BorderSide(
                          color: const Color.fromARGB(255, 194, 194, 194), 
                        ),
                      ),
                    filled: true,
                    fillColor: Color.fromARGB(255, 245, 245, 245),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 204, 204,
                              204)),  
                    ),
                  ),
                ),
              ),
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
                    child: Text("Selanjutnya", style: TextStyle(color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 33, 145, 243),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            7),
                      ),
                    )),
              ),
            ])));
  }
}
