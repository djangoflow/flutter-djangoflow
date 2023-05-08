// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_repository.dart';

// **************************************************************************
// OpenapiRepositoryGenerator
// **************************************************************************

class ApiRepository {
  static ApiRepository get instance => _instance;
  static final ApiRepository _instance = ApiRepository._internal();

  ApiRepository._internal() {
    _openapi.dio.options
      ..baseUrl = sandboxBasePath
      ..connectTimeout = const Duration(milliseconds: 10000)
      ..receiveTimeout = const Duration(milliseconds: 15000)
      ..sendTimeout = const Duration(milliseconds: 15000);
    _openapi.dio.interceptors.add(DioInterceptor());
  }

  static const String liveBasePath = 'https://api.djangoflow.com';
  static const String sandboxBasePath = 'http://127.0.0.1:8000';

  void updateBaseUrl(String baseUrl) {
    _openapi.dio.options.baseUrl = baseUrl;
  }

  static final Openapi _openapi = Openapi(
    basePathOverride: kReleaseMode ? liveBasePath : null,
    interceptors: [],
  );

  Openapi get api => _openapi;
  AccountsApi get accounts => api.getAccountsApi();
  AuthApi get auth => api.getAuthApi();
  ChatApi get chat => api.getChatApi();
}

//Typdef for AccountsUsersRetrieveState

typedef AccountsUsersRetrieveState = Data<User, AccountsUsersRetrieveFilter>;

//Filter for AccountsUsersRetrieveFilter

@freezed
class AccountsUsersRetrieveFilter with _$AccountsUsersRetrieveFilter {
  const AccountsUsersRetrieveFilter._();

  const factory AccountsUsersRetrieveFilter({
    required String id,
  }) = _AccountsUsersRetrieveFilter;

  factory AccountsUsersRetrieveFilter.fromJson(
    Map<String, dynamic> map,
  ) =>
      _$AccountsUsersRetrieveFilterFromJson(map);
}

// Repository for AccountsUsersRepository

abstract class AccountsUsersRepository {
  static Future<User> retrieve([
    AccountsUsersRetrieveFilter? filter,
  ]) async {
    if (filter == null) {
      throw Exception('Invalid filter');
    }
    final r = await ApiRepository.instance.accounts.accountsUsersRetrieve(
      id: filter.id,
    );
    if (r.data == null) {
      throw Exception('Failed to load data!');
    } else {
      return r.data!;
    }
  }

  Future<User?> partialUpdate({
    required String id,
    PatchedUserRequest? patchedUserRequest,
  }) async {
    final r = (await ApiRepository.instance.accounts.accountsUsersPartialUpdate(
      id: id,
      patchedUserRequest: patchedUserRequest,
    ));

    return r.data;
  }

  Future<User?> updateObject({
    required String id,
    UserRequest? userRequest,
  }) async {
    final r = (await ApiRepository.instance.accounts.accountsUsersUpdate(
      id: id,
      userRequest: userRequest,
    ));

    return r.data;
  }
}

// DataCubit for AccountsUsers

class AccountsUsersDataBloc extends DataCubit<User, AccountsUsersRetrieveFilter>
    with AccountsUsersRepository, CubitMaybeEmit {
  AccountsUsersDataBloc() : super(AccountsUsersRepository.retrieve);

  @override
  Future<User?> partialUpdate({
    required String id,
    PatchedUserRequest? patchedUserRequest,
  }) async {
    final r = await super.partialUpdate(
      id: id,
      patchedUserRequest: patchedUserRequest,
    );

    return r;
  }

  @override
  Future<User?> updateObject({
    required String id,
    UserRequest? userRequest,
  }) async {
    final r = await super.updateObject(
      id: id,
      userRequest: userRequest,
    );

    return r;
  }
}

//Typdef for ChatImagesListState

typedef ChatImagesListState = Data<List<MessageImage>, ChatImagesListFilter>;

//Filter for ChatImagesListFilter

