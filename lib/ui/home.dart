import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: HomePage(title: ''),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: searchbar(context),
        ),
      ),
    );
  }

  List<Widget> searchbar(BuildContext context) {
    return <Widget>[
      new SearchBar(),
    ];
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.red,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                getTop(context),
              ],
            ),
            Row(
              children: <Widget>[
                ListView(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.map),
                      title: Text('Mapa'),
                    ),
                    ListTile(
                      leading: Icon(Icons.photo_album),
                      title: Text('Album'),
                    ),
                    ListTile(
                      leading: Icon(Icons.phone),
                      title: Text('Fone'),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  SizedBox getTop(BuildContext context) {
    return SizedBox(
      height: 240,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(50, 30, 50, 20),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  Center(
                    child: Text(
                      'KTAMOBI',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 60,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            labelText: "Pesquise aqui",
                            labelStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)))),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
