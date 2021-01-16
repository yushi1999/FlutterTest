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
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
            body: Column(
          children: <Widget>[
            Container(
                width: double.infinity,
                height: 70,
                color: Colors.grey[200],
                child: Column(
                  children: <Widget>[
                    Text('first line'),
                    Text('second line'),
                  ],
                )),
            Container(
                width: double.infinity,
                height: 70,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('***'),
                    Text('中央寄せ'),
                  ],
                )),
            Container(
              width: double.infinity,
              height: 70,
              color: Colors.grey[200],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text("***"),
                  Text('下寄せ'),
                ],
              ),
            ),
            Container(
                width: double.infinity,
                height: 70,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('***'),
                    Text('均等に配置'),
                  ],
                )),
            Container(
                width: double.infinity,
                height: 70,
                color: Colors.grey[200],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("***"),
                    Text("左寄せ"),
                  ],
                )),
            Container(
              width: double.infinity,
              height: 70,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text("***"),
                  Text("右寄せ"),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 70,
              color: Colors.grey[200],
              child: Row(
                //横に並べる
                children: <Widget>[
                  Container(color: Colors.red, child: Text("first")),
                  Container(color: Colors.blue, child: Text("second")),
                  Container(color: Colors.green, child: Text("third")),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 70,
              child: Row(
                //中央寄せ
                //mainAxisAlignment: MainAxisAlignment.center,
                //右寄せ
                //mainAxisAlignment: MainAxisAlignment.end,
                //均等配置
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(color: Colors.red, child: Text("***")),
                  Container(color: Colors.blue, child: Text("***")),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 70,
              color: Colors.grey[200],
              child: Row(
                //上寄せ
                crossAxisAlignment: CrossAxisAlignment.start,
                //下寄せ
                //crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(color: Colors.red, child: Text('***')),
                  Container(color: Colors.green, child: Text('---')),
                ],
              ),
            ),
          ],
        )));
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
