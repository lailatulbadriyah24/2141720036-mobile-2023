// No. 3

// a. Function dengan required positional parameters
// void printNama(String firstName, String lastName) {
//   print('Nama: $firstName $lastName');
// }

// void main(){
//   // Memanggil fungsi dengan required positional parameters
//   printNama("Lailatul", "Badriyah");
// }


// b. Function dengan optional positional parameters
// void printUsia(String name, [int? usia]) {
//   if (usia != null) {
//     print('$name berusia $usia tahun.');
//   } else {
//     print('$name usia tidak diketahui.');
//   }
// }

// void main(){
//   // Memanggil fungsi dengan optional positional parameters
//   printUsia("Lailatul");
//   printUsia("Lailatul Badriyah", 20);
// }


// c. Function dengan named parameters
// void hitungVolume({double? panjang, double? lebar, double? tinggi}) {
//   if (panjang != null && lebar != null && tinggi != null) {
//     double volume = panjang * lebar * tinggi;
//     print('Volume adalah $volume');
//   } else {
//     print('Panjang, lebar, dan tinggi harus diisi.');
//   }
// }

// void main(){
//   // Memanggil fungsi dengan named parameters
//   hitungVolume(panjang: 5.0, lebar: 3.0, tinggi: 2.0);
//   hitungVolume(panjang: 4.0, tinggi: 3.0);
// }


// No.4

// Mendefinisikan sebuah fungsi
// int tambahkan(int a, int b) {
//   return a + b;
// }

// void main() {
//   // Menyimpan fungsi dalam variabel
//   var operasiMatematika = tambahkan;

//   // Menggunakan variabel fungsi
//   int hasil = operasiMatematika(2, 3);
//   print("Hasil penjumlahan: $hasil");
// }

// No 5

// void main() {
//   // Fungsi anonim untuk menghitung kuadrat sebuah angka
//   var kuadrat = (int angka) => angka * angka;

//   // Memanggil fungsi anonim
//   var hasil = kuadrat(4);
//   print("Hasil kuadrat: $hasil");
// }


// No. 6

// a. Lexical Scope
// void main() {
//   int x = 10;

//   void fungsiLuar() {
//     int y = 5;
//     print(x + y); // Variabel x dan y dapat diakses dalam lingkup fungsiLuar.
//   }

//   fungsiLuar(); // Memanggil fungsiLuar
// }

// a. Lexical Closures
// void main() {
//   int x = 10;

//   Function tambahkanX = (int angka) {
//     return x + angka;
//   };

//   print(tambahkanX(5)); // Output: 15

//   x = 20; // Modifikasi nilai x

//   print(tambahkanX(5)); // Output: 25
// }


// No. 7

  Map<String, dynamic> getInfo () {
    return {
      'name': 'Lailatul Badriyah',
      'age': 20,
      'address': 'Malang',
    };
  }

void main() {
  var data = getInfo();
  print("Name: ${data['name']}");
  print("Age: ${data['age']}");
  print("Address: ${data['address']}");
}
