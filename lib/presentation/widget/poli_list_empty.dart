import 'package:flutter/material.dart';

class PoliListEmptyWidget extends StatelessWidget {
  const PoliListEmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("The list is empty"),
    );
  }
}
