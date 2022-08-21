import 'package:flutter/material.dart';

import 'details_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Good Morning\n" "Flowers Items"),
          titleTextStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),
      ),
      body: GridView.count(
        childAspectRatio: 0.8,
        crossAxisCount: 2,
        shrinkWrap: true,
        children: [
          for(int i = 1 ; i<=10; i++)
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: ElevatedButton(
                style: ButtonStyle(
                ),
                onPressed: () {
              Navigator.pushReplacement(
              context,
              MaterialPageRoute(
              builder: (context) =>
              DetailsPage()));
              },
                child: Column(
                  children: [
                            Container(
                              height: 250,
                              width: 160,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                  image: AssetImage("images/Rose.png"),
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                                    child: RichText(
                                      text: TextSpan(
                                          children:[
                                            TextSpan(
                                              text: "Rose Flower\n",
                                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                            ),
                                            TextSpan(
                                              text: "Flower\n",
                                              style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.grey[600]),
                                            ),
                                            TextSpan(
                                              text: "\$20.00/D",
                                            ),
                                          ]
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
