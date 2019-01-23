import "package:flutter/material.dart";
import "user.dart";

class UserItem extends StatelessWidget {
  final User user;

  UserItem({@required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        // column for the divider below
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                UserImage(userImage: user.image),
                UserData(user: user),
                UserButtons(),
              ],
            ),
          ),
          Divider(color: Colors.black45, height: 1.0),
        ],
      ),
    );
  }
}

class UserImage extends StatelessWidget {
  final String userImage;
  UserImage({@required this.userImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 9.0),
      height: 60.0,
      width: 60.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage("assets/images/" + userImage),
        ),
      ),
      // child: Image.asset("assets/images/" + userImage),
    );
  }
}

class UserData extends StatelessWidget {
  final User user;

  UserData({@required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              //user name and age
              children: <Widget>[
                Text(
                  "${user.name}",
                  style: TextStyle(
                    // fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.grey,
                  ),
                ),
                Text(", ${user.age}"),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text(
                    "${user.distance} m",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class UserButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: FancyButton(
              icon: Icon(Icons.card_giftcard, color: Colors.pink),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: FancyButton(
              icon: Icon(Icons.casino, color: Colors.lightBlue),
            ),
          ),
          //       Container(
          //         height: 50.0,
          //         width: 50.0,
          //         decoration: BoxDecoration(
          //           color: Colors.white,
          //           border: Border.all(width: 1, color: Colors.grey),
          //           borderRadius: BorderRadius.circular(5.0),
          //         ),
          //         child: Center(
          //           child: IconButton(
          //               icon: Icon(Icons.card_giftcard, color: Colors.pink),
          //               onPressed: () => null),
          //         ),
          //       ),
        ],
      ),
    );
  }
}

class FancyButton extends StatelessWidget {
  final Icon icon;
  FancyButton({@required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 50.0,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 1, color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Center(
        child: IconButton(
            //icon: Icon(Icons.card_giftcard, color: Colors.pink),
            iconSize: 30.0,
            icon: icon,
            onPressed: () => print("Button pressed")),
      ),
    );
  }
}
