import 'package:hooks_riverpod/hooks_riverpod.dart';

final markerControllerProvider =
    StateNotifierProvider<MarketController, int>((ref) {
  return MarketController();
});

class MarketController extends StateNotifier<int> {
  MarketController() : super(0);

  void increment() {
    state++;
  }
}
