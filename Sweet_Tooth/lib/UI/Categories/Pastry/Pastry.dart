import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../Cart/Cart.dart';
import '../Chocolates/DartChocolates/Dark1.dart';
import '../Chocolates/DartChocolates/Dark10.dart';
import '../Chocolates/DartChocolates/Dark11.dart';
import '../Chocolates/DartChocolates/Dark12.dart';
import '../Chocolates/DartChocolates/Dark2.dart';
import '../Chocolates/DartChocolates/Dark3.dart';
import '../Chocolates/DartChocolates/Dark4.dart';
import '../Chocolates/DartChocolates/Dark5.dart';
import '../Chocolates/DartChocolates/Dark6.dart';
import '../Chocolates/DartChocolates/Dark7.dart';
import '../Chocolates/DartChocolates/Dark8.dart';
import '../Chocolates/DartChocolates/Dark9.dart';

class Pastry extends StatefulWidget {
  const Pastry({super.key});

  @override
  State<Pastry> createState() => _PastryState();
}

class _PastryState extends State<Pastry> {
  int _itemCount = 0;
  List imgList = [
    "assets/images/DarkChocolates/Dark_1.jpg",
    "assets/images/DarkChocolates/Dark_2.jpg",
    "assets/images/DarkChocolates/Dark_3.jpg",
    "assets/images/DarkChocolates/Dark_4.jpg",
    "assets/images/DarkChocolates/Dark_5.jpg",
    "assets/images/DarkChocolates/Dark_6.jpg",
    "assets/images/DarkChocolates/Dark_7.jpg",
    "assets/images/DarkChocolates/Dark_8.jpg",
    "assets/images/DarkChocolates/Dark_9.jpg",
    "assets/images/DarkChocolates/Dark_10.jpg",
    "assets/images/DarkChocolates/Dark_11.jpg",
    "assets/images/DarkChocolates/Dark_12.jpg",
  ];

  List<String> Categories = ["Raisin Cluster","Blueberry","Liquid caramel","Graham cracker","Chewy Caramel","Vanila Cream",
    "Peppermint Cream","Cherry Cream","Cashew cluster","Solid square","Peanut Daintie","Butter Cream"];

  List<String> Tagline = ["Milk chocolate covered raisins"," Chocolate-covered blueberries are perfect for y'all who are starting on a new diet",
    "Rich Dark Chocolate with liquid caramel melts instantaneously giving a magical experience",
    "When you're in need of crunchy chocolate yumminess","Soft buttery caramels are dipped in melted chocolate and topped with a little salt for the perfect treat.",
    "Sweeter vanilla creams that satisfy even the pickiest of sweet tooths",
    " Delicious thin chocolates filled with a creamy, peppermint filling",
    "Dark Chocolate Cherry Creams have a soft and creamy cherry center, and are also covered in gourmet dark chocolate.",
    "Cashews are tossed in melted chocolate almond bark & a dash of salt, then decorated with holiday sprinkles!",
    "Made with the finest quality cocoa beans and expertly crafted by our skilled chocolatiers"
    ,"These clusters contain salted roasted extra large peanuts covered in premium chocolate. ","Incredibly rich, creamy, silky, smooth"];



  List<String> Price = ["100","300","700","900","500","320","750","450","600","1500","300","250"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()),);
          }, icon: Icon(Icons.shopping_cart))
        ],
        backgroundColor: Colors.transparent,
        title: Text("Cake Factory",
          textAlign: TextAlign.center,
          style: TextStyle(
              letterSpacing: 4
          ),),
      ),
      body: Container(
        child: Container(
          child: ListView.builder(
              physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              itemCount: imgList.length,
              itemBuilder: (BuildContext context, int index) {
                return AnimationConfiguration.staggeredList(
                  position: index,
                  delay: Duration(milliseconds: 100),
                  child: SlideAnimation(
                    duration: Duration(milliseconds: 2500),
                    curve: Curves.fastLinearToSlowEaseIn,
                    verticalOffset: -250,
                    child: ScaleAnimation(
                      duration: Duration(milliseconds: 4000),
                      curve: Curves.fastLinearToSlowEaseIn,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Row(
                            children: [
                              GestureDetector(
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(imgList[index]),
                                  radius: 35,
                                ),
                                onTap: (){
                                  if (index==0) {Navigator.push(context, MaterialPageRoute(builder: (context) => Dark1()),);}
                                  else if (index==1) {Navigator.push(context, MaterialPageRoute(builder: (context) => Dark2()),);}
                                  else if (index==2) {Navigator.push(context, MaterialPageRoute(builder: (context) => Dark3()),);}
                                  else if (index==3) {Navigator.push(context, MaterialPageRoute(builder: (context) => Dark4()),);}
                                  else if (index==4) {Navigator.push(context, MaterialPageRoute(builder: (context) => Dark5()),);}
                                  else if (index==5) {Navigator.push(context, MaterialPageRoute(builder: (context) => Dark6()),);}
                                  else if (index==6) {Navigator.push(context, MaterialPageRoute(builder: (context) => Dark7()),);}
                                  else if (index==7) {Navigator.push(context, MaterialPageRoute(builder: (context) => Dark8()),);}
                                  else if (index==8) {Navigator.push(context, MaterialPageRoute(builder: (context) => Dark9()),);}
                                  else if (index==9) {Navigator.push(context, MaterialPageRoute(builder: (context) => Dark10()),);}
                                  else if (index==10) {Navigator.push(context, MaterialPageRoute(builder: (context) => Dark11()),);}
                                  else if (index==11) {Navigator.push(context, MaterialPageRoute(builder: (context) => Dark12()),);}
                                },
                              ),
                              Container(
                                width: 270,
                                height: 120,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        topLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                        topRight: Radius.circular(20)),),
                                  color: Colors.brown.shade100,
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(30,10,10,5),
                                          child: Text(Categories[index],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),),
                                        ),
                                        Text(Tagline[index],
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.brown
                                          ),),

                                        Padding(
                                          padding: EdgeInsets.fromLTRB(175,10,10,10),
                                          child: Card(
                                            child: Padding(
                                              padding: EdgeInsets.all(4),
                                              child: Row(
                                                children: [
                                                  Text("Rs "),
                                                  SizedBox(width: 5),
                                                  Text(Price[index],
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 15
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            color: Colors.brown.shade600,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(1),
                                    decoration: BoxDecoration(
                                        color: Colors.brown,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    child: InkWell(
                                      onTap: (){
                                        setState(() {
                                          _itemCount++;
                                        });
                                      },
                                      child: Icon(
                                        Icons.add,color: Colors.white54,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Container(
                                      padding: EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                          color: Colors.brown,
                                          borderRadius: BorderRadius.circular(20)
                                      ),
                                      child: Text("$_itemCount")
                                  ),
                                  SizedBox(height: 5),

                                  Container(
                                    padding: EdgeInsets.all(1),
                                    decoration: BoxDecoration(
                                        color: Colors.brown,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    child: InkWell(
                                      onTap: (){
                                        setState(() {
                                          _itemCount--;
                                        });
                                      },
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.white54,
                                      ),
                                    ),
                                  ),
                                ],
                              ),


                            ],
                          ),

                        ),
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
