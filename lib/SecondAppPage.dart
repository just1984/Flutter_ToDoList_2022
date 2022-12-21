import 'package:flutter/material.dart';

//no void main aka. entry point method is needed, because this file is being imported in main.dart which has the entry point method

class Page2Body extends StatelessWidget {
  const Page2Body({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = TextButton.styleFrom(
      foregroundColor: Theme.of(context).colorScheme.onPrimary,
    );
    return Scaffold(
      backgroundColor: Colors.limeAccent,
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
      body: const Center(child: Text("Second Page!")),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Home"),
            ),
          ],
        ),
      ),
    );
  }
}
