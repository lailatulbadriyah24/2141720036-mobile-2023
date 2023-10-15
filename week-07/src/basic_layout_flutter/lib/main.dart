import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.account_circle,
            size: 60,
            color: Colors.black,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, bottom: 5), // Tambahkan margin kiri di sini
                  child: Text(
                    "Lailatul Badriyah",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20), // Tambahkan margin kiri di sini
                  child: Text(
                    "2141720036",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Widget contactSection = Padding(
      padding: const EdgeInsets.fromLTRB(
          24, 0, 24, 20), // Margin kiri, atas, kanan, bawah
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Malang, Jawa Timur",
              style: TextStyle(fontSize: 16, color: Colors.black)),
          Text("083848492366",
              style: TextStyle(fontSize: 16, color: Colors.black))
        ],
      ),
    );

    Widget iconSection = Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.accessibility, color: Colors.black),
          Icon(Icons.timer, color: Colors.black),
          Icon(Icons.phone_android, color: Colors.black),
          Icon(Icons.phone_iphone, color: Colors.black),
        ],
      ),
    );

    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Colors
            .white, // Mengatur warna latar belakang Scaffold menjadi putih
        body: ListView(children: [
          titleSection,
          contactSection,
          iconSection,
        ]),
      ),
    );
  }
}
