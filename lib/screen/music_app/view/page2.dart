import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Stack(
        children: [
          Container(
            height: 790,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  (Color(0xff152238)),
                  (Color(0xff152238)),
                ])),
          ),
          Padding(padding: EdgeInsets.only(top: 30,left: 20,right: 20),
          child: Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.deepPurple.shade900,
              borderRadius: BorderRadius.circular(10)
            ),child: TextField(
            decoration: InputDecoration(
              prefixIcon: Row(
                children: [
                  SizedBox(width: 10,),
                  Icon(Icons.search,color: Colors.white70,),
                  SizedBox(width: 10,),
                  Text("Search",style: TextStyle(color: Colors.white54),),
                  SizedBox(width: 190,),

                  Icon(Icons.mic,color: Colors.white70,size: 25,),

                ],
              )
            ),
          ),
          ),)

        ],
      ),
    ));
  }
}
