import 'catalog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalogue/utils/catalog.dart';
class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key,@required required this.item}):assert(item!=null);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      shape: StadiumBorder(),
      elevation: 1.5,
      child: ListTile(
        leading: Image.network(item.image,),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price}",textScaleFactor: 1.5,style: TextStyle(color: Colors.black),),
      ),
    );
  }
  
}