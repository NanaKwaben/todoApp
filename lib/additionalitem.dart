import 'package:flutter/material.dart';
import 'package:todoapp_assignment/todo.dart';

class AdditionalItem extends StatelessWidget {
  const AdditionalItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.menu_open_sharp)],
        centerTitle: true,
        title: Text("Add new item"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.blueAccent),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 8),
            child: Text("Activity:"),
          ),
          TextField(
            
            textInputAction: TextInputAction.continueAction),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 8),
            child: Text("Description:"),
          ),
          TextField(textInputAction: TextInputAction.continueAction),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 8),
            child: Text("Place:"),
          ),
          TextField(textInputAction: TextInputAction.continueAction),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 8),
            child: Text("Notification", ),
          ),
          TextField(textInputAction: TextInputAction.continueAction),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(70, 20, 70, 20),
            child: Center(
              child: TextButton(
                
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xff1976d2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(80.0, 20, 70, 20),
                    child: Text("Save",
                        style: TextStyle(color: Colors.white)),
                  ),
                  onPressed: () {}),
            ),
          )
        ]),
      ),
    );
  }
}
