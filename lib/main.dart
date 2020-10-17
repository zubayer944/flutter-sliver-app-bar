import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                 expandedHeight: 150,
                backgroundColor: Colors.blueAccent,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text("welcome"),
                 // background: Image(image: null),
                ),
              ),
              SliverList(delegate: SliverChildListDelegate(<Widget>[
                addDetails("sachine", "batsman"),
                addDetails("virat", "batsman"),
                addDetails("watson", "batsman"),
                addDetails("rahul", "batsman"),
                addDetails("ganguly", "batsman"),
                addDetails("tamim", "batsman"),
                addDetails("shakib", "batsman"),
                addDetails("musfiq", "batsman"),
                addDetails("mashrafi", "wtc"),
                addDetails("malinga", "bowler"),
                addDetails("zubayer", "batsman"),
              ]
              ))
            ],
          ),
        ),
      ),
    );
  }
}
Widget addDetails(
String name,
String description,
)
 {
  return ListTile(
    title: Text(name),
    subtitle: Text(description),
    leading: CircleAvatar(
      child: Text(name[0]
    ),
    ),
  );

}
