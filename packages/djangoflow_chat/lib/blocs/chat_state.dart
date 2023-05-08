import 'package:djangoflow_chat/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openapi/openapi.dart';

part 'chat_state.freezed.dart';
part 'chat_state.g.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    required String roomId,
    Room? room,
    @Default(<String, RoomUser>{}) Map<String, RoomUser> users,
    @Default(<Message>[]) List<Message> messages,
    @Default(anonymousUser) User me,
    @Default(false) bool loading,
    @Default(false) bool uploadingImage,
  }) = _ChatState;

  factory ChatState.fromJson(Map<String, dynamic> json) =>
      _$ChatStateFromJson(json);
}
