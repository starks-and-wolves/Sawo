import 'package:flutter/material.dart';
import 'package:sawolanding/card.dart';
import 'package:sawolanding/footer.dart';
import 'sawoform_page.dart';

class MyIconButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      fillColor: Color(0xffffa500),
      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[Text('Login'), Icon(Icons.login)],
      ),
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(
            builder: (context)=>HomeScreen()
        ));
      },
    );
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SAWO Landing Page',
      debugShowCheckedModeBanner: false,
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
      ),
      home: MyHomePage(title: 'SAWO Landing Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

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
        backgroundColor: Colors.white,
        toolbarHeight: 70,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        leading: Padding(
          padding: EdgeInsets.all(5),
          child: Image.asset('assets/images/logo.jpg'),
        ),

        actions: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                  padding: EdgeInsets.all(5),
                  child: Icon(
                    Icons.menu,
                    color: Colors.black,
                  )))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
              ),
              Text(
                "Product Headline",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 44, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 30,
              ),
              FlatButton(
                  onPressed: () => {},
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 13),
                    child: Text("Call To Action",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  textColor: Colors.black,
                  color: Color(0xffffa500))
              // ,CardList()
              ,
              SizedBox(
                height: 20,
              ),
              MyIconButton(),
              SizedBox(
                height: 40,
              ),
              FeatureCard(title: "Feature One"),
              FeatureCard(title: "Feature Two"),
              FeatureCard(title: "Feature Three"),
              Footer()
            ],
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg.png"), fit: BoxFit.cover),
          ),
          // This trailing comma makes auto-formatting nicer for build methods.
        ),
      ),
    );
  }
}

class CardList extends StatelessWidget {
  const CardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['A', 'B', 'C'];
    final List<int> colorCodes = <int>[600, 500, 100];
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            color: Colors.amber[colorCodes[index]],
            child: Center(child: Text('Entry ${entries[index]}')),
          );
        });
  }
}