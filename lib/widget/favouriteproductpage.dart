import 'package:flutter/material.dart';

class FavouriteProductPage extends StatefulWidget {
  const FavouriteProductPage({super.key});

  @override
  State<FavouriteProductPage> createState() => _FavouriteProductPageState();
}

class _FavouriteProductPageState extends State<FavouriteProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 50,
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                  alignment: Alignment.centerLeft,
                  child: IconButton(onPressed: () {
                    Navigator.pop(context);
                  }, icon: Icon(Icons.clear)),
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
                flex: 1,
                child: Container(
                  height: 200,
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                  alignment: Alignment.center,
                  child: Image.asset("assets/images/imag.png"),
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
                flex: 1,
                child: Container(
                  height: 50,
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                  alignment: Alignment.center,
                  child: Text(
                    "Oops! Order Failed",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
                flex: 1,
                child: Container(
                  height: 50,
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Something went tembly wrong.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
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
                flex: 1,
                child: Container(
                  height: 70,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                  decoration: BoxDecoration(      
                      color: Color.fromRGBO(83, 177, 117, 1),
                      borderRadius: BorderRadius.circular(50.0)),
                      child: TextButton(onPressed: (){
                        Navigator.pop(context);
                      }, child: Text("Please Try Again",style: TextStyle(fontSize: 20,color: Colors.white),),)
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
                flex: 1,
                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text("Back to home",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
