import 'package:flutter/material.dart';
import 'package:shoping_app/HomeScreen/Modalclass.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List f = [
    "Assets/images/f1.jpg",
    "Assets/images/f2.jpg",
    "Assets/images/f3.jpg",
    "Assets/images/f4.jpg",
    "Assets/images/f5.jpg"
  ];

  List d = [
    "Akbar Dresses Boys Cotton Regular Fit Casual Wear Clothing Set With Half Denim Pant",
    "Keyur Boys Dress Set -Latest Model",
    "AT POSHAK Ethnic Wear Sherwani Kurta and Pyjama Set For Kids and Boys",
    "AT POSHAK Ethnic Wear Sherwani Kurta and Pyjama Set For Kids and Boys",
    "Boys Party Wear Sherwani Age Group: 2-16"
  ];

  List pr = ["\$100", "\$120", "\$140", "\$160", "\$180"];
  List pname = ["fashion1", "fashion2", "fashion3", "fashion4", "fashion5"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Explore Product",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: TextField(
                          textInputAction: TextInputAction.next,
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              prefixIcon: Icon(Icons.search_rounded),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.purple)),
                              hintText: "search Product"),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 50,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Icon(Icons.camera_alt_outlined),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FloatingActionButton.extended(
                      onPressed: () {},
                      label: Text("fashion"),
                      backgroundColor: Colors.red,
                    ),
                    FloatingActionButton.extended(
                      onPressed: () {},
                      label: Text("   shuj   "),
                      backgroundColor: Colors.red,
                    ),
                    FloatingActionButton.extended(
                      onPressed: () {},
                      label: Text("Mobile"),
                      backgroundColor: Colors.red,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 320,
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: f
                      .asMap()
                      .entries
                      .map((e) => Padding(
                            padding: const EdgeInsets.only(
                              left: 8.0,
                            ),
                            child: InkWell(
                                onTap: () {
                                  ProductModal p1 = ProductModal(
                                      f: f[e.key],
                                      pr: pr[e.key],
                                      pname: pname[e.key],
                                  d: d[e.key]);
                                  Navigator.pushNamed(context, "view",
                                      arguments: p1);
                                },
                                child:
                                    Product(f[e.key], pr[e.key], pname[e.key])),
                          ))
                      .toList(),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blue[700],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue),
                      child: Icon(
                        Icons.favorite_border,
                        size: 50,
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue),
                      child: Icon(
                        Icons.filter_list_alt,
                        size: 50,
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue),
                      child: Icon(
                        Icons.shopping_bag_outlined,
                        size: 50,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.blue,
      ),
    );
  }

  Widget Product(String img, String price, String fashionname) {
    return Container(
      height: 320,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Container(
            height: 40,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.cyan[100],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_border,
                      size: 27,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_bag_outlined,
                      size: 27,
                    )),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 100,
            width: 150,
            color: Colors.white,
            child: Image.asset("$img"),
          ),
          SizedBox(height: 10),
          Container(
            height: 40,
            width: 100,
            alignment: Alignment.center,
            color: Colors.white,
            child: Text(
              "$price",
              style: TextStyle(fontSize: 25),
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 110,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 10),
                  child: Text(
                    "$fashionname",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  height: 25,
                  width: 150,
                  child:
                      Image.asset("Assets/images/star.jpg", fit: BoxFit.fill),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "See the deatail >",
                    style: TextStyle(fontSize: 18, color: Colors.blue),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
