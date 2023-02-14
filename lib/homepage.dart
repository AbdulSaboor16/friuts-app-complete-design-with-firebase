import 'package:flutter/material.dart';
import 'package:fruitproject/data.dart';
import 'package:fruitproject/widget/homesearchwidget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 60,
                      color: Color.fromARGB(255, 255, 255, 255),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            child: Image.asset('assets/images/carrot.jpg'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              customtext(),
              serchbox(),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 100,
                            width: 340,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/2.jpeg'))),
                          ),
                        ],
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
                      height: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 100,
                            width: 340,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Exlcusive Offer",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "See all",
                                  style: TextStyle(color: Colors.green),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 230,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: product.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Container(
                          height: 230,
                          width: 170,
                          margin: const EdgeInsets.only(left: 20.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 230, 228, 228)),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 100,
                                width: 100,
                                child: Image.asset(product[index]["image"]),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 20,
                                width: 170,
                                alignment: Alignment.centerLeft,
                                margin: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  product[index]["name"],
                                  style: TextStyle(fontWeight: FontWeight.w800),
                                ),
                              ),
                              Container(
                                height: 20,
                                width: 170,
                                child: Text(product[index]["offername"]),
                                margin: const EdgeInsets.only(left: 20.0),
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Container(
                                    height: 30,
                                    width: 90,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "${product[index]["price"]}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    width: 40,
                                    margin: const EdgeInsets.only(left: 20.0),
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      color: Colors.green,
                                    ),
                                    child: IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  (product[index]["button"])),
                                        );
                                      },
                                      icon: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 100,
                            width: 340,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Best Selling",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "See all",
                                  style: TextStyle(color: Colors.green),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(),
              Container(
                height: 230,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: product.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Container(
                          height: 230,
                          width: 170,
                          margin: const EdgeInsets.only(left: 20.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 230, 228, 228)),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 100,
                                width: 100,
                                child: Image.asset(product[index]["bestimage"]),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 20,
                                width: 170,
                                alignment: Alignment.centerLeft,
                                margin: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  product[index]["namebell"],
                                  style: TextStyle(fontWeight: FontWeight.w800),
                                ),
                              ),
                              Container(
                                height: 20,
                                width: 170,
                                child: Text(product[index]["offername"]),
                                margin: const EdgeInsets.only(left: 20.0),
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Container(
                                    height: 30,
                                    width: 90,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "${product[index]["price"]}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    width: 40,
                                    margin: const EdgeInsets.only(left: 20.0),
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      color: Colors.green,
                                    ),
                                    child: IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  (product[index]["button1"])),
                                        );
                                      },
                                      icon: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 100,
                            width: 340,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Groceries",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "See all",
                                  style: TextStyle(color: Colors.green),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(),
              Container(
                height: 230,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: product.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Container(
                          height: 230,
                          width: 170,
                          margin: const EdgeInsets.only(left: 20.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 230, 228, 228)),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 100,
                                width: 100,
                                child:
                                    Image.asset(product[index]["grocerimage"]),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 20,
                                width: 170,
                                alignment: Alignment.centerLeft,
                                margin: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  product[index]["grocername"],
                                  style: TextStyle(fontWeight: FontWeight.w800),
                                ),
                              ),
                              Container(
                                height: 20,
                                width: 170,
                                child: Text(product[index]["offername"]),
                                margin: const EdgeInsets.only(left: 20.0),
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Container(
                                    height: 30,
                                    width: 90,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "${product[index]["price"]}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    width: 40,
                                    margin: const EdgeInsets.only(left: 20.0),
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      color: Colors.green,
                                    ),
                                    child: IconButton(
                                      onPressed: () {
                                          Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  (product[index]["button2"])),
                                        );
                                      },
                                      icon: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
