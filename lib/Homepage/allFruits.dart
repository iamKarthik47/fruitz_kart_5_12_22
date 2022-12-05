import 'package:flutter/material.dart';
import 'fruits.dart';
import 'sellFruit.dart';

class AllFruits extends StatefulWidget {
  const AllFruits({Key? key}) : super(key: key);

  @override
  State<AllFruits> createState() => _AllFruitsState();
}

class _AllFruitsState extends State<AllFruits> {
  Future<List<Fruits>> getFruits() async{
    var fruitList=<Fruits>[];

    var f1=Fruits(1,"Fruit", "Apple", "assets/images/fruits/apple.png", 100.00);
    var f2=Fruits(2,"Fruit", "Banana", "assets/images/fruits/banana.png", 49.00);
    var f3=Fruits(3,"Fruit", "BlueBerry", "assets/images/fruits/blueberry.png", 180.99);
    var f4=Fruits(4,"Fruit", "Cherry", "assets/images/fruits/cherry.png", 58.99);
    var f5=Fruits(5,"Fruit", "Grapes", "assets/images/fruits/grapes.png", 50.00);
    var f6=Fruits(6,"Fruit", "Kiwi", "assets/images/fruits/kiwi.png", 90.99);
    var f7=Fruits(7,"Fruit", "Mandarin", "assets/images/fruits/mandarin.png", 130.50);
    var f8=Fruits(8,"Fruit", "Orange", "assets/images/fruits/orange.png", 70.25);
    var f9=Fruits(9,"Fruit", "Pear", "assets/images/fruits/pear.png", 49.75);
    var f10=Fruits(10,"Fruit", "Strawberry", "assets/images/fruits/strawberry.png", 200.99);

    fruitList.add(f1);
    fruitList.add(f2);
    fruitList.add(f3);
    fruitList.add(f4);
    fruitList.add(f5);
    fruitList.add(f6);
    fruitList.add(f7);
    fruitList.add(f8);
    fruitList.add(f9);
    fruitList.add(f10);

    return fruitList;

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF575bbb),
        title: const Text("All Fruits"),
      ),
      backgroundColor: const Color(0xFF57c1bb),
      body: FutureBuilder<List<Fruits>>(
        future: getFruits(),
        builder: (context,snapshot){
          if(snapshot.hasData){
            var fruitList=snapshot.data;
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2/3.7,
              ),
              itemCount: fruitList!.length,
              itemBuilder: (context,indeks){
                var fruit=fruitList[indeks];
                return Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Center(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SellFruit(fruit: fruit,)));
                      },
                      child: Card(
                        color: const Color(0xFF2C2C2C),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(100.0),
                              topRight: Radius.circular(100.0),
                              bottomLeft: Radius.circular(50.0),
                              bottomRight: Radius.circular(50.0)
                          )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 35.0),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 150,
                                  height: 150,
                                  child: Image.asset(fruit.imagesName)
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15.0,left: 15.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(fruit.category,
                                    style:const TextStyle(
                                        color: Color(0xFFF1C950),
                                        fontFamily: "Inter",
                                        fontSize: 20,
                                        fontWeight: FontWeight.normal,
                                      letterSpacing: 5.0,
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 5.0,left: 15.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(fruit.fruitName,
                                    style:const TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        fontFamily: "Inter",
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 10.0,left: 15.0),
                                child: Row(
                                  children: [
                                    Text("\₹${fruit.sale}",
                                      style: const TextStyle(
                                          color: Color(0xFFF1C950),
                                          fontSize: 30,
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.w700),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 5.0),
                                      child: Text("per Kg",style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey
                                      ),),
                                    )
                                  ],
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          }else{
            return const Center();
          }
        },
      ),
    );
  }
}
