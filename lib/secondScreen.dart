import 'package:flutter/material.dart';
import 'package:flutter_session/thirdScreen.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red[200]),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              color: Colors.green[100],
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    ListTile(
                      tileColor: Colors.blue[200],
                      leading: Icon(Icons.handyman),
                      title: Text('tile'),
                      trailing: Icon(Icons.arrow_back),
                    ),
                    Text('Hi'),
                    Image.asset(
                      'assets/totoro.jpg',
                      height: 200,
                      width: 200,
                    ),
                    FlatButton(
                      color: Colors.green,
                      child: Text('Go back'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                ),
              ),
            ),
            FlatButton(
              color: Colors.green,
              child: Text('Go back'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            GestureDetector(child: Text("Login with")),
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ThirdScreen()));
                },
                child: CircleAvatar(
                  foregroundImage: NetworkImage(''),
                )),
          ],
        ),
      ),
    );
  }
}
