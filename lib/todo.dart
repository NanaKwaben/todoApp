import 'package:flutter/material.dart';

import 'additionalitem.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(children: [
              Container(
                decoration: BoxDecoration(),
                height: 200,
                width: MediaQuery.of(context).size.width * 1,
                child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1488818138649-d2734488e6d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
                  ),
                ),
              ),
              Positioned(
                bottom: 100,
                left: 20,
                child:
                Icon(Icons.calendar_view_day),),
                 Center(child: Text("Your Day Planner", style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center,)),
              
            ]),
            SizedBox(height: 15),
            Container(
                child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.run_circle_rounded),
                  title: Text(
                    "Complete 8 mile run",
                    style: TextStyle(fontStyle: FontStyle.normal,
                     color: Colors.lightBlueAccent,
                     fontSize: 20),
                  ),
                  subtitle: Text(
                    "regular morning run",
                    style: TextStyle(),
                  ),
                  trailing: Text("4:30 AM"),
                ),
                ListTile(
                  leading: Icon(Icons.meeting_room),
                  title: Text(
                    "Meeting With Akuff Addo ",
                    style: TextStyle(fontStyle: FontStyle.normal,
                     color: Colors.lightBlueAccent,
                     fontSize: 20),
                  ),
                  subtitle: Text(
                    "Follow up on outstanding projects",
                    style: TextStyle(),
                  ),
                  trailing: Text("9:15 PM"),
                ),
                ListTile(
                  leading: Icon(Icons.lunch_dining),
                  title: Text(
                    "Lunch with Ivy Barley",
                    style: TextStyle(fontStyle: FontStyle.normal,
                     color: Colors.lightBlueAccent,
                     fontSize: 20),
                  ),
                  subtitle: Text(
                    "point out missing details with new project",
                    style: TextStyle(),
                  ),
                  trailing: Text("1:30 PM"),
                ),
                ListTile(
                  leading: Icon(Icons.work),
                  title: Text(
                    "Meeting with the Team at the office",
                    style: TextStyle(fontStyle: FontStyle.normal,
                     color: Colors.lightBlueAccent,
                     fontSize: 20),
                  ),
                  subtitle: Text(
                    "Discuss salary delays",
                    style: TextStyle(),
                  ),
                  trailing: Text("3:00 PM"),
                ),
                ListTile(
                  leading: Icon(Icons.sports_tennis),
                  title: Text(
                    "Play tennis",
                    style: TextStyle(fontStyle: FontStyle.normal,
                     color: Colors.lightBlueAccent,
                     fontSize: 20
                      
                    ),
                  ),
                  subtitle: Text(
                    "aerobics seesion on Wednesdays",
                    style: TextStyle(),
                  ),
                  trailing: Text("6:00 PM"),
                ),
              ],
            ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return AdditionalItem();
        }));
      }),
    );
  }
}
