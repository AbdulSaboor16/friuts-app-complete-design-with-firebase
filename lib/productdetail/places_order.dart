import 'package:flutter/material.dart';

class PlacesOrder extends StatefulWidget {
  const PlacesOrder({super.key});

  @override
  State<PlacesOrder> createState() => _PlacesOrderState();
}

class _PlacesOrderState extends State<PlacesOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   elevation: 0,
      //    title: Image.asset('assets/images/rectangle.png', fit: BoxFit.cover),
      // ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child:
                        Stack(alignment: AlignmentDirectional.center, children: [
                      Container(
                        height: 500,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Image.asset("assets/images/rectangle.png"),
                      ),
                      Positioned(
                        left: 50,
                        child: Container(
                          height: 500,
                          alignment: Alignment.center,
                          child: Image.asset("assets/images/group.png"),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 100,
                      margin: EdgeInsets.only(left: 30, right: 30),
                      child: Text(
                        "Your Order has been accepted",
                        style:
                            TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 50,
                      width: 100,
                      margin: EdgeInsets.only(left: 30, right: 30),
                      child: Text(
                        "Your items has been placcd and is on it’s way to being processed",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 50,
                      width: 100,
                      margin: EdgeInsets.only(left: 30, right: 30),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(83, 177, 117, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                        child: Text("Track Order"),
                      ),
                    ),
                  ),
                ],
              ),
               Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 100,
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 30, right: 30),
                      child: Text(
                        "Back to home",
                        style:
                            TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
