# djangoflow_openapi.api.ChatApi

## Load the API package
```dart
import 'package:djangoflow_openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chatImagesCreate**](ChatApi.md#chatimagescreate) | **POST** /api/v1/chat/images/ | 
[**chatImagesDestroy**](ChatApi.md#chatimagesdestroy) | **DELETE** /api/v1/chat/images/{id}/ | 
[**chatImagesList**](ChatApi.md#chatimageslist) | **GET** /api/v1/chat/images/ | 
[**chatImagesPartialUpdate**](ChatApi.md#chatimagespartialupdate) | **PATCH** /api/v1/chat/images/{id}/ | 
[**chatImagesRetrieve**](ChatApi.md#chatimagesretrieve) | **GET** /api/v1/chat/images/{id}/ | 
[**chatImagesUpdate**](ChatApi.md#chatimagesupdate) | **PUT** /api/v1/chat/images/{id}/ | 
[**chatRoomsCreate**](ChatApi.md#chatroomscreate) | **POST** /api/v1/chat/rooms/ | 
[**chatRoomsDestroy**](ChatApi.md#chatroomsdestroy) | **DELETE** /api/v1/chat/rooms/{id}/ | 
[**chatRoomsList**](ChatApi.md#chatroomslist) | **GET** /api/v1/chat/rooms/ | 
[**chatRoomsMessagesCreate**](ChatApi.md#chatroomsmessagescreate) | **POST** /api/v1/chat/rooms/{room_pk}/messages/ | 
[**chatRoomsMessagesDestroy**](ChatApi.md#chatroomsmessagesdestroy) | **DELETE** /api/v1/chat/rooms/{room_pk}/messages/{id}/ | 
[**chatRoomsMessagesList**](ChatApi.md#chatroomsmessageslist) | **GET** /api/v1/chat/rooms/{room_pk}/messages/ | 
[**chatRoomsMessagesPartialUpdate**](ChatApi.md#chatroomsmessagespartialupdate) | **PATCH** /api/v1/chat/rooms/{room_pk}/messages/{id}/ | 
[**chatRoomsMessagesRetrieve**](ChatApi.md#chatroomsmessagesretrieve) | **GET** /api/v1/chat/rooms/{room_pk}/messages/{id}/ | 
[**chatRoomsMessagesSeenCreate**](ChatApi.md#chatroomsmessagesseencreate) | **POST** /api/v1/chat/rooms/{room_pk}/messages/seen/ | 
[**chatRoomsMessagesUpdate**](ChatApi.md#chatroomsmessagesupdate) | **PUT** /api/v1/chat/rooms/{room_pk}/messages/{id}/ | 
[**chatRoomsMuteCreate**](ChatApi.md#chatroomsmutecreate) | **POST** /api/v1/chat/rooms/{id}/mute/ | 
[**chatRoomsPartialUpdate**](ChatApi.md#chatroomspartialupdate) | **PATCH** /api/v1/chat/rooms/{id}/ | 
[**chatRoomsRetrieve**](ChatApi.md#chatroomsretrieve) | **GET** /api/v1/chat/rooms/{id}/ | 
[**chatRoomsUnmuteCreate**](ChatApi.md#chatroomsunmutecreate) | **POST** /api/v1/chat/rooms/{id}/unmute/ | 
[**chatRoomsUpdate**](ChatApi.md#chatroomsupdate) | **PUT** /api/v1/chat/rooms/{id}/ | 
[**chatRoomsUsersCreate**](ChatApi.md#chatroomsuserscreate) | **POST** /api/v1/chat/rooms/{room_pk}/users/ | 
[**chatRoomsUsersDestroy**](ChatApi.md#chatroomsusersdestroy) | **DELETE** /api/v1/chat/rooms/{room_pk}/users/{id}/ | 
[**chatRoomsUsersList**](ChatApi.md#chatroomsuserslist) | **GET** /api/v1/chat/rooms/{room_pk}/users/ | 
[**chatRoomsUsersNamesList**](ChatApi.md#chatroomsusersnameslist) | **GET** /api/v1/chat/rooms/{room_pk}/users/names/ | 
[**chatRoomsUsersPartialUpdate**](ChatApi.md#chatroomsuserspartialupdate) | **PATCH** /api/v1/chat/rooms/{room_pk}/users/{id}/ | 
[**chatRoomsUsersRetrieve**](ChatApi.md#chatroomsusersretrieve) | **GET** /api/v1/chat/rooms/{room_pk}/users/{id}/ | 
[**chatRoomsUsersUpdate**](ChatApi.md#chatroomsusersupdate) | **PUT** /api/v1/chat/rooms/{room_pk}/users/{id}/ | 


# **chatImagesCreate**
> MessageImage chatImagesCreate(image, messageId, roomId)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';

final api = DjangoflowOpenapi().getChatApi();
final MultipartFile image = BINARY_DATA_HERE; // MultipartFile | 
final String messageId = messageId_example; // String | 
final String roomId = roomId_example; // String | 

try {
    final response = api.chatImagesCreate(image, messageId, roomId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatApi->chatImagesCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image** | **MultipartFile**|  | 
 **messageId** | **String**|  | [optional] 
 **roomId** | **String**|  | [optional] 

### Return type

[**MessageImage**](MessageImage.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatImagesDestroy**
> chatImagesDestroy(id)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';

final api = DjangoflowOpenapi().getChatApi();
final String id = id_example; // String | A unique integer value identifying this message image.

try {
    api.chatImagesDestroy(id);
} catch on DioError (e) {
    print('Exception when calling ChatApi->chatImagesDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this message image. | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatImagesList**
> List<MessageImage> chatImagesList()



### Example
```dart
import 'package:djangoflow_openapi/api.dart';

