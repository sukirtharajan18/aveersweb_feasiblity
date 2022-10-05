import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.black,
                    child: IntrinsicHeight(
                      child: Container(
                        margin: EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextButton(
                                  child: const Text(
                                    'Home',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Poppins Regular',
                                    ),
                                  ),
                                  onPressed: () {
                                    print('Home pressed');
                                  },
                                ),
                                TextButton(
                                  child: const Text(
                                    'Contact US',
                                    style: TextStyle(
                                        fontFamily: 'Poppins Regular',
                                        color: Colors.white),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => contact()),
                                    );
                                  },
                                ),
                              ],
                            ),
                            Image.asset('assets/bird.png')
                          ],
                        ),
                      ),
                    )),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(25.0, 50.0, 25.0, 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Why we started this company?',
                    style: TextStyle(
                      fontFamily: 'Poppins Bold',
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Divider(),
                  Text(
                      'We wanted to create a world class platform for students to learn, experiment and be highly professional in solving world problems. If we existed for next 100 years we want education to be free amd students are empowered to make the world a better place than previous generations.',
                      style: TextStyle(fontFamily: 'Poppins Regular')),
                  Text(
                    '\nWhat do we do daily?',
                    style: TextStyle(
                      fontFamily: 'Poppins Bold',
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Divider(),
                  Text(
                      'We organize the student data and make products & services to make businesses profitable.',
                      style: TextStyle(fontFamily: 'Poppins Regular')),
                  Text(
                    '\nHow do we make this happen?',
                    style: TextStyle(
                      fontFamily: 'Poppins Bold',
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Divider(),
                  Text(
                      'In addition to organizing student data daily, we also provide business solutions for your digital presence like website creation, Mobile App development and other touchpoints like Facebook, Pinterest, Instagram, Twitter, Googlemaps, etc…',
                      style: TextStyle(fontFamily: 'Poppins Regular')),
                ],
              ),
            )
          ],
        )
      ],
    )));
  }
}

class contact extends StatelessWidget {
  const contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      height: MediaQuery.of(context).size.height,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                child: IntrinsicHeight(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextButton(
                              child: const Text(
                                'Home',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Poppins Regular',
                                ),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            TextButton(
                              child: const Text(
                                'Contact US',
                                style: TextStyle(
                                    fontFamily: 'Poppins Regular',
                                    color: Colors.black),
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )),
          ],
        ),
        Container(
          margin: EdgeInsets.fromLTRB(25.0, 40.0, 25.0, 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Contact US',
                style: TextStyle(fontFamily: 'Poppins Bold', fontSize: 30.0),
              ),
              Divider(),
              Text(
                '\nemail: aveersceo@gmail.com',
                style: TextStyle(fontFamily: 'Poppins Regular'),
              ),
              Text('\nwebsite: aveers.com',
                  style: TextStyle(fontFamily: 'Poppins Regular')),
            ],
          ),
        ),
      ]),
    )));
  }
}
