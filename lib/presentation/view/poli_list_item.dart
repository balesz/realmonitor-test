import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:realmonitor_test/presentation/widget/poli_list_item.dart';
import 'package:realmonitor_test/state/poli_list.dart';

class PoliListItemView extends ConsumerWidget {
  const PoliListItemView(this.index, {super.key});

  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(poliListItemState(index));
    if (state == null) {
      return const Placeholder();
    }
    return PoliListItemWidget(
      size: state.size,
      price: state.price,
      lastModified: state.lastModified,
      images: state.images,
    );
  }
}
