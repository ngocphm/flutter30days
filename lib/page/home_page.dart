import 'package:flutter/material.dart';

import '../widget/drawer.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("catalog App") ,
        ),
        body:Center(
          child: Container(
            child: Text("wellcom to 30 days"),
          ),
        ),
      drawer: MyDrawer(),
    );
  }
}
