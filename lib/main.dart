import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 232, 229, 229),
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          shadowColor: Color.fromARGB(255, 80, 27, 215),
          title: const Text("Container example"),
        ),
        // body: Container(
        //   //alignment: Alignment.center,
        //   height: 100,
        //   width: double.infinity,
        //   //color: Color.fromARGB(255, 245, 245, 135),
        //   alignment: Alignment.center,
        //   margin: EdgeInsets.all(20),
        //   transform: Matrix4.rotationZ(0.1),
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(15),
        //     border: Border.all(color: Colors.black, width: 5),
        //   ),
        //   child: const Text(
        //     '----Welcome---- ',
        //      //Hello, I am inside container!''',
        //     style: TextStyle(
        //       fontStyle: FontStyle.italic,
        //       fontSize: 22,
        //     ),
        //   ),
        // ),
        body: Column(children: [
          Expanded(
            child: Container(
              height: 100,
              width: double.infinity,
              //color: const Color.fromARGB(255, 60, 158, 237),
              margin: EdgeInsets.all(20),
              transform: Matrix4.rotationZ(0.2),
              transformAlignment: Alignment(0.2, 0.1),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 169, 229, 163),
                  border: Border.all(color: Colors.black, width: 5),
                  borderRadius: BorderRadius.circular(20)),
              alignment: Alignment.center,
              child: Text(
                'Hello, this is container1',
                style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
          Expanded(
              child: Container(
            height: 100,
            width: double.infinity,
            alignment: Alignment.center,
            //color: Colors.amber,
            margin: EdgeInsets.all(20),
            transform: Matrix4.rotationZ(-0.2),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 65, 208, 226),
                border: Border.all(color: Colors.black, width: 5),
                borderRadius: BorderRadius.circular(20)),
            child: Text(
              'Hello, this is container2',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 25,
              ),
            ),
          ))
        ]),
        floatingActionButton: FloatingActionButton(
          elevation: 20,
          child: const Icon(Icons.add),
          shape:
              BeveledRectangleBorder(borderRadius: BorderRadius.circular(10)),
          onPressed: () {
//action on pressing button
          },
        ),
        drawer: Drawer(
          child: ListView(
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Color.fromARGB(255, 64, 105, 240),
                ),
                child: Text(
                  'Contents',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              ListTile(
                title: Text('Social'),
                leading: Icon(Icons.people),
              ),
              ListTile(
                title: Text('Inbox'),
                leading: Icon(Icons.image),
              ),
              ListTile(
                title: Text('Mails'),
                leading: Icon(Icons.mail),
              ),
              ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
