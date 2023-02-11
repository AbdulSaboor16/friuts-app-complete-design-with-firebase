
import 'package:fruitproject/productdetail/appledetail.dart';
import 'package:fruitproject/productdetail/bakrapage.dart';
import 'package:fruitproject/productdetail/bananadetail.dart';
import 'package:fruitproject/productdetail/beefpage.dart';
import 'package:fruitproject/productdetail/chickenpage.dart';
import 'package:fruitproject/productdetail/gingerpage.dart';
import 'package:fruitproject/productdetail/pineappledetail.dart';
import 'package:fruitproject/productdetail/tomato.dart';
import 'package:fruitproject/productdetail/vegatablepage.dart';

List product = [
  {
    "name": "Organic Bananas",
    "namebell": "Bell Pepper Red",
    "grocername":"Beef Bone",
    "offername": "1kg, price",
    "price": 100,
    "image": "assets/images/ban.png",
    "bestimage": "assets/images/tommo.png",
    "grocerimage": "assets/images/beef.png",
    "button": BananaDetails(),
    "button1":Tomatepage(),
    "button2":BeefPage(),

  },
  {
    "name": "Red Apple",
    "namebell": "Ginger",
    "grocername":"Broiler Chicken",
    "offername": "1kg, price",
    "price": 100,
    "image": "assets/images/apple.png",
    "bestimage": "assets/images/fuel.png",
    "grocerimage": "assets/images/chicken.png",
    "button": AppleDetail(),
    "button1":GingerPage(),
    "button2":ChickenPage(),
  },
  {
    "name": "PineApple",
    "namebell": "Vegatable",
    "grocername":"Bakra Bone",
    "offername": "1kg, price",
    "price": 100,
    "image": "assets/images/download.png",
    "bestimage": "assets/images/green.png",
    "grocerimage": "assets/images/bakra.png",
    "button": PineApple(),
    "button1":VegatablePage(),
    "button2":BakraPage(),
  },
];

List offerproduct = [
  {
    "prodname":"Banana",
    "name": "1kg, price",
    "price": 4.99,
    "isfavorite": false,
    "cart": false,
    "qty": 0,
    "image": "assets/images/dozen.png", 
  }
];
List offerapple = [
  {
    "prodname":"Naturel Red Apple",
    "name": "1kg, price",
    "price": 4.99,
    "isfavorite": false,
    "cart": false,
    "qty": 0,
    "image": "assets/images/apple.png",
  }
];
List offerpine = [
  {
    "prodname":"PineApple",
    "name": "1kg, price",
    "price": 4.99,
    "isfavorite": false,
    "cart": false,
    "qty": 0,
    "image": "assets/images/download.png",
  }
];
List bestbell = [
  {
    "prodname":"Bell Pepper Red",
    "name": "1kg, price",
    "price": 4.99,
    "isfavorite": false,
    "cart": false,
    "qty": 0,
    "image": "assets/images/tommo.png",
  }
];
List bestginger = [
  {
    "prodname":"Ginger",
    "name": "1kg, price",
    "price": 4.99,
    "isfavorite": false,
    "cart": false,
    "qty": 0,
    "image": "assets/images/fuel.png",
  }
];
List bestvegatable = [
  {
    "prodname":"Vegatable",
    "name": "1kg, price",
    "price": 4.99,
    "isfavorite": false,
    "cart": false,
    "qty": 0,
    "image": "assets/images/green.png",
  }
];
List grocerbeef = [
  {
    "prodname":"Beef Bone",
    "name": "1kg, price",
    "price": 4.99,
    "isfavorite": false,
    "cart": false,
    "qty": 0,
    "image": "assets/images/beef.png",
  }
];
List grocerchicken = [
  {
    "prodname":"Broiler Chicken",
    "name": "1kg, price",
    "price": 4.99,
    "isfavorite": false,
    "cart": false,
    "qty": 0,
    "image": "assets/images/chicken.png",
  }
];
List grocerbakra = [
  {
    "prodname":"Bakra Bone",
    "name": "1kg, price",
    "price": 4.99,
    "isfavorite": false,
    "cart": false,
    "qty": 0,
    "image": "assets/images/bakra.png",
  }
];
List favoriteItem = [];
List cartItem = [];
