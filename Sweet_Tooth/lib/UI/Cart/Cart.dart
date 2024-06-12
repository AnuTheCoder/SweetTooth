import 'package:flutter/material.dart';

import '../Categories/Chocolates/DartChocolates/DarkChocolates.dart';
import 'Payment.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        color: Colors.transparent,
        height: 200,
        width: 500,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60),
                topRight: Radius.circular(60)),),
          color: Colors.brown,
          child: Padding(
            padding: EdgeInsets.only(right: 100.0,top: 20),
            child: Column(
              children: [
                Text(
            'Total Amount: ${calculateTotalAmount(itemCounts, Price)}', // Display total amount
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text("Delivery Charge : ",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white
                  ),
                ),
                SizedBox(height: 10),
                Text("Total : ",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 95.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Payment()),);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text("Go To Cart",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.brown
                          ),),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 50)
              ],
            ),
          ),
        ),
      ),
    );
  }
}