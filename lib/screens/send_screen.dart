import 'package:flutter/material.dart';

class SendScreen extends StatefulWidget {
  const SendScreen({Key? key}) : super(key: key);

  @override
  State<SendScreen> createState() => _SendScreenState();
}

class _SendScreenState extends State<SendScreen> {
  @override
  Widget build(BuildContext context) {
    return const   Scaffold(
      body:  Center(
        child:  Text("Send Screen"),
      ),
    );
  }
}
