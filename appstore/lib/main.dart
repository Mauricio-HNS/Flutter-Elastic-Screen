import 'package:flutter/material.dart';
import 'package:elastic_drawer/elastic_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return ElasticDrawer(
      mainColor: Colors.white,
      drawerColor: const Color(0xff3C3F41),
      mainChild: const Center(
        child: Text(
          'MAIN page',
          style: TextStyle(color: Colors.black54, fontSize: 30),
        ),
      ),
      drawerChild: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              ElasticDrawerKey.drawer.currentState?.closeElasticDrawer(context);
              ElasticDrawerKey.navigator.currentState?.push(
                  MaterialPageRoute(builder: (context) => const YellowPage()));
            },
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'First Page',
                style: TextStyle(
                    color: Color.fromARGB(255, 14, 7, 82),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              ElasticDrawerKey.drawer.currentState?.closeElasticDrawer(context);
              ElasticDrawerKey.navigator.currentState?.push(
                  MaterialPageRoute(builder: (context) => const GreenPage()));
            },
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Second page',
                style: TextStyle(
                    color: Color.fromARGB(255, 15, 102, 216),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              ElasticDrawerKey.drawer.currentState?.closeElasticDrawer(context);
              ElasticDrawerKey.navigator.currentState?.push(
                  MaterialPageRoute(builder: (context) => const RedPage()));
            },
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Third page',
                style: TextStyle(
                    color: Color.fromARGB(255, 91, 159, 180),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GreenPage extends StatelessWidget {
  const GreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: Color.fromARGB(255, 60, 186, 186));
  }
}

class YellowPage extends StatelessWidget {
  const YellowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: Color.fromARGB(255, 13, 105, 244));
  }
}

class RedPage extends StatelessWidget {
  const RedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: Color.fromARGB(255, 10, 8, 114));
  }
}
