import 'package:first_app/secondPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final List colors = ['Red', 'Yellow', 'Green'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          'home': (context) => App(),
          'secondPage': (context) => SecondPage(),
        },
        // initialRoute: 'home',
        home: Scaffold(
          appBar: AppBar(),
          body: Container(
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'secondPage',
                            arguments: colors[index]);
                      },
                      child: Text(
                        colors[index],
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                );
              },
              itemCount: colors.length,
            ),
          ),
        ));
  }
}
