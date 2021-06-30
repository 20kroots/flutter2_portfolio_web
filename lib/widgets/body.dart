import 'package:flutter/material.dart';
import 'package:mailto/mailto.dart';
import 'package:portfolio_web/utils/util.dart';
import 'package:portfolio_web/widgets/contact_button.dart';
import 'package:url_launcher/url_launcher.dart';

class Body extends StatelessWidget {
  final List projectsList = [
    {
      'title': 'Building a Cat',
      'subtitle': 'Great client',
      'image': 'https://picsum.photos/id/100/400/300'
    },
    {
      'title': 'Building a Cat',
      'subtitle': 'Great client',
      'image': 'https://picsum.photos/id/100/400/300'
    },
    {
      'title': 'Building a Cat',
      'subtitle': 'Great client',
      'image': 'https://picsum.photos/id/100/400/300'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Expanded(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Opacity(opacity: 0.5, child: Image.asset('headshot.png')),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'I\'m Mark\nA software developer\nand teacher',
                              style: TextStyle(
                                  fontSize: 44.5, color: Colors.blueGrey),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 75, vertical: 60),
                                child: ContactButton(
                                  buttonText: 'Drop me a line',
                                  icon: Icon(Icons.mail_outline),
                                  onPressed: () {
                                    launchMailto();
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  'My Projects',
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w600,
                      fontSize: 23),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: projectsList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        children: [
                          Card(
                            elevation: 3,
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Icon(Icons.work),
                                  title: Text(projectsList[index]['title']),
                                  subtitle:
                                      Text(projectsList[index]['subtitle']),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Image.network(
                                      projectsList[index]['image']),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 100,
        )
      ],
    );
  }
}
