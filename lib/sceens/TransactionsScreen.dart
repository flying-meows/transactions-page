import 'package:flutter/material.dart';

class TransactionsScreen extends StatelessWidget {
  @override
  //Just a comment to test forking
  Widget build(BuildContext context) {
    var boxDecoration = BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      gradient: LinearGradient(
        begin: AlignmentDirectional.bottomStart,
        end: AlignmentDirectional.topEnd,
        colors: [Colors.purple[600], Colors.purpleAccent],
      ),
    );
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
                child: Image.asset("assets/images/profile.png",
                    fit: BoxFit.contain),
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
                    "Meow",
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
            // https://api.flutter.dev/flutter/material/Card-class.html
            // Inkwell not showing ripple when used with Container decoration
            // <https://stackoverflow.com/a/57866878/>
            // Tappable Card
            child: Ink(
                height: 200,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.blueAccent, Colors.blue[400]]),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: InkWell(
                  splashColor: Colors.red.withAlpha(30),
                  //  <https://stackoverflow.com/a/64410674>
                  customBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  onTap: () {
                    print('Card tapped.');
                  },
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
                  ),
                ))),
        // <https://stackoverflow.com/a/51464163/>
        Container(
          margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Material(
            // <----------------------------- Outer Material
            shadowColor: Colors.grey[10],
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 6.0,
            child: Container(
              decoration: boxDecoration,
              child: Material(
                // <------------------------- Inner Material
                type: MaterialType.transparency,
                elevation: 6.0,
                color: Colors.transparent,
                shadowColor: Colors.grey[50],
                child: InkWell(
                  //<------------------------- InkWell
                  customBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  splashColor: Colors.red,
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.notification_important,
                          size: 40.0,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              "Security Alerts",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),

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
                    contentPadding:
                        EdgeInsets.only(left: 16, right: 16, top: 5, bottom: 5),
                    trailing: Text(
                      "DEBIT",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.greenAccent),
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