@freezed
class ChatImagesListFilter
    with _$ChatImagesListFilter
    implements OffsetLimitFilter {
  static const kPageSize = 25;
  const ChatImagesListFilter._();

  @Implements<OffsetLimitFilter>()
  const factory ChatImagesListFilter({
    @Default(25) int limit,
    @Default(0) int offset,
  }) = _ChatImagesListFilter;

  factory ChatImagesListFilter.fromJson(
    Map<String, dynamic> map,
  ) =>
      _$ChatImagesListFilterFromJson(map);

  @override
  ChatImagesListFilter copyWithOffset(int offset) => copyWith(offset: offset);
}

//Typdef for ChatImagesRetrieveState

typedef ChatImagesRetrieveState = Data<MessageImage, ChatImagesRetrieveFilter>;

//Filter for ChatImagesRetrieveFilter

@freezed
class ChatImagesRetrieveFilter with _$ChatImagesRetrieveFilter {
  const ChatImagesRetrieveFilter._();

  const factory ChatImagesRetrieveFilter({
    required String id,
  }) = _ChatImagesRetrieveFilter;

  factory ChatImagesRetrieveFilter.fromJson(
    Map<String, dynamic> map,
  ) =>
      _$ChatImagesRetrieveFilterFromJson(map);
}

// Repository for ChatImagesRepository

abstract class ChatImagesRepository {
  static Future<MessageImage> retrieve([
    ChatImagesRetrieveFilter? filter,
  ]) async {
    if (filter == null) {
      throw Exception('Invalid filter');
    }
    final r = await ApiRepository.instance.chat.chatImagesRetrieve(
      id: filter.id,
    );
    if (r.data == null) {
      throw Exception('Failed to load data!');
    } else {
      return r.data!;
    }
  }

  static Future<List<MessageImage>> list([
    ChatImagesListFilter? filter,
  ]) async {
    final r = await ApiRepository.instance.chat.chatImagesList(
      limit: filter?.limit,
      offset: filter?.offset,
    );

    return r.data?.results?.toList(growable: false) ?? [];
  }

  Future<MessageImage?> create({
    String? messageId,
    String? roomId,
    MultipartFile? image,
  }) async {
    final r = (await ApiRepository.instance.chat.chatImagesCreate(
      messageId: messageId,
      roomId: roomId,
      image: image,
    ));

    return r.data;
  }

  Future<MessageImage?> partialUpdate({
    required String id,
    String? messageId,
    String? roomId,
    MultipartFile? image,
  }) async {
    final r = (await ApiRepository.instance.chat.chatImagesPartialUpdate(
      id: id,
      messageId: messageId,
      roomId: roomId,
      image: image,
    ));

    return r.data;
  }

  Future<MessageImage?> updateObject({
    required String id,
    String? messageId,
    String? roomId,
    MultipartFile? image,
  }) async {
    final r = (await ApiRepository.instance.chat.chatImagesUpdate(
      id: id,
      messageId: messageId,
      roomId: roomId,
      image: image,
    ));

    return r.data;
  }

  Future<Object?> destroy({
    required String id,
  }) async {
    final r = (await ApiRepository.instance.chat.chatImagesDestroy(
      id: id,
    ));

    return r.data;
  }
}

// DataCubit for ChatImages

class ChatImagesDataBloc
    extends DataCubit<MessageImage, ChatImagesRetrieveFilter>
    with ChatImagesRepository, CubitMaybeEmit {
  ChatImagesDataBloc() : super(ChatImagesRepository.retrieve);

  @override
  Future<MessageImage?> create({
    String? messageId,
    String? roomId,
    MultipartFile? image,
  }) async {
    final r = await super.create(
      messageId: messageId,
      roomId: roomId,
      image: image,
    );

    return r;
  }

  @override
  Future<MessageImage?> partialUpdate({
    required String id,
    String? messageId,
    String? roomId,
    MultipartFile? image,
  }) async {
    final r = await super.partialUpdate(
      id: id,
      messageId: messageId,
      roomId: roomId,
      image: image,
    );

    return r;
  }

  @override
  Future<MessageImage?> updateObject({
    required String id,
    String? messageId,
    String? roomId,
    MultipartFile? image,
  }) async {
    final r = await super.updateObject(
      id: id,
      messageId: messageId,
      roomId: roomId,
      image: image,
    );

    return r;
  }

  @override
  Future<Object?> destroy({
    required String id,
  }) async {
    final r = await super.destroy(
      id: id,
    );

    return r;
  }
}

// ListCubit for ChatImages

class ChatImagesListBloc extends ListCubit<MessageImage, ChatImagesListFilter>
    with ChatImagesRepository, CubitMaybeEmit {
  ChatImagesListBloc() : super(ChatImagesRepository.list);

  @override
  Future<MessageImage?> create({
    String? messageId,
    String? roomId,
    MultipartFile? image,
  }) async {
    final r = await super.create(
      messageId: messageId,
      roomId: roomId,
      image: image,
    );
    await super.reload();

    return r;
  }

  @override
  Future<MessageImage?> partialUpdate({
    required String id,
    String? messageId,
    String? roomId,
    MultipartFile? image,
  }) async {
    final r = await super.partialUpdate(
      id: id,
      messageId: messageId,
      roomId: roomId,
      image: image,
    );
    await super.reload();

    return r;
  }

  @override
  Future<MessageImage?> updateObject({
    required String id,
    String? messageId,
    String? roomId,
    MultipartFile? image,
  }) async {
    final r = await super.updateObject(
      id: id,
      messageId: messageId,
      roomId: roomId,
      image: image,
    );
    await super.reload();

    return r;
  }

  @override
  Future<Object?> destroy({
    required String id,
  }) async {
    final r = await super.destroy(
      id: id,
    );
    await super.reload();

    return r;
  }
}

//Typdef for ChatRoomsListState

typedef ChatRoomsListState = Data<List<Room>, ChatRoomsListFilter>;

//Filter for ChatRoomsListFilter

@freezed
class ChatRoomsListFilter
    with _$ChatRoomsListFilter
    implements OffsetLimitFilter {
  static const kPageSize = 25;
  const ChatRoomsListFilter._();

  @Implements<OffsetLimitFilter>()
  const factory ChatRoomsListFilter({
    @Default(25) int limit,
    @Default(0) int offset,
  }) = _ChatRoomsListFilter;

  factory ChatRoomsListFilter.fromJson(
    Map<String, dynamic> map,
  ) =>
      _$ChatRoomsListFilterFromJson(map);

  @override
  ChatRoomsListFilter copyWithOffset(int offset) => copyWith(offset: offset);
}

//Typdef for ChatRoomsRetrieveState

typedef ChatRoomsRetrieveState = Data<Room, ChatRoomsRetrieveFilter>;

//Filter for ChatRoomsRetrieveFilter

@freezed
class ChatRoomsRetrieveFilter with _$ChatRoomsRetrieveFilter {
  const ChatRoomsRetrieveFilter._();

  const factory ChatRoomsRetrieveFilter({
    required String id,
  }) = _ChatRoomsRetrieveFilter;

  factory ChatRoomsRetrieveFilter.fromJson(
    Map<String, dynamic> map,
  ) =>
      _$ChatRoomsRetrieveFilterFromJson(map);
}

// Repository for ChatRoomsRepository

abstract class ChatRoomsRepository {
  static Future<Room> retrieve([
    ChatRoomsRetrieveFilter? filter,
  ]) async {
    if (filter == null) {
      throw Exception('Invalid filter');
    }
    final r = await ApiRepository.instance.chat.chatRoomsRetrieve(
      id: filter.id,
    );
    if (r.data == null) {
      throw Exception('Failed to load data!');
    } else {
      return r.data!;
    }
  }

  static Future<List<Room>> list([
    ChatRoomsListFilter? filter,
  ]) async {
    final r = await ApiRepository.instance.chat.chatRoomsList(
      limit: filter?.limit,
      offset: filter?.offset,
    );

    return r.data?.results?.toList(growable: false) ?? [];
  }

  Future<Room?> create({
    required RoomRequest roomRequest,
  }) async {
    final r = (await ApiRepository.instance.chat.chatRoomsCreate(
      roomRequest: roomRequest,
    ));

    return r.data;
  }

  Future<Room?> partialUpdate({
    required String id,
    PatchedRoomRequest? patchedRoomRequest,
  }) async {
    final r = (await ApiRepository.instance.chat.chatRoomsPartialUpdate(
      id: id,
      patchedRoomRequest: patchedRoomRequest,
    ));

    return r.data;
  }

  Future<Room?> updateObject({
    required String id,
    required RoomRequest roomRequest,
  }) async {
    final r = (await ApiRepository.instance.chat.chatRoomsUpdate(
      id: id,
      roomRequest: roomRequest,
    ));

    return r.data;
  }

  Future<Object?> destroy({
    required String id,
  }) async {
    final r = (await ApiRepository.instance.chat.chatRoomsDestroy(
      id: id,
    ));

    return r.data;
  }
}

// DataCubit for ChatRooms

class ChatRoomsDataBloc extends DataCubit<Room, ChatRoomsRetrieveFilter>
    with ChatRoomsRepository, CubitMaybeEmit {
  ChatRoomsDataBloc() : super(ChatRoomsRepository.retrieve);

  @override
  Future<Room?> create({
    required RoomRequest roomRequest,
  }) async {
    final r = await super.create(
      roomRequest: roomRequest,
    );

    return r;
  }

  @override
  Future<Room?> partialUpdate({
    required String id,
    PatchedRoomRequest? patchedRoomRequest,
  }) async {
    final r = await super.partialUpdate(
      id: id,
      patchedRoomRequest: patchedRoomRequest,
    );

    return r;
  }

  @override
  Future<Room?> updateObject({
    required String id,
    required RoomRequest roomRequest,
  }) async {
    final r = await super.updateObject(
      id: id,
      roomRequest: roomRequest,
    );

    return r;
  }

  @override
  Future<Object?> destroy({
    required String id,
  }) async {
    final r = await super.destroy(
      id: id,
    );

    return r;
  }
}

// ListCubit for ChatRooms

class ChatRoomsListBloc extends ListCubit<Room, ChatRoomsListFilter>
    with ChatRoomsRepository, CubitMaybeEmit {
  ChatRoomsListBloc() : super(ChatRoomsRepository.list);

  @override
  Future<Room?> create({
    required RoomRequest roomRequest,
  }) async {
    final r = await super.create(
      roomRequest: roomRequest,
    );
    await super.reload();

    return r;
  }

  @override
  Future<Room?> partialUpdate({
    required String id,
    PatchedRoomRequest? patchedRoomRequest,
  }) async {
    final r = await super.partialUpdate(
      id: id,
      patchedRoomRequest: patchedRoomRequest,
    );
    await super.reload();

    return r;
  }

  @override
  Future<Room?> updateObject({
    required String id,
    required RoomRequest roomRequest,
  }) async {
    final r = await super.updateObject(
      id: id,
      roomRequest: roomRequest,
    );
    await super.reload();

    return r;
  }

  @override
  Future<Object?> destroy({
    required String id,
  }) async {
    final r = await super.destroy(
      id: id,
    );
    await super.reload();

    return r;
  }
}

//Typdef for ChatRoomsMessagesListState

typedef ChatRoomsMessagesListState
    = Data<List<Message>, ChatRoomsMessagesListFilter>;

//Filter for ChatRoomsMessagesListFilter

@freezed
class ChatRoomsMessagesListFilter
    with _$ChatRoomsMessagesListFilter
    implements OffsetLimitFilter {
  static const kPageSize = 25;
  const ChatRoomsMessagesListFilter._();

  @Implements<OffsetLimitFilter>()
  const factory ChatRoomsMessagesListFilter({
    required String roomPk,
    @Default(25) int limit,
    @Default(0) int offset,
  }) = _ChatRoomsMessagesListFilter;

  factory ChatRoomsMessagesListFilter.fromJson(
    Map<String, dynamic> map,
  ) =>
      _$ChatRoomsMessagesListFilterFromJson(map);

  @override
  ChatRoomsMessagesListFilter copyWithOffset(int offset) =>
      copyWith(offset: offset);
}

//Typdef for ChatRoomsMessagesRetrieveState

typedef ChatRoomsMessagesRetrieveState
    = Data<Message, ChatRoomsMessagesRetrieveFilter>;

//Filter for ChatRoomsMessagesRetrieveFilter

@freezed
class ChatRoomsMessagesRetrieveFilter with _$ChatRoomsMessagesRetrieveFilter {
  const ChatRoomsMessagesRetrieveFilter._();

  const factory ChatRoomsMessagesRetrieveFilter({
    required String id,
    required String roomPk,
  }) = _ChatRoomsMessagesRetrieveFilter;

