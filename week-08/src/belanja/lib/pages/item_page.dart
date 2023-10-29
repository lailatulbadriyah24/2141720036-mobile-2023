import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/laila_bottom_app_bar.dart';
import 'package:belanja/widgets/laila_detail_item.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Item Details'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [LailaDetailItem(item: item)],
          ),
        ),
        bottomNavigationBar: LailaBottomAppBar());
  }
}
