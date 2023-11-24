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

### Soal 3

- Jelaskan fungsi keyword `yield*` pada kode tersebut!

### Jawab:

Keyword `yield*` dalam kode tersebut digunakan untuk menggabungkan nilai dari objek iterable ke dalam stream yang dihasilkan oleh fungsi `getColors`. Pada baris `yield* Stream.periodic(...)`, `yield*` memungkinka nilai-nilai yang dihasilkan oleh objek iterable dari `Stream.periodic` yang berisi daftar warna untuk disertakan secara berurutan ke dalam `stream` utama. Dengan kata lain, setiap detik, `stream` akan menghasilkan warna baru dari daftar warna yang telah ditentukan. 

- Apa maksud isi perintah kode tersebut?

### Jawab:

Pada kode tersebut mendefinisikan class `ColorStream` yang memiliki daftar warna dan sebuah metode `getColors` yang mengembalikan `stream` warna. Class ini menggunakan `Stream.periodic` untuk menghasilkan nilai dengan selang waktu tertentu yaitu setiap detik. Melalui penggunaan `yield`, setiap nilai yang dihasilkan oleh `stream` adalah warna dari daftar warna yang telah ditentukan.

Dengan kata lain, tujuan dari perintah kode tersebut adalah menciptakan stream warna yang terus menerus dan berulang dengan rentang waktu sary detik.

- Lakukan commit hasil jawaban Soal 3 dengan pesan **"W13: Jawaban Soal 3"**

### Jawab:

Done

### Soal 4

- Capture hasil praktikum Anda berupa GIF dan lampirkan di `README`.

### Jawab:

<img src="./docs/prak1-langkah4.gif" alt="Screenshot" width="300">

- Lakukan commit hasil jawaban Soal 4 dengan pesan **"W13: Jawaban Soal 4"**

### Jawab:

Done

### Soal 5

- Jelaskan perbedaan menggunakan `listen` dan `await for` (langkah 9)!

### Jawab:

Perbedaan menggunakan `listen` dan `await for`

- `listen` digunakan untuk memasang pendengar pada `stream`. Dalam konteks ini, ketika `stream` menghasilkan nilai baru, `callback` yang terkadung dalam `listen` akan diaktifkan. Dalam kode ini, tidak ada penggunaan `await`, sehingga pembaruan tampilan dapat terjadi secara asinkronus, sehingga blok `setState` akan diekseskusi setiap kali `stream` mengeluarkan nilai baru.

- `await for` digunakan unutuk mendengarkan `stream` secara langsung di dalam metode `changeColor()`. Dengan kata lain, penggunaan kata kunci `await` memastikan bahwa setiap langkah di dalam blok perulangan akan menunggu hingga `stream` menghasilkan nilai sebeluum melanjutkan ke langkah berikutnya. Dalam situasi ini, ketika `stream` menghasilkan nilai baru (warna baru), blok `setState` dieksekusi untuk memperbarui tampilan, menciptakan respons yang sesuai dengan perubahan nilai dalam `stream`.

- Pada intinya, penggunaan `await for` terjadi ketika kita perlu menunda proses hingga setiap iterasi `stream` selesai sebelum melanjutkan ke iterasi berikutnya. Sementara itu, penggunaan `listen` diterapkan ketika kita ingin menangani nilai secara asinkron, memungkinkan kelanjutan ke iterasi berikutnya tanpa harus menunggu penyelesaian satu iterasi sebelumnya.

- Lakukan commit hasil jawaban Soal 5 dengan pesan **"W13: Jawaban Soal 5"**

### Jawab:

Done