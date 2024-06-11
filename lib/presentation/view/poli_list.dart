import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:realmonitor_test/controller/poli_list.dart';
import 'package:realmonitor_test/model/state/poli_list.dart';
import 'package:realmonitor_test/presentation/view/poli_list_item.dart';
import 'package:realmonitor_test/presentation/widget/poli_list_empty.dart';
import 'package:realmonitor_test/presentation/widget/poli_list_error.dart';
import 'package:realmonitor_test/presentation/widget/poli_list_loading.dart';
import 'package:realmonitor_test/state/poli_list.dart';

class PoliListView extends ConsumerWidget {
  const PoliListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(poliListState);
    final controller = ref.read(poliListController);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Realmonitor Teszt Feladat"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.refresh(),
        tooltip: 'Frissítés',
        child: const Icon(Icons.refresh),
      ),
      body: switch (state) {
        PoliListLoadingState() => const PoliListLoadingWidget(),
        PoliListEmptyState() => const PoliListEmptyWidget(),
        PoliListErrorState(:final message) => PoliListErrorWidget(message: message),
        PoliListLoadedState(:final items) => ListView.builder(
            itemBuilder: (context, index) => PoliListItemView(index),
            itemCount: items.length,
          ),
      },
    );
  }
}
