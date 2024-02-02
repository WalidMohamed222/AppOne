import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatefulWidget {
  final String name;
  final String price;
  const ItemCard({Key? key, required this.name,required this.price}): super(key:key);

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey,borderRadius:BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.food_bank),
            Text(widget.name),
            SizedBox(height: MediaQuery.of(context).size.height*.1,),
            Text("${widget.price}\$")
          ],
        ),
      ),
    );
  }
}
