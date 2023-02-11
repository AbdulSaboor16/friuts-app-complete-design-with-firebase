import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fruitproject/data.dart';
import 'package:fruitproject/productdetail/cartview.dart';
import 'package:fruitproject/productdetail/favoritepage.dart';

class BananaDetails extends StatefulWidget {
  const BananaDetails({super.key});

  @override
  State<BananaDetails> createState() => _BananaDetailsState();
}

class _BananaDetailsState extends State<BananaDetails> {
  Addofferproduct() async {
    CollectionReference offerprod =
        FirebaseFirestore.instance.collection("offerprod");
    await offerprod
        .add({
          "prodname": "Banana",
          "name": "1kg, price",
          "price": 4.99,
          "image": "assets/images/dozen.png",
          "isfavorite": false,
        })
        .then((value) => print("isfavorite Addes"))
        .catchError((e) => print(e));
  }

  Addofferbutton() async {
    CollectionReference offerbutton =
        FirebaseFirestore.instance.collection("offerbutton");
    await offerbutton
        .add({
          "prodname": "Banana",
          "name": "1kg, price",
          "price": 4.99,
          "image": "assets/images/dozen.png",
          "cart": false,
          "qty": 0,
        })
        .then((value) => print("CartView Addes"))
        .catchError((e) => print(e));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_new)),
          backgroundColor: Color.fromARGB(255, 226, 225, 225),
          iconTheme: IconThemeData(
            color: Colors.black, // <-- SEE HERE
          ),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.login_rounded))
          ],
          elevation: 0,
        ),
        body: ListView.builder(
            itemCount: offerproduct.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 300,
                          width: 500,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 226, 225, 225),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(25.0),
                                  bottomRight: Radius.circular(25.0))),
                          child: Image.asset("assets/images/dozen.png"),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 50,
                          margin:
                              const EdgeInsets.only(left: 20.0, right: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                offerproduct[index]["prodname"],
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w600),
                              ),
                              IconButton(
                                  onPressed: () {
                                    Addofferproduct();
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const FavoritePage(),
                                      ),
                                    );
                                    if (offerproduct[index]["isfavorite"] ==
                                        true) {
                                      setState(() {
                                        offerproduct[index]['isfavorite'] =
                                            false;
                                        favoriteItem.removeWhere((element) =>
                                            element == offerproduct[index]);
                                      });
                                    } else {
                                      setState(() {
                                        favoriteItem.add(offerproduct[index]);
                                        offerproduct[index]["isfavorite"] =
                                            true;
                                      });
                                    }
                                  },
                                  icon: Icon(Icons.favorite,
                                      color: offerproduct[index]["isfavorite"]
                                          ? Colors.red
                                          : Colors.grey))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 30,
                          margin:
                              const EdgeInsets.only(left: 20.0, right: 20.0),
                          child: Text(
                            offerproduct[index]["name"],
                            style: TextStyle(fontSize: 18, color: Colors.grey),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                            height: 50,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 50,
                                    margin: const EdgeInsets.only(left: 20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.remove),
                                          color: Color.fromARGB(
                                              255, 199, 198, 198),
                                        ),
                                        Text("data"),
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.add),
                                          color: Colors.green,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    height: 50,
                                    alignment: Alignment.centerRight,
                                    margin: const EdgeInsets.only(right: 20.0),
                                    child: Text(
                                      "\$ ${offerproduct[index]["price"]}",
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ))
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 50,
                          margin:
                              const EdgeInsets.only(right: 20.0, left: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Product Detail",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_drop_down_outlined))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 50,
                          alignment: Alignment.center,
                          margin:
                              const EdgeInsets.only(right: 20.0, left: 20.0),
                          child: Text(
                              "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet."),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 50,
                                  alignment: Alignment.centerLeft,
                                  margin: const EdgeInsets.only(left: 20.0),
                                  child: Text(
                                    "Nutritions",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 50,
                                  margin: const EdgeInsets.only(right: 20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("100gr"),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.arrow_forward_ios))
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 50,
                                  alignment: Alignment.centerLeft,
                                  margin: const EdgeInsets.only(left: 20.0),
                                  child: Text(
                                    "Review",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 50,
                                  margin: const EdgeInsets.only(right: 20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.star),
                                        color: Colors.amber,
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.star),
                                        color: Colors.amber,
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.arrow_forward_ios))
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          width: 100,
                          margin:
                              const EdgeInsets.only(right: 20.0, left: 20.0),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: ElevatedButton(
                            child: Text(
                              'Add To Basket',
                              style: TextStyle(fontSize: 20),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green,
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontStyle: FontStyle.normal),
                            ),
                            onPressed: () {
                             Addofferbutton();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CartView(),
                                ),
                              );
                              if (offerproduct[index]["cart"] == true) {
                                setState(() {
                                  offerproduct[index]["cart"] = false;
                                  cartItem.removeWhere((element) =>
                                      element == offerproduct[index]);
                                });
                              } else {
                                setState(() {
                                  cartItem.add(offerproduct[index]);
                                  offerproduct[index]["cart"] = true;
                                  cartItem.last["qty"] = 1;
                                });
                              }
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              );
            }));
  }
}
