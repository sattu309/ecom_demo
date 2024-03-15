
import 'package:ecom_demo/add_text.dart';
import 'package:ecom_demo/common_button.dart';
import 'package:ecom_demo/push_notification/notifcation_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'all_product.dart';
import 'dimension.dart';


class CategoryAllListPage extends StatefulWidget {
  const CategoryAllListPage({Key? key}) : super(key: key);
  static var referAndEarnScreen = "/referAndEarnScreen";

  @override
  State<CategoryAllListPage> createState() => _CategoryAllListPageState();
}

class _CategoryAllListPageState extends State<CategoryAllListPage> {
  final key = GlobalKey<ScaffoldState>();

  final fcmToken = "d5EiUUTxT4OmuSsNR69Rsi:APA91bEeBmppeyNBfzvl1U4hEyRWhOuW5rJFxM9Nzt5dm0CHyL1nUo_Jzn6KQYRlbNZ5n2EUcnr6T8jPyiBHbVjxTIDrKVfcZQjeWubMJ3JAZroGwXAvMyAZZAsedKH9XOmXrxbdC2oB";
  var currentDrawer = 0;
  String? selectedTime;
  String dropdownvalue = 'Today';
  var items = [
    'Today',
    'This Week',
    'This Month',
    'Last Year',
  ];

  //




  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          elevation: 0,
          leadingWidth: AddSize.size20 * 2.0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            "Categories",
            style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 18, color: Color(0xff303D48),),
          ),
          leading: Padding(
            padding: EdgeInsets.only(left: AddSize.padding10),
            child: GestureDetector(
                onTap: () {
                  Get.back();
                  if (dispose == "dispose") {}
                },
                child: Icon(Icons.arrow_back_ios,color: Colors.black,)),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Icon(Icons.search,color: Colors.black,),
            )
          ],

        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CommonButtonGreen(title: "VIEW ALL ITEMS",
              onPressed: () async {
              //   NotificationService notificationService = NotificationService();
              //   await notificationService.initializeNotification();
              //
              //   await notificationService.showNotification(
              //       fcmToken,
              //       'Custom Sound Notification', 'This is a notification with a custom sound', sound: 'ring');
              //
              },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Chooe category",
                style: TextStyle(color: const Color(0xFF9B9B9B), fontSize: 13),
              ),
            ),
            addHeight(30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    "Tops",
                    style: TextStyle(color: const Color(0xFF222222), fontSize: 15),
                  ),
                ),
                addHeight(10),
                const Divider(
                  height: 1,
                ),
                addHeight(10),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    "T-shirts",
                    style: TextStyle(color: const Color(0xFF222222), fontSize: 15),
                  ),
                ),
                addHeight(10),
                const Divider(
                  height: 1,
                ),
                addHeight(10),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    "Party wear",
                    style: TextStyle(color: const Color(0xFF222222), fontSize: 15),
                  ),
                ),
                addHeight(10),
                const Divider(
                  height: 1,
                ),
                addHeight(10),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    "club wear",
                    style: TextStyle(color: const Color(0xFF222222), fontSize: 15),
                  ),
                ),
                addHeight(10),
                const Divider(
                  height: 1,
                ),
                addHeight(10),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    "Night wear",
                    style: TextStyle(color: const Color(0xFF222222), fontSize: 15),
                  ),
                ),
                addHeight(10),
                const Divider(
                  height: 1,
                ),
              ],
            ),

          ],
        ),
    );
  }
}