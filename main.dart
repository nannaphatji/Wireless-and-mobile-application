import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' ;
class Todo {
  //final String title ;
  //final String description;
  //Todo(this. title , this .description) ;
}
void main() {
  runApp(MaterialApp(
    title : 'Passing Data',
    home: Scaffold(
      appBar: AppBar(title: Text('Kaika Book store')),
      body: BodyLayout(),
    ),
    /*home: TodosScreen(
      todos: List .generate(
        10,
            (i ) => Todo(
          'Todo $i' ,
          'A description of what needs to be done for Todo $i',
        ) ,
      ) ,
    ) ,*/
  ) ) ;
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
/*class TodosScreen extends StatelessWidget {
  final List<Todo> todos;
  TodosScreen({Key key, @required this.todos}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text('Comics'),
      ) ,
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile (
            title : Text(todos[index]. title ) ,
// When a user taps the ListTile, navigate to the DetailScreen.
// Notice that you're not only creating a DetailScreen, you're
// also passing the current todo through to it .
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(todo: todos[index]),
                ) ,
              ) ;
            },
          ) ;
        },
      ) ,
    ) ;
  }
}
class DetailScreen extends StatelessWidget {
// Declare a field that holds the Todo.
  final Todo todo;

// In the constructor, require a Todo.
  DetailScreen({Key key, @required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
// Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(todo.description),
      ),
    );
  }
}*/
Widget _myListView(BuildContext context) {
  String _textString = 'Total price: _price';
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
          SelectionButton();
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
          SelectionButton();
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
          SelectionButton();
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
          SelectionButton();
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
          SelectionButton();
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
          SelectionButton();
        },
      ),
    ],
  );
}
class SelectionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _navigateAndDisplaySelection(context);
      },
      child: Text('Pick an option, any option!') ,
    ) ;
  }
// A method that launches the SelectionScreen and awaits the result from
// Navigator.pop.
  _navigateAndDisplaySelection(BuildContext context) async {
// Navigator.push returns a Future that completes after calling
// Navigator.pop on the Selection Screen.
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SelectionScreen()),
    ) ;
// After the Selection Screen returns a result , hide any previous snackbars
// and show the new result.
    Scaffold. of(context)
      .. removeCurrentSnackBar()
      .. showSnackBar(SnackBar(content: Text("$result")));
  }
}
class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text('Pick an option') ,
      ) ,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all (8.0) ,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, "Yes!");
                },
                child: Text('Yes!') ,
              ) ,
            ) ,
            Padding(
              padding: const EdgeInsets.all (8.0) ,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, "No!");
                },
                child: Text('No!'),
              ) ,
            )
          ],
        ) ,
      ) ,
    ) ;
  }
}
