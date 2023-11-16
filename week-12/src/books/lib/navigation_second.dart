import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({super.key});

  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
  @override
  Widget build(BuildContext context) {
    Color color;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Second Screen Laila"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Spacer(),
            ElevatedButton(
                onPressed: () {
                  color = Colors.orange.shade700;
                  Navigator.pop(context, color);
                },
                child: const Text("Orange")),
            ElevatedButton(
                onPressed: () {
                  color = Colors.cyan.shade700;
                  Navigator.pop(context, color);
                },
                child: const Text("Cyan")),
            ElevatedButton(
                onPressed: () {
                  color = Colors.yellow.shade700;
                  Navigator.pop(context, color);
                },
                child: const Text("Yellow")),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
