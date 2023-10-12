import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class MyRowColumn extends StatelessWidget {
  const MyRowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 300, // Set the desired width
          height: 200, // Set the desired height
          child: Image.network(
            'https://media.istockphoto.com/id/155429653/photo/hamburg-alster-lake-town-hall.jpg?s=612x612&w=0&k=20&c=ExnfbfJBuVEogqVdSY6bi20loIdSwl9OCerwos77aFg=',
            fit: BoxFit.cover, // Adjust this property as needed
          ),
        ),
      ],
    );
  }
}