  factory ChatRoomsMessagesRetrieveFilter.fromJson(
    Map<String, dynamic> map,
  ) =>
      _$ChatRoomsMessagesRetrieveFilterFromJson(map);
}

// Repository for ChatRoomsMessagesRepository

abstract class ChatRoomsMessagesRepository {
  static Future<Message> retrieve([
    ChatRoomsMessagesRetrieveFilter? filter,
  ]) async {
    if (filter == null) {
      throw Exception('Invalid filter');
    }
    final r = await ApiRepository.instance.chat.chatRoomsMessagesRetrieve(
      id: filter.id,
      roomPk: filter.roomPk,
    );
    if (r.data == null) {
      throw Exception('Failed to load data!');
    } else {
      return r.data!;
    }
  }

  static Future<List<Message>> list([
    ChatRoomsMessagesListFilter? filter,
  ]) async {
    if (filter == null) {
      throw Exception('Invalid filter');
    }
    final r = await ApiRepository.instance.chat.chatRoomsMessagesList(
      roomPk: filter.roomPk,
      limit: filter.limit,
      offset: filter.offset,
    );

    return r.data?.results?.toList(growable: false) ?? [];
  }

  Future<Message?> create({
    required String roomPk,
    MessageRequest? messageRequest,
  }) async {
    final r = (await ApiRepository.instance.chat.chatRoomsMessagesCreate(
      roomPk: roomPk,
      messageRequest: messageRequest,
    ));

    return r.data;
  }

  Future<Message?> partialUpdate({
    required String id,
    required String roomPk,
    PatchedMessageRequest? patchedMessageRequest,
  }) async {
    final r = (await ApiRepository.instance.chat.chatRoomsMessagesPartialUpdate(
      id: id,
      roomPk: roomPk,
      patchedMessageRequest: patchedMessageRequest,
    ));

    return r.data;
  }

  Future<Message?> updateObject({
    required String id,
    required String roomPk,
    MessageRequest? messageRequest,
  }) async {
    final r = (await ApiRepository.instance.chat.chatRoomsMessagesUpdate(
      id: id,
      roomPk: roomPk,
      messageRequest: messageRequest,
    ));

    return r.data;
  }

  Future<void> destroy({
    required String id,
    required String roomPk,
  }) async {
    final r = (await ApiRepository.instance.chat.chatRoomsMessagesDestroy(
      id: id,
      roomPk: roomPk,
    ));

    return r.data;
  }
}

// DataCubit for ChatRoomsMessages

class ChatRoomsMessagesDataBloc
    extends DataCubit<Message, ChatRoomsMessagesRetrieveFilter>
    with ChatRoomsMessagesRepository, CubitMaybeEmit {
  ChatRoomsMessagesDataBloc() : super(ChatRoomsMessagesRepository.retrieve);

  @override
  Future<Message?> create({
    required String roomPk,
    MessageRequest? messageRequest,
  }) async {
    final r = await super.create(
      roomPk: roomPk,
      messageRequest: messageRequest,
    );

    return r;
  }

  @override
  Future<Message?> partialUpdate({
    required String id,
    required String roomPk,
    PatchedMessageRequest? patchedMessageRequest,
  }) async {
    final r = await super.partialUpdate(
      id: id,
      roomPk: roomPk,
      patchedMessageRequest: patchedMessageRequest,
    );

    return r;
  }

  @override
  Future<Message?> updateObject({
    required String id,
    required String roomPk,
    MessageRequest? messageRequest,
  }) async {
    final r = await super.updateObject(
      id: id,
      roomPk: roomPk,
      messageRequest: messageRequest,
    );

    return r;
  }

  @override
  Future<void> destroy({
    required String id,
    required String roomPk,
  }) async {
    final r = await super.destroy(
      id: id,
      roomPk: roomPk,
    );

    return r;
  }
}

// ListCubit for ChatRoomsMessages

class ChatRoomsMessagesListBloc
    extends ListCubit<Message, ChatRoomsMessagesListFilter>
    with ChatRoomsMessagesRepository, CubitMaybeEmit {
  ChatRoomsMessagesListBloc() : super(ChatRoomsMessagesRepository.list);

  @override
  Future<Message?> create({
    required String roomPk,
    MessageRequest? messageRequest,
  }) async {
    final r = await super.create(
      roomPk: roomPk,
      messageRequest: messageRequest,
    );
    await super.reload();

    return r;
  }

  @override
  Future<Message?> partialUpdate({
    required String id,
    required String roomPk,
    PatchedMessageRequest? patchedMessageRequest,
  }) async {
    final r = await super.partialUpdate(
      id: id,
      roomPk: roomPk,
      patchedMessageRequest: patchedMessageRequest,
    );
    await super.reload();

    return r;
  }

  @override
  Future<Message?> updateObject({
    required String id,
    required String roomPk,
    MessageRequest? messageRequest,
  }) async {
    final r = await super.updateObject(
      id: id,
      roomPk: roomPk,
      messageRequest: messageRequest,
    );
    await super.reload();

    return r;
  }

  @override
  Future<void> destroy({
    required String id,
    required String roomPk,
  }) async {
    final r = await super.destroy(
      id: id,
      roomPk: roomPk,
    );
    await super.reload();

    return r;
  }
}

//Typdef for ChatRoomsUsersListState

typedef ChatRoomsUsersListState
    = Data<List<RoomUser>, ChatRoomsUsersListFilter>;

//Filter for ChatRoomsUsersListFilter

@freezed
class ChatRoomsUsersListFilter with _$ChatRoomsUsersListFilter {
  const ChatRoomsUsersListFilter._();

  const factory ChatRoomsUsersListFilter({
    required String roomPk,
  }) = _ChatRoomsUsersListFilter;

  factory ChatRoomsUsersListFilter.fromJson(
    Map<String, dynamic> map,
  ) =>
      _$ChatRoomsUsersListFilterFromJson(map);
}

//Typdef for ChatRoomsUsersRetrieveState

typedef ChatRoomsUsersRetrieveState
    = Data<RoomUser, ChatRoomsUsersRetrieveFilter>;

//Filter for ChatRoomsUsersRetrieveFilter

@freezed
class ChatRoomsUsersRetrieveFilter with _$ChatRoomsUsersRetrieveFilter {
  const ChatRoomsUsersRetrieveFilter._();

  const factory ChatRoomsUsersRetrieveFilter({
    required String id,
    required String roomPk,
  }) = _ChatRoomsUsersRetrieveFilter;

  factory ChatRoomsUsersRetrieveFilter.fromJson(
    Map<String, dynamic> map,
  ) =>
      _$ChatRoomsUsersRetrieveFilterFromJson(map);
}

// Repository for ChatRoomsUsersRepository

abstract class ChatRoomsUsersRepository {
  static Future<RoomUser> retrieve([
    ChatRoomsUsersRetrieveFilter? filter,
  ]) async {
    if (filter == null) {
      throw Exception('Invalid filter');
    }
    final r = await ApiRepository.instance.chat.chatRoomsUsersRetrieve(
      id: filter.id,
      roomPk: filter.roomPk,
    );
    if (r.data == null) {
      throw Exception('Failed to load data!');
    } else {
      return r.data!;
    }
  }

  static Future<List<RoomUser>> list([
    ChatRoomsUsersListFilter? filter,
  ]) async {
    if (filter == null) {
      throw Exception('Invalid filter');
    }
    final r = await ApiRepository.instance.chat.chatRoomsUsersList(
      roomPk: filter.roomPk,
    );

    return r.data?.toList(growable: false) ?? [];
  }

  Future<RoomUser?> create({
    required String roomPk,
  }) async {
    final r = (await ApiRepository.instance.chat.chatRoomsUsersCreate(
      roomPk: roomPk,
    ));

    return r.data;
  }

  Future<RoomUser?> partialUpdate({
    required String id,
    required String roomPk,
  }) async {
    final r = (await ApiRepository.instance.chat.chatRoomsUsersPartialUpdate(
      id: id,
      roomPk: roomPk,
    ));

    return r.data;
  }

  Future<RoomUser?> updateObject({
    required String id,
    required String roomPk,
  }) async {
    final r = (await ApiRepository.instance.chat.chatRoomsUsersUpdate(
      id: id,
      roomPk: roomPk,
    ));

    return r.data;
  }

  Future<Object?> destroy({
    required String id,
    required String roomPk,
  }) async {
    final r = (await ApiRepository.instance.chat.chatRoomsUsersDestroy(
      id: id,
      roomPk: roomPk,
    ));

    return r.data;
  }
}

// DataCubit for ChatRoomsUsers

class ChatRoomsUsersDataBloc
    extends DataCubit<RoomUser, ChatRoomsUsersRetrieveFilter>
    with ChatRoomsUsersRepository, CubitMaybeEmit {
  ChatRoomsUsersDataBloc() : super(ChatRoomsUsersRepository.retrieve);

  @override
  Future<RoomUser?> create({
    required String roomPk,
  }) async {
    final r = await super.create(
      roomPk: roomPk,
    );

    return r;
  }

  @override
  Future<RoomUser?> partialUpdate({
    required String id,
    required String roomPk,
  }) async {
    final r = await super.partialUpdate(
      id: id,
      roomPk: roomPk,
    );

    return r;
  }

  @override
  Future<RoomUser?> updateObject({
    required String id,
    required String roomPk,
  }) async {
    final r = await super.updateObject(
      id: id,
      roomPk: roomPk,
    );

    return r;
  }

  @override
  Future<Object?> destroy({
    required String id,
    required String roomPk,
  }) async {
    final r = await super.destroy(
      id: id,
      roomPk: roomPk,
    );

    return r;
  }
}

// ListCubit for ChatRoomsUsers

class ChatRoomsUsersListBloc
    extends ListCubit<RoomUser, ChatRoomsUsersListFilter>
    with ChatRoomsUsersRepository, CubitMaybeEmit {
  ChatRoomsUsersListBloc() : super(ChatRoomsUsersRepository.list);

  @override
  Future<RoomUser?> create({
    required String roomPk,
  }) async {
    final r = await super.create(
      roomPk: roomPk,
    );
    await super.reload();

    return r;
  }

  @override
  Future<RoomUser?> partialUpdate({
    required String id,
    required String roomPk,
  }) async {
    final r = await super.partialUpdate(
      id: id,
      roomPk: roomPk,
    );
    await super.reload();

    return r;
  }

  @override
  Future<RoomUser?> updateObject({
    required String id,
    required String roomPk,
  }) async {
    final r = await super.updateObject(
      id: id,
      roomPk: roomPk,
    );
    await super.reload();

    return r;
  }

  @override
  Future<Object?> destroy({
    required String id,
    required String roomPk,
  }) async {
    final r = await super.destroy(
      id: id,
      roomPk: roomPk,
    );
    await super.reload();

    return r;
  }
}

//Typdef for ChatRoomsUsersNamesListState

typedef ChatRoomsUsersNamesListState
    = Data<List<UserName>, ChatRoomsUsersNamesListFilter>;

//Filter for ChatRoomsUsersNamesListFilter

@freezed
class ChatRoomsUsersNamesListFilter with _$ChatRoomsUsersNamesListFilter {
  const ChatRoomsUsersNamesListFilter._();

  const factory ChatRoomsUsersNamesListFilter({
    required String roomPk,
  }) = _ChatRoomsUsersNamesListFilter;

  factory ChatRoomsUsersNamesListFilter.fromJson(
    Map<String, dynamic> map,
  ) =>
      _$ChatRoomsUsersNamesListFilterFromJson(map);
}

// Repository for ChatRoomsUsersNamesRepository

abstract class ChatRoomsUsersNamesRepository {
  static Future<List<UserName>> list([
    ChatRoomsUsersNamesListFilter? filter,
  ]) async {
    if (filter == null) {
      throw Exception('Invalid filter');
    }
    final r = await ApiRepository.instance.chat.chatRoomsUsersNamesList(
      roomPk: filter.roomPk,
    );

    return r.data?.toList(growable: false) ?? [];
  }
}

// ListCubit for ChatRoomsUsersNames

class ChatRoomsUsersNamesListBloc
    extends ListCubit<UserName, ChatRoomsUsersNamesListFilter>
    with ChatRoomsUsersNamesRepository, CubitMaybeEmit {
  ChatRoomsUsersNamesListBloc() : super(ChatRoomsUsersNamesRepository.list);
}
