import 'package:flutter/cupertino.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key:key);

  @override
  State<Categories> createState() => _CategorieState();
}

class _CategorieState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return const Center
      (child: Text("Categories"),
    );
  }
}
