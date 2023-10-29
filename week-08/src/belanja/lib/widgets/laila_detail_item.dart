import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class LailaDetailItem extends StatelessWidget {
  final Item item;
  const LailaDetailItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero(
          tag: 'productImage${item.name}',
          child: Image.asset(item.imgUrl, fit: BoxFit.cover),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        item.name,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(), // Ini akan membuat rating sejajar dengan nama
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber, size: 20),
                          const SizedBox(width: 4),
                          Text(
                            item.rating.toString(),
                            style: const TextStyle(
                              color: Colors.amber,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        'Rp. ${item.price}',
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.redAccent,
                        ),
                      ),
                      const Spacer(), // Ini akan membuat rating dan stok sejajar di bagian bawah kanan
                      Text(
                        'Stok: ${item.stok}',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
