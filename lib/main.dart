import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyHomePage> {
  bool isFormSubmitted = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(32),
          child: AnimatedCrossFade(
            firstChild: Form(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextFormField(

                  ),
                  SizedBox(height: 16,),
                  TextFormField(

                  ),
                  SizedBox(height: 16,),
                  TextFormField(

                  ),
                  FlatButton(
                    child: Text("submit"),
                    color: Colors.red,
                    textColor: Colors.white,
                    onPressed: (){
                        setState(() {
                          isFormSubmitted = true;
                        });
                    },
                  )
                ],
              ),
            ),
            secondChild: Container(
              color: Colors.green,
              padding: EdgeInsets.all(16),
              child: Text("form has been submitted", style: TextStyle(color: Colors.white),),

            ),
            duration: Duration(seconds: 1),
            crossFadeState: isFormSubmitted ? CrossFadeState.showSecond : CrossFadeState.showFirst,
          ),
        ),
      ),
    );
  }
}