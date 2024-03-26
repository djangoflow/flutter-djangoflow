import 'package:test/test.dart';
import 'package:djangoflow_openapi/djangoflow_openapi.dart';


/// tests for ChatApi
void main() {
  final instance = DjangoflowOpenapi().getChatApi();

  group(ChatApi, () {
    //Future<ChatRoom> chatRoomsCreate(ChatRoomRequest chatRoomRequest) async
    test('test chatRoomsCreate', () async {
      // TODO
    });

    //Future chatRoomsDestroy(String id) async
    test('test chatRoomsDestroy', () async {
      // TODO
    });

    //Future<PaginatedChatRoomList> chatRoomsList({ int limit, int offset }) async
    test('test chatRoomsList', () async {
      // TODO
    });

    //Future<ChatRoomMembers> chatRoomsMemberCreate(String id, ChatRoomMembersRequest chatRoomMembersRequest) async
    test('test chatRoomsMemberCreate', () async {
      // TODO
    });

    //Future<ChatRoomMemberList> chatRoomsMembersRetrieve(String id) async
    test('test chatRoomsMembersRetrieve', () async {
      // TODO
    });

    //Future<ChatMessageCreateUpdate> chatRoomsMessagesCreate(int roomId, ChatMessageCreateUpdateRequest chatMessageCreateUpdateRequest) async
    test('test chatRoomsMessagesCreate', () async {
      // TODO
    });

    //Future chatRoomsMessagesDestroy(int id, int roomId) async
    test('test chatRoomsMessagesDestroy', () async {
      // TODO
    });

    //Future<PaginatedChatMessageList> chatRoomsMessagesList(int roomId, { int limit, int offset }) async
    test('test chatRoomsMessagesList', () async {
      // TODO
    });

    //Future<ChatMessageCreateUpdate> chatRoomsMessagesPartialUpdate(int id, int roomId, { PatchedChatMessageCreateUpdateRequest patchedChatMessageCreateUpdateRequest }) async
    test('test chatRoomsMessagesPartialUpdate', () async {
      // TODO
    });

    //Future<ChatMessage> chatRoomsMessagesRetrieve(int id, int roomId) async
    test('test chatRoomsMessagesRetrieve', () async {
      // TODO
    });

    //Future<ChatMessageCreateUpdate> chatRoomsMessagesUpdate(int id, int roomId, ChatMessageCreateUpdateRequest chatMessageCreateUpdateRequest) async
    test('test chatRoomsMessagesUpdate', () async {
      // TODO
    });

    //Future<ChatRoom> chatRoomsPartialUpdate(String id, { PatchedChatRoomRequest patchedChatRoomRequest }) async
    test('test chatRoomsPartialUpdate', () async {
      // TODO
    });

    //Future<ChatRoom> chatRoomsRetrieve(String id) async
    test('test chatRoomsRetrieve', () async {
      // TODO
    });

    //Future<ChatRoom> chatRoomsUpdate(String id, ChatRoomRequest chatRoomRequest) async
    test('test chatRoomsUpdate', () async {
      // TODO
    });

  });
}
