import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project/pages/products_page.dart';
import 'package:project/pages/profile_page.dart';

import '../theme/theme_helper.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () =>Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      MainPage())),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
                Container(
                  height: 350,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: AssetImage("images/Rose.png"),
                    ),
                  ),
                ),
            Padding(
              padding: EdgeInsets.fromLTRB(180, 20, 20, 20),
              child: Container(
                child: Row(
                  children: [
                    CartCounter(),
                  ],
                ),
              ),
            ),
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: Text("Rose Flower",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(180, 20, 20, 20),
                    child: Container(
                      child: RichText(
                        text: TextSpan(
                          children:[
                            TextSpan(
                              text: "\$",
                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: Colors.redAccent),
                            ),
                            TextSpan(
                              text: "20.00",
                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),
                            ),
                            TextSpan(
                              text: "/D",
                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey),
                            ),
                          ]
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: Container(
                      child: Row(
                        children: [
                          Text("The smallest flower is a thought, a life answering\n"
                              " to some feature of the great whole, of whome they\n"
                              " have a presistent intuiyion.",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                ),
                child: Padding(
                  padding:
                  EdgeInsets.fromLTRB(40, 10, 40, 10),
                  child: Text(
                    'Add To Cart',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MainPage()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}





class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlineButton(
          icon: Icons.remove,
          press: () {
            if (numOfItems >1 ){
              setState(() {
                numOfItems--;
              });
            }
          },
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
          numOfItems.toString().padLeft(2,"0"),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
          ),
        ),
        buildOutlineButton(
          icon: Icons.add,
          press: () {
            setState(() {
              numOfItems++;
            });
          },
        ),
      ],
    );
  }

  SizedBox buildOutlineButton({required IconData icon, required press}) {
    return SizedBox(
        width: 40,
        height: 32,
        child: OutlineButton(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          onPressed: press,
          child: Icon(icon),
        ),
      );
  }
}
