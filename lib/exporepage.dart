import 'package:flutter/material.dart';
import 'package:fruitproject/widget/homesearchwidget.dart';

class ExporeView extends StatefulWidget {
  const ExporeView({super.key});

  @override
  State<ExporeView> createState() => _ExporeViewState();
}

class _ExporeViewState extends State<ExporeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      width: 50,
                      alignment: Alignment.center,
                      child: Text(
                        "Find Prdoucts",
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              serchbox(),
              SizedBox(
                height: 40,
              ),
              SingleChildScrollView(),
              Column(
                children: [
                  Container(
                    height: 170,
                    width: 340,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 170,
                          width: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 214, 240, 241)),
                          child: Column(
                            children: [
                              Container(
                                height: 70,
                                width: 90,
                                margin: const EdgeInsets.only(top: 30.0),
                                child: Image.asset("assets/images/mixfri.png"),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextButton(
                                onPressed: () {}, 
                                 style: TextButton.styleFrom(
                                 foregroundColor: Color.fromARGB(255, 214, 240, 241),
                                 ),
                                child: Text("frash friuts & vegetable",textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),))
                            ],
                          ),
                        ),
                        Container(
                          height: 170,
                          width: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(248, 245, 175, 114)),
                          child: Column(
                            children: [
                              Container(
                                height: 70,
                                width: 90,
                                margin: const EdgeInsets.only(top: 30.0),
                                child: Image.asset("assets/images/oil.png"),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextButton(onPressed: () {},
                               style: TextButton.styleFrom(
                                 foregroundColor: Color.fromARGB(248, 245, 175, 114),
                                 ),
                               child: Text("Cooking oil & Ghee",textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600)))
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 30,),
               SingleChildScrollView(),
              Column(
                children: [
                  Container(
                    height: 170,
                    width: 340,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 170,
                          width: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(247, 248, 182, 223)),
                          child: Column(
                            children: [
                              Container(
                                height: 70,
                                width: 90,
                                margin: const EdgeInsets.only(top: 30.0),
                                child: Image.asset("assets/images/mmet.png"),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextButton(onPressed: () {}, 
                               style: TextButton.styleFrom(
                                 foregroundColor: Color.fromARGB(247, 248, 182, 223),
                                 ),
                              child: Text("Meat & fish",textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600)))
                            ],
                          ),
                        ),
                        Container(
                          height: 170,
                          width: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 225, 232, 235)),
                          child: Column(
                            children: [
                              Container(
                                height: 70,
                                width: 90,
                                margin: const EdgeInsets.only(top: 30.0),
                                child: Image.asset("assets/images/basket.png"),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextButton(onPressed: () {},
                              style: TextButton.styleFrom(
                                 foregroundColor: Color.fromARGB(255, 225, 232, 235),
                                 ),
                               child: Text("Bakery & snacks",textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600)))
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 30,),
               SingleChildScrollView(),
              Column(
                children: [
                  Container(
                    height: 170,
                    width: 340,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 170,
                          width: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(252, 241, 216, 164)),
                          child: Column(
                            children: [
                              Container(
                                height: 70,
                                width: 90,
                                margin: const EdgeInsets.only(top: 30.0),
                                child: Image.asset("assets/images/egg.png"),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextButton(onPressed: () {}, 
                              style: TextButton.styleFrom(
                                 foregroundColor: Color.fromARGB(252, 241, 216, 164),
                                 ),
                              child: Text("Dairy & Eggs",textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600)))
                            ],
                          ),
                        ),
                        Container(
                          height: 170,
                          width: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(183, 176, 236, 238)),
                          child: Column(
                            children: [
                              Container(
                                height: 70,
                                width: 90,
                                margin: const EdgeInsets.only(top: 30.0),
                                child: Image.asset("assets/images/pepsi.png"),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextButton(onPressed: () {}, 
                               style: TextButton.styleFrom(
                                 foregroundColor: Color.fromARGB(183, 176, 236, 238),
                                 ),
                              child: Text("Beverages",textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),)
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
