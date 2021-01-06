import 'package:flutter/material.dart';

class TransactionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          // Padding on the left of the profile image
          padding: EdgeInsets.only(left: 20, top: 10),
          // Profile image and Text placed in a row
          child: Row(
            children: [
              // Profile image
              SizedBox(
                width: 80,
                height: 80,
                child: Image.asset("images/profile.png", fit: BoxFit.contain),
              ),
              // Hello Text and Username set to right
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Hello, ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  Text(
                    "Username",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(
            padding: EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 10),
            child: Container(
                // Block under profile image and username
                height: 200,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.blueAccent, Colors.blue[400]]),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Total Transaction Amount",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Text(
                        "\$2.67M",
                        style: TextStyle(color: Colors.white, fontSize: 42),
                      ),
                    ],
                  ),
                )))
      ],
    );
  }
}
