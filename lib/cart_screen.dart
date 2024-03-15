
import 'package:ecom_demo/add_text.dart';
import 'package:ecom_demo/common_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dimension.dart';


class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);
  static var referAndEarnScreen = "/referAndEarnScreen";

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int counter = 1;
  increseCounter(){
    counter++;
    setState(() {});
  }
  decreaseCounter(){
    counter--;
    setState(() {});
  }

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
        automaticallyImplyLeading: false,
        leadingWidth: AddSize.size20 * 2.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
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
            padding: const EdgeInsets.only(right: 15),
            child: Icon(Icons.search,color: Colors.black,),
          )
        ],

      ),
      body:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              addHeight(5),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  "My Bag",
                  style: TextStyle(
                    fontWeight: FontWeight.w700, fontSize: 23, color: Color(0xff000000),),
                ),
              ),
              addHeight(10),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (BuildContext, index){
                    return Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      child: Stack(
                        children: [
                          Positioned(
                            right:10,
                           top:8,
                            child: Icon(Icons.more_vert,color: Colors.grey,)),
                          Positioned(
                            right:10,
                            bottom:20,
                            child:   Text(
                              "20\$",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16, color: Color(0xff222222),),
                            ),),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset("assets/images/cart.png",),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "T-Shirt",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15, color: Color(0xff222222),),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "color:",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14, color: Colors.grey,),
                                        ),
                                        Text(
                                          "Black",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 12, color: Colors.black,),
                                        ),
                                        addWidth(15),
                                        Text(
                                          "size:",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14, color: Colors.grey,),
                                        ),
                                        Text(
                                          "L",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 12, color: Colors.black,),
                                        ),
                                        //Icon(Icons.more_vert)
                                      ],
                                    ),
                                    addHeight(15),
                                    Row(
                                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                          onTap :(){
                                           decreaseCounter();
                                           },
                                          child: Container(
                                            padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(50),
                                              //shape: BoxShape.circle,
                                              color: Colors.white,
                                              //border: Border.all(color: Colors.grey),
                                              boxShadow: [
                                                BoxShadow(
                                                  //color:  Colors.white,
                                                  offset: const Offset(.1, .1,
                                                  ),
                                                 // blurRadius: 1.0,
                                                  //spreadRadius: 2.0,
                                                ),
                                              ],
                                            ),
                                            child: Image.asset("assets/images/m.png"),
                                          ),
                                        ),
                                        addWidth(10),
                                        Text(
                                          counter.toString(),
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15, color: Color(0xff222222),),
                                        ),
                                        addWidth(10),
                                        GestureDetector(
                                          onTap: (){
                                            increseCounter();
                                          },
                                          child: Container(
                                            padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(50),
                                              //shape: BoxShape.circle,
                                              color: Colors.white,
                                              //border: Border.all(color: Colors.grey),
                                              boxShadow: [
                                                BoxShadow(
                                                  //color:  Colors.white,
                                                  offset: const Offset(.1, .1,
                                                  ),
                                                 // blurRadius: 1.0,
                                                  //spreadRadius: 2.0,
                                                ),
                                              ],
                                            ),
                                            child: Image.asset("assets/images/p.png"),
                                          ),
                                        ),

                                      ],
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                        ],
                      ),
                    );
                  }),
              addHeight(20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey)
                  ),
                  child: TextFormField(

                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter your promo code",
                      hintStyle: TextStyle(color: Colors.black),
                     // border: InputBorder.none,
                    ),
                  ) ,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}