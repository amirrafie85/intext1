//in the name of GOD
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'amir todo',
    home: Scaffold(
      appBar: AppBar(
        title: Text('amir TODO list'),
        backgroundColor: Colors.black26,
        foregroundColor: Colors.white,
        elevation: 100000000000,
      ),
      body: ListView(
        children: [
          todo(),
          todo(),
          todo(),
          todo(),
          todo(),
          todo(),
          todo(),
          todo(),
          todo(),
          todo(),
          todo(),
          todo(),


        ],
      ),
      drawer: Drawer(
        child: ListView(
            children: [
        ListTile(
        title: Text('about us'),
        trailing: Icon(Icons.contact_mail_sharp),
      ),
      ListTile(
        title: Text('help we'),
        trailing: Icon(Icons.help),
      ),
      ListTile(
        title: Text('primeom app'),
        trailing: Icon(Icons.policy_rounded),
      )],
      ),
    ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
        ],
      ),
  ),
  ));
}

class todo extends StatefulWidget {
  todo({Key? key}) : super(key: key);

  @override
  State<todo> createState() => _todoState();
}

class _todoState extends State<todo> {
  var todotext;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          setState(() {
            isChecked = true;
          });
        },
        child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('master MANI RAHMANZADEH'),
              Icon(isChecked ? Icons.check_box_rounded : Icons
                  .check_box_outlined)
            ],
          ),
        ));
  }
}
