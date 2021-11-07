import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new FlutterLogo(textColor: Colors.green,size: 25,),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){},icon: Icon(Icons.arrow_back),color: Colors.grey,
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.menu),color: Colors.grey,
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Stack(
            children: [
              Container(
                alignment: Alignment.center,
                height: 100,
                color: Colors.white,
                child: Text(
                  'Get Coaching',
                  style: TextStyle(
                    fontSize: 20.0
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25.0, 90.0, 25.0, 0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2.0,
                      color: Colors.blue
                    )
                  ]
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 5.0),
                          child: Text(
                            'You Have',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.fromLTRB(25.0, 40.0, 5.0, 25.0),
                          child: Text(
                            '206',
                            style: TextStyle(
                                fontSize: 40.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(left: 100.0,top: 40),
                          height: 20.0,
                          width: 20.0,
                          child: Image.asset('images/doublelove.png'),
                        ),
                      ],
                    ),
                    SizedBox(width: 60.0,),
                    Container(
                      height: 50.0,
                      width: 125.0,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent[100]!.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Text(
                          'Buy More ',
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 40,),
          Container(
            padding: EdgeInsets.only(left: 25.0,right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'MY COACHES',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                    color: Colors.grey
                  ),
                ),
                Text(
                  'VIEW PASSED SESSION',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                    color: Colors.green
                  ),
                ),

              ],
            ),
          ),
          SizedBox(height: 10.0,),
          GridView.count(
            crossAxisCount: 2,
            primary: false,
            crossAxisSpacing: 2.0,
            mainAxisSpacing: 2.0,
            shrinkWrap: true,
            children: [
              _buildCard("Al Amin",'Available',1),
              _buildCard("Al Amin",'Away',2),
              _buildCard("Al Amin",'Available',3),
              _buildCard("Al Amin",'Available',4),
              _buildCard("Al Amin",'Away',5),
              _buildCard("Al Amin",'Available',6),
              _buildCard("Al Amin",'Away',7),
              _buildCard("Al Amin",'Available',8),
              _buildCard("Al Amin",'Available',9),
              _buildCard("Al Amin",'Away',10),
              _buildCard("Al Amin",'Away',11),
              _buildCard("Al Amin",'Available',12),
            ],


          )
        ],

      ),
    );
  }
  Widget _buildCard(String name, String status, int cardIndex){
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 7.0,
      child: Column(
        children: [
          SizedBox(height: 12.0,),

              Stack(
                children: [
                  Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.green,
                        image: DecorationImage(
                            image: AssetImage(
                              cardIndex.isOdd? 'images/alamin.jpg' : 'images/tisa.jpg'
                            ),
                        )
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 45.0),
                    height: 20.0,
                    width: 20.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: status=='Away'?Colors.amber:Colors.green,
                        border: Border.all(
                            color: Colors.white,
                            style: BorderStyle.solid,
                            width: 2.0
                        )
                    ),
                  ),
                ],
              ),



              SizedBox(height: 8.0,),
              Text(
                cardIndex.isOdd?'Al Amin':'Tisha',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  color: Colors.green
                ),

              ),
              SizedBox(height: 5.0,),
              Text(
                status,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                  color: Colors.grey
                ),

              ),
              SizedBox(height: 15.0,),
              Expanded(
                  child: Container(
                    width: 180,
                    decoration: BoxDecoration(
                      color: status == 'Away'?Colors.grey:Colors.green,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                      )
                    ),
                    child: Center(
                      child: Text(
                        'Request',

                      ),
                    ),
                  )
              )
        ],
      ),
      margin: cardIndex.isEven?EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0):EdgeInsets.fromLTRB(25.0, 0.0, 5.0, 10.0),
    );
  }
}
