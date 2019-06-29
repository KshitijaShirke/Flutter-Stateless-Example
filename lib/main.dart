import 'package:flutter/material.dart';
import 'otherpage.dart';

void main() {
  runApp(new MaterialApp(home: new MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Drawer"),
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Kshitija Shirke"),
              accountEmail: new Text("learning@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.black26,
                child: new Text("K"),
              ),
              decoration: new BoxDecoration(
                color: Colors.orange,
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor: Colors.black26,
                  child: new Text("R"),
                ),
                new CircleAvatar(
                  backgroundColor: Colors.black26,
                  child: new Text("S"),
                ),
              ],
            ),
            new ListTile(
              title: new Text("Page 1"),
              trailing: new Icon(Icons.forward),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new OtherPage("Page 1"))),
            ),
            new ListTile(
              title: new Text("Page 2"),
              trailing: new Icon(Icons.forward),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new OtherPage("Page 2"))),
            ),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
