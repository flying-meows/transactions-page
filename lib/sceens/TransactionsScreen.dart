import 'package:flutter/material.dart';

class TransactionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          // Padding on the left of the profile image
          padding: EdgeInsets.only(left: 20),
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
      ],
    );
  }
}
