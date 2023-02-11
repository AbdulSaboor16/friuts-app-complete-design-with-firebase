import 'package:flutter/material.dart';
import 'package:fruitproject/data.dart';
import 'package:fruitproject/widget/favouriteproductpage.dart';

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
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const FavouriteProductPage()),
            );
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
