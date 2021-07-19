import 'package:flutter/material.dart';
import 'package:skills_testing_project/pages/addressPage.dart';

class singleProduct extends StatefulWidget {
  @override
  _singleProductState createState() => _singleProductState();
}

class _singleProductState extends State<singleProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black54),
        title: Text(
          'Product Details',
          style: TextStyle(
              color: Colors.black54, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  'Barbell - 10kg',
                  style: TextStyle(
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                SizedBox(height: 15),
                Container(
                    height: 160,
                    width: double.infinity,
                    child: Image.asset(
                      'assets/barbell.jpg',
                      fit: BoxFit.cover,
                    )),
                SizedBox(height: 15),
                Text(
                  '150\$',
                  style: TextStyle(
                      color: Colors.red.shade700,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(height: 20),
                Text(
                  'Description',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
                SizedBox(height: 5),
                Text(
                  'This barbell weighs 10kg and costs 100\$ and have good quality steel used. This barbell weighs 10kg and costs 100\$ and have good quality steel used. This barbell weighs 10kg and costs 100\$ and have good quality steel used. This barbell weighs 10kg and costs 100\$ and have good quality steel used. This barbell weighs 10kg and costs 100\$ and have good quality steel.',
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.5),
                ),
                SizedBox(height: 20),
                Text(
                  'Color Chosen',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Blue',
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.5),
                    ),
                    Row(children: [
                      Container(height: 15, width: 15, color: Colors.green),
                      SizedBox(width: 5),
                      Container(height: 25, width: 25, color: Colors.blue),
                      SizedBox(width: 5),
                      Container(height: 15, width: 15, color: Colors.orange),
                      SizedBox(width: 2),
                    ])
                  ],
                ),
              ]),
              SizedBox(
                height: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      height: 45,
                      width: double.infinity,
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: Text(
                        'ADD TO CART',
                        style: TextStyle(
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.3),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => addressPage()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 45,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.red.shade300,
                      ),
                      child: Text(
                        'BUY NOW',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.3),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
