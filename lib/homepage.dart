import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'drawer.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  int currentIndex = 0;
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(

      body: Column(
        children: [
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: SizedBox(
                      height: height * .05,
                      child: TextField(
                       // maxLines: 1,
                       // controller: homepageControllerMart.searchController,
                        style: const TextStyle(fontSize: 17),
                        textAlignVertical: TextAlignVertical.center,
                        textInputAction: TextInputAction.search,
                        onSubmitted: (value) {
                         // Get.toNamed(SearchScreenData.searchScreen);
                         // FocusManager.instance.primaryFocus!.unfocus();
                        },
                        decoration: InputDecoration(
                            filled: true,
                            prefixIcon: IconButton(
                              onPressed: () {
                                // Get.to(const SearchScreenData());
                                // FocusManager.instance.primaryFocus!.unfocus();
                                // Get.toNamed(MyRequestScreen.myRequestScreenOfMart);
                              },
                              icon: const Icon(
                                Icons.search_rounded,
                                color: Colors.grey,
                                size: 22,
                              ),
                            ),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(8))),
                            fillColor: Colors.white,
                            contentPadding:
                            EdgeInsets.symmetric(vertical: height * .02, horizontal: width * .03),
                            hintText: 'Search Your Products',
                            hintStyle: TextStyle(
                                fontSize: 14,
                                color: Color(0xff787777),
                                fontWeight: FontWeight.w500)),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Icon(Icons.format_align_justify,color: Colors.grey,),
                ),


              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: CarouselSlider(
              options: CarouselOptions(
                  viewportFraction: 1,
                  autoPlay: true,
                  onPageChanged: (value, _) {
                    // sliderIndex.value = value.toDouble();
                  },
                  autoPlayCurve: Curves.ease,
                  height: height * .20),
              items: List.generate(
                  5,
                      (index) =>
                          Container(
                    width: width,
                   margin: EdgeInsets.symmetric(horizontal: width * .01),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child:
                        // Image.asset("assets/images/slider.png" ,fit: BoxFit.cover,),
                        Image.asset("assets/images/offer.png",fit: BoxFit.cover,)

                    ),
                  )),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Category",
                  style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.black),),
                Text("View all",
                  style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.grey),),
              ],
            ),
          ),

         SizedBox(
           height: 120,
           child: ListView.builder(

             shrinkWrap: true,
             scrollDirection: Axis.horizontal,
               itemCount: 5,
               itemBuilder: (BuildContext, index){
             return GestureDetector(
               onTap: (){
                 currentIndex = index;
                 setState(() {

                 });
               },
               child: Padding(
                 padding: const EdgeInsets.all(5.0),
                 child: Row(
                   children: [
                     Container(
                         padding: EdgeInsets.symmetric(
                           horizontal: 10,
                           vertical: 14
                         ),
                         decoration: BoxDecoration(
                             color: Colors.white,
                             border: Border.all(color: currentIndex == index ? Colors.yellow: Colors.transparent),
                             borderRadius: BorderRadius.circular(10)),
                         child: Column(
                           // mainAxisAlignment: MainAxisAlignment.spaceAround,
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             SizedBox(
                               height: 60,
                               width: 60,
                               child:
                               ClipRRect(
                                 borderRadius: BorderRadius.circular(100),
                                 child: Image.asset("assets/images/md.png",fit: BoxFit.cover),
                               ),
                             ),
                             SizedBox(height: 3,),
                             Text("Jeans",
                               style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14,color: Colors.grey),),
                           ],
                         )),
                   ],
                 ),
               ),
             );
           }),
         ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Popular Item",
                  style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.black),),
                Text("see all",
                  style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.grey),),
              ],
            ),
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(

                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext, index){
                  return Row(
                    children: [
                      Container(
                        width: width* .45,
                        height: height* .20,
                        margin: EdgeInsets.symmetric(horizontal: width * .01),
                        decoration: BoxDecoration(
                          //color: Colors.white,
                            boxShadow: [BoxShadow(
                              color: Colors.white,
                              blurRadius: 1.0,
                            ),],
                         borderRadius: BorderRadius.circular(10),
                          ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child:
                            // Image.asset("assets/images/slider.png" ,fit: BoxFit.cover,),
                            Image.asset("assets/images/offers.png",fit: BoxFit.cover,)

                        ),
                      )
                    ],
                  );
                }),
          ),




        ],
      ),
    );
  }
}
