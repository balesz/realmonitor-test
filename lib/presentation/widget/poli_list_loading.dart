import 'package:flutter/material.dart';

class PoliListLoadingWidget extends StatelessWidget {
  const PoliListLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: 64,
        height: 64,
        child: CircularProgressIndicator(),
      ),
    );
  }
}
