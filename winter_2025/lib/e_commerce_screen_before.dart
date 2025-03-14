import 'package:flutter/material.dart';

class ECommerceScreen extends StatelessWidget {
  const ECommerceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        leading: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Icon(Icons.home),
        ),
        title: Text('Let\'s go shopping'),
        elevation: 0,
        actions: <Widget>[
          Padding(padding: EdgeInsets.all(20.0),
          child: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Recommented',
                    style: TextStyle(color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Formal Wear',
                    style: TextStyle(color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Casual Wear',
                    style: TextStyle(color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
            Image.asset('assets/images/woman_shopping.jpg'),
            SizedBox(height: 15,),
            Row(
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
