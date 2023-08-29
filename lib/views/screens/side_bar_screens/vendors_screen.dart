import 'package:flutter/material.dart';

class VendorsScreen extends StatelessWidget {
  
  static const String routeName = '\vendors_screen';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.all(10),
        child: const Text(
          'Manage Vendors',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 36
          ),
        ),
      ),
    );
  }
}