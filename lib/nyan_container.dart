import 'package:flutter/material.dart';

void main() {
  runApp(const ContainerTestHomework());
}

class ContainerTestHomework extends StatelessWidget {
  const ContainerTestHomework({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container Test Homework',
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(0, 50, 101, 1),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
              child: Container(
                height: 150,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://media.tenor.com/2roX3uxz_68AAAAM/cat-space.gif'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
              child: FloatingActionButton.extended(
                onPressed: () {},
                label: const Text("Play Music"),
                icon: const Icon(Icons.music_note_rounded),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

// void nyancat() {
//   runApp(nyan());
// }

// class nyan extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: FlatButton(
//             onPressed: () {
//               final player = AudioCache();
//               player.play('https://www.myinstants.com/media/sounds/nyan-cat_1.mp3');
//             },
//             child: Text('Play audio'),
//           ),
//         ),
//       ),
//     );
//   }
// }
