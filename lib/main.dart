import 'package:flutter/material.dart';
import 'package:tugaspert14/DetailPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: formBuku(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class formBuku extends StatefulWidget {
  const formBuku({Key? key}) : super(key: key);

  @override
  State<formBuku> createState() => _formBukuState();
}

class _formBukuState extends State<formBuku> {
  final _formkey = GlobalKey<FormState>();

  final kodeBuku = TextEditingController();

  final judul = TextEditingController();

  final pengarang = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Input Activity"), backgroundColor: Colors.black),
        body: Form(
            key: _formkey,
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    controller: kodeBuku,
                    decoration: InputDecoration(
                      hintText: "Masukkan kode buku ",
                      labelText: "Kode Buku",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Kode Buku tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    controller: judul,
                    decoration: InputDecoration(
                      hintText: "Masukkan judul buku ",
                      labelText: "Judul",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Judul tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    controller: pengarang,
                    decoration: InputDecoration(
                      hintText: "Masukkan nama pengarang",
                      labelText: "Pengarang",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Pengarang tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 18),
                  ElevatedButton(
                    child: Text(
                      'Simpan',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => DetailPage(
                                      kodeBuku: kodeBuku.text,
                                      judul: judul.text,
                                      pengarang: pengarang.text,
                                    )));
                      }
                    },
                  )
                ],
              ),
            )));
  }
}
