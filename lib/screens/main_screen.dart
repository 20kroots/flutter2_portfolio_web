import 'package:flutter/material.dart';
import 'package:portfolio_web/widgets/contact_button.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            CircleAvatar(
              radius: 28,
              backgroundColor: Colors.white,
              foregroundImage: NetworkImage('https://picsum.photos/200'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Mark',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ),
        actions: [
          ContactButton(
            buttonText: 'Contact me',
            icon: Icon(Icons.send_sharp),
            onPressed: () {
              print('hellow world');
            },
          )
        ],
      ),
      body: Stack(
        children: [Body()],
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Opacity(opacity: 0.5, child: Image.asset('headshot.png')),
                    Text('I\'m Mark\nA software developer\nand teacher')
                  ],
                )
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(),
        )
      ],
    );
  }
}
