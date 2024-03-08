import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:
        Stack(
          children: [
            Positioned(
                top: 50,
                child: Container(
              child: Text(

                "helloo"
              ),
            )),
            Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50.0),
                        bottomRight: Radius.circular(50.0),
                      ),
                      child: Image.asset("assets/images/md.png"),
                    ),
                    SizedBox(height: 55,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                          Text("Jeans hey thhiss demo content from our side now and hwlllo ohow ohou",
                            style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.grey),),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Icon(Icons.local_offer,color: Colors.green,),
                              Expanded(
                                child: Text("Save 50% now",
                                  style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.grey),),
                              ),
                              Text("+ Add to cart",
                                style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18,color: Colors.yellow.withOpacity(0.95)),),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Text("Colors",
                            style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18,color: Colors.black),),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(50)
                                ),
                              ),
                              SizedBox(width: 5,),
                              Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(50)
                                ),
                              ),
                              SizedBox(width: 5,),
                              Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(50)
                                ),
                              ),
                              SizedBox(width: 5,),
                              Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(50)
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.yellow),
                                  borderRadius: BorderRadius.circular(50)
                                ),
                                child: Center(
                                  child: Text("M",
                                    style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15,color: Colors.black),),
                                ),
                              ),
                              SizedBox(width: 8,),
                              Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(50)
                                ),
                                child: Center(
                                  child: Text("L",
                                    style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15,color: Colors.black),),
                                ),
                              ),
                              SizedBox(width: 8,),
                              Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.blue),
                                    borderRadius: BorderRadius.circular(50)
                                ),
                                child: Center(
                                  child: Text("S",
                                    style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15,color: Colors.black),),
                                ),
                              ),
                              SizedBox(width: 8,),
                              Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.green),
                                    borderRadius: BorderRadius.circular(50)
                                ),
                                child: Center(
                                  child: Text("X",
                                    style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15,color: Colors.black),),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 30,),
                          Container(
                            height:45,
                            width: double.maxFinite,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.yellow,
                                  shape:  RoundedRectangleBorder(borderRadius:BorderRadius.circular(20))
                              ),
                              onPressed: (){},
                              child:  Text("Add to Cart",
                                style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15,color: Colors.white),),
                            ),
                          ),
                          SizedBox(height: 10,),
                        ],
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
