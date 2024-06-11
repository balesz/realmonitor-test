import 'package:flutter/material.dart';

class PoliListItemWidget extends StatelessWidget {
  const PoliListItemWidget({
    super.key,
    this.size = "-",
    this.price = "-",
    this.lastModified = "-",
    this.images = const [],
  });

  final String size;
  final String price;
  final String lastModified;
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          SizedBox(
            height: 150,
            child: PageView(children: [
              ...images.map((i) => Image.network(i, errorBuilder: (ctx, err, st) => const Icon(Icons.visibility_off, size: 64))),
            ]),
          ),
          const SizedBox(height: 8.0),
          Table(
            children: [
              TableRow(children: [
                const Text("Méret"),
                Text(size),
              ]),
              TableRow(children: [
                const Text("Ár"),
                Text(price),
              ]),
              TableRow(children: [
                const Text("Utolsó módosítás"),
                Text(lastModified),
              ]),
            ],
          ),
        ]),
      ),
    );
  }
}
