void main(){
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1,
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
  

// menambahkan elemen nama dan nim
  gifts['nama'] = 'Lailatul Badriyah';
  gifts['nim'] = '2141720036';

  nobleGases[3] = 'Lailatul Badriyah';
  nobleGases[4] = '2141720036';

  mhs1['nama'] = 'Lailatul Badriyah';
  mhs1['nim'] = '2141720036';

  mhs2[3] = 'Lailatul Badriyah';
  mhs2[4] = '2141720036';

  print(gifts);
  print(nobleGases);

  print(mhs1);
  print(mhs2);
}

