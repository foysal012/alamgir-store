import 'package:flutter/material.dart';

class CollectionPageScreen extends StatefulWidget {
  const CollectionPageScreen({Key? key}) : super(key: key);

  @override
  State<CollectionPageScreen> createState() => _CollectionPageScreenState();
}

class _CollectionPageScreenState extends State<CollectionPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
      ),
    );
  }
}
