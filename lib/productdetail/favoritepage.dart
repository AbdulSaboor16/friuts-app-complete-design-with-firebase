import 'package:flutter/material.dart';
import 'package:fruitproject/data.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      // resizeToAvoidBottomInset : false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'My Favourite',
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: ListView.builder(
          itemCount: favoriteItem.length,
          itemBuilder: (context, index) {
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 100,
                        width: screenWidth,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 100,
                              width: 120,
                              child: Image.asset(favoriteItem[index]["image"]),
                            ),
                            Container(
                              height: 100,
                              width: 120,
                              child: Column(
                                children: [
                                  Container(
                                    height: 50,
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      favoriteItem[index]["prodname"],
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ),
                                  Container(
                                    height: 50,
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      favoriteItem[index]["name"],
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 100,
                              width: 120,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "\$ ${favoriteItem[index]["price"]}",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Icon(Icons.arrow_forward_ios)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }),
      bottomNavigationBar: Material(
        color: Color.fromRGBO(83, 177, 117, 1),
        child: InkWell(
          onTap: () {
            showDialog(
                barrierDismissible: false,
                context: context,
                builder: (_) => AlertDialog(
                      // title: Text("No user found for that email."),
                       shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      alignment: Alignment.centerLeft,
                                      child: IconButton(
                                          onPressed: () {
                                             Navigator.pop(context);
                                          },
                                          icon: Icon(
                                            Icons.clear,
                                            color: Colors.black,
                                          )),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 150,
                                      width: 200,
                                      alignment: Alignment.center,
                                      child:
                                          Image.asset("assets/images/imag.png"),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 70,
                                      width: 220,
                                      alignment: Alignment.center,
                                      child: Text("Oops! Order Failed",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black)),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 220,
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                          "Something went tembly wrong.",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black)),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        height: 50,
                                        width: 220,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color:
                                                Color.fromRGBO(83, 177, 117, 1),
                                            borderRadius:
                                                BorderRadius.circular(15.0)),
                                        child: TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                            "Please Try Again",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                        )),
                                  ],
                                ),
                                 Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 220,
                                      alignment: Alignment.center,
                                      child: Text(
                                          "Back to home",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black)),
                                    ),
                                  ],
                                ),
                              ],
                            ))
                      ],
                    ));
          },
          child: const SizedBox(
            height: kToolbarHeight,
            width: double.infinity,
            child: Center(
              child: Text(
                'Add All To Cart',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
