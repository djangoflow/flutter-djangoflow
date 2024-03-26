import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:djangoflow_openapi/djangoflow_openapi.dart';

part 'chat_state.freezed.dart';
part 'chat_state.g.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    required int roomId,
    ChatRoom? room,
    @Default(<int, User>{}) Map<int, User> roomUsers,
    @Default(<ChatMessage>[]) List<ChatMessage> messages,
    User? me,
    @Default(false) bool loading,
    // @Default(false) bool uploadingImage,
  }) = _ChatState;

  factory ChatState.fromJson(Map<String, dynamic> json) =>
      _$ChatStateFromJson(json);
}
