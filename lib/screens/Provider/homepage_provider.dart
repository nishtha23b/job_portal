import 'package:flutter/material.dart';
class HomePageProvider extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListItemWidget();
  }
}

class ListItemWidget extends State<HomePageProvider> {

  showMenu() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SingleChildScrollView(
            child: Container(

            decoration: BoxDecoration(
              /*borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              ),*/
              color: Colors.black12,
            ),
              child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  height: 36,
                ),
                SizedBox(
                    height: (56 * 6).toDouble(),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            //topLeft: Radius.circular(16.0),
                            //topRight: Radius.circular(16.0),
                          ),
                          color: Colors.cyan[700],
                        ),
                        child: Stack(
                          alignment: Alignment(0, 0),
                          //overflow: Overflow.visible,
                          children: <Widget>[
                            Positioned(
                              top: -36,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                                    border: Border.all(
                                        color: Color(0xff232f34), width: 10)),

                              ),
                            ),
                            Positioned(
                              child: ListView(
                                physics: NeverScrollableScrollPhysics(),
                                children: <Widget>[

                                  ListTile(
                                    title: Text(
                                      "Support",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    leading: Icon(
                                      Icons.help_outline,
                                      color: Colors.white,
                                    ),
                                    onTap: () {},
                                  ),
                                  ListTile(
                                    title: Text(
                                      "Terms And Conditions",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    leading: Icon(
                                      Icons.copyright,
                                      color: Colors.white,
                                    ),
                                    onTap: () {},
                                  ),
                                  ListTile(
                                    title: Text(
                                      "Privacy Policy",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    leading: Icon(
                                      Icons.lock_outline,
                                      color: Colors.white,
                                    ),
                                    onTap: () {},
                                  ),
                                  ListTile(
                                    title: Text(
                                      "About Us",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    leading: Icon(
                                      Icons.info_outline,
                                      color: Colors.white,
                                    ),
                                    onTap: () {},
                                  ),
                                  ListTile(
                                    title: Text(
                                      "LogOut",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    leading: Icon(
                                      Icons.exit_to_app,
                                      color: Colors.white,
                                    ),
                                    onTap: () {},
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                    )
                ),
              ],
            ),
          ),
          );
        }
        );
  }
  List items = getDummyList();
  //int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 20,
        backgroundColor: Colors.cyan[600],
        title: Text("Home"),
        centerTitle: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(onPressed: () { },
        tooltip: 'Increment',
        child: Icon(Icons.add),
        elevation: 10.0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 20,
        fixedColor: Colors.cyan,
        type: BottomNavigationBarType.fixed,// this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
                icon:Icon(Icons.home),
              onPressed:(){}
            ),
            title: new Text('Home'),
          ),BottomNavigationBarItem(
          icon: IconButton(
          icon:Icon(Icons.person_add),
              onPressed:(){ Navigator.push(context,MaterialPageRoute(builder: (context) => HomePageProvider()));}
          ),
            title: new Text('Selected Candidates'),
          ),
          BottomNavigationBarItem(
            icon:IconButton(
                icon:Icon(Icons.person),
                onPressed:(){ Navigator.push(context,MaterialPageRoute(builder: (context) => HomePageProvider()));}
                ),
            title: new Text('Profile'),
          ),BottomNavigationBarItem(
            icon:IconButton(
                icon:Icon(Icons.settings),
                onPressed: showMenu,
            ),
            title: new Text('Settings'),
          ),

        ],
        //notchedShape: CircularNotchedRectangle(),
      ),

      body: Container(
        child: ListView.builder(

          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              child: Container(
                height: 150.0,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 100,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 2, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                items[index],
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 5, 0, 2),
                                child: Container(
                                  width: 300,
                                  height:20,
                                  child: Column(
                                      children:<Widget>[
                                        Text("Job Title:   Software Engineer",style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),),
                                        Flexible(
                                          child: Text("Posted On:   12th Decemeber 2019",style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                          ),),
                                        ),
                                      ]
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 7.0,
                              ),
                              Align(
                                  alignment: Alignment.bottomRight,
                                  child:
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: FlatButton(
                                      color: Colors.cyan,
                                      textColor: Colors.white,
                                      disabledColor: Colors.grey,
                                      disabledTextColor: Colors.black,
                                      padding: EdgeInsets.fromLTRB(8.0,8.0,8.0,8.0),
                                      splashColor: Colors.cyanAccent,
                                      onPressed: () {

                                      },
                                      child: Text(
                                        "View Applicants",
                                        style: TextStyle(fontSize: 10.0),
                                      ),
                                    ),
                                  )
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  static List getDummyList() {
    List list = List.generate(10, (i) {
      return "Job ${i + 1}";
    });
    return list;
  }

}