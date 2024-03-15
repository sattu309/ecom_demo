
import 'package:ecom_demo/add_text.dart';
import 'package:ecom_demo/common_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dimension.dart';


class CategoryAllProduct extends StatefulWidget {
  const CategoryAllProduct({Key? key}) : super(key: key);
  static var referAndEarnScreen = "/referAndEarnScreen";

  @override
  State<CategoryAllProduct> createState() => _CategoryAllProductState();
}

class _CategoryAllProductState extends State<CategoryAllProduct> {

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
        toolbarHeight: 170,
        elevation: 0,
        leadingWidth: AddSize.size20 * 2.0,
        backgroundColor: Colors.white,
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
            padding: const EdgeInsets.only(right: 8),
            child: Icon(Icons.search,color: Colors.black,),
          )
        ],
        flexibleSpace: FlexibleSpaceBar(

          title:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisSize: MainAxisSize.min,
            children: [
            Text(
            "Tops",
            style: TextStyle(color: Color(0xFF222222), fontSize: 15),
          ),
            Text(
            "Tops",
            style: TextStyle(color: Color(0xFF222222), fontSize: 15),
          ),
            Text(
            "Tops",
            style: TextStyle(color: Color(0xFF222222), fontSize: 15),
          ),
            ],
          ),
        ),

      ),
      body: Column(
       children: [

       ],
      ),
    );
  }
}