import 'package:flutter/material.dart';
import 'package:api_cep_search/api_cep_search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo apiCEP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo apiCEP'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: FutureBuilder<SearchCep>(
              future: SearchCep.getInstance("15370496"),
              builder: (context, snapshot) {
                if (snapshot.data == null) return Container();

                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      snapshot.data.code,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(snapshot.data.state, style: TextStyle(fontSize: 20)),
                    Text(snapshot.data.city, style: TextStyle(fontSize: 20)),
                    Text(snapshot.data.district,
                        style: TextStyle(fontSize: 20)),
                    Text(snapshot.data.address, style: TextStyle(fontSize: 20)),
                  ],
                );
              })),
    );
  }
}
