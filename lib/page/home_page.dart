import 'package:demo1/modals/catalog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import '../widget/drawer.dart';
import '../widget/itemWidget.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2)); // delay 2s
    final catalogJons =
        await rootBundle.loadString("assets/files/catalog.json");
    // print(catalogJons);
    final decodedData = jsonDecode(catalogJons);
    // print(decodedData);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList(); // lay data hien thi data
    // print(productsData);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList =
    //     List.generate(50, (index) => CatalogModel.items[0]); // list items
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        // elevation: 0.0,
        // iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "catalog App",
          style: TextStyle(color: Colors.black),
        ),
      ),
      // body: Container(
      //   constraints: BoxConstraints(
      //     minHeight: 50,
      //     maxHeight: 250,
      //     minWidth: 50,
      //     maxWidth: 250, // gioi han box
      //   ),
      //   color: Colors.green,
      //   child: Container( //thay doi box theo gioi han tren
      //       height: 100,
      //       width: 100,
      //       color: Colors.red,
      //     ),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            // ? ListView.builder(
            //     // dieu kien ko trong
            //     itemCount: CatalogModel.items.length,
            //     itemBuilder: (context, index) {
            //       return ItemWidget(item: CatalogModel.items[index]);
            //     },
            //   )
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,// so luong cot
                    mainAxisSpacing: 16,// khoanh cach ngang giua cac card trong grid
                  crossAxisSpacing: 16, // khoanh cach doc  giua cac card trong grid

                ),
                itemBuilder: (context, index) {
                  final items = CatalogModel.items[index];
                  return Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: GridTile(
                      header: Container(child: Text(items.name,
                              style: TextStyle(
                                  color: Colors.white,

                              ),
                      ),
                              width: 100.0,
                              padding: const  EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Colors.black,
                              ),
                      ),
                      child: Image.network(items.image),
                      footer: Container(child: Text(items.price.toString(),
                        style: TextStyle(
                          color: Colors.black,

                        ),
                      ),
                        width: 100.0,
                        padding: const  EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.lightBlue,
                        ),
                      ),
                    ),
                  );
                },
                itemCount: CatalogModel.items.length,
              )
            : Center(
                child: CircularProgressIndicator(), // progessbar
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
