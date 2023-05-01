import 'package:flutter/material.dart';

import '../widgets/symptoms_card.dart';

class SymptomItemList extends StatelessWidget {
  const SymptomItemList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: const[
          Expanded(child: SymptomsCard(text: 'Exter Your Symptoms',image: "assets/images/plus.png", )),
          SizedBox(width: 10),
          Expanded(child: SymptomsCard(text: 'Log Your Symptoms',image: "assets/images/drop.png", )),
        ],
      ),
    );
  }
}