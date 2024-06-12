import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:sweet_tooth/services/list_manager.dart';
import '../../../Cart/Cart.dart';
import 'Dark1.dart';
import 'Dark10.dart';
import 'Dark11.dart';
import 'Dark12.dart';
import 'Dark2.dart';
import 'Dark3.dart';
import 'Dark4.dart';
import 'Dark5.dart';
import 'Dark6.dart';
import 'Dark7.dart';
import 'Dark8.dart';
import 'Dark9.dart';


class DarkChocolates extends StatefulWidget {
  const DarkChocolates({super.key});

  @override
  State<DarkChocolates> createState() => _DarkChocolatesState();
}

class _DarkChocolatesState extends State<DarkChocolates> {
 // int _itemCount = 0;
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
              itemCount: ListManager.imgList.length,
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
                                  backgroundImage: AssetImage(ListManager.imgList[index]),
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
                                          child: Text(ListManager.Categories[index],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),),
                                        ),
                                        Text(ListManager.Tagline[index],
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
                                                    const SizedBox(width: 5),
                                                    Text(
                                                        calculatePrice(index).toString()
                                                      //_Price[index].toString(),
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
                                          //_itemCount++;
                                          itemCounts[index]++;
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
                                    child: Text(
                                       // "$_itemCount"
                                      itemCounts[index].toString(),
                                    )
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
                                          //_itemCount--;
                                          if (itemCounts[index] > 0) {
                                            itemCounts[index]--;
                                          }
                                        });
                                      },
                                      child: const Icon(
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


List<int> Price = [100,300,700,900,500,320,750,450,600,1500,300,250];

List<int> itemCounts = List.filled(12, 0);

int calculatePrice(int index) {
  // Calculate the adjusted price by multiplying the base price with the item count
  return Price[index] * itemCounts[index];
}


int calculateTotalAmount(List<int> itemCounts, List<int> Price) {
  int totalAmount = 0;
  for (int i = 0; i < itemCounts.length; i++) {
    totalAmount += itemCounts[i] * Price[i];
  }
  return totalAmount;
}

