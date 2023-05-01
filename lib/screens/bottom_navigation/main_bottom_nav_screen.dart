import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobtechnicaltest/constants.dart';

import '../../getx_controller/bottom_navigation_controller.dart';
import '../../getx_controller/category_controller.dart';
import '../group_person_screen.dart';
import '../home/home_screen.dart';
import '../category_list_screen/category_list_screen.dart';
import '../send_screen.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({Key? key}) : super(key: key);

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {

  final List<String> _iconList = [
    "assets/images/bottomicon1.png",
   "assets/images/bottomicon2.png",
    "assets/images/bottomicon3.png",
    "assets/images/Send.png",
  ];

  final tabs = const[
    HomeScreen(),
    ListScreen(),
    GroupPersonScreen(),
    SendScreen()
  ];


  CategoryController categoryController = Get.put(CategoryController());
  BottomNavigationController bController = Get.put(BottomNavigationController());

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      categoryController.getCategory();
    });
  }


  @override
  Widget build(BuildContext context) {

    List<Widget> navBarItemList = [];
    for(var i = 0; i<_iconList.length; i++){
      navBarItemList.add(customNavigationBarItem(_iconList[i],i));
    }

    return Scaffold(
      body: GetBuilder<BottomNavigationController>(
        builder: (controller) {
          return tabs[controller.selectedIndex];
        }
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 20,
              spreadRadius: 2,
              offset: Offset(-2, 0)
            )
          ]
        ),
        child: Row(
          children: navBarItemList,
        ),
      )
    );
  }

  Widget customNavigationBarItem(String image,int index){
      return GetBuilder<BottomNavigationController>(
        builder: (controller) {
          return GestureDetector(
            onTap: (){
              controller.barControl(index);
            },
            child: Container(

              padding: const EdgeInsets.all(15),
              height: 60,
              width: MediaQuery.of(context).size.width/_iconList.length,
              decoration: bController.selectedIndex == index ? const BoxDecoration(
                  color:  primaryColor
              ): const BoxDecoration(
                  color:  Colors.white
              ) ,
              child: Image.asset(image,height: 10,width: 10,color: bController.selectedIndex == index ? Colors.white: const Color(0xFFC7C7C7),),
            ),
          );
        }
      );
  }
}




