import 'package:flutter/material.dart';

class SelectedItemScreen extends StatefulWidget {
  const SelectedItemScreen({Key? key}) : super(key: key);

  @override
  State<SelectedItemScreen> createState() => _SelectedItemScreenState();
}

class _SelectedItemScreenState extends State<SelectedItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [
            Center(
              child: Text("Details Page"),
            )
          ],
      ),
    );
  }
}
