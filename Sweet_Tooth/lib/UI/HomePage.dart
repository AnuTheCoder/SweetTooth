import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../Widget/NavDrawer.dart';
import '../services/list_manager.dart';
import 'Categories/Cakes/Cakes.dart';
import 'Categories/Chocolates/Chocolates.dart';
import 'Categories/CupCake/CupCakes.dart';
import 'Categories/Marblecake/MarbleCake.dart';
import 'Categories/Pastry/Pastry.dart';
import 'Notifications/Notifications.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Notifications()),);
          }, icon: Icon(Icons.notifications,color: Colors.brown,))
        ],
        backgroundColor: Colors.transparent,
        title: const Text(
          "Cake Factory",
          textAlign: TextAlign.center,
          style: TextStyle(letterSpacing: 4,color: Colors.brown),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              width: MediaQuery.of(context).size.width,
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  border: InputBorder.none,
                  hintText: "Find Your Cake",
                  hintStyle: TextStyle(
                      color: Colors.brown.withOpacity(0.5),
                      fontSize: 15,
                      letterSpacing: 3
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 160,
              width: 400,
              child: ListView(
                children: [
                  Container(
                    child: CarouselSlider(
                      items: [
                        //1st Image of Slider
                        Container(
                          margin: EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: AssetImage("assets/images/Ad/Ad_1.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        //2nd Image of Slider
                        Container(
                          margin: EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: AssetImage("assets/images/Ad/Ad_2.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        //3rd Image of Slider
                        Container(
                          margin: EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: AssetImage("assets/images/Ad/Ad_3.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        //4th Image of Slider
                        Container(
                          margin: EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: AssetImage("assets/images/Ad/Ad_4.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        //5th Image of Slider
                        Container(
                          margin: EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: AssetImage("assets/images/Ad/Ad_5.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],

                      //Slider Container properties
                      options: CarouselOptions(
                        height: 160.0,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        viewportFraction: 0.8,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
              ),
              margin: EdgeInsets.symmetric(horizontal: 50),
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: AnimationLimiter(
                child: GridView.count(
                  physics: BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()
                  ),
                  crossAxisCount: 2,
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 3,
                  children: List.generate(5, (int index) {
                    return AnimationConfiguration.staggeredGrid(
                      position: index,
                      duration: Duration(milliseconds: 1500),
                      columnCount: 3,
                      child: ScaleAnimation(
                        duration: Duration(milliseconds: 1800),
                        curve: Curves.fastLinearToSlowEaseIn,
                        child: FadeInAnimation(
                          child: GestureDetector(
                            child: Card(
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(ListManager.imgsList[index]),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                  ),
                                  Positioned(
                                     left: 35,
                                     top: 100,
                                    child: Text(ListManager.Category[index],
                                      style: const TextStyle(
                                        fontSize: 17,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              if (index == 0) {Navigator.push(context, MaterialPageRoute(builder: (context) => Chocolates()),);}
                              else if (index == 1) {Navigator.push(context, MaterialPageRoute(builder: (context) => CupCakes()),);}
                              else if (index == 2) {Navigator.push(context, MaterialPageRoute(builder: (context) => MarbleCake()),);}
                              else if (index == 3) {Navigator.push(context, MaterialPageRoute(builder: (context) => Pastry()),);}
                              else {Navigator.push(context, MaterialPageRoute(builder: (context) => Cakes()),);}},
                          ),
                        ),
                      ),
                    );
                  },
                  ),
                ),
              ),
            ),

            SizedBox(height: 15,),

            Text("................................................\n"
                "....................................................\n"
                ".......................................................\n"
                ".............................................................\n"
                "......................................................\n"
                "....................................................\n"
                ".......................................................\n"
                ".............................................................\n"
                "......................................................\n"
                "...................................................................")

          ],
        ),
      ),
    );
  }
}

