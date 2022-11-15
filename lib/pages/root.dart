
import 'package:flutter/material.dart';
import 'package:food_app/model/iteem.dart';
import 'package:food_app/pages/itemScreen.dart';
import 'package:food_app/pages/profile_page.dart';
import 'package:food_app/theme/color.dart';
import 'package:food_app/utils/data.dart';
import 'package:food_app/widgets/bottombar_item.dart';
import 'home.dart';

class RootApp extends StatefulWidget {
   final List<Item> items ;

   RootApp({ Key? key, required this.items }) : super(key: key);



  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {



  int activeTab = 1;
  List<IconData> tapIcons = [
    Icons.person_rounded, Icons.shopping_cart, Icons.favorite_border
  ];




  @override
  Widget build(BuildContext context) {

    return goHome();
  }

  goHome() {
    return Scaffold(
      backgroundColor: appBgColor,
      bottomNavigationBar: getBottomBar(),
      body: getBarPage()
    );
  }

  Widget getBottomBar() {
    return Container(
      height: 55, width: double.infinity,
      //padding: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: bottomBarColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25), 
          topRight: Radius.circular(25)
        ), 
        boxShadow: [
          BoxShadow(
            color: shadowColor.withOpacity(0.1),
            blurRadius: .5,
            spreadRadius: .5,
            offset: Offset(0, 1)
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: 
          List.generate(tapIcons.length, 
            (index) => BottomBarItem(tapIcons[index], "", isActive: activeTab == index, activeColor: secondary,selectedItemsShare: widget.items,
              onTap: () {
                setState(() {
                  activeTab = index;


                });
              },
            )
          )
        ),
    );
  }

  Widget getBarPage(){
    List<Widget> pages = [
      ProfilePage(),ItemScreen(items: widget.items),HomePage(items: widget.items),
    ];
    return 
      IndexedStack(
        index: activeTab,
        children: 
          List.generate(
              tapIcons.length,
            (index) => pages[index]
          )
      );
  }
}