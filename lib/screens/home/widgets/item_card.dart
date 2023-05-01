import 'package:flutter/material.dart';

import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  final bool hoverColor;
  final String text, image;
   const ItemCard({
    Key? key,
    required this.text,
    required this.image,
     this.hoverColor = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(left: 14),
      color: hoverColor ? primaryColor : Colors.white,
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
        child: Column(
          children: [
            Image.asset(
              image,
              height: 30,
              color: hoverColor == true ? Colors.white : primaryColor,
            ),
            const SizedBox(height: 15),
            Text(
              text,
              style:  TextStyle(color: hoverColor == true ? Colors.white : bodyTextColor, letterSpacing: 1.4),
            ),
          ],
        ),
      ),
    );
  }
}
