import 'package:crypto_investment/routes/app_router.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
    required this.path,
  }) : super(key: key);

  final String path;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: NestedNavigation.nestedRoutesWidget.values.toList(),
      ),
    );
  }
}
