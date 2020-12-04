import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinity_scrolling/data/timeline_repository.dart';
import 'package:state_notifier/state_notifier.dart';

import 'timeline_item.dart';

part 'timeline_controller.freezed.dart';

@freezed
abstract class TimelineState with _$TimelineState {
  factory TimelineState.loading({
    @Default(const []) List<TimelineItem> items,
    @Default(const NextPageToken.initial()) NextPageToken nextToken,
  }) = _Loading;

  factory TimelineState.ready({
    @Default(const []) List<TimelineItem> items,
    @Default(const NextPageToken.initial()) NextPageToken nextToken,
  }) = _Ready;

  @late
  bool get hasNext => nextToken.hasNext;

  @late
  bool get isLoading => map(loading: (_) => true, ready: (_) => false);
}

class TimelineController extends StateNotifier<TimelineState>
    with LocatorMixin {
  TimelineController() : super(TimelineState.ready()) {
    Future(refresh);
  }

  Future<void> refresh() async {
    if (state.isLoading) return;
    state = TimelineState.ready();
    await loadNext();
  }

  Future<void> loadNext() async {
    if (state.isLoading) return;

    state = TimelineState.loading(
      items: state.items,
      nextToken: state.nextToken,
    );
    final res = await read<TimelineRepository>().fetch(state.nextToken);
    state = TimelineState.ready(
      items: [...state.items, ...res.items],
      nextToken: res.nextPageToken,
    );
  }
}
