import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:eat_experts/screens/home.dart';
import 'package:eat_experts/screens/order.dart';
import 'package:eat_experts/screens/profile.dart';
import 'package:eat_experts/screens/wallet.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentTabIndex=0;

  late List<Widget> pages;
  late Widget currentPage;
  late Home homepage;
  late Profile profile;
  late Order order;
  late Wallet wallet;

  @override
  void initState() {
    homepage = Home();
    order=Order();
    profile=Profile();
    wallet= Wallet();
    pages=[homepage, order, wallet, profile];
    super.initState();
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        backgroundColor: Colors.white,
        color: Colors.black,
        animationDuration: Duration(milliseconds: 500),
        onTap: (int index){
          setState(() {
            currentTabIndex=index;
          });
        },
        items: [
        Icon(
          Icons.home_outlined, 
          color: Colors.white,
        ),
        Icon(Icons.shopping_bag_outlined, color: Colors.white,),
        Icon(Icons.wallet_outlined, color: Colors.white,),
        Icon(Icons.person_outlined, color: Colors.white,),
      ]),
      body: pages[currentTabIndex],
    );
  }
}