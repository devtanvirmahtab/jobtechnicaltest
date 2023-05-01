import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../widgets/premium_card.dart';

class UnlockPremium extends StatelessWidget {
  const UnlockPremium({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 35),
        const Center(child: Text("Unlock Premium",style: TextStyle(color: primaryColor,fontSize: 16,letterSpacing: 1.8,fontWeight: FontWeight.w600),)),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              PremiumCard(
                title: "30-Day Free Trial",
                subtitle: "(Then BDT 3,400.00/year\nonly BDT 283.34/month)",
                bgColor: primaryColor,
                titleColor: Colors.white,
                subColor: Colors.white,
              ),
              PremiumCard(
                subtitle: "1 month BDT 700.00",
                bgColor: Colors.white,
                subColor: Colors.black,
              ),
            ],
          ),
        ),
        const SizedBox(height: 25),
      ],
    );
  }
}