
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'add_text.dart';
import 'app_theme.dart';
import 'category_all.dart';
import 'dimension.dart';


class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);
  static var referAndEarnScreen = "/referAndEarnScreen";

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  final key = GlobalKey<ScaffoldState>();
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
    return DefaultTabController(
        length: 3,
        child: Scaffold(
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
              // actions: [
              //   Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child:
              //     Container(
              //       // height: 15,
              //       padding: const EdgeInsets.symmetric(horizontal: 10),
              //       decoration: BoxDecoration(color: Colors.white, border: Border.all(color: const Color(0xFFEEEEEE))),
              //       child:
              //       DropdownButtonHideUnderline(
              //         child: DropdownButton(
              //           isDense: true,
              //           hint: Text(
              //             'Choose option'
              //                 '',
              //             style: TextStyle(
              //                 color: AppTheme.userText,
              //                 fontSize: AddSize.font14,
              //                 fontWeight: FontWeight.w500),
              //             textAlign: TextAlign.start,
              //           ),
              //           isExpanded: false,
              //           style: const TextStyle(
              //             color: Color(0xFF697164),
              //             fontSize: 16,
              //             fontWeight: FontWeight.w400,
              //           ),
              //           value: selectedTime,
              //           icon: const Icon(
              //             Icons.keyboard_arrow_down,
              //             color: Color(0xFF000000),
              //           ),
              //           items: timeData.map((value) {
              //             return DropdownMenuItem(
              //               value: value.key.toString(),
              //               child: Text(
              //                 value.value,
              //                 style: TextStyle(
              //                   fontSize: AddSize.font14,
              //                 ),
              //               ),
              //             );
              //           }).toList(),
              //           onChanged: (newValue) {
              //             setState(() {
              //               selectedTime =
              //               newValue as String?;
              //               log(selectedTime.toString());
              //               getMyOrders(selectedTime.toString());
              //
              //               // newValue!;
              //               // if (newValue != "custom") {
              //               //   myOrderController
              //               //       .getMyOrder();
              //               // } else {
              //               //   myOrderController
              //               //       .selectedDate.value =
              //               //       DateTime.now()
              //               //           .subtract(
              //               //           const Duration(
              //               //               days: 5))
              //               //           .toString();
              //               //   myOrderController
              //               //       .selectedDate1.value =
              //               //       DateTime.now().toString();
              //               // }
              //             });
              //           },
              //         ),
              //       ),
              //     ),
              //   )
              // ],
              bottom: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: Color(0xffDB3022),
                indicatorPadding: EdgeInsets.symmetric(horizontal: 15),
                // automaticIndicatorColorAdjustment: true,
                onTap: (value) {
                  currentDrawer = 0;
                  setState(() {});
                },
                tabs: [
                  Tab(
                    child: Text(
                      "Women",
                      style: currentDrawer == 0
                          ? TextStyle(color: const Color(0xff1A2E33), fontSize: 16, fontWeight: FontWeight.w500)
                          : TextStyle(color: AppTheme.primaryColor, fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Men",
                      style: currentDrawer == 1
                          ? TextStyle(color: Colors.cyan, fontSize: 16, fontWeight: FontWeight.w500)
                          : TextStyle(color: Color(0xff1A2E33), fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Kid",
                      style: currentDrawer == 2
                          ? TextStyle(color: Colors.cyan, fontSize: 16, fontWeight: FontWeight.w500)
                          : TextStyle(color: Color(0xff1A2E33), fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            body: TabBarView(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Get.to(()=>CategoryAllListPage());
                      },
                      child: Stack(
                        children: [
                          Container(
                            width: width,
                            height: height * .17,
                            decoration: BoxDecoration(
                              color: Color(0xffDB3022),
                              borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                          const Positioned(
                              top:50,
                              left: 100,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "SUMMER SALES",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 23, color: Color(0xfFFFFFFF),),
                              ),
                              Text(
                                "Up to 50% off",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 20, color: Color(0xffFFFFFF),),
                              ),
                            ],
                          ))
                        ],
                      ),
                    ),
                    addHeight(10),
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                          itemCount: 5,
                          itemBuilder: (BuildContext, index){
                        return Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  "New",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18, color: Color(0xff222222),),
                                ),
                              ),
                              Image.asset("assets/images/women.png")
                            ],
                          ),
                        );
                      }),
                    )

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 7,horizontal: 5),
                child: Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (BuildContext, index){
                        return Card(
                          //margin: EdgeInsets.symmetric(vertical: 5),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text(
                                  "Clothes",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18, color: Color(0xff222222),),
                                ),
                              ),
                              Image.asset("assets/images/cat.png")

                            ],

                          ),
                        );
                      }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Get.to(()=>CategoryAllListPage());
                      },
                      child: Stack(
                        children: [
                          Container(
                            width: width,
                            height: height * .17,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                          const Positioned(
                              top:50,
                              left: 100,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Winter SALES",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700, fontSize: 23, color: Color(0xfFFFFFFF),),
                                  ),
                                  Text(
                                    "Up to 80% off",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700, fontSize: 20, color: Color(0xffFFFFFF),),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
                    addHeight(10),
                    Expanded(
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 5,
                          itemBuilder: (BuildContext, index){
                            return Card(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      "New",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18, color: Color(0xff222222),),
                                    ),
                                  ),
                                  Image.asset("assets/images/women.png")
                                ],
                              ),
                            );
                          }),
                    )

                  ],
                ),
              ),


            ])));
  }
}