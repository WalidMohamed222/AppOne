import 'package:flutter/cupertino.dart';

class defaultPage extends StatefulWidget {
  const defaultPage({Key? key}) : super(key:key);

  @override
  State<defaultPage> createState() => _defultpageState();
}

class _defultpageState extends State<defaultPage> {
  @override
  Widget build(BuildContext context) {
    return const Center
      (child: Text("Defult"),
    );
  }
}
