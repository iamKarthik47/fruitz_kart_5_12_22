import 'package:flutter/material.dart';
import '../Detail_page/Apple_page/firstscreen.dart';
import '../Detail_page/Banana_page/firstscreen.dart';
import '../Detail_page/Blueberry_page/firstscreen.dart';
import '../Detail_page/Cherry_page/firstscreen.dart';
import '../Detail_page/Grapes_page/firstscreen.dart';
import '../Detail_page/Kiwi_page/firstscreen.dart';
import '../Detail_page/Mango_page/firstscreen.dart';
import '../Detail_page/Orange_page/firstscreen.dart';
import '../Detail_page/Pear_Screen/firstscreen.dart';
import '../Detail_page/Strawberry_page/firstscreen.dart';
import 'allFruits.dart';
import 'fruits.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // Future<List<Fruits>> getFruits() async{
  //   var fruitList=<Fruits>[];
  //
  //   var f1=Fruits(1,"Fruit", "Apple", "assets/images/fruits/apple.png", 15.00);
  //   var f2=Fruits(2,"Fruit", "Banana", "assets/images/fruits/banana.png", 23.00);
  //   var f3=Fruits(3,"Fruit", "BlueBerry", "assets/images/fruits/blueberry.png", 24.99);
  //   var f4=Fruits(4,"Fruit", "Cherry", "assets/images/fruits/cherry.png", 9.99);
  //   var f5=Fruits(5,"Fruit", "Grapes", "asssets/images/fruits/grapes.png", 20.00);
  //   var f6=Fruits(6,"Fruit", "Kiwi", "assets/images/fruits/kiwi.png", 44.99);
  //   var f7=Fruits(7,"Fruit", "Mandarin", "assets/images/fruits/mandarin.png", 36.50);
  //   var f8=Fruits(8,"Fruit", "Orange", "assets/images/fruits/orange.png", 30.25);
  //   var f9=Fruits(9,"Fruit", "Pear", "assets/images/fruits/pear.png", 28.75);
  //   var f10=Fruits(10,"Fruit", "Strawberry", "assets/images/fruits/strawberry.png", 43.99);
  //
  //   fruitList.add(f1);
  //   fruitList.add(f2);
  //   fruitList.add(f3);
  //   fruitList.add(f4);
  //   fruitList.add(f5);
  //   fruitList.add(f6);
  //   fruitList.add(f7);
  //   fruitList.add(f8);
  //   fruitList.add(f9);
  //   fruitList.add(f10);
  //
  //   return fruitList;
  //
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/fruits/backg2.jpg'),fit: BoxFit.fill)),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 5.0,left: 20.0,right: 20.0,bottom: 180),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.menu,size: 30.0,color: Colors.white,),
                    tooltip: "Menu",
                    onPressed: (){

                    },
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon:const Icon(Icons.shopping_bag_outlined,color: Colors.white),
                        tooltip: "Cart",
                        onPressed: (){
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0,),
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: Card(
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Colors.greenAccent,
                            child: Image.asset("assets/images/vegetablesFruit.jpg",fit: BoxFit.fill,),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),

                ],
              ),
            ),
          ),

          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 90.0,left: 20.0,right: 20.0),
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 230,
                    child: Card(
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: Colors.transparent,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0))
                      ),
                      child: Image.asset("assets/images/vegetablesFruit.jpg",fit: BoxFit.fill),
                    ),
                  ),
                  Divider(height: 100,color: Colors.pinkAccent,indent: 0,)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0,left: 30.0,right: 20.0,bottom: 120),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Fruits",
                    style:TextStyle(
                        color: Colors.white,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w700,
                        fontSize: 20.0
                    ),
                  ),
                  // TextButton(
                  //   onPressed:(){
                  //     Navigator.push(context, MaterialPageRoute(builder: (context)=>const AllFruits()));
                  //   },
                  //   child: Row(
                  //     mainAxisSize: MainAxisSize.min,
                  //     children: const [
                  //       Text("View All",
                  //         style: TextStyle(
                  //             color: Colors.cyan,
                  //             fontFamily: "Inter",
                  //             fontWeight: FontWeight.normal
                  //         ),
                  //       ),
                  //       SizedBox(
                  //         width: 5,
                  //       ),
                  //       Icon(Icons.arrow_forward,color: Color(0xFFF1C950),),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 380.0,left: 20.0,right: 20.0),
              child: ListView(
                children: [Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          child: SizedBox(
                            width: 175,
                            height: 300,
                            child: Card(
                              color: const Color(0xFFF6546A),
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0),topRight: Radius.circular(75.0),bottomLeft: Radius.circular(30.0),bottomRight: Radius.circular(30.0))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 25.0),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width:110,
                                      height: 110,
                                      child: Image.asset("assets/images/fruits/apple.png"),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 20.0,left: 15.0),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Fruit",
                                          style:TextStyle(
                                            color: Color(0xFFF1C950),
                                            fontFamily: "Inter",
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal,
                                            letterSpacing: 5.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 10.0,left: 15.0),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Apple",
                                          style:TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontFamily: "Inter",
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15.0,left: 15.0),
                                      child: Row(
                                        children: const [
                                          Text("\₹15.0",
                                            style: TextStyle(
                                                color: Color(0xFFF1C950),
                                                fontSize: 20,
                                                fontFamily: "Inter",
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 5.0),
                                            child: Text("per Kg",style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey
                                            ),),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          behavior: HitTestBehavior.opaque,
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => AppleScreen(),));},
                        ),



                        GestureDetector(
                          child: SizedBox(
                            width: 175,
                            height: 300,
                            child: Card(
                              color: const Color(0xFFFFEB3B),
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0),topRight: Radius.circular(75.0),bottomLeft: Radius.circular(30.0),bottomRight: Radius.circular(30.0))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 25.0),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width:110,
                                      height: 110,
                                      child: Image.asset("assets/images/fruits/banana.png"),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 20.0,left: 15.0),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Fruit",
                                          style:TextStyle(
                                            color: Color(0xFFF1C950),
                                            fontFamily: "Inter",
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal,
                                            letterSpacing: 5.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 10.0,left: 15.0),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Banana",
                                          style:TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontFamily: "Inter",
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15.0,left: 15.0),
                                      child: Row(
                                        children: const [
                                          Text("\₹23.0",
                                            style: TextStyle(
                                                color: Color(0xFFF1C950),
                                                fontSize: 20,
                                                fontFamily: "Inter",
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 5.0),
                                            child: Text("per Kg",style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey
                                            ),),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          behavior: HitTestBehavior.opaque,
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => FirstScreen2(),));},
                        )

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          child: SizedBox(
                            width: 175,
                            height: 300,
                            child: Card(
                              color: const Color(0xFF76b5c3),
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0),topRight: Radius.circular(75.0),bottomLeft: Radius.circular(30.0),bottomRight: Radius.circular(30.0))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 25.0),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width:110,
                                      height: 110,
                                      child: Image.asset("assets/images/fruits/grapes.png"),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 20.0,left: 15.0),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Fruit",
                                          style:TextStyle(
                                            color: Color(0xFFF1C950),
                                            fontFamily: "Inter",
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal,
                                            letterSpacing: 5.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 10.0,left: 15.0),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Grapes",
                                          style:TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontFamily: "Inter",
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15.0,left: 15.0),
                                      child: Row(
                                        children: const [
                                          Text("\₹15.0",
                                            style: TextStyle(
                                                color: Color(0xFFF1C950),
                                                fontSize: 20,
                                                fontFamily: "Inter",
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 5.0),
                                            child: Text("per Kg",style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey
                                            ),),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          behavior: HitTestBehavior.opaque,
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => FirstScreen3(),));},
                        ),



                        GestureDetector(
                          child: SizedBox(
                            width: 175,
                            height: 300,
                            child: Card(
                              color: const Color(0xFF8dc576),
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0),topRight: Radius.circular(75.0),bottomLeft: Radius.circular(30.0),bottomRight: Radius.circular(30.0))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 25.0),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width:110,
                                      height: 110,
                                      child: Image.asset("assets/images/fruits/kiwi.png"),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 20.0,left: 15.0),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Fruit",
                                          style:TextStyle(
                                            color: Color(0xFFF1C950),
                                            fontFamily: "Inter",
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal,
                                            letterSpacing: 5.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 10.0,left: 15.0),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Kiwi",
                                          style:TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontFamily: "Inter",
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15.0,left: 15.0),
                                      child: Row(
                                        children: const [
                                          Text("\₹23.0",
                                            style: TextStyle(

                                                color: Color(0xFFF1C950),
                                                fontSize: 20,
                                                fontFamily: "Inter",
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 5.0),
                                            child: Text("per Kg",style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey
                                            ),),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          behavior: HitTestBehavior.opaque,
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => FirstScreen4(),));},
                        )

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          child: SizedBox(
                            width: 175,
                            height: 300,
                            child: Card(
                              color: const Color(0xFF76b5c3),
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0),topRight: Radius.circular(75.0),bottomLeft: Radius.circular(30.0),bottomRight: Radius.circular(30.0))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 25.0),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width:110,
                                      height: 110,
                                      child: Image.asset("assets/images/fruits/blueberry.png"),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 20.0,left: 15.0),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Fruit",
                                          style:TextStyle(
                                            color: Color(0xFFF1C950),
                                            fontFamily: "Inter",
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal,
                                            letterSpacing: 5.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 10.0,left: 15.0),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Blueberry",
                                          style:TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontFamily: "Inter",
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15.0,left: 15.0),
                                      child: Row(
                                        children: const [
                                          Text("\₹15.0",
                                            style: TextStyle(
                                                color: Color(0xFFF1C950),
                                                fontSize: 20,
                                                fontFamily: "Inter",
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 5.0),
                                            child: Text("per Kg",style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey
                                            ),),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          behavior: HitTestBehavior.opaque,
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => FirstScreen5(),));},
                        ),



                        GestureDetector(
                          child: SizedBox(
                            width: 175,
                            height: 300,
                            child: Card(
                              color: const Color(0xFFECB62C),
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0),topRight: Radius.circular(75.0),bottomLeft: Radius.circular(30.0),bottomRight: Radius.circular(30.0))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 25.0),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width:110,
                                      height: 110,
                                      child: Image.asset("assets/images/fruits/orange.png"),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 20.0,left: 15.0),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Fruit",
                                          style:TextStyle(
                                            color: Color(0xFFF1C950),
                                            fontFamily: "Inter",
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal,
                                            letterSpacing: 5.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 10.0,left: 15.0),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Orange",
                                          style:TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontFamily: "Inter",
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15.0,left: 15.0),
                                      child: Row(
                                        children: const [
                                          Text("\₹23.0",
                                            style: TextStyle(
                                                color: Color(0xFFF1C950),
                                                fontSize: 20,
                                                fontFamily: "Inter",
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 5.0),
                                            child: Text("per Kg",style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey
                                            ),),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          behavior: HitTestBehavior.opaque,
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => FirstScreen6(),));},
                        )

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          child: SizedBox(
                            width: 175,
                            height: 300,
                            child: Card(
                              color: const Color(0xFFEC2C7B),
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0),topRight: Radius.circular(75.0),bottomLeft: Radius.circular(30.0),bottomRight: Radius.circular(30.0))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 25.0),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width:110,
                                      height: 110,
                                      child: Image.asset("assets/images/fruits/cherry.png"),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 20.0,left: 15.0),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Fruit",
                                          style:TextStyle(
                                            color: Color(0xFFF1C950),
                                            fontFamily: "Inter",
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal,
                                            letterSpacing: 5.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 10.0,left: 15.0),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Cherry",
                                          style:TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontFamily: "Inter",
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15.0,left: 15.0),
                                      child: Row(
                                        children: const [
                                          Text("\₹15.0",
                                            style: TextStyle(
                                                color: Color(0xFFF1C950),
                                                fontSize: 20,
                                                fontFamily: "Inter",
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 5.0),
                                            child: Text("per Kg",style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey
                                            ),),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          behavior: HitTestBehavior.opaque,
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => FirstScreen7(),));},
                        ),



                        GestureDetector(
                          child: SizedBox(
                            width: 175,
                            height: 300,
                            child: Card(
                              color: const Color(0xFFD6EC2C),
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0),topRight: Radius.circular(75.0),bottomLeft: Radius.circular(30.0),bottomRight: Radius.circular(30.0))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 25.0),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width:110,
                                      height: 110,
                                      child: Image.asset("assets/images/fruits/mandarin.png"),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 20.0,left: 15.0),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Fruit",
                                          style:TextStyle(
                                            color: Color(0xFFF1C950),
                                            fontFamily: "Inter",
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal,
                                            letterSpacing: 5.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 10.0,left: 15.0),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Mandarin",
                                          style:TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontFamily: "Inter",
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15.0,left: 15.0),
                                      child: Row(
                                        children: const [
                                          Text("\₹23.0",
                                            style: TextStyle(
                                                color: Color(0xFFF1C950),
                                                fontSize: 20,
                                                fontFamily: "Inter",
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 5.0),
                                            child: Text("per Kg",style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey
                                            ),),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          behavior: HitTestBehavior.opaque,
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => FirstScreen8(),));},
                        )

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          child: SizedBox(
                            width: 175,
                            height: 300,
                            child: Card(
                              color: const Color(0xFF21F417),
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0),topRight: Radius.circular(75.0),bottomLeft: Radius.circular(30.0),bottomRight: Radius.circular(30.0))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 25.0),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width:110,
                                      height: 110,
                                      child: Image.asset("assets/images/fruits/pear.png"),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 20.0,left: 15.0),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Fruit",
                                          style:TextStyle(
                                            color: Color(0xFFF1C950),
                                            fontFamily: "Inter",
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal,
                                            letterSpacing: 5.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 10.0,left: 15.0),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Pear",
                                          style:TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontFamily: "Inter",
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15.0,left: 15.0),
                                      child: Row(
                                        children: const [
                                          Text("\₹15.0",
                                            style: TextStyle(
                                                color: Color(0xFFF1C950),
                                                fontSize: 20,
                                                fontFamily: "Inter",
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 5.0),
                                            child: Text("per Kg",style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey
                                            ),),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          behavior: HitTestBehavior.opaque,
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => FirstScreen9(),));},
                        ),



                        GestureDetector(
                          child: SizedBox(
                            width: 175,
                            height: 300,
                            child: Card(
                              color: const Color(0xFFF41788),
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0),topRight: Radius.circular(75.0),bottomLeft: Radius.circular(30.0),bottomRight: Radius.circular(30.0))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 25.0),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width:110,
                                      height: 110,
                                      child: Image.asset("assets/images/fruits/strawberry.png"),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 20.0,left: 15.0),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Fruit",
                                          style:TextStyle(
                                            color: Color(0xFFF1C950),
                                            fontFamily: "Inter",
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal,
                                            letterSpacing: 5.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 10.0,left: 15.0),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Strawberry",
                                          style:TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontFamily: "Inter",
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15.0,left: 15.0),
                                      child: Row(
                                        children: const [
                                          Text("\₹23.0",
                                            style: TextStyle(
                                                color: Color(0xFFF1C950),
                                                fontSize: 20,
                                                fontFamily: "Inter",
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 5.0),
                                            child: Text("per Kg",style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey
                                            ),),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          behavior: HitTestBehavior.opaque,
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => FirstScreen10(),));},
                        )

                      ],
                    ),
                  ],
                ),
    ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
