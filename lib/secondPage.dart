import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  Color rederColor(String param) {
    switch (param) {
      case 'Red':
        return Colors.red;
        break;
      case 'Green':
        return Colors.green;
        break;
      default:
        return Colors.yellow;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final param = ModalRoute.of(context)?.settings?.arguments as String;
    print(param);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          param,
          style: TextStyle(fontSize: 28),
        ),
      ),
      body: Container(
        color: rederColor(param),
        alignment: Alignment.center,
        child: Text(
          param,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
