import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Todo-list",
      home: TodoList(),
    );
  }
}

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  //todosArray will store the text the user writes momentarily to pass it to theTodoList body
  final List<String> todosArray = <String>[];

  //inputFieldController isa variable that has access to the power TextEditingContoller that allow us to interact with an Input Field in various ways
  final TextEditingController inputFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter TodoList ✏️"),
      ),
      body: ListView(
        children: _getTodoListItem(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _displayDialog(context),
        tooltip: 'Add Item',
        child: const Icon(Icons.add_box_rounded),
      ),
    );
  }
}

void _addTodoItem(String title) {
//  importing the human written text in the parameter title to be sent to the ListTile and clearing the input field after successfully adding a new todo
}

void _buildTodoItem(String title) {
//  receive the text from _addTodoItem and pack it in a ListTile widget
}

Future<Future> _displayDialog(BuildContext context) async {
//  this function will be called when the user clicks on the floating action button to display a dialog box to enter a new todo
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Add a Task to the TodoList"),
          content: TextField(
            controller: TextEditingController(),
            decoration: const InputDecoration(hintText: 'Enter New Todo:'),
          ),
          actions: <Widget>[
            OutlinedButton(
                onPressed: () {
                  print("Hello World");
                },
                child: const Text("Add")),
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Cancel")),
          ],
        );
      });
}

List<Widget> _getTodoListItem() {
  // return empty
  return []; //Empty Array in the List
//  this function should return a list of ListTile widgets with the help of a for loop
}
