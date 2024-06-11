import 'package:realmonitor_test/api/realmonitor.dart';
import 'package:realmonitor_test/model/api/response.dart';
import 'package:riverpod/riverpod.dart';

final poliListDataProvider = FutureProvider<Response?>((ref) async {
  try {
    final response = await ref.watch(apiProvider).getPoliList();
    return response;
  } catch (err) {
    // TODO: implement error handling for api
    rethrow;
  }
});
