import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecom_demo/add_text.dart';
import 'package:ecom_demo/common_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'cart_screen.dart';
import 'dimension.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {

  String dropdownvalue = 'Today';
  var items = [
    'Today',
    'This Week',
    'This Month',
    'Last Year',
  ];
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
        title: Text(
          "Short dress",
          style: TextStyle(
            fontWeight: FontWeight.w700, fontSize: 20, color: Color(0xff303D48),),
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
            child: Icon(Icons.share,color: Colors.black,),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // addHeight(10),
              // CarouselSlider(
              //   options: CarouselOptions(
              //       viewportFraction: 1,
              //       autoPlay: true,
              //       onPageChanged: (value, _) {
              //         // sliderIndex.value = value.toDouble();
              //       },
              //       autoPlayCurve: Curves.ease,
              //     // height: height * .20
              //   ),
              //   items: List.generate(
              //       20,
              //           (index) =>
              //           Container(
              //             width: width,
              //             margin: EdgeInsets.symmetric(horizontal: width * .05),
              //             decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(10),),
              //             child: Image.asset("assets/images/slider.png",fit: BoxFit.contain,),
              //           )),
              // ),
              CarouselSlider(
                options: CarouselOptions(
                    viewportFraction: 1,
                    autoPlay: true,
                    onPageChanged: (value, _) {
                      // sliderIndex.value = value.toDouble();
                    },
                    autoPlayCurve: Curves.ease,
                    height: height * .20
                ),
                items: List.generate(
                    5,
                        (index) =>
                        Container(
                          width: width,
                         // margin: EdgeInsets.symmetric(horizontal: width * .01),
                          decoration: BoxDecoration(
                            //borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset("assets/images/offer.png",),
                        )),
              ),
              addHeight(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8,horizontal: 25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black12)
                    ),
                    child:
                    GestureDetector(
                      onTap: (){
                        showChangeAddressSheet();
                      },
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Size",
                            style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15,color: Colors.black),),
                          addWidth(30),

                          Icon(Icons.arrow_drop_down_sharp,color: Colors.black,)
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8,horizontal: 25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black12)
                    ),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Black",
                          style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15,color: Colors.black),),
                        addWidth(30),

                        Icon(Icons.arrow_drop_down_sharp,color: Colors.black,),

                      ],
                    ),
                  ),
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
                  )
                ],
              ),
              addHeight(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("H&M",
                    style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22,color: Color(0xff222222)),),
                  Text("\$19.99",
                    style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22,color: Color(0xff222222),),
                  )],
              ),
              Text("short black dress",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,color: Color(0xff9B9B9B)),),
              addHeight(5),
              SizedBox(
                height: 50,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal, // This enables horizontal scrolling
                  children: List.generate(5, (index) {
                    return Row(
                      children: [
                        Icon(Icons.star, color: Color(0xffFFAB07),),
                      ],
                    );
                  }),
                ),
              ),
              Text("short black dress these content from our side to show the closthe over here so you can choose with as you",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,color: Color(0xff9B9B9B)),),
              addHeight(20),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: CommonButtonGreen(title: "Add to cart",
                onPressed: (){
                  Get.to(CartScreen());

                },
                ),
              ),
              addHeight(20),
              const Divider(
                height: 1,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text(
                      "Shopping info",
                      style: TextStyle(color: const Color(0xFF4F535E), fontSize: 15),
                    ),
                    // const SizedBox(
                    //   width: 25,
                    // ),
                    Icon(
                      Icons.arrow_forward_ios,size: 15,
                      color: Color(0xFF4F535E),
                    ),


                  ],
                ),
              ),
              const Divider(
                height: 1,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text(
                      "Support",
                      style: TextStyle(color: const Color(0xFF4F535E), fontSize: 15),
                    ),
                    // const SizedBox(
                    //   width: 25,
                    // ),
                    Icon(
                      Icons.arrow_forward_ios,size: 15,
                      color: Color(0xFF4F535E),
                    ),


                  ],
                ),
              ),
              const Divider(
                height: 1,
              ),
              addHeight(25),
              Padding(
                padding: const EdgeInsets.only(left: 7,right: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("You can also like this",
                      style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Color(0xff222222)),),
                    Text("12 items",
                      style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.grey),),
                  ],
                ),
              ),
              addHeight(5),
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
              addHeight(5),


            ],
          ),
        ),
      ),
    );
  }

showChangeAddressSheet() {

  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      enableDrag: false,
      isDismissible: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
      builder: (context) {
        return WillPopScope(
          onWillPop: () async {
            return false;
          },
          child:
              Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Container(
                  width: double.maxFinite,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    topLeft: Radius.circular(20))),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      addHeight(15),
                      GestureDetector(
                        onTap: (){
                          Get.back();
                        },
                        child: Text("Select size",
                          style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Color(0xff222222)),),
                      ),
                      SizedBox(
                        height: 100,
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal, // This enables horizontal scrolling
                          children: List.generate(10, (index) {
                            return Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(10),
                                  padding: EdgeInsets.symmetric(vertical: 7,horizontal: 30),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.black12),
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Text("S",
                                    style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.black),),
                                ),
                              ],
                            );
                          }),
                        ),
                      ),
                      addHeight(20),
                      const Divider(
                        height: 1,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Text(
                              "Size info",
                              style: TextStyle(color: const Color(0xFF4F535E), fontSize: 15),
                            ),
                            // const SizedBox(
                            //   width: 25,
                            // ),
                            Icon(
                              Icons.arrow_forward_ios,size: 15,
                              color: Color(0xFF4F535E),
                            ),


                          ],
                        ),
                      ),
                      const Divider(
                        height: 1,
                      ),
                      addHeight(40),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: CommonButtonGreen(title: "Add to cart",
                          onPressed: (){
                           // showChangeAddressSheet();
                          },
                        ),
                      ),
                    ],
                  ),
                )),
        );
      });
}
}
