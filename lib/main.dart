import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mindlee_case_study/core/provider/theme_provider.dart';
import 'package:mindlee_case_study/feature/home_view/home_view.dart';
import 'package:overlay_support/overlay_support.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const ProviderScope(
      child: (MyApp()),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OverlaySupport.global(
      child: MaterialApp(
        theme: ref.watch(themeProvider),
        title: 'Mindlee Case Study',
        home: HomeView(),
      ),
    );
  }
}