final api = DjangoflowOpenapi().getChatApi();

try {
    final response = api.chatImagesList();
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatApi->chatImagesList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;MessageImage&gt;**](MessageImage.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatImagesPartialUpdate**
> MessageImage chatImagesPartialUpdate(id, messageId, roomId, image)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';

final api = DjangoflowOpenapi().getChatApi();
final String id = id_example; // String | A unique integer value identifying this message image.
final String messageId = messageId_example; // String | 
final String roomId = roomId_example; // String | 
final MultipartFile image = BINARY_DATA_HERE; // MultipartFile | 

try {
    final response = api.chatImagesPartialUpdate(id, messageId, roomId, image);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatApi->chatImagesPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this message image. | 
 **messageId** | **String**|  | [optional] 
 **roomId** | **String**|  | [optional] 
 **image** | **MultipartFile**|  | [optional] 

### Return type

[**MessageImage**](MessageImage.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatImagesRetrieve**
> MessageImage chatImagesRetrieve(id)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';

final api = DjangoflowOpenapi().getChatApi();
final String id = id_example; // String | A unique integer value identifying this message image.

try {
    final response = api.chatImagesRetrieve(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatApi->chatImagesRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this message image. | 

### Return type

[**MessageImage**](MessageImage.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatImagesUpdate**
> MessageImage chatImagesUpdate(id, image, messageId, roomId)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';

final api = DjangoflowOpenapi().getChatApi();
final String id = id_example; // String | A unique integer value identifying this message image.
final MultipartFile image = BINARY_DATA_HERE; // MultipartFile | 
final String messageId = messageId_example; // String | 
final String roomId = roomId_example; // String | 

try {
    final response = api.chatImagesUpdate(id, image, messageId, roomId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatApi->chatImagesUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this message image. | 
 **image** | **MultipartFile**|  | 
 **messageId** | **String**|  | [optional] 
 **roomId** | **String**|  | [optional] 

### Return type

[**MessageImage**](MessageImage.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRoomsCreate**
> Room chatRoomsCreate(roomRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';

final api = DjangoflowOpenapi().getChatApi();
final RoomRequest roomRequest = ; // RoomRequest | 

try {
    final response = api.chatRoomsCreate(roomRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatApi->chatRoomsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roomRequest** | [**RoomRequest**](RoomRequest.md)|  | 

### Return type

[**Room**](Room.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRoomsDestroy**
> chatRoomsDestroy(id)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';

final api = DjangoflowOpenapi().getChatApi();
final String id = id_example; // String | A unique integer value identifying this room.

try {
    api.chatRoomsDestroy(id);
} catch on DioError (e) {
    print('Exception when calling ChatApi->chatRoomsDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this room. | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRoomsList**
> List<Room> chatRoomsList()



### Example
```dart
import 'package:djangoflow_openapi/api.dart';

final api = DjangoflowOpenapi().getChatApi();

try {
    final response = api.chatRoomsList();
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatApi->chatRoomsList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;Room&gt;**](Room.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRoomsMessagesCreate**
> Message chatRoomsMessagesCreate(roomPk, messageRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';

final api = DjangoflowOpenapi().getChatApi();
final String roomPk = roomPk_example; // String | 
final MessageRequest messageRequest = ; // MessageRequest | 

try {
    final response = api.chatRoomsMessagesCreate(roomPk, messageRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatApi->chatRoomsMessagesCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roomPk** | **String**|  | 
 **messageRequest** | [**MessageRequest**](MessageRequest.md)|  | [optional] 

### Return type

[**Message**](Message.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRoomsMessagesDestroy**
> chatRoomsMessagesDestroy(id, roomPk)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';

final api = DjangoflowOpenapi().getChatApi();
final String id = id_example; // String | A unique integer value identifying this message.
final String roomPk = roomPk_example; // String | 

try {
    api.chatRoomsMessagesDestroy(id, roomPk);
} catch on DioError (e) {
    print('Exception when calling ChatApi->chatRoomsMessagesDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this message. | 
 **roomPk** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRoomsMessagesList**
> List<Message> chatRoomsMessagesList(roomPk)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';

final api = DjangoflowOpenapi().getChatApi();
final String roomPk = roomPk_example; // String | 

try {
    final response = api.chatRoomsMessagesList(roomPk);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatApi->chatRoomsMessagesList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roomPk** | **String**|  | 

### Return type

[**List&lt;Message&gt;**](Message.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRoomsMessagesPartialUpdate**
> Message chatRoomsMessagesPartialUpdate(id, roomPk, patchedMessageRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';

final api = DjangoflowOpenapi().getChatApi();
final String id = id_example; // String | A unique integer value identifying this message.
final String roomPk = roomPk_example; // String | 
final PatchedMessageRequest patchedMessageRequest = ; // PatchedMessageRequest | 

try {
    final response = api.chatRoomsMessagesPartialUpdate(id, roomPk, patchedMessageRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatApi->chatRoomsMessagesPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this message. | 
 **roomPk** | **String**|  | 
 **patchedMessageRequest** | [**PatchedMessageRequest**](PatchedMessageRequest.md)|  | [optional] 

### Return type

[**Message**](Message.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRoomsMessagesRetrieve**
> Message chatRoomsMessagesRetrieve(id, roomPk)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';

final api = DjangoflowOpenapi().getChatApi();
final String id = id_example; // String | A unique integer value identifying this message.
final String roomPk = roomPk_example; // String | 

try {
    final response = api.chatRoomsMessagesRetrieve(id, roomPk);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatApi->chatRoomsMessagesRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this message. | 
 **roomPk** | **String**|  | 

### Return type

[**Message**](Message.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRoomsMessagesSeenCreate**
> MessageSeen chatRoomsMessagesSeenCreate(roomPk, messageSeenRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';

final api = DjangoflowOpenapi().getChatApi();
final String roomPk = roomPk_example; // String | 
final MessageSeenRequest messageSeenRequest = ; // MessageSeenRequest | 

try {
    final response = api.chatRoomsMessagesSeenCreate(roomPk, messageSeenRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatApi->chatRoomsMessagesSeenCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roomPk** | **String**|  | 
 **messageSeenRequest** | [**MessageSeenRequest**](MessageSeenRequest.md)|  | 

### Return type

[**MessageSeen**](MessageSeen.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRoomsMessagesUpdate**
> Message chatRoomsMessagesUpdate(id, roomPk, messageRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';

final api = DjangoflowOpenapi().getChatApi();
final String id = id_example; // String | A unique integer value identifying this message.
final String roomPk = roomPk_example; // String | 
final MessageRequest messageRequest = ; // MessageRequest | 

try {
    final response = api.chatRoomsMessagesUpdate(id, roomPk, messageRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatApi->chatRoomsMessagesUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this message. | 
 **roomPk** | **String**|  | 
 **messageRequest** | [**MessageRequest**](MessageRequest.md)|  | [optional] 

### Return type

[**Message**](Message.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRoomsMuteCreate**
> chatRoomsMuteCreate(id)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';

final api = DjangoflowOpenapi().getChatApi();
final String id = id_example; // String | A unique integer value identifying this room.

try {
    api.chatRoomsMuteCreate(id);
} catch on DioError (e) {
    print('Exception when calling ChatApi->chatRoomsMuteCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this room. | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRoomsPartialUpdate**
> Room chatRoomsPartialUpdate(id, patchedRoomRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';

final api = DjangoflowOpenapi().getChatApi();
final String id = id_example; // String | A unique integer value identifying this room.
final PatchedRoomRequest patchedRoomRequest = ; // PatchedRoomRequest | 

try {
    final response = api.chatRoomsPartialUpdate(id, patchedRoomRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatApi->chatRoomsPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this room. | 
 **patchedRoomRequest** | [**PatchedRoomRequest**](PatchedRoomRequest.md)|  | [optional] 

### Return type

[**Room**](Room.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRoomsRetrieve**
> Room chatRoomsRetrieve(id)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';

final api = DjangoflowOpenapi().getChatApi();
final String id = id_example; // String | A unique integer value identifying this room.

try {
    final response = api.chatRoomsRetrieve(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatApi->chatRoomsRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this room. | 

### Return type

[**Room**](Room.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRoomsUnmuteCreate**
> chatRoomsUnmuteCreate(id)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';

final api = DjangoflowOpenapi().getChatApi();
final String id = id_example; // String | A unique integer value identifying this room.

try {
    api.chatRoomsUnmuteCreate(id);
} catch on DioError (e) {
    print('Exception when calling ChatApi->chatRoomsUnmuteCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this room. | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRoomsUpdate**
> Room chatRoomsUpdate(id, roomRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';

final api = DjangoflowOpenapi().getChatApi();
final String id = id_example; // String | A unique integer value identifying this room.
final RoomRequest roomRequest = ; // RoomRequest | 

try {
    final response = api.chatRoomsUpdate(id, roomRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatApi->chatRoomsUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this room. | 
 **roomRequest** | [**RoomRequest**](RoomRequest.md)|  | 

### Return type

[**Room**](Room.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRoomsUsersCreate**
> RoomUser chatRoomsUsersCreate(roomPk)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';

final api = DjangoflowOpenapi().getChatApi();
final String roomPk = roomPk_example; // String | 

try {
    final response = api.chatRoomsUsersCreate(roomPk);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatApi->chatRoomsUsersCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roomPk** | **String**|  | 

### Return type

[**RoomUser**](RoomUser.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRoomsUsersDestroy**
> chatRoomsUsersDestroy(id, roomPk)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';

final api = DjangoflowOpenapi().getChatApi();
final String id = id_example; // String | A unique integer value identifying this room user.
final String roomPk = roomPk_example; // String | 

try {
    api.chatRoomsUsersDestroy(id, roomPk);
} catch on DioError (e) {
    print('Exception when calling ChatApi->chatRoomsUsersDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this room user. | 
 **roomPk** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRoomsUsersList**
> List<RoomUser> chatRoomsUsersList(roomPk)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';

final api = DjangoflowOpenapi().getChatApi();
final String roomPk = roomPk_example; // String | 

try {
    final response = api.chatRoomsUsersList(roomPk);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatApi->chatRoomsUsersList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roomPk** | **String**|  | 

### Return type

[**List&lt;RoomUser&gt;**](RoomUser.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRoomsUsersNamesList**
> List<UserName> chatRoomsUsersNamesList(roomPk)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';

final api = DjangoflowOpenapi().getChatApi();
final String roomPk = roomPk_example; // String | 

try {
    final response = api.chatRoomsUsersNamesList(roomPk);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatApi->chatRoomsUsersNamesList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roomPk** | **String**|  | 

### Return type

[**List&lt;UserName&gt;**](UserName.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRoomsUsersPartialUpdate**
> RoomUser chatRoomsUsersPartialUpdate(id, roomPk)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';

final api = DjangoflowOpenapi().getChatApi();
final String id = id_example; // String | A unique integer value identifying this room user.
final String roomPk = roomPk_example; // String | 

try {
    final response = api.chatRoomsUsersPartialUpdate(id, roomPk);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatApi->chatRoomsUsersPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this room user. | 
 **roomPk** | **String**|  | 

### Return type

[**RoomUser**](RoomUser.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRoomsUsersRetrieve**
> RoomUser chatRoomsUsersRetrieve(id, roomPk)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';

final api = DjangoflowOpenapi().getChatApi();
final String id = id_example; // String | A unique integer value identifying this room user.
final String roomPk = roomPk_example; // String | 

try {
    final response = api.chatRoomsUsersRetrieve(id, roomPk);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatApi->chatRoomsUsersRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this room user. | 
 **roomPk** | **String**|  | 

### Return type

[**RoomUser**](RoomUser.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRoomsUsersUpdate**
> RoomUser chatRoomsUsersUpdate(id, roomPk)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';

final api = DjangoflowOpenapi().getChatApi();
final String id = id_example; // String | A unique integer value identifying this room user.
final String roomPk = roomPk_example; // String | 

try {
    final response = api.chatRoomsUsersUpdate(id, roomPk);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatApi->chatRoomsUsersUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this room user. | 
 **roomPk** | **String**|  | 

### Return type

[**RoomUser**](RoomUser.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

