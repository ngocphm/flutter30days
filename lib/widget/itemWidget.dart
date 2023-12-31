import 'package:flutter/material.dart';

import '../modals/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item ;
  const ItemWidget({Key? key, required this.item}) : assert(item != null ,), super(key :key);
  @override
  Widget build(BuildContext context) {
    // tao cac item de day len home
    return Card(
      elevation: 0.0,
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        leading: Image.network(item.image) ,
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.5,
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),

        ),
        // trailing: Text(item.price.toString()),
      ),
    );
  }
}
