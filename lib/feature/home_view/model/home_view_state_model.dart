import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mindlee_case_study/core/model/message_model/message_model.dart';
import 'package:mindlee_case_study/core/utils/enum/page_state/page_state_enum.dart';

part 'home_view_state_model.freezed.dart';

@immutable
@freezed
class HomeViewStateModel with _$HomeViewStateModel {
  const factory HomeViewStateModel(
      {@Default(0) int currentIndex,
      @Default([]) List<MessageModel> messageList,
      @Default(PageStateEnum.START) PageStateEnum pageState,
      @Default(true) bool isSwipingUp}) = _HomeViewStateModel;
}
