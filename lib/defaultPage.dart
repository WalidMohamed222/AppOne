import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'items.dart';
class defaultPage extends StatefulWidget {
  const defaultPage({Key? key}) : super(key:key);

  @override
  State<defaultPage> createState() => _defultpageState();
}

class _defultpageState extends State<defaultPage> {
  List<String> ProductName=[
    "Coffee",
    "Burger",
    "Pizaa",
    "DoubleBurger",
    "BigCompo",
    "Coffee",
    "Burger",
    "Pizaa",
    "DoubleBurger",
    "BigCompo",
  ];
  List<String> ProductPrice=[
  "10",
  "20",
  "30",
  "40",
  "80",
  "10",
  "20",
  "30",
  "40",
  "80",
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount:ProductName.length,
        itemBuilder:(context,index){
          return ItemCard(name: ProductName[index], price: ProductPrice[index]);
        },
      separatorBuilder: (context, index){
          return Divider();
      },
    );
  }
}
