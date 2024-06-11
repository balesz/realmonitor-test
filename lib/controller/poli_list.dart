import 'package:realmonitor_test/data/poli_list.dart';
import 'package:riverpod/riverpod.dart';

final poliListController = Provider.autoDispose((ref) => PoliListController(ref));

class PoliListController {
  final AutoDisposeProviderRef ref;

  PoliListController(this.ref);

  void refresh() {
    ref.invalidate(poliListDataProvider);
  }
}
