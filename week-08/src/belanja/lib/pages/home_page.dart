import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/laila_bottom_app_bar.dart';
import 'package:belanja/widgets/laila_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'Gula',
        price: 45000,
        imgUrl: 'assets/gula.jpg',
        stok: 30,
        rating: 4.5),
    Item(
        name: 'Garam',
        price: 10000,
        imgUrl: 'assets/garam.jpeg',
        stok: 25,
        rating: 4.9),
    Item(
        name: 'Minyak Goreng',
        price: 38000,
        imgUrl: 'assets/minyak.jpg',
        stok: 20,
        rating: 4.5),
    Item(
        name: 'Kecap',
        price: 8000,
        imgUrl: 'assets/kecap.jpeg',
        stok: 30,
        rating: 4.8),
    Item(
        name: 'Saos Sambal',
        price: 7000,
        imgUrl: 'assets/saos_sambal.jpeg',
        stok: 35,
        rating: 4.9),
    Item(
        name: 'Tepung Terigu',
        price: 2000,
        imgUrl: 'assets/tepung-terigu.jpg',
        stok: 50,
        rating: 4.7),
    Item(
        name: 'Kopi Bubuk',
        price: 6000,
        imgUrl: 'assets/kopi-hitam.jpg',
        stok: 40,
        rating: 4.4),
    Item(
        name: 'Indomie',
        price: 3000,
        imgUrl: 'assets/indomie.jpg',
        stok: 100,
        rating: 4.9),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Shopping List'),
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Menampilkan 2 item per baris
            childAspectRatio: 0.7, // Mengatur rasio lebar-tinggi item
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return LailaCard(
                item: item,
                onTap: () =>
                    Navigator.pushNamed(context, '/item', arguments: item));
          },
        ),
        bottomNavigationBar: LailaBottomAppBar());
  }
}
