import 'package:flutter/material.dart';
import 'package:skills_testing_project/pages/thankYouPage.dart';

class addressPage extends StatefulWidget {
  @override
  _addressPageState createState() => _addressPageState();
}

class _addressPageState extends State<addressPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black54),
          title: Text(
            'Address',
            style: TextStyle(
                color: Colors.black54,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
            height: double.infinity,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 3),
                    child: Text(
                      'Delivery',
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                  SizedBox(height: 3),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(bottom: 7.5, left: 10),
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      style:
                          TextStyle(color: Colors.grey.shade700, fontSize: 12),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'e.g.1234 forest road',
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 12)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    width: double.infinity,
                    height: 35,
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                          alignment: Alignment.centerLeft,
                          // color: Colors.red,
                          child: Text(
                            'City',
                            style: TextStyle(
                                color: Colors.grey.shade600,
                                fontWeight: FontWeight.bold,
                                fontSize: 13),
                          ),
                        )),
                        Expanded(
                            child: Container(
                          alignment: Alignment.centerLeft,
                          // color: Colors.red,
                          child: Text(
                            'State',
                            style: TextStyle(
                                color: Colors.grey.shade600,
                                fontWeight: FontWeight.bold,
                                fontSize: 13),
                          ),
                        )),
                        Expanded(
                            child: Container(
                          alignment: Alignment.centerLeft,
                          // color: Colors.red,
                          child: Text(
                            'ZIP Code',
                            style: TextStyle(
                                color: Colors.grey.shade600,
                                fontWeight: FontWeight.bold,
                                fontSize: 13),
                          ),
                        )),
                      ],
                    ),
                  ),
                  Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(bottom: 7.5, left: 10),
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                            padding: EdgeInsets.only(right: 20),
                            child: TextField(
                              style: TextStyle(
                                  color: Colors.grey.shade700, fontSize: 12),
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Pakistan',
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 12)),
                            ),
                          )),
                          Expanded(
                              child: Container(
                            padding: EdgeInsets.only(right: 20),
                            child: TextField(
                              style: TextStyle(
                                  color: Colors.grey.shade700, fontSize: 12),
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'KPK',
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 12)),
                            ),
                          )),
                          Expanded(
                              child: Container(
                            padding: EdgeInsets.only(right: 20),
                            child: TextField(
                              style: TextStyle(
                                  color: Colors.grey.shade700, fontSize: 12),
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '22010',
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 12)),
                            ),
                          ))
                        ],
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = !isChecked;
                          });
                        },
                      ),
                      Text(
                        'Billing address same as delivery',
                        style: TextStyle(
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.w600,
                            fontSize: 11.5),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => thankYouPage()));
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      alignment: Alignment.center,
                      height: 45,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.red.shade300,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'PAYMENT',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12.3),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 18,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )));
  }
}
