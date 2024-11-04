import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/view/cart/explorescreen.dart';
import '/view/favorite/favoritescreen.dart';
import '/view/notification/notificationscreen.dart';
import '/view/profile/profilescreen.dart';

abstract class Homescreencontroller extends GetxController {
  changePage(int currentpage);
}

class HomescreencontrollerImp extends Homescreencontroller {
  int currentpage = 0;
  List<Widget> listpage = [
    ExploreScreen(),
    Favoritescreen(),
    Notificationscreen(),
    ProfileScreen(),
  ];
  List bottomappbar = [
    Icons.home,
    Icons.favorite,
    Icons.notifications,
    Icons.person,
  ];

  @override
  changePage(int i) {
    currentpage = i;
    update();
  }
}