import "package:flutter/material.dart";
import "user_item.dart";
import "user.dart";

List<User> users = <User>[
  User("Sam", 32, 14, "1.jpg"),
  User("Sarah", 39, 4, "2.jpg"),
  User("Erica", 22, 1, "3.jpg"),
  User("Barb", 25, 12, "4.jpg"),
  User("Jennifer", 22, 19, "5.jpg"),
  User("Brandy", 35, 11, "6.jpg"),
  User("Joelle", 33, 6, "7.jpg"),
  User("Kris", 39, 4, "8.jpg"),
  User("Katie", 28, 3, "9.jpg"),
  User("Jen", 26, 9, "10.jpg"),
];

class DatingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Stupid Dating App",
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu, color: Colors.lightBlue),
          title: Row(
            children: <Widget>[
              Text(
                "Incoming",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Icon(Icons.arrow_drop_down, color: Colors.lightBlue),
            ],
          ),
          actions: <Widget>[
            Icon(Icons.filter_list, color: Colors.lightBlue),
          ],
        ),
        body: UserList(),
      ),
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
    );
  }
}

class UserList extends StatefulWidget {
  @override
  UserListState createState() => UserListState();
}

class UserListState extends State<UserList> {
  List<UserItem> buildUsers() {
    return users.map((user) {
      return UserItem(user: user);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final userList = buildUsers();

    return Container(
      child: ListView(
        children: userList,
      ),
    );
  }
}
