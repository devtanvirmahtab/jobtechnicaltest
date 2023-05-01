import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../selected_item_screen.dart';

class SelectedItemButton extends StatelessWidget {
  const SelectedItemButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> SelectedItemScreen()));
      },
      child: Container(
        padding: const EdgeInsets.only(left: 13,right: 20,top: 13,bottom: 13),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: primaryColor
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
              ),
              child: Image.asset("assets/images/forwardarrow.png",width: 20,height: 20,),),
            const SizedBox(width: 15),
            Text("View All Selected Items".toUpperCase(),style:  TextStyle(fontSize: 20, color: Colors.white.withOpacity(.5)),)
          ],
        ),
      ),
    );
  }
}