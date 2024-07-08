import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mindlee_case_study/core/model/message_model/message_model.dart';
import 'package:mindlee_case_study/core/utils/enum/page_state/page_state_enum.dart';
import 'package:mindlee_case_study/feature/home_view/home_view_service.dart';
import 'package:mindlee_case_study/feature/home_view/model/home_view_state_model.dart';

final homeViewController =
    StateNotifierProvider.autoDispose<HomeViewController, HomeViewStateModel>(
        (ref) {
  ref.onDispose(() {});
  return HomeViewController(ref);
});

class HomeViewController extends StateNotifier<HomeViewStateModel> {
  HomeViewController(this.ref)
      : super(
          const HomeViewStateModel(),
        ) {
    getMessages();
  }
  final Ref ref;
  void onScrolling(DragEndDetails details) {
    if (details.primaryVelocity! < 0 &&
        state.currentIndex < state.messageList.length - 1) {
      // Swipe up
      state = state.copyWith(
          currentIndex: state.currentIndex + 1, isSwipingUp: true);
    } else if (details.primaryVelocity! > 0 && state.currentIndex > 0) {
      // Swipe down
      state = state.copyWith(
          currentIndex: state.currentIndex - 1, isSwipingUp: false);
    }
  }

  Future<void> getMessages() async {
    state = state.copyWith(pageState: PageStateEnum.LOADING);
    final response = await ref.read(homeViewService).getMessages();
    if (response.isNotEmpty) {
      state = state.copyWith(messageList: response);
      state = state.copyWith(pageState: PageStateEnum.SUCCESS);
    } else if (response.isEmpty) {
      state = state.copyWith(pageState: PageStateEnum.EMPTY);
    } else {
      state = state.copyWith(pageState: PageStateEnum.ERROR);
    }
  }

  void chandeLikedState() {
    List<MessageModel> messageListCopy = [...state.messageList];
    messageListCopy[state.currentIndex] = messageListCopy[state.currentIndex]
        .copyWith(isLiked: !messageListCopy[state.currentIndex].isLiked);

    state = state.copyWith(messageList: messageListCopy);
  }
}
