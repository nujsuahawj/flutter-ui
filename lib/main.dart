import 'package:all_ui_by_jack/product_page.dart';
import 'package:all_ui_by_jack/seach_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'ຮຽນການອອກແບບ'),
      debugShowCheckedModeBanner: false,
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
  List<String> images = [
    "assets/images/mysel.jpg",
    "assets/images/mysel.jpg",
  ];
  var title = ["24/5/2022", "24/5/2022"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchBarDelegate()),
                );
              }),
        ],
      ),
      body: ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) {
          // ignore: prefer_const_constructors
          return GestureDetector(
            onTap:()=> print(title[index]),
            // onTap: () {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //         builder: (context) => ProductPage(
            //               image: images[index],
            //               title: title[index],
            //             )),
            //   );
            // },
            // ignore: unnecessary_new
            child: new Card(
              child: ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage(images[index]),),
                // ignore: prefer_const_constructors
                title: Text(title[index],
                  // ignore: prefer_const_constructors
                  style: TextStyle(color: Colors.white),
                ),
              ),
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('ໜ້າຫຼັກ'),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('ລາຍການ'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('ຂໍ້ມູນ'),
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.blue,
        onTap: (newIndex) => {
          if (newIndex == 0)
            {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchBarDelegate()),
              )
            },
          if (newIndex == 1)
            {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              )
            },
          if (newIndex == 2)
            {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Prodcuts()),
              )
            },
        },
      ),
    );
  }
}
