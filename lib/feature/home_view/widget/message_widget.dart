import 'dart:ui';
import 'package:intl/intl.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mindlee_case_study/core/extension/context_extension.dart';
import 'package:mindlee_case_study/feature/home_view/home_view_controller.dart';

class MessageWidget extends ConsumerWidget {
  const MessageWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var controller = ref.watch(homeViewController);
    var controllerNotifier = ref.watch(homeViewController.notifier);
    return Container(
      alignment: Alignment.center,
      child: Padding(
        padding: context.paddingNormalHorizontal,
        child: GestureDetector(
          onVerticalDragEnd: controllerNotifier.onScrolling,
          child: ClipRRect(
            borderRadius: context.borderRadiusNormal,
            child: BackdropFilter(
              blendMode: BlendMode.srcATop,
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                padding: context.paddingNormalHorizontal +
                    context.paddingLowVertical * 1.2,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: context.colors.onBackground.withOpacity(.5),
                ),
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      child: Material(
                        color: Colors.transparent,
                        child: AnimatedSwitcher(
                          duration: const Duration(milliseconds: 300),
                          transitionBuilder:
                              (Widget child, Animation<double> animation) {
                            return SlideTransition(
                              position: Tween<Offset>(
                                begin:
                                    Offset(0, controller.isSwipingUp ? 1 : -1),
                                end: Offset.zero,
                              ).animate(animation),
                              child: FadeTransition(
                                opacity: animation,
                                child: child,
                              ),
                            );
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      controller
                                              .messageList[
                                                  controller.currentIndex]
                                              .title ??
                                          "",
                                      key: ValueKey<int>(
                                          controller.currentIndex),
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: context.colors.background),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 0,
                                    child: Text(
                                      DateFormat("dd.MM.yyyy")
                                          .format(DateTime.parse(
                                            controller
                                                .messageList[
                                                    controller.currentIndex]
                                                .date
                                                .toString(),
                                          ))
                                          .toString(),
                                      key: ValueKey<int>(
                                          controller.currentIndex),
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: context.colors.background),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: context.normalValue,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      controller
                                          .messageList[controller.currentIndex]
                                          .message,
                                      key: ValueKey<int>(
                                          controller.currentIndex),
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: context.colors.background),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: context.lowValue * 1.5,
                              ),
                              GestureDetector(
                                onTap: () {
                                  controllerNotifier.chandeLikedState();
                                },
                                child: Padding(
                                  padding: context.paddingLow,
                                  child: Icon(
                                      controller
                                              .messageList[
                                                  controller.currentIndex]
                                              .isLiked
                                          ? Icons.favorite
                                          : Icons.favorite_outline,
                                      size: 25,
                                      color: controller
                                              .messageList[
                                                  controller.currentIndex]
                                              .isLiked
                                          ? context.appColors.red
                                          : context.colors.background),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
