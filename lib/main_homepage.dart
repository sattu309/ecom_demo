import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecom_demo/add_text.dart';
import 'package:ecom_demo/product_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'drawer.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  int currentIndex = 0;
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade50,

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Stack(
             children: [

               Image.asset("assets/images/banner.png",width: width,),
               Positioned(
                 top: 140,
                 left: 20,
                 child: Text("Street clothes",
                   style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23,color: Colors.white),), ),
             ],
           ),

            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Text("Category",
            //         style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.black),),
            //       Text("View all",
            //         style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.grey),),
            //     ],
            //   ),
            // ),
            addHeight(20),
            Padding(
              padding: const EdgeInsets.only(left: 7,right: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Sale",
                    style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18,color: Color(0xff222222)),),
                  Text("view all",
                    style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.grey),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 7),
              child:
              Text("super summer sale",
                style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13,color: Colors.grey),),
            ),
            addHeight(7),
            SizedBox(
              height: 300,
              child: ListView.builder(

                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext, index){
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Container(
                          decoration: BoxDecoration(
                            //color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(12),
                          ),
                            child: Stack(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      children: [
                                        GestureDetector(
                                          onTap: (){
                                            Get.to(()=>ProductPage());
                                          },
                                          child: Container(
                                            //width: width * .5,
                                            height: height * .23,
                                           // padding: EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                               // color: Colors.grey.shade100,
                                                borderRadius: BorderRadius.circular(15),
                                              boxShadow: [
                                                BoxShadow(
                                                  color:  Colors.white,
                                                  offset: const Offset(.2, .2,
                                                  ),
                                                  blurRadius: 20.0,
                                                  spreadRadius: 1.0,
                                                ),
                                              ],
                                            ),
                                            child:
                                            // CachedNetworkImage(
                                            //   imageUrl: widget.products.image.toString(),
                                            //   errorWidget: (_, __, ___) => const SizedBox(),
                                            //   placeholder: (_, __) => const SizedBox(),
                                            //   fit: BoxFit.contain,
                                            //   height: 80,
                                            // ),
                                            Image.asset("assets/images/photo.png",),
                                          ),
                                        ),
                                        Positioned(
                                            top:10,
                                            left:7,
                                            child: Container(
                                          padding: EdgeInsets.symmetric(horizontal: 8,vertical: 5),
                                          decoration: BoxDecoration(
                                            color: Color(0xffDB3022),
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          child:
                                          Text("-20%",
                                            style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.white),),
                                        )),

                                      ],
                                    ),
                                    addHeight(4),
                                    const Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Color(0xffFFAB07),
                                          size: 22,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xffFFAB07),
                                          size: 22,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xffFFAB07),
                                          size: 22,
                                        ),
                                        Text(
                                          "(10)",
                                          style: TextStyle(
                                              fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff0F0300)),
                                        ),
                                      ],
                                    ),
                                    addHeight(4),
                                    const Text("Doroty pumkin",
                                      style: TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.grey),),
                                    addHeight(4),
                                    const Text("Party Wear",
                                      style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Color(0xff222222)),),
                                    addHeight(4),
                                     Row(
                                      children: [

                                        Text(
                                          "15\$",
                                          style: TextStyle(
                                              decoration: TextDecoration.lineThrough,
                                              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey),
                                        ),
                                        addWidth(2),
                                        Text(
                                          "12\$",
                                          style: TextStyle(
                                              fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xffDB3022),),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),
                                Positioned(
                                    bottom: 90,
                                    right:3,
                                    child:
                                    Container(
                                        padding: EdgeInsets.symmetric(horizontal: 7,vertical: 7),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(20),
                                          boxShadow: [
                                            BoxShadow(
                                              color:  Colors.white.withOpacity(0.10),
                                              offset: const Offset(.4, .4,
                                              ),
                                              blurRadius: 40.0,
                                              spreadRadius: 2.0,
                                            ),
                                          ],
                                        ),
                                        child:
                                        Icon(Icons.favorite_border_rounded)
                                    ))
                              ],
                            ),
                          )

                        ],
                      ),
                    );
                  }),
            ),

            addHeight(20),
            Padding(
              padding: const EdgeInsets.only(left: 7,right: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("New",
                    style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18,color: Color(0xff222222)),),
                  Text("view all",
                    style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.grey),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 7),
              child: Text("You have never seen it before",
                style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13,color: Colors.grey),),
            ),
            addHeight(7),
            SizedBox(
              height: 300,
              child: ListView.builder(

                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext, index){
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              //color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Stack(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          //width: width * .5,
                                          height: height * .23,
                                          // padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            // color: Colors.grey.shade100,
                                            borderRadius: BorderRadius.circular(15),
                                            boxShadow: [
                                              BoxShadow(
                                                color:  Colors.white,
                                                offset: const Offset(.2, .2,
                                                ),
                                                blurRadius: 20.0,
                                                spreadRadius: 1.0,
                                              ),
                                            ],
                                          ),
                                          child:
                                          // CachedNetworkImage(
                                          //   imageUrl: widget.products.image.toString(),
                                          //   errorWidget: (_, __, ___) => const SizedBox(),
                                          //   placeholder: (_, __) => const SizedBox(),
                                          //   fit: BoxFit.contain,
                                          //   height: 80,
                                          // ),
                                          Image.asset("assets/images/ph.png",),
                                        ),
                                        Positioned(
                                            top:10,
                                            left:7,
                                            child: Container(
                                              padding: EdgeInsets.symmetric(horizontal: 8,vertical: 5),
                                              decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius: BorderRadius.circular(20),
                                              ),
                                              child:
                                              Text("NEW",
                                                style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Colors.white),),
                                            )),

                                      ],
                                    ),
                                    addHeight(4),
                                    const Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Color(0xffFFAB07),
                                          size: 22,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xffFFAB07),
                                          size: 22,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xffFFAB07),
                                          size: 22,
                                        ),
                                        Text(
                                          "(10)",
                                          style: TextStyle(
                                              fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff0F0300)),
                                        ),
                                      ],
                                    ),
                                    addHeight(4),
                                    const Text("Doroty pumkin",
                                      style: TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.grey),),
                                    addHeight(4),
                                    const Text("Party Wear",
                                      style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Color(0xff222222)),),
                                    addHeight(4),
                                    Row(
                                      children: [

                                        Text(
                                          "15\$",
                                          style: TextStyle(
                                              decoration: TextDecoration.lineThrough,
                                              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey),
                                        ),
                                        addWidth(2),
                                        Text(
                                          "12\$",
                                          style: TextStyle(
                                            fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xffDB3022),),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),
                                Positioned(
                                    bottom: 90,
                                    right:3,
                                    child: Container(
                                        padding: EdgeInsets.symmetric(horizontal: 7,vertical: 7),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(20),
                                          boxShadow: [
                                            BoxShadow(
                                              color:  Colors.white.withOpacity(0.10),
                                              offset: const Offset(.4, .4,
                                              ),
                                              blurRadius: 40.0,
                                              spreadRadius: 2.0,
                                            ),
                                          ],
                                        ),
                                        child:
                                        Icon(Icons.favorite_border_rounded)
                                    ))
                              ],
                            ),
                          )

                        ],
                      ),
                    );
                  }),
            ),




          ],
        ),
      ),
    );
  }
}
