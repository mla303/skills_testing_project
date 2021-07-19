import 'package:flutter/material.dart';
import 'package:skills_testing_project/pages/productsPage.dart';

class thankYouPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'THANK YOU!',
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Your order has been placed.You will receive an email receipt shortly.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => productsPage()));
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                alignment: Alignment.center,
                height: 45,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.red.shade300,
                    borderRadius: BorderRadius.circular(15)),
                child: Text(
                  'Back To Home',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.3),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
