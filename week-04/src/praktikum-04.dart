void main() {
  // List<int?> list1 = [1, 2, 3];
  // var list2 = [0, ...list1];
  // print(list1);
  // print(list2);
  // print(list2.length);

  // list1 = [1, 2, null];
  // print(list1);
  // var list3 = [0, ...list1];
  // print(list3.length);

  // var nimA = [2, 1, 4, 1, 7];
  // var nimB = [2, 0, 0, 3, 6];
  // var list4 = [...nimA, ...nimB];
  // print(list4);
  // print(list4.length);

  // var promoActive = true;
  // var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  // print(nav);

  // var promoActive = false;
  // var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  // print(nav);

  // String login = 'Pegawai';
  // var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
  // print(nav2);

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);

}

