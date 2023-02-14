import 'package:flutter/material.dart';
import 'package:fruitproject/data.dart';
import 'package:fruitproject/productdetail/places_order.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'My Cart',
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: ListView.builder(
          itemCount: cartItem.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 100,
                        width: 100,
                        child: Image.asset(cartItem[index]["image"]),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        width: 50,
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                height: 50,
                                alignment: Alignment.center,
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.only(left: 10),
                                        height: 25,
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          cartItem[index]["prodname"],
                                          style: TextStyle(
                                              fontWeight: FontWeight.w800),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      height: 25,
                                      alignment: Alignment.centerLeft,
                                      child: Text(cartItem[index]["name"]),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 50,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          if (cartItem[index]["qty"] != 1) {
                                            setState(() {
                                              cartItem[index]["qty"]--;
                                            });
                                          }
                                        },
                                        icon: Icon(Icons.remove,
                                            color: Color.fromARGB(
                                                255, 199, 198, 198))),
                                    Text("${cartItem[index]["qty"]}",
                                        style: TextStyle(fontSize: 40.0)),
                                    IconButton(
                                        onPressed: () {
                                          setState(() {
                                            cartItem[index]["qty"]++;
                                          });
                                        },
                                        icon: Icon(
                                          Icons.add,
                                          color: Colors.green,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                          height: 100,
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                alignment: Alignment.centerRight,
                                child: IconButton(
                                    onPressed: () {
                                      // setState(() {
                                      //   cartItem.removeAt(index);
                                      // });
                                    },
                                    icon: Icon(Icons.clear)),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                height: 50,
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "\$ ${cartItem[index]["price"] * cartItem[index]["qty"]}",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
              ],
            );
          }),
      bottomNavigationBar: Material(
        color: Color.fromRGBO(83, 177, 117, 1),
        child: InkWell(
          onTap: () {
            showModalBottomSheet(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  // <-- SEE HERE
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
              ),
              context: context,
              builder: (context) {
                return Wrap(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 50,
                            width: 50,
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(
                              left: 10,
                            ),
                            child: Text(
                              "Checked",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 50,
                            width: 50,
                            alignment: Alignment.centerRight,
                            margin: EdgeInsets.only(
                              right: 10,
                            ),
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(Icons.clear)),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 50,
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(
                              left: 15,
                            ),
                            child: Text("Delivery"),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 50,
                            margin: EdgeInsets.only(right: 10, left: 5),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      "Select Method",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  alignment: Alignment.centerRight,
                                  margin: EdgeInsets.only(right: 10, left: 5),
                                  child: Icon(Icons.arrow_forward_ios_rounded),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 50,
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(
                              left: 15,
                            ),
                            child: Text("Pament"),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 50,
                            margin: EdgeInsets.only(right: 10, left: 5),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    alignment: Alignment.centerRight,
                                    child:
                                        Image.asset("assets/images/card.png"),
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  alignment: Alignment.centerRight,
                                  margin: EdgeInsets.only(right: 10, left: 5),
                                  child: Icon(Icons.arrow_forward_ios_rounded),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 50,
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(
                              left: 15,
                            ),
                            child: Text("Promo Code"),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 50,
                            margin: EdgeInsets.only(right: 10, left: 5),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      "Pick discount",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  alignment: Alignment.centerRight,
                                  margin: EdgeInsets.only(right: 10, left: 5),
                                  child: Icon(Icons.arrow_forward_ios_rounded),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 50,
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(
                              left: 15,
                            ),
                            child: Text("Total Cost"),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 50,
                            margin: EdgeInsets.only(right: 10, left: 5),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      "\$13.97",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  alignment: Alignment.centerRight,
                                  margin: EdgeInsets.only(right: 10, left: 5),
                                  child: Icon(Icons.arrow_forward_ios_rounded),
                                )
                              ],
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
                            height: 50,
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(right: 10, left: 15),
                            child: Text(
                                "By placing an order you agree to our Terms And Conditions"),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 50,
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 15),
                            child: Text("Home"),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 50,
                            alignment: Alignment.centerRight,
                            margin: EdgeInsets.only(right: 15),
                            child: Text("Profile"),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 50,
                            margin: EdgeInsets.only(right: 15, left: 15),
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const PlacesOrder()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Color.fromRGBO(83, 177, 117, 1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                ),
                                child: Text("Place Order")),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 40,
                          ),
                        )
                      ],
                    ),
                  ],
                );
              },
            );
          },
          child: const SizedBox(
            height: kToolbarHeight,
            width: double.infinity,
            child: Center(
              child: Text(
                'Go to checkout',
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
