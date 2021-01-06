import 'package:flutter/material.dart';

class TransactionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // Profile picture and username in the child Row
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
        // CardView below profile image and username
        Padding(
            padding: EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 10),
            child: Container(
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
                ))),
        // Title of Transactions ListView (Text with padding)
        Padding(
          padding: EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 20),
          child: Text(
            "ALL TRANSACTIONS",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        // Title of Transactions ListView (Text without padding)
        // Text(
        //   "ALL TRANSACTIONS",
        //   style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        // ),

        // Transactions ListView
        Expanded(
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromRGBO(55, 65, 104, 1)),
                  child: ListTile(
                    title: Text(
                      "Transaction $index",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    subtitle: Text(
                      "Some brief detail of transaction no $index",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
