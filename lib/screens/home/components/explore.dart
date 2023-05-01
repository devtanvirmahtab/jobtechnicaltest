import 'package:flutter/material.dart';

import '../widgets/explore_card.dart';

class Explore extends StatelessWidget {
  const Explore({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 25),
        const Center(child: Text("Explore",style: TextStyle(color: Colors.black,fontSize: 16,letterSpacing: 1.8,fontWeight: FontWeight.w600),)),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(15),
          child: SizedBox(
            height: 110,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context,index){
                return ExploreCard(text: 'Category ${index + 1}',image: "assets/images/girls.png",);
              },
            ),
          ),
        ),
      ],
    );
  }
}