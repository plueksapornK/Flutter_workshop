import 'package:flutter/material.dart';

class StateOne extends StatefulWidget {
  const StateOne({Key key}) : super(key: key);

  @override
  _StateOneState createState() => _StateOneState();
}

class _StateOneState extends State<StateOne> {
  String textInput = '';
  final textfieldController = TextEditingController();

  void doPrint() {
    print(textfieldController.text);
    onTextChange();
  }

  void onTextChange() {
    setState(() {
      textInput = textfieldController.text;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    textfieldController.addListener(doPrint);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Example StatefulWidget")),
        body: Container(
            child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(left: 50, right: 50, bottom: 10),
                child: TextField(
                  decoration: InputDecoration(
                    isDense: true,
                  ),
                  controller: textfieldController,
                )),
            ElevatedButton(onPressed: doPrint, child: Text('Print text')),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Your text: "), Text(textInput)],
            )
          ],
        )));
  }
}
