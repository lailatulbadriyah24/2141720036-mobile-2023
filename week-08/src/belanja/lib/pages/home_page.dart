import 'package:belanja/models/item.dart';
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
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/item', arguments: item);
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(
                    8), // Tambahkan padding pada keseluruhan Card
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Hero(
                      tag: 'productImage${item.name}',
                      child: AspectRatio(
                        aspectRatio:
                            1, // Rasio lebar-tinggi 1:1 untuk ukuran yang sama
                        child: Image.asset(item.imgUrl, fit: BoxFit.cover),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment
                          .spaceBetween, // Agar rating berada di sebelah kanan
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8), // Padding di atas teks "name"
                          child: Text(
                            item.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber, size: 16),
                            SizedBox(
                                width:
                                    4), // Tambahkan jarak horizontal sebesar 4
                            Text(
                              item.rating.toString(),
                              style: const TextStyle(
                                color: Colors.amber,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        'Rp. ${item.price}',
                        style: const TextStyle(
                          color: Colors.redAccent,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Text(
                      'Stok: ${item.stok}',
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: Colors.blue,
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Nama: Lailatul Badriyah',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              Text(
                'NIM: 2141720036',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
