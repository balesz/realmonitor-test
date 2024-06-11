import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:realmonitor_test/presentation/view/poli_list.dart';

const _color = Color.fromRGBO(0, 139, 253, 1.0);

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const PoliListView(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: _color),
        useMaterial3: true,
      ),
    );
  }
}
