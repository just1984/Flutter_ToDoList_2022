import 'package:flutter/material.dart';
import 'SecondAppPage.dart'; //importing the body of the second page

void main() {
  runApp(const BorisFirstAppClass());
}

class BorisFirstAppClass extends StatelessWidget {
  const BorisFirstAppClass({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'MyAppCompassCourse',
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
        home: const HomeBodyClass());
  }
}

class HomeBodyClass extends StatelessWidget {
  const HomeBodyClass({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = TextButton.styleFrom(
      foregroundColor: Theme.of(context).colorScheme.onPrimary,
    );
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        leading: const Icon(Icons.favorite),
        title: const Text('The Title'),
        actions: <Widget>[
          TextButton(
            style: style,
            onPressed: () {},
            child: const Text('RED'),
          ),
          TextButton(
            style: style,
            onPressed: () {},
            child: const Text('GREEN'),
          ),
          TextButton(
            style: style,
            onPressed: () {},
            child: const Text('BLUE'),
          ),
        ],
      ),
      //Clas Body
      body: const Center(
        child: Text("Hello World"),
      ),

      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SecondBodyClass()),
                );
              },
              child: const Text("Page 2"),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'View 1',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.book),
      //       label: 'View 2',
      //     ),
      //   ],
      // ),
    );
  }
}

class SecondBodyClass extends StatelessWidget {
  const SecondBodyClass({super.key});

  @override
  Widget build(BuildContext context) {
    //inheriting the body of the second page by calling the class Page2Body from the imported file SecondAppPage.dart
    return const Page2Body();
  }
}
