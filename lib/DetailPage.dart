import 'package:flutter/material.dart';
import 'package:tugaspert14/main.dart';

class DetailPage extends StatelessWidget {
  DetailPage(
      {required this.kodeBuku, required this.judul, required this.pengarang});
  String kodeBuku;
  String judul;
  String pengarang;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Data Buku"),
          backgroundColor: Colors.black,
        ),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Container(
              height: 40,
              color: Colors.amber[600],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Kode Buku",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(kodeBuku)
                ],
              ),
            ),
            Divider(),
            Container(
              height: 80,
              color: Colors.amber[400],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Judul", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(judul)
                ],
              ),
            ),
            Divider(),
            Container(
              height: 50,
              color: Colors.amber[200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Pengarang",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(pengarang)
                ],
              ),
            )
          ],
        ));
  }
}
