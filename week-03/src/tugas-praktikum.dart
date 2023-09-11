void main() {
  String namaLengkap = "Lailatul Badriyah", nim = "2141720036";

  for (int angka = 0; angka <= 201; angka++) {
    if(bilanganPrima(angka)){
      print("Bilangan Prima: $angka\nNama Lengkap: $namaLengkap\nNIM: $nim\n");
    }
  } 
}

bool bilanganPrima(int angka){
  if(angka < 2){
    return false;
  }
    for (int i = 2; i <= angka/2; i++) {
    if (angka % i == 0) {
      return false;
    }
  }
  return true;
}
