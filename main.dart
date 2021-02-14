import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  int _price = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListViews',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Kaika Book store')),
        body: BodyLayout(),
      ),
    );
  }
}

class BodyLayout extends StatefulWidget {
  @override
  _BodyLayoutState createState() => _BodyLayoutState();
}

class _BodyLayoutState extends State<BodyLayout> {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}


Widget _myListView(BuildContext context) {
  String _textString = 'Total price: ';
  int _price = 0;
  int temp = 0;
  return ListView(
    children: <Widget>[
      Text(
        _textString + '$_price',
        style: TextStyle(fontSize: 24),
      ),
      ListTile(
        leading: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 100,
            minHeight: 260,
            maxWidth: 104,
            maxHeight: 264,
          ),
          child: Image.asset('assets/images/book1.jpg', fit: BoxFit.cover),
        ),
        title: Text('Red book'),
        subtitle: Text('Tales of the red\n\฿320'),
        trailing: Icon(Icons.shopping_cart),
        onTap: () {
          print('Red book');
          temp = 320;
          _price = _price + temp;
          print(_price);
        },
      ),
      ListTile(
        leading: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 100,
            minHeight: 260,
            maxWidth: 104,
            maxHeight: 264,
          ),
          child: Image.asset('assets/images/book2.jpg', fit: BoxFit.cover),
        ),
        title: Text('Love story'),
        subtitle: Text('Two people on the hill \n\฿200'),
        trailing: Icon(Icons.shopping_cart),
        onTap: () {
          print('Love story');
          temp = 200;
          _price = _price + temp;
          print(_price);
        },
      ),
      ListTile(
        leading: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 100,
            minHeight: 260,
            maxWidth: 104,
            maxHeight: 264,
          ),
          child: Image.asset('assets/images/book3.jpg', fit: BoxFit.cover),
        ),
        title: Text('A boy'),
        subtitle: Text('Comic of a boy and his life \n\฿150'),
        trailing: Icon(Icons.shopping_cart),
        onTap: () {
          print('A boy');
          temp = 150;
          _price = _price + temp;
          print(_price);
        },
      ),
      ListTile(
        leading: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 100,
            minHeight: 260,
            maxWidth: 104,
            maxHeight: 264,
          ),
          child: Image.asset('assets/images/book4.jpg', fit: BoxFit.cover),
        ),
        title: Text('Very fun'),
        subtitle: Text('An actually not very fun life of.. \n\฿100'),
        trailing: Icon(Icons.shopping_cart),
        onTap: () {
          print('Very fun');
          temp = 100;
          _price = _price + temp;
          print(_price);
        },
      ),
      ListTile(
        leading: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 100,
            minHeight: 260,
            maxWidth: 104,
            maxHeight: 264,
          ),
          child: Image.asset('assets/images/book5.jpg', fit: BoxFit.cover),
        ),
        title: Text('Bloody'),
        subtitle: Text('It is waiting \n\฿125'),
        trailing: Icon(Icons.shopping_cart),
        onTap: () {
          print('Bloody');
          temp = 125;
          _price = _price + temp;
          print(_price);
        },
      ),
      ListTile(
        leading: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 100,
            minHeight: 260,
            maxWidth: 104,
            maxHeight: 264,
          ),
          child: Image.asset('assets/images/book6.jpg', fit: BoxFit.cover),
        ),
        title: Text('DUNE'),
        subtitle: Text('Over the dune is the fallen city \n\฿300'),
        trailing: Icon(Icons.shopping_cart),
        onTap: () {
          print('DUNE');
          temp = 300;
          _price = _price + temp;
          print(_price);
        },
      ),
    ],
  );
}
