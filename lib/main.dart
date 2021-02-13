import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Winny'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: BodyLayout2()
    );
  }
}

// class BodyLayout extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return _carView();
//   }
// }

class BodyLayout2 extends StatefulWidget {
  @override
  MyState createState() => MyState();
}

class MyState extends State<BodyLayout2> {
  int totalPrice = 0;

  addPrice(int price) {
    setState(() {
      totalPrice = totalPrice + price;
      print('Total Price: ' + totalPrice.toString());
      print('Price: ' + price.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return _carView();
  }

  Widget _carView() {
    return ListView(
        children: <Widget>[
          Text('Total Price: ฿' + totalPrice.toString()),
          ListTile(
            leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/honda-brv.jpg')
            ),
            title: Text('Honda BRV'),
            subtitle: Text('Price ฿20,000'),
            onTap: () {
              print('Item 1');
              addPrice(20000);
            },
          ),
          ListTile(
            leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/mazda-cx-5.png')
            ),
            title: Text('Mazda CX-5'),
            subtitle: Text('Price ฿40,000'),
            onTap: () {
              print('Item 2');
              addPrice(40000);
            },
          ),
          ListTile(
            leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/tesla-roadster-reserve-01.jpg')
            ),
            title: Text('Tesla Roadster Reserve 01'),
            subtitle: Text('Price ฿100,000'),
            onTap: () {
              print('Item 3');
              addPrice(100000);
            },
          ),
          ListTile(
            leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/toyota-alphard.png')
            ),
            title: Text('Toyota Alphard'),
            subtitle: Text('Price ฿50,000'),
            onTap: () {
              print('Item 4');
              addPrice(50000);
            },
          ),
          ListTile(
            leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/nissan-almera.jpg')
            ),
            title: Text('Nissan Almera'),
            subtitle: Text('Price ฿40,000'),
            onTap: () {
              print('Item 5');
              addPrice(40000);
            },
          ),
          ListTile(
            leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/nissan-gtr-2021.jpg')
            ),
            title: Text('Nissan GTR 2021'),
            subtitle: Text('Price ฿89,000'),
            onTap: () {
              print('Item 6');
              addPrice(89000);
            },
          ),
          ListTile(
            leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/nissan-kicks.jpg')
            ),
            title: Text('Nissan Kicks'),
            subtitle: Text('Price ฿90,000'),
            onTap: () {
              print('Item 7');
              addPrice(90000);
            },
          ),
          ListTile(
            leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/nissan-leaf.png')
            ),
            title: Text('Nissan Leaf'),
            subtitle: Text('Price ฿53,000'),
            onTap: () {
              print('Item 8');
              addPrice(53000);
            },
          ),
          ListTile(
            leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/nissan-navara.jpg')
            ),
            title: Text('Nissan Navara'),
            subtitle: Text('Price ฿68,000'),
            onTap: () {
              print('Item 9');
              addPrice(68000);
            },
          ),
          ListTile(
            leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/nissan-navara-kingcab.jpeg')
            ),
            title: Text('Nissan Navara Kingcab'),
            subtitle: Text('Price ฿200,000'),
            onTap: () {
              print('Item 10');
              addPrice(200000);
            },
          ),
        ]
    );
  }
}

// Widget _carView() {
//   return ListView(
//     children: <Widget>[
//       ListTile(
//         leading: CircleAvatar(
//           backgroundImage: AssetImage('assets/images/honda-brv.jpg')
//         ),
//         title: Text('Honda BRV'),
//         subtitle: Text('Price ฿20,000'),
//         onTap: () {
//           print('Item 1');
//         },
//       ),
//       ListTile(
//         leading: CircleAvatar(
//             backgroundImage: AssetImage('assets/images/mazda-cx-5.png')
//         ),
//         title: Text('Mazda CX-5'),
//         subtitle: Text('Price ฿40,000'),
//         onTap: () {
//           print('Item 2');
//         },
//       ),
//       ListTile(
//         leading: CircleAvatar(
//             backgroundImage: AssetImage('assets/images/tesla-roadster-reserve-01.jpg')
//         ),
//         title: Text('Tesla Roadster Reserve 01'),
//         subtitle: Text('Price ฿100,000'),
//         onTap: () {
//           print('Item 3');
//         },
//       ),
//       ListTile(
//         leading: CircleAvatar(
//             backgroundImage: AssetImage('assets/images/toyota-alphard.png')
//         ),
//         title: Text('Toyota Alphard'),
//         subtitle: Text('Price ฿50,000'),
//         onTap: () {
//           print('Item 4');
//         },
//       ),
//       ListTile(
//         leading: CircleAvatar(
//             backgroundImage: AssetImage('assets/images/nissan-almera.jpg')
//         ),
//         title: Text('Nissan Almera'),
//         subtitle: Text('Price ฿40,000'),
//         onTap: () {
//           print('Item 5');
//         },
//       ),
//       ListTile(
//         leading: CircleAvatar(
//             backgroundImage: AssetImage('assets/images/nissan-gtr-2021.jpg')
//         ),
//         title: Text('Nissan GTR 2021'),
//         subtitle: Text('Price ฿89,000'),
//         onTap: () {
//           print('Item 6');
//         },
//       ),
//       ListTile(
//         leading: CircleAvatar(
//             backgroundImage: AssetImage('assets/images/nissan-kicks.jpg')
//         ),
//         title: Text('Nissan Kicks'),
//         subtitle: Text('Price ฿90,000'),
//         onTap: () {
//           print('Item 7');
//         },
//       ),
//       ListTile(
//         leading: CircleAvatar(
//             backgroundImage: AssetImage('assets/images/nissan-leaf.png')
//         ),
//         title: Text('Nissan Leaf'),
//         subtitle: Text('Price ฿53,000'),
//         onTap: () {
//           print('Item 8');
//         },
//       ),
//       ListTile(
//         leading: CircleAvatar(
//             backgroundImage: AssetImage('assets/images/nissan-navara.jpg')
//         ),
//         title: Text('Nissan Navara'),
//         subtitle: Text('Price ฿68,000'),
//         onTap: () {
//           print('Item 9');
//         },
//       ),
//       ListTile(
//         leading: CircleAvatar(
//             backgroundImage: AssetImage('assets/images/nissan-navara-kingcab.jpeg')
//         ),
//         title: Text('Nissan Navara Kingcab'),
//         subtitle: Text('Price ฿200,000'),
//         onTap: () {
//           print('Item 10');
//         },
//       ),
//     ]
//   );
// }