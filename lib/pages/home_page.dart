import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> listItem = [
    "assets/images/image1.jpg",
    "assets/images/image2.jpg",
    "assets/images/image3.jpg",
    "assets/images/image4.jpg",
    "assets/images/image5.jpg",
    "assets/images/image1.jpg",
    "assets/images/image2.jpg",
    "assets/images/image3.jpg",
    "assets/images/image4.jpg",
    "assets/images/image5.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.menu),
        title: Text("Apple Products"),
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              width: 36,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text("8"),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            // #header
            Container(
              width: double.infinity,
              height: 240,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage("assets/images/image1.jpg"),
                  //bu rasm bizga keragidan katta hajmda bo'lsa uni faqat o'rta qismini olishimiz un kk
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.3),
                      Colors.black.withOpacity(.01),
                    ],
                  ),
                ),
                child: Column(
                  //bu childrenni ichidagi narsalarni pastdan boshlab qo'yilib kelinishi uchun kk
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Lifestyle sale",
                      style: TextStyle(color: Colors.red, fontSize: 35),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          "Shop now",
                          style: TextStyle(color: Colors.grey[900]),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // #body
            Expanded(
                child: Container(
              // GridView 2 ta ustunli colunni qoyish un kk
              child: GridView.count(
                //vertikal holatdagi 4 burchakchalani bir biridan uzoqlashtiradi
                crossAxisSpacing: 10,
                //gorizontal holatdagi 4 burchakchalani bir biridan uzoqlashtiradi
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: listItem.map((item) => cellOfList(item)).toList(),
              ),
            ))
          ],
        ),
      ),
    );
  }

  Widget cellOfList(String item) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(item),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(Icons.star_border,color: Colors.yellow,size: 35,),
          ],
        ),
      ),
    );
  }
}
