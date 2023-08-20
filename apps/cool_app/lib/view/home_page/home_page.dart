import 'package:cool_package/cool_package.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void onPressed() => Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const CoolPage()),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: onPressed,
          child: const Text('show cool page'),
        ),
      ),
    );
  }
}
