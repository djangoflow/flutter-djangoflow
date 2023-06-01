import 'package:test/test.dart';
import 'package:djangoflow_openapi/djangoflow_openapi.dart';


/// tests for ChatApi
void main() {
  final instance = DjangoflowOpenapi().getChatApi();

  group(ChatApi, () {
    //Future<MessageImage> chatImagesCreate(MultipartFile image, { String messageId, String roomId }) async
    test('test chatImagesCreate', () async {
      // TODO
    });

    //Future chatImagesDestroy(String id) async
    test('test chatImagesDestroy', () async {
      // TODO
    });

    //Future<PaginatedMessageImageList> chatImagesList({ int limit, int offset }) async
    test('test chatImagesList', () async {
      // TODO
    });

    //Future<MessageImage> chatImagesPartialUpdate(String id, { String messageId, String roomId, MultipartFile image }) async
    test('test chatImagesPartialUpdate', () async {
      // TODO
    });

    //Future<MessageImage> chatImagesRetrieve(String id) async
    test('test chatImagesRetrieve', () async {
      // TODO
    });

    //Future<MessageImage> chatImagesUpdate(String id, MultipartFile image, { String messageId, String roomId }) async
    test('test chatImagesUpdate', () async {
      // TODO
    });

    //Future<Room> chatRoomsCreate(RoomRequest roomRequest) async
    test('test chatRoomsCreate', () async {
      // TODO
    });

    //Future chatRoomsDestroy(String id) async
    test('test chatRoomsDestroy', () async {
      // TODO
    });

    //Future<PaginatedRoomList> chatRoomsList({ int limit, int offset }) async
    test('test chatRoomsList', () async {
      // TODO
    });

    //Future<Message> chatRoomsMessagesCreate(String roomPk, { MessageRequest messageRequest }) async
    test('test chatRoomsMessagesCreate', () async {
      // TODO
    });

    //Future chatRoomsMessagesDestroy(String id, String roomPk) async
    test('test chatRoomsMessagesDestroy', () async {
      // TODO
    });

    //Future<PaginatedMessageList> chatRoomsMessagesList(String roomPk, { int limit, int offset }) async
    test('test chatRoomsMessagesList', () async {
      // TODO
    });

    //Future<Message> chatRoomsMessagesPartialUpdate(String id, String roomPk, { PatchedMessageRequest patchedMessageRequest }) async
    test('test chatRoomsMessagesPartialUpdate', () async {
      // TODO
    });

    //Future<Message> chatRoomsMessagesRetrieve(String id, String roomPk) async
    test('test chatRoomsMessagesRetrieve', () async {
      // TODO
    });

    //Future<MessageSeen> chatRoomsMessagesSeenCreate(String roomPk, MessageSeenRequest messageSeenRequest) async
    test('test chatRoomsMessagesSeenCreate', () async {
      // TODO
    });

    //Future<Message> chatRoomsMessagesUpdate(String id, String roomPk, { MessageRequest messageRequest }) async
    test('test chatRoomsMessagesUpdate', () async {
      // TODO
    });

    //Future chatRoomsMuteCreate(String id) async
    test('test chatRoomsMuteCreate', () async {
      // TODO
    });

    //Future<Room> chatRoomsPartialUpdate(String id, { PatchedRoomRequest patchedRoomRequest }) async
    test('test chatRoomsPartialUpdate', () async {
      // TODO
    });

    //Future<Room> chatRoomsRetrieve(String id) async
    test('test chatRoomsRetrieve', () async {
      // TODO
    });

    //Future chatRoomsUnmuteCreate(String id) async
    test('test chatRoomsUnmuteCreate', () async {
      // TODO
    });

    //Future<Room> chatRoomsUpdate(String id, RoomRequest roomRequest) async
    test('test chatRoomsUpdate', () async {
      // TODO
    });

    //Future<RoomUser> chatRoomsUsersCreate(String roomPk) async
    test('test chatRoomsUsersCreate', () async {
      // TODO
    });

    //Future chatRoomsUsersDestroy(String id, String roomPk) async
    test('test chatRoomsUsersDestroy', () async {
      // TODO
    });

    //Future<List<RoomUser>> chatRoomsUsersList(String roomPk) async
    test('test chatRoomsUsersList', () async {
      // TODO
    });

    //Future<List<UserName>> chatRoomsUsersNamesList(String roomPk) async
    test('test chatRoomsUsersNamesList', () async {
      // TODO
    });

    //Future<RoomUser> chatRoomsUsersPartialUpdate(String id, String roomPk) async
    test('test chatRoomsUsersPartialUpdate', () async {
      // TODO
    });

    //Future<RoomUser> chatRoomsUsersRetrieve(String id, String roomPk) async
    test('test chatRoomsUsersRetrieve', () async {
      // TODO
    });

    //Future<RoomUser> chatRoomsUsersUpdate(String id, String roomPk) async
    test('test chatRoomsUsersUpdate', () async {
      // TODO
    });

  });
}
