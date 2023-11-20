# Pemrograman Mobile

## Lanjutan State Management dengan Streams

- **Nama:** Lailatul Badriyah
- **NIM:** 2141720036
- **Kelas:** TI-3H
- **No Absen:** 14

# **Praktikum**

## **Praktikum 1: Dart Streams**

### Soal 1

- Tambahkan **nama panggilan Anda** pada `title app` sebagai identitas hasil pekerjaan Anda.
- Gantilah warna tema aplikasi sesuai kesukaan Anda.
- Lakukan commit hasil jawaban Soal 1 dengan pesan **"W13: Jawaban Soal 1"**

### Jawab:

```Dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Stream Laila',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
                seedColor: const Color.fromARGB(255, 164, 214, 255))),
        home: const StreamHomePage());
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
```

### Soal 2

- Tambahkan 5 warna lainnya sesuai keinginan Anda pada variabel `colors` tersebut.
- Lakukan commit hasil jawaban Soal 2 dengan pesan **"W13: Jawaban Soal 2"**

### Jawab:

```Dart
import 'package:flutter/material.dart';

class ColorSrean {
  final List<Color> colors = [
    Colors.blueGrey,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal,
    Colors.green,
    Colors.cyan,
    Colors.yellow,
    Colors.indigo,
    Colors.pink
  ];
}
```
