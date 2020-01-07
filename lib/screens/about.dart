import 'package:flutter/material.dart';

class Aboutpage extends StatefulWidget {
  @override
  AboutpageState createState() {
    return AboutpageState();
  }
}

class AboutpageState extends State<Aboutpage> {


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Home',
      debugShowCheckedModeBanner:false,
      home: Scaffold(

        appBar: AppBar(
          title: Text('About Us'),
        ),

        body: SingleChildScrollView(),
      ),
    );
  }
}
