import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text("Add a Job"),
          centerTitle: true,
          leading: IconButton(icon:Icon(Icons.arrow_back),
            onPressed:() => Navigator.pop(context, false),
          ),),
        body:SingleChildScrollView(
          child: MyCustomForm(),
        ),

      ),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  /*String name="";
  List _cities =
  ["Cluj-Napoca", "Bucuresti", "Timisoara", "Brasov", "Constanta"];*/

  /*List<DropdownMenuItem<String>> _dropDownMenuItems;
  String _currentCity;*/

  @override
  /*void initState() {
    _dropDownMenuItems = getDropDownMenuItems();
    _currentCity = _dropDownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    List<DropdownMenuItem<String>> items = new List();
    for (String city in _cities) {
      items.add(new DropdownMenuItem(
          value: city,
          child: new Text(city)
      ));
    }
    return items;
  }*/

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle=Theme.of(context).textTheme.title;

    // Build a Form widget using the _formKey created above.
    return Material(
      child: SingleChildScrollView(
        child: Container(
          padding:EdgeInsets.all(25.0),
          margin: EdgeInsets.only(bottom: 15.0),
          child:Column(
              children:<Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    top:5.0,
                    bottom:5.0,
                  ),
                  child: TextField(
                    decoration:InputDecoration(
                        labelText:'Job Title',
                        hintText:'eg- software engineering',
                        labelStyle:textStyle,
                        border:OutlineInputBorder(
                            borderRadius:BorderRadius.circular(5.0))
                    ),
                    onChanged:(String string){
                      setState((){});
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top:5.0,
                    bottom: 5.0,
                  ),
                  child: TextField(
                      decoration:InputDecoration(
                          labelText:'Category',
                          hintText:'eg- engineering',
                          labelStyle:textStyle,
                          border:OutlineInputBorder(
                              borderRadius:BorderRadius.circular(5.0))
                      ),
                      onChanged:(String string){
                        setState((){});}
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top:5.0,
                    bottom: 5.0,
                  ),
                  child: TextField(
                      decoration:InputDecoration(
                          labelText:'Work hour',
                          hintText:'eg-5',
                          labelStyle:textStyle,
                          border:OutlineInputBorder(
                              borderRadius:BorderRadius.circular(5.0))
                      ),
                      keyboardType:TextInputType.number,
                      onChanged:(String string){
                        setState((){});}),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top:5.0,
                    bottom:5.0,
                  ),
                  child: TextField(
                      decoration:InputDecoration(
                          labelText:'Working days',
                          hintText:'eg-6 days a week',
                          labelStyle:textStyle,
                          border:OutlineInputBorder(
                              borderRadius:BorderRadius.circular(5.0))
                      ),
                      keyboardType:TextInputType.number,
                      onChanged:(String string){
                        setState((){});}),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5.0,
                    bottom: 5.0,
                  ),
                  child: TextField(
                      decoration:InputDecoration(
                          labelText:'Salary',
                          hintText:'eg-5 lakh per annum',
                          labelStyle:textStyle,
                          border:OutlineInputBorder(
                              borderRadius:BorderRadius.circular(5.0))
                      ),
                      keyboardType:TextInputType.number,
                      onChanged:(String string){
                        setState((){});}),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5.0,
                    bottom: 5.0,
                  ),
                  child: TextField(
                      decoration:InputDecoration(
                          labelText:'Experience Required',
                          hintText:'eg- 2 years',
                          labelStyle:textStyle,
                          border:OutlineInputBorder(
                              borderRadius:BorderRadius.circular(5.0))
                      ),
                      keyboardType:TextInputType.number,
                      onChanged:(String string){
                        setState((){});}),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5.0,
                    bottom: 5.0,
                  ),
                  child: TextField(
                      decoration:InputDecoration(
                          labelText:'Job Description',
                          labelStyle:textStyle,
                          border:OutlineInputBorder(
                              borderRadius:BorderRadius.circular(5.0))
                      ),
                      keyboardType:TextInputType.multiline,
                      onChanged:(String string){
                        setState((){});}),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5.0,
                    bottom: 5.0,
                  ),
                  child: TextField(
                      decoration:InputDecoration(
                          labelText:'Skills Required',
                          hintText:'eg-5',
                          labelStyle:textStyle,
                          border:OutlineInputBorder(
                              borderRadius:BorderRadius.circular(5.0))
                      ),
                      onChanged:(String string){
                        setState((){});}),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top:5.0,
                    bottom: 5.0,
                  ),
                  child: TextField(
                      decoration:InputDecoration(
                          labelText:'Location',
                          hintText:'eg- Indore',
                          labelStyle:textStyle,
                          border:OutlineInputBorder(
                              borderRadius:BorderRadius.circular(5.0))
                      ),
                      onChanged:(String string){
                        setState((){});}),
                  /*child: DropDownField(
                      value: _currentCity,
                      items: _dropDownMenuItems,
                      setter: (dynamic newValue) {
                        _currentCity= newValue;}
                  ),*/
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top:5.0,
                    bottom: 5.0,
                  ),
                  child: TextField(
                      decoration:InputDecoration(
                          labelText:'Status',
                          hintText:'eg- Active',
                          labelStyle:textStyle,
                          border:OutlineInputBorder(
                              borderRadius:BorderRadius.circular(5.0))
                      ),
                      onChanged:(String string){
                        setState((){});}),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top:5.0,
                    bottom:5.0,
                  ),
                  child: TextField(
                      decoration:InputDecoration(
                          labelText:'Last date to apply',
                          hintText:'eg- 10 June 2019',
                          labelStyle:textStyle,
                          border:OutlineInputBorder(
                              borderRadius:BorderRadius.circular(5.0))
                      ),
                      keyboardType:TextInputType.datetime,
                      onChanged:(String string){
                        setState((){});}),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top:5.0,
                    bottom: 5.0,
                  ),
                  child: FlatButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    disabledColor: Colors.grey,
                    disabledTextColor: Colors.black,
                    padding: EdgeInsets.all(8.0),
                    splashColor: Colors.blueAccent,
                    onPressed: () {
                      /*...*/
                    },
                    child: Text(
                      "Add Job",
                      style: TextStyle(fontSize: 10.0),
                    ),
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}