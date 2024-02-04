import 'package:flutter/material.dart';
import 'items.dart';
class DefaultPage extends StatefulWidget {
  const DefaultPage({Key? key}) : super(key:key);
  @override
  State<DefaultPage> createState() => _defultpageState();
}

class _defultpageState extends State<DefaultPage> {
  List<String> productName=[
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
  List<String> productPrice=[
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
        itemCount:productName.length,
        itemBuilder:(context,index){
          return ItemCard(name: productName[index], price: productPrice[index]);
        },
      separatorBuilder: (context, index){
          return const Divider();
      },
    );
  }
}
