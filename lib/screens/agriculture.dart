import 'package:flutter/material.dart';

class Agriculture extends StatefulWidget {
  const Agriculture({Key? key}) : super(key: key);

  @override
  State<Agriculture> createState() => _AgricultureState();
}

class _AgricultureState extends State<Agriculture> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Agriculture'),
    );
  }
}
