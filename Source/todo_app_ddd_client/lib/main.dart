import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("TodoAppDdd"),
          ),
          body: Column(
            children: <Widget>[
              Container(
                child: TextField(),
                margin: EdgeInsets.all(20),
              ),
              Expanded(
                child: ListView(children: [
                  TodoItem(context),
                ]),
              ),
            ],
          ),
        ));
  }

  Row TodoItem(BuildContext context) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 50,
                margin: EdgeInsets.only(left: 20, right: 20),
                child: RaisedButton(
                    child: Text("✓", style: Theme.of(context).textTheme.button,),
                    onPressed: () => {}),
              ),
              Expanded(
                child: Text(
                  'Weihnachten feiern ',
                  style: Theme.of(context).textTheme.subhead,
                ),
              ),
            ],
          );
  }
}
