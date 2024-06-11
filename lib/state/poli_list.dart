import 'package:flutter/material.dart';
import 'package:realmonitor_test/data/poli_list.dart';
import 'package:realmonitor_test/model/api/response.dart';
import 'package:realmonitor_test/model/state/poli_list.dart';
import 'package:riverpod/riverpod.dart';

final poliListState = Provider.autoDispose //
    <PoliListState>((ref) {
  final data = ref.watch(poliListDataProvider);

  debugPrint("${(
    isLoading: data.isLoading,
    isRefreshing: data.isRefreshing,
    isReloading: data.isReloading,
    hasValue: data.hasValue,
  )}");

  toItem(Datum it) {
    return PoliListItemState(
      id: it.hid,
      price: switch (it.price) {
        int price => "${price / 1000000} millió Ft",
        _ => "-",
      },
      size: switch (it.size) {
        int size => "$size ㎡",
        _ => "-",
      },
      lastModified: DateTime.fromMillisecondsSinceEpoch(it.updatedTime).toString(),
      images: it.images,
    );
  }

  return switch ((data.hasValue, data.isLoading, data.value)) {
    (_, true, _) => const PoliListState.loading(),
    (true, _, null) => const PoliListState.empty(),
    (_, _, Response it) when it.data.isEmpty => const PoliListState.empty(),
    (_, _, Response it) => PoliListState(items: [...it.data.map(toItem)]),
    _ => const PoliListState.error("Something went wrong"),
  };
});

final poliListItemState = Provider.autoDispose.family //
    <PoliListItemState?, int>((ref, idx) {
  final data = ref.watch(poliListState);
  return switch (data) {
    PoliListLoadedState(:final items) => items[idx],
    _ => null,
  };
});
