import 'package:flutter/material.dart';

import '../widgets/item_card.dart';

class HomeItemCard extends StatelessWidget {
  const HomeItemCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(child: ItemCard(hoverColor: true,text: 'Cycle',image: "assets/images/icon_drop.png", )),
        Expanded(child: ItemCard(text: 'My Health',image: "assets/images/icon_heart.png", )),
        Expanded(child: ItemCard(text: 'Shop',image: "assets/images/Icon_basket.png", )),
        SizedBox(width: 14)
      ],
    );
  }
}