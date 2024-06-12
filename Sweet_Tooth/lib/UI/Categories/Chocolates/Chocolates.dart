import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:sweet_tooth/services/list_manager.dart';

import 'BrandedChocolates/BrandedChocolates.dart';
import 'ColorfulChocolates/ColorfulChocolates.dart';
import 'DartChocolates/DarkChocolates.dart';
import 'MilkChocolates/MilkChocolates.dart';
import 'WhiteChocolates/WhiteChocolates.dart';

class Chocolates extends StatefulWidget {
  const Chocolates({super.key});

  @override
  State<Chocolates> createState() => _ChocolatesState();
}

class _ChocolatesState extends State<Chocolates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Cake Factory",
          textAlign: TextAlign.center,
          style: TextStyle(
              letterSpacing: 4
          ),),
      ),
      body: Container(
        child: ListView.builder(
            physics:
            BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            itemCount: 4,
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
                      child: Container(
                        height: 200,
                        child: GestureDetector(
                          child: Card(
                            color: Colors.brown.shade100,
                            child: Center(child: Text(ListManager.newCategories[index],
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),)),
                          ),
                          onTap: (){
                            if (index==0) {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => DarkChocolates()),
                              );
                            }
                            else if (index==1) {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => MilkChocolates()),
                              );
                            }
                            else if (index==2) {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => ColorfulChocolates()),
                              );
                            }
                            else if (index==3) {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => WhiteChocolates()),
                              );
                            }
                            else{
                              Navigator.push(context,MaterialPageRoute(builder: (context) => BrandedChocolates()),
                              );
                            }
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
