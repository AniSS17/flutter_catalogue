// import 'package:flutter/material.dart';
class CatalogModel{
  static List<Item> items=[ // static taaki ise directly access kr ske
    Item(
      id : 1,
      name : "Iphone 12 ",
      desc:"Apple 12th gen",
      price:999,
      color:"#33505a",
      image:"https://m.media-amazon.com/images/I/71E5zB1qbIL._SL1500_.jpg"
    )
  ];
}
class Item{
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;
  Item({required this.id,required this.name,required this.desc,required this.price,required this.color,required this.image});
  factory Item.fromMap(Map<String,dynamic>map){
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }
  toMap() => {
    "id" : id,
    "name":name,
    "desc":desc,
    "price":price,
    "color":color,
    "image":image,
  };
}
// last watched  3:26:43
