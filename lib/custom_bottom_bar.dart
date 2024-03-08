import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'all_category.dart';
import 'cart.dart';
import 'conttroller/main_homecontroller.dart';
import 'drawer.dart';
import 'homepage.dart';
import 'login_flow/signup.dart';
import 'main_homepage.dart';

class MyNavigationBar extends StatefulWidget {
  MyNavigationBar ({key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar > {
  final controller = Get.put(MainHomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const CustomDrawer(),

      bottomNavigationBar: Obx(() {
        return BottomAppBar(
            color: Colors.white,
            shape: const CircularNotchedRectangle(),
            clipBehavior: Clip.hardEdge,
            elevation: 0,
            child: Theme(
                data: ThemeData(
                    splashColor: Colors.transparent,
                    backgroundColor: Colors.transparent,
                    bottomNavigationBarTheme:
                    const BottomNavigationBarThemeData(backgroundColor: Colors.white, elevation: 0)),
                child: BottomNavigationBar(
                    unselectedLabelStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    selectedLabelStyle:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black),
                    items: [
                      BottomNavigationBarItem(
                        icon: GestureDetector(
                          onTap: () {
                            controller.onItemTap(0);
                          },
                          child: Icon(Icons.home)
                        ),
                        label: 'Home',
                      ),

                      BottomNavigationBarItem(
                        icon: InkWell(
                          onTap: () async {
                            controller.onItemTap(1);
                            //print("VALLLUUU"+controller.onItemTap(1));
                          },
                          child: Icon(Icons.shopping_cart)
                        ),
                        label: 'Shop',
                      ),
                      BottomNavigationBarItem(
                        icon: InkWell(
                          onTap: () async {
                            controller.onItemTap(2);

                          },
                          child: Icon(Icons.favorite_border_rounded)
                        ),
                        label: 'Favourites',
                      ),
                      BottomNavigationBarItem(
                          icon: GestureDetector(
                            onTap: () {
                              controller.onItemTap(3);

                            },
                            child: Icon(Icons.person_pin)
                          ),
                          label: 'Profile'),
                    ],
                    type: BottomNavigationBarType.fixed,
                    currentIndex: controller.currentIndex.value,
                    selectedItemColor: Color(0xffDB3022),
                    iconSize: 30,
                    onTap: controller.onItemTap,
                    elevation: 2
                )));
      }),
        body: Center(
          child: Obx(() {
            return IndexedStack(
              index: controller.currentIndex.value,
              children: const [
                MainHomePage(),
                Cart(),
                AllCategories(),
                SignUpPage(),
              ],
            );
          }),
        ));
  }
}
