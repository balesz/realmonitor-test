import 'package:freezed_annotation/freezed_annotation.dart';

part 'poli_list.freezed.dart';

@freezed
sealed class PoliListState with _$PoliListState {
  const factory PoliListState.error(String message) = PoliListErrorState;
  const factory PoliListState.loading() = PoliListLoadingState;
  const factory PoliListState.empty() = PoliListEmptyState;
  const factory PoliListState({
    @Default([]) List<PoliListItemState> items,
  }) = PoliListLoadedState;
}

@freezed
class PoliListItemState with _$PoliListItemState {
  const factory PoliListItemState({
    required String id,
    @Default("") String price,
    @Default("") String size,
    @Default("") String lastModified,
    @Default([]) List<String> images,
  }) = _PoliListItemState;
}
