  // (int, int) tukar((int, int) record) {
  //   var (a, b) = record;
  //   return (b, a);
  // }

void main(){
  // var record = ('first', a: 2, b: true, 'last');
  // print(record);

  // var record = (1, 2);
  // print(record);
  // print(tukar(record));

  // Record type annotation in a variable declaration:
  // (String, int) mahasiswa = ('Lailatul Badriyah', 2141720036);
  // print(mahasiswa);

  // var mahasiswa2 = ('first', a: 2, b: true, 'last');

  // print(mahasiswa2.$1); // Prints 'first'
  // print(mahasiswa2.a); // Prints 2
  // print(mahasiswa2.b); // Prints true
  // print(mahasiswa2.$2); // Prints 'last'

  var mahasiswa2 = ('Lailatul Badriyah', a: 2141720036, b: true, 'last');

  print(mahasiswa2.$1); // Prints nama
  print(mahasiswa2.a); // Prints nim
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}

