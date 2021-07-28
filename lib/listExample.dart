import 'package:flutter/material.dart';

class ListExample extends StatefulWidget {
  ListExample({Key key}) : super(key: key);

  @override
  _ListExampleState createState() => _ListExampleState();
}

class _ListExampleState extends State<ListExample> {
  List<List<String>> list1 = <List<String>>[
    ['assets/totoro.jpg', 'title 1', 'subti 1'],
    ['assets/totoro.jpg', 'title 2', 'subti 2'],
    ['assets/totoro.jpg', 'title 3', 'subti 3'],
    ['assets/totoro.jpg', 'title 4', 'subti 4'],
  ];
  List<String> list2 = ['a', 'b', 'c', 'd', 'e'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child:
              // ListView.builder(
              //   itemCount: list1.length,
              //   itemBuilder: (BuildContext context, int index) {
              //     return Card(
              //       child: ListTile(
              //         title: Text(list1[index][1]),
              //         subtitle: Text(list1[index][2]),
              //         trailing: Image.asset(list1[index][0]),
              //       ),
              //     );
              //   },
              // ),
              GridView.builder(
        padding: EdgeInsets.all(4),
        itemCount: list1.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: GridTile(
                child: Column(
                  children: [
                    Text(list1[index][1]),
                    Image.asset(list1[index][0]),
                  ],
                ),
              ),
            ),
          );
        },
      )),
    );
  }
}
