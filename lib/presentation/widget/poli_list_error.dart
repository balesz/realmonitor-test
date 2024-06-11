import 'package:flutter/material.dart';

class PoliListErrorWidget extends StatelessWidget {
  const PoliListErrorWidget({this.message = "", super.key});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("ERROR: $message"),
    );
  }
}
