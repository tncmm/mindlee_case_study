// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_view_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeViewStateModel {
  int get currentIndex => throw _privateConstructorUsedError;
  List<MessageModel> get messageList => throw _privateConstructorUsedError;
  PageStateEnum get pageState => throw _privateConstructorUsedError;
  bool get isSwipingUp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeViewStateModelCopyWith<HomeViewStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeViewStateModelCopyWith<$Res> {
  factory $HomeViewStateModelCopyWith(
          HomeViewStateModel value, $Res Function(HomeViewStateModel) then) =
      _$HomeViewStateModelCopyWithImpl<$Res, HomeViewStateModel>;
  @useResult
  $Res call(
      {int currentIndex,
      List<MessageModel> messageList,
      PageStateEnum pageState,
      bool isSwipingUp});
}

/// @nodoc
class _$HomeViewStateModelCopyWithImpl<$Res, $Val extends HomeViewStateModel>
    implements $HomeViewStateModelCopyWith<$Res> {
  _$HomeViewStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
    Object? messageList = null,
    Object? pageState = null,
    Object? isSwipingUp = null,
  }) {
    return _then(_value.copyWith(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      messageList: null == messageList
          ? _value.messageList
          : messageList // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageStateEnum,
      isSwipingUp: null == isSwipingUp
          ? _value.isSwipingUp
          : isSwipingUp // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeViewStateModelImplCopyWith<$Res>
    implements $HomeViewStateModelCopyWith<$Res> {
  factory _$$HomeViewStateModelImplCopyWith(_$HomeViewStateModelImpl value,
          $Res Function(_$HomeViewStateModelImpl) then) =
      __$$HomeViewStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentIndex,
      List<MessageModel> messageList,
      PageStateEnum pageState,
      bool isSwipingUp});
}

/// @nodoc
class __$$HomeViewStateModelImplCopyWithImpl<$Res>
    extends _$HomeViewStateModelCopyWithImpl<$Res, _$HomeViewStateModelImpl>
    implements _$$HomeViewStateModelImplCopyWith<$Res> {
  __$$HomeViewStateModelImplCopyWithImpl(_$HomeViewStateModelImpl _value,
      $Res Function(_$HomeViewStateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
    Object? messageList = null,
    Object? pageState = null,
    Object? isSwipingUp = null,
  }) {
    return _then(_$HomeViewStateModelImpl(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      messageList: null == messageList
          ? _value._messageList
          : messageList // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageStateEnum,
      isSwipingUp: null == isSwipingUp
          ? _value.isSwipingUp
          : isSwipingUp // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomeViewStateModelImpl implements _HomeViewStateModel {
  const _$HomeViewStateModelImpl(
      {this.currentIndex = 0,
      final List<MessageModel> messageList = const [],
      this.pageState = PageStateEnum.START,
      this.isSwipingUp = true})
      : _messageList = messageList;

  @override
  @JsonKey()
  final int currentIndex;
  final List<MessageModel> _messageList;
  @override
  @JsonKey()
  List<MessageModel> get messageList {
    if (_messageList is EqualUnmodifiableListView) return _messageList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messageList);
  }

  @override
  @JsonKey()
  final PageStateEnum pageState;
  @override
  @JsonKey()
  final bool isSwipingUp;

  @override
  String toString() {
    return 'HomeViewStateModel(currentIndex: $currentIndex, messageList: $messageList, pageState: $pageState, isSwipingUp: $isSwipingUp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeViewStateModelImpl &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            const DeepCollectionEquality()
                .equals(other._messageList, _messageList) &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState) &&
            (identical(other.isSwipingUp, isSwipingUp) ||
                other.isSwipingUp == isSwipingUp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentIndex,
      const DeepCollectionEquality().hash(_messageList),
      pageState,
      isSwipingUp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeViewStateModelImplCopyWith<_$HomeViewStateModelImpl> get copyWith =>
      __$$HomeViewStateModelImplCopyWithImpl<_$HomeViewStateModelImpl>(
          this, _$identity);
}

abstract class _HomeViewStateModel implements HomeViewStateModel {
  const factory _HomeViewStateModel(
      {final int currentIndex,
      final List<MessageModel> messageList,
      final PageStateEnum pageState,
      final bool isSwipingUp}) = _$HomeViewStateModelImpl;

  @override
  int get currentIndex;
  @override
  List<MessageModel> get messageList;
  @override
  PageStateEnum get pageState;
  @override
  bool get isSwipingUp;
  @override
  @JsonKey(ignore: true)
  _$$HomeViewStateModelImplCopyWith<_$HomeViewStateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
