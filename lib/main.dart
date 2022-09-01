import 'package:flutter/material.dart';
import 'UI/Intray/intray_page.dart';
import 'models/global.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.grey,
      home: SafeArea(
        child: DefaultTabController(
            length: 3,
            child: Scaffold(
                body: Stack(children: [
                  TabBarView(
                    children: [
                      const IntrayPage(),
                      Container(color: Colors.orange),
                      Container(color: Colors.lightGreen),
                    ],
                  ),
                  Container(
                      padding: const EdgeInsets.only(left: 50),
                      height: 160,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          ),
                          color: Colors.white),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Intray",
                              style: intrayTitleStyle,
                            ),
                            Container()
                          ])),
                  Container(
                    height: 80,
                    width: 80,
                    margin: EdgeInsets.only(
                        top: 120,
                        left: MediaQuery.of(context).size.width * 0.5 - 40),
                    child: FloatingActionButton(
                      child: const Icon(Icons.add, size: 70),
                      backgroundColor: redColor,
                      onPressed: () {},
                    ),
                  )
                ]),
                appBar: AppBar(
                    elevation: 0,
                    title: const TabBar(
                      tabs: [
                        Tab(
                          icon: Icon(Icons.home),
                        ),
                        Tab(icon: Icon(Icons.rss_feed)),
                        Tab(icon: Icon(Icons.perm_identity)),
                      ],
                      labelColor: darkGreyColor,
                      unselectedLabelColor: Colors.blue,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorPadding: EdgeInsets.all(5.0),
                      indicatorColor: Colors.transparent,
                    ),
                    backgroundColor: Colors.white),
                backgroundColor: Colors.white)),
      ),
    );
  }
}
