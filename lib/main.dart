import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => MainApp(),
        '/halaman2' : (context) => HalamanDua(),
        '/halaman3' : (context) => HalamanTiga(),
        '/halaman4' : (context) => HalamanEmpat(),
        '/halaman5' : (context) => HalamanLima(),
      },
    )
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appBar,
        body: Center(
          child: Text('Hello World!'),
        ),
        drawer: sideBar(context),
      ),
    );
  }
}

Widget sideBar (BuildContext context){ 
  return Drawer(
  child: ListView(
    children: [
      drawerHeader,
      ListTile(
        title: Text("Halaman 1"),
        onTap: (){
          Navigator.popAndPushNamed(context, '/');
        },
      ),
       ListTile(
        title: Text("Halaman 2"),
        onTap: (){
          Navigator.popAndPushNamed(context, '/HalamanDua');
        },
      ),
       ListTile(
        title: Text("Halaman 3"),
        onTap: (){
          Navigator.popAndPushNamed(context, '/HalamanTiga');
        },
      ),
       ListTile(
        title: Text("Halaman 4"),
        onTap: (){
          Navigator.popAndPushNamed(context, '/HalamanEmpat');
        },
      ),
       ListTile(
        title: Text("Halaman 5"),
        onTap: (){
          Navigator.popAndPushNamed(context, '/HalamanLima');
        },
      ),
    ],
  ),
);
}

var drawerHeader = DrawerHeader(
  child: Text("Aida Dwi"),
);

var appBar = AppBar(
  title: Text("APLIKASI"),
);

class HalamanDua extends StatelessWidget
{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:  Scaffold(
        appBar: appBar,
        body: Text("Aida"),
        drawer: sideBar(context),
      ),
    );
  }
}

class HalamanTiga extends StatelessWidget
{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:  Scaffold(
        appBar: appBar,
        body: Text("Aida"),
        drawer: sideBar(context),
      ),
    );
  }
}

class HalamanEmpat extends StatelessWidget
{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:  Scaffold(
        appBar: appBar,
        body: Text("Aida"),
        drawer: sideBar(context),
      ),
    );
  }
}

class HalamanLima extends StatelessWidget
{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:  Scaffold(
        appBar: appBar,
        body: Text("Aida"),
        drawer: sideBar(context),
      ),
    );
  }
}