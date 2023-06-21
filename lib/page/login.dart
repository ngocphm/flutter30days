import 'dart:js_interop';

import 'package:demo1/untils/myRoutes.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String name = "";
  bool changedButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if(_formKey.currentState!.validate()  ){
      setState(() {
        changedButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, routes.homeRoute);
      setState(() {
        changedButton = false;
      });
    }


  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.blueGrey,
        child: SingleChildScrollView(
            child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/login.jpeg",
                fit: BoxFit.cover,
                height: 300,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 30,
                  horizontal: 45,
                ),
                child: Column(
                  children: [
                    Text(
                      "Wellcome $name",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "username", labelText: "username"),
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "user name can not empty";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter password", labelText: "password"),
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "password can not empty";
                        } else if (value.length < 6) {
                          {
                            return "password length must be at least 6 ";
                          }
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Material(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                          splashColor: Colors.red,
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            alignment: Alignment.center,
                            width: changedButton ? 50 : 150,
                            height: 40,
                            decoration: BoxDecoration(),
                            child: changedButton
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                          )),
                    )

                    // ElevatedButton(
                    //   child: Text("Login"),
                    //   style: TextButton.styleFrom(minimumSize: Size(150, 50)),
                    //   onPressed:(){
                    //     Navigator.pushNamed(context, routes.homeRoute);
                    //   } ,
                    //
                    // )
                  ],
                ),
              ),
            ],
          ),
        )));
  }
}
