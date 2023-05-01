
import 'package:get/get.dart';

class BottomNavigationController extends GetxController{
  int selectedIndex = 0;

  barControl(int index){
    selectedIndex = index;
    update();
  }
}