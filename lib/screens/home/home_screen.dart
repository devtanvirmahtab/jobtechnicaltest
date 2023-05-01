import 'package:flutter/material.dart';
import 'package:jobtechnicaltest/constants.dart';

import 'components/HomeItemCard.dart';
import 'components/carosel_slider.dart';
import 'components/dateview_circleview.dart';
import 'components/explore.dart';
import 'components/home_banner_slider.dart';
import 'components/symptoms_item_list.dart';
import 'components/unlock_premium.dart';
import 'widgets/demo_app_post.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFAFAFA),
        elevation: 0,
        leading: Builder(
            builder: (context) =>IconButton(onPressed: (){
              Scaffold.of(context).openDrawer();
            }, icon: Padding(
              padding: const EdgeInsets.all(8),
              child: Image.asset("assets/images/menuicon.png"),
            ),),
          ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Image.asset("assets/images/notification.png"),
          )
        ],
      ),
      drawer: const Drawer(),
      body: ListView(
        children: [
          const HomeItemCard(),
          const SizedBox(height: 25),
          CaroselSlider(),
          const SizedBox(height: 25),
          const SymptomItemList(),
          const Explore(),
          const SizedBox(height: 25),
          HomeBannerSlider(),
          const SizedBox(height: 25),
          DemoAppPost(title: "Demo app",subtitle: descriptionText,image: "assets/images/deskdoctor.png",imageWidth: 220,),
          const UnlockPremium(),
          DemoAppPost(title: "Add My Partner",image: "assets/images/partnerimage.png",imageWidth: 280,),
          const SizedBox(height: 35),
        ],
      )
    );
  }
}
















