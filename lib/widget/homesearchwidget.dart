import 'package:flutter/material.dart';

serchbox() {
  return Row(
    children: [
      Expanded(
        flex: 1,
        child: Container(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 340,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      prefixIcon: Icon(Icons.search),
                      hintText: "search",
                      filled: true,
                      fillColor: Color.fromARGB(179, 231, 231, 231)),
                ),
              )
            ],
          ),
        ),
      ),
    ],
  );
}

customtext (){
   return Row(
    children: [
      Expanded(
        flex: 1,
        child: Container(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 60, width: 40, child: Icon(Icons.location_on_sharp)),
              Container(
                height: 60,
                width: 150,
                alignment: Alignment.center,
                margin: const EdgeInsets.only(right: 40.0),
                child: Text(
                  "Dhaka, Banasssre",
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
