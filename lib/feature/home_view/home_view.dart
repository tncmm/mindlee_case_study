import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mindlee_case_study/core/extension/context_extension.dart';
import 'package:mindlee_case_study/core/utils/enum/page_state/page_state_enum.dart';
import 'package:mindlee_case_study/core/widget/app_bar_widget.dart';
import 'package:mindlee_case_study/feature/home_view/home_view_controller.dart';
import 'package:mindlee_case_study/feature/home_view/widget/bottom_button_widget.dart';
import 'package:mindlee_case_study/feature/home_view/widget/message_widget.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var controller = ref.watch((homeViewController));
    var controllerNotifier = ref.watch(homeViewController.notifier);
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
          height: context.height,
          child: Image.network(
            "https://images.nightcafe.studio/jobs/9xlr6jO2wCCiKJGP1SdA/9xlr6jO2wCCiKJGP1SdA--10--AQXOO_6x.jpg?tr=w-1600,c-at_max",
            fit: BoxFit.cover,
          ),
        ),
        SafeArea(child: Builder(builder: (context) {
          if (controller.pageState == PageStateEnum.SUCCESS) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const MyAppBar(),
                const Divider(),
                Expanded(
                  child: GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onVerticalDragEnd: controllerNotifier.onScrolling,
                    child: const MessageWidget(),
                  ),
                ),
                BottomButtonWidget()
              ],
            );
          } else if (controller.pageState == PageStateEnum.EMPTY) {
            return const Center(
              child: Text(
                "Cannot Find Message",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            );
          } else if (controller.pageState == PageStateEnum.ERROR) {
            return const Center(
              child: Text(
                "An Error Occurred",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        })),
      ],
    ));
  }
}
