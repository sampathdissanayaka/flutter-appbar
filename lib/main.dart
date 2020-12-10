import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar:AppBar(
          title: Text("Chamara Sampath"),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: (){},
          ),

          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: (){},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: (){},
            ),
          ],
          flexibleSpace: Image.asset("assets/ab.jpg",
            fit: BoxFit.cover,),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            tab1(),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}

Widget tab1() {
  return Container(
    child: Center(
      child: Text("Tab01"),
    ),
  );
}