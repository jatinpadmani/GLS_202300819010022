import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Web Design UI',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: Colors.white,
        elevation: 0,
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    color: Colors.grey[300],
                    width: 50,
                    height: 30,
                  ),
                  _buildMenuItem('Home'),
                  _buildMenuItem('About Us'),
                  _buildMenuItem('Contact'),
                ],
              ),
              Container(
                width: 75,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.grey[200],
                    elevation: 0,
                  ),
                  child: Text(
                    'Call to action',
                    style: TextStyle(fontSize: 8),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'The future of web design, today',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'The future of web design, today',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[700],
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Container(
                          width: 75,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Call to action',
                              style: TextStyle(fontSize: 8),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Container(
                    color: Colors.grey[300],
                    width: 200,
                    height: 200,
                    // Placeholder for an image or graphic
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.grey[100],
              width: double.infinity,
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  Text(
                    "Don’t forget to grab this one, it’s free!",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    "Download the Ultimate con tomate guide.",
                    style: TextStyle(fontSize: 10),
                  ),
                  SizedBox(width: 20.0),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.grey[300],
                      elevation: 0,
                    ),
                    child: Text('Call to action'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'What we do',
                          style: TextStyle(
                            fontSize: 8,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          'Our mission is very \n'
                              'important to the planet:\n'
                              'we plant as many trees \n'
                              'as possible.',
                          style: TextStyle(fontSize: 8),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'Can you figure out?',
                          style: TextStyle(fontSize: 9),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      children: [
                        _buildFeatureItem('We recycle everything \n'
                            'we see'),
                        _buildFeatureItem('We teach people how \n'
                            'to reuse their stuff'),
                        _buildFeatureItem('We believe in human \n'
                            'beings as problem \n'
                            'solvers'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Featured things',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Our mission is very important to the planet: we plant as many trees as possible. Can you figure out?',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 32.0),
                  SingleChildScrollView(
                    scrollDirection:Axis.horizontal,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:[
                        _buildCard(),
                        _buildCard(),
                        _buildCard(),
                                    ],
                                  ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    "Our mission is very important to the planet:\nwe plant as many trees as possible. Can you figure out?",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 50,),
                  Text(
                    "Call to action",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),

            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 10,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _buildFeatureItem(String title) {
    return Row(
      children: [
        Container(
          width: 20,
          height: 20,
          color: Colors.grey[300],
          margin: EdgeInsets.only(right: 8.0),
        ),
        Text(
          title,
          style: TextStyle(fontSize: 10),
        ),
      ],
    );
  }

  Widget _buildCard() {
    return Container(
      height: 100,
      width: 100,
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Text('The future of web\n design, today',style: TextStyle(fontSize: 10),),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 20,
              width: 80,
              child: ElevatedButton(
                onPressed: () {
                },
                child: Text('Call to action',style: TextStyle(fontSize: 5),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
