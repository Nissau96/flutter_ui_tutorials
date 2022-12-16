// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_ui_tutorials/randomizer_state_notifier.dart';
import 'package:flutter_ui_tutorials/range_selector_page.dart';

// import 'package:provider/provider.dart';

void main() {
  runApp(AppWidget());
}

final randomizerProvider =
    // ChangeNotifierProvider((ref) => RandomizerChangeNotifier());
    StateNotifierProvider<RandomizerStateNotifier, RandomizerState>(
        (ref) => RandomizerStateNotifier());

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return ProviderScope(
      child: MaterialApp(
        title: 'Randomizer',
        debugShowCheckedModeBanner: false,
        home: RangeSelectorPage(),
      ),
    );
  }
}
