import 'package:flutter/material.dart';
import 'package:skills_testing_project/pages/singleProduct.dart';

class productsPage extends StatefulWidget {
  const productsPage({Key? key}) : super(key: key);

  @override
  _productsPageState createState() => _productsPageState();
}

class _productsPageState extends State<productsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      bottomNavigationBar: Container(
          height: 50,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(children: [
                Icon(Icons.home, color: Colors.grey, size: 20),
                Text(
                  'Home',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                )
              ]),
              SizedBox(),
              Column(children: [
                Icon(Icons.favorite, color: Colors.grey, size: 20),
                Text(
                  'Favorites',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                )
              ]),
              SizedBox(),
              Column(children: [
                Icon(Icons.shopping_cart, color: Colors.grey, size: 20),
                Text(
                  'Cart',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                )
              ]),
              SizedBox(),
              Column(children: [
                Icon(Icons.person, color: Colors.grey, size: 20),
                Text(
                  'Profile',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                )
              ]),
            ],
          )),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black54),
        title: Text(
          'Product List',
          style: TextStyle(
              color: Colors.black54, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => singleProduct()));
                },
                child: Container(
                  height: 150,
                  margin: EdgeInsets.all(5),
                  child: Row(
                    children: [
                      Container(
                        width: 150, height: 150,
                        //color: Colors.red,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('assets/barbell.jpg',
                              fit: BoxFit.cover),
                        ),
                      ),
                      Expanded(
                          child: Container(
                        // color: Colors.green,
                        padding: EdgeInsets.all(5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 5),
                                  Text(
                                    'Barbell - 10kg',
                                    style: TextStyle(
                                        color: Colors.grey.shade800,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'This barbell weighs 10kg and costs 100\$ and have good quality steel',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  ),
                                ],
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(children: [
                                      Text('Price'),
                                      Text(
                                        '150\$',
                                        style: TextStyle(
                                            color: Colors.red.shade700,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      )
                                    ]),
                                    Column(children: [
                                      Text('Color'),
                                      Row(children: [
                                        Container(
                                            height: 10,
                                            width: 10,
                                            color: Colors.green),
                                        SizedBox(width: 2),
                                        Container(
                                            height: 10,
                                            width: 10,
                                            color: Colors.blue),
                                        SizedBox(width: 2),
                                        Container(
                                            height: 10,
                                            width: 10,
                                            color: Colors.orange),
                                        SizedBox(width: 2),
                                      ])
                                    ]),
                                  ])
                            ]),
                      ))
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
