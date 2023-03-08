import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../utils/catalog.dart';
import 'dart:convert';
import '../utils/item_widget.dart';
import 'drawer.dart';
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  // const HomePage({ Key? key }) : super(key: key);
  int days=17;
  String name="Aniket";
  var money = 45;
  @override
  void initState() {
    // TODO: implement initState
    super.initState(); // class initialize krta h
    loadData();
  }
  loadData() async{
    final menuJson = await rootBundle.loadString("asset/files/menu.json");
    final decodedData=jsonDecode(menuJson);
    var productsData=decodedData["products"];
    CatalogModel.items=List.from(productsData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});// data ko reload krna h. warna ek hi prod dikhaega
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(    // It has many designs to make app more beautiful. Ek acha UI bnta h isse
        appBar: AppBar(
          title: Text("Catalogue",style: TextStyle(color: Colors.white),),
          // backgroundColor: Color.fromARGB(217, 9, 37, 197),
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: CatalogModel.items.length,
            itemBuilder: ((context, index) {
              return ItemWidget(item: CatalogModel.items[index],);
            }),
          ),
        ),
        drawer: MyDrawer(),
        // endDrawer: Drawer(),
      );
  }
}

