import '../details.dart';
import '../../models/products.dart';
import '../../models/user_model.dart';
import '../../responsivescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Your Cart Will Appear Here!',
            style: TextStyle(color: Colors.blue, fontSize: 20),
          ),
        )
      ]),
    );
  }
}
