// In this sample the icon button's background color is defined with an [Ink]
// widget whose child is an [IconButton]. The icon button's filled background
// is a light shade of blue, it's a filled circle, and it's as big as the
// button is.

import 'package:flutter/material.dart';
import 'package:ddm_rc/services/ddm_service.dart';
import 'package:ddm_rc/generated/ddm.pbenum.dart';

void main() => runApp(new DdmRemoteControlApp());

class DdmRemoteControlApp extends StatefulWidget {
  _DdmRemoteControlAppState createState() => _DdmRemoteControlAppState();
}

class _DdmRemoteControlAppState extends State<DdmRemoteControlApp> {
  bool res;
  String error;

  @override
  void initState() {
    res = false;
    error = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(),
      home: Scaffold(
          body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              MaterialButton(
                  height: 160,
                  minWidth: 260,
                  onPressed: () async =>
                      switchInput(SwitchInputRequest_InputType.USB_C),
                  color: Colors.black,
                  colorBrightness: Brightness.values[0],
                  child: Text(
                    "USB-C",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )),
              SizedBox(height: 100),
              MaterialButton(
                  height: 160,
                  minWidth: 260,
                  onPressed: () async =>
                      switchInput(SwitchInputRequest_InputType.DP1),
                  color: Theme.of(context).primaryColor,
                  child: Text(
                    "DP",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )),
              SizedBox(height: 100),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Status: "),
                    res ? Text("good") : Text("bad (" + error + ")")
                  ]),
            ],
          ),
        ),
      )),
    );
  }

  Future<void> switchInput(SwitchInputRequest_InputType type) async {
    var hello = await DisplayManagerService.switchInput(type);
    setState(() {
      res = hello.okay;
      error = hello.error;
    });
  }
}
