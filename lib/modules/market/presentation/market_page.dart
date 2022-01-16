import 'package:crypto_investment/modules/market/controllers/market_controller.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MarketPage extends ConsumerWidget {
  const MarketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(ref.watch(markerControllerProvider).toString()),
        TextButton(
            onPressed: () =>
                ref.read(markerControllerProvider.notifier).increment(),
            child: const Text('Press'))
      ],
    );
  }
}
