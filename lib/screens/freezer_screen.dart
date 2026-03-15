import 'package:flutter/material.dart';

class FreezerScreen extends StatelessWidget {
  const FreezerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Freezer Screen',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
      ),
    );
  }
}
