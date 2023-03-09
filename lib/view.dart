import 'package:flutter/material.dart';
import 'package:shoping_app/HomeScreen/Modalclass.dart';

class View extends StatefulWidget {
  const View({Key? key}) : super(key: key);

  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> {
  int i=1;
  @override
  Widget build(BuildContext context) {
    ProductModal p1 = ModalRoute.of(context)!.settings.arguments as ProductModal;
    return SafeArea(
      child: Scaffold(
      appBar: AppBar(
          title: Text(
            "View",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              height: 220,
              width: double.infinity,
              alignment: Alignment.center,
              color: Colors.white,
              child: Container(
                height: double.infinity,
                width: 150,
                color: Colors.white,
                child: Image.asset("${p1.f}",fit: BoxFit.fill,),
              ),
            ),
            Expanded(
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(30),
                  ),
                  color: Colors.grey[200],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            FloatingActionButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.favorite_border,
                                size: 27,
                              ),
                              backgroundColor: Colors.blue,
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: double.infinity,
                      alignment: Alignment.center,
                      color: Colors.grey[200],
                      child: Text("${p1.d}",style: TextStyle(
                          fontSize: 25
                      ),),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(height: 100,
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Quantity",style: TextStyle(
                            fontSize: 20,
                          ),),
                          SizedBox(
                              height: 10
                          ),
                          Container(
                            height: 50,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white30,
                            ),
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    if(i>1)
                                      {
                                        i--;
                                      }
                                  });
                                },child: Text("-",style: TextStyle(
                                    color: Colors.blue,fontSize: 40
                                ),),backgroundColor: Colors.white,),
                                Text("$i",style: TextStyle(fontSize: 30),),
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    i++;
                                  });
                                },child: Text("+",style: TextStyle(
                                  fontSize: 30
                                ),),backgroundColor: Colors.blue,),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            width: 150,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey,
                            ),
                            child: Text("${p1.pr}",style: TextStyle(
                                fontSize: 30
                            ),),
                          ),
                          FloatingActionButton.extended(
                            onPressed: () {
                            },
                            label: Text(
                              "Add to card",
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
