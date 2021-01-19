import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> listItems = [
    {
      "text": "Item 1",
      "color": Colors.blue[600],
    },
    {
      "text": "Item 2",
      "color": Colors.blue[300],
    },
    {
      "text": "Item 3",
      "color": Colors.blue[100],
    },
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "List Demo",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              height: 125,
              padding: EdgeInsets.all(4),
              //childrenを指定してリスト表示
              child: ListView(
                children: <Widget>[
                  Container(
                    height: 50,
                    color: Colors.blue[600],
                    child: Text("Item 1"),
                  ),
                  Container(
                    height: 50,
                    color: Colors.blue[300],
                    child: Text("Item 2"),
                  ),
                  Container(
                    height: 50,
                    color: Colors.blue[100],
                    child: Text("Item 3"),
                  ),
                ],
              ),
            ),
            Container(
              height: 125,
              padding: EdgeInsets.all(4),
              //配列を元にリスト表示
              child: ListView.builder(
                itemCount: listItems.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 50,
                    color: listItems[index]["color"],
                    child: Text(listItems[index]["text"]),
                  );
                },
              ),
            ),
            Container(
              height: 125,
              padding: EdgeInsets.all(4),
              //各アイテムの間にスペースなどをはさみたい場合
              child: ListView.separated(
                itemCount: listItems.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 50,
                    color: listItems[index]["color"],
                    child: Text(listItems[index]["text"]),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider();
                },
              ),
            ),

            //タイトル・サブタイトル・画像・アイコンなどを含めたアイテムを作る
            ListTile(
              leading: Image.network('https://placehold.jp/50x50.png'),
              title: Text("ListTile"),
              subtitle: Text("subtitle"),
              trailing: Icon(Icons.more_vert),
            ),
            //影の着いたカードUIが作れる
            Card(
              child: Container(
                height: 60,
                width: double.infinity,
                child: Text("Card"),
              ),
            ),
            //組み合わせることもOK
            Card(
              child: ListTile(
                leading: Image.network('https://placehold.jp/50x50.png'),
                title: Text('Card and ListTile'),
                subtitle: Text('subtitle'),
                trailing: Icon(Icons.more_vert),
              ),
            ),
          ],
        ),
      ),
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
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
