import 'package:flutter/material.dart';
import 'package:fruitproject/data.dart';

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
                                    "\$ ${cartItem[index]["price"] * cartItem[index]["qty"]}",style: TextStyle(fontSize: 20),),
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
              ],
            );
          }),
    );
  }
}
