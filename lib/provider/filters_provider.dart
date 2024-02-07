import 'package:flutter_riverpod/flutter_riverpod.dart';

class FilterNotifier extends StateNotifier<Map<String, bool>> {
  FilterNotifier() : super({"onlyDubbed": false, "kidMode": false});

  void toggleFilter(String target, bool val) {
    state = {...state, target: val};
  }
}

final filterNotifierProvider =
    StateNotifierProvider<FilterNotifier, Map<String, bool>>(
  (ref) => FilterNotifier(),
);
