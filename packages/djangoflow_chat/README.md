# DjangoFlow Chat

## Abstract

The djangoflow_chat package provides a set of classes and methods for building real-time chat applications in Flutter using [django-df-chat](https://github.com/djangoflow/django-df-chat) and by generating `openapi` package via [openapi-generator-cli](https://github.com/OpenAPITools/openapi-generator-cli).

[openapi-generator-cli](https://github.com/OpenAPITools/openapi-generator-cli) is a very powerful tool that allows us to generate client libraries(api calling methods) following Repository pattern, documentation, tests etc for `Dart` language from the OpenApi/Swagger spec file. A good can be this article on how to generate OpenApi client library from OpenApi/Swagger specification [Article Link](https://medium.com/@rtlsilva/generating-dart-rest-api-client-libraries-using-openapi-generator-9b3dc517e68c)

[django-df-chat](https://github.com/djangoflow/django-df-chat) is a Django app that provides chat functionality for web and mobile applications. It offers a set of REST APIs that allow users to create chat rooms, send messages, and manage users. The app is built with Django Channels and offers real-time communication capabilities using WebSockets. The package is highly configurable, and users can customize it according to their needs. The package also offers support for media files, message reactions, and message threading.

By combining the power of [django-df-chat](https://github.com/djangoflow/django-df-chat) and [openapi-generator-cli](https://github.com/OpenAPITools/openapi-generator-cli) we have built flutter package to have chat functionality in flutter apps within minutes.

## Installation

**Before we can install this package**, we need to make sure that we have already generated `openapi` package for our flutter project using [django-df-chat](https://github.com/djangoflow/django-df-chat). This custom chat backend provides all the necessary APIs for this Flutter package to work. It is very quick and easy process to install the example app for [django-df-chat](https://github.com/djangoflow/django-df-chat) and run it locally. Please follow the [README](https://github.com/djangoflow/djangoflow-examples/tree/main/simple_chat/backend-django#readme) for running the [django-df-chat](https://github.com/djangoflow/django-df-chat) Backend locally. Please check our example's [README](https://github.com/djangoflow/djangoflow-examples/tree/main/simple_chat/frontend-flutter/packages/chat/README.md) to learn about generating `openapi` package.

- Add djangoflow_chat to your pubspec.yaml file:

```yaml
dependencies:
djangoflow_chat: <version_number>
---
dependency_overrides:
  openapi:
    path: PATH_TO_YOUR_GENERATED_OPENAPI
```

- Run `flutter pub get` to install the package.

## Usage

### ChatCubit

The ChatCubit class provides a set of methods for interacting with a chat room.

```dart
Copy code
final chatCubit = ChatCubit(
chatApi,
roomId: '1',
);
```

- `loadData()`: loads the chat room data from the server.
- `loadMoreMessages()`: loads more messages in the chat room.
- `sendTextMessage()`: sends a new text message to the chat room.
- `uploadImageToMessage()`: uploads an image and adds it to a message.
- `addRoomUser()`: adds a new user to the chat room locally.
- `addMessage()`: adds a new message to the chat room locally.
- `markMessagesAsSeen()`: marks a message as seen.
- `reactToAMessage()`: adds a reaction to a message.

## Extensions

The djangoflow_chat package also includes some extension methods to make working with chat data easier.

- `toReactionsMapWithCount()`: returns a map of reaction strings to their respective counts in a list of Message objects.
- `get unseenMessageIds`: returns a list of message IDs for any messages in the list that have not been seen by the current user.
- `toUser()`: converts a RoomUser object to a User object.
- `nullify()`: returns null if the string is either null or empty. If the string has a non-empty value, the method returns the original string.
- `isNullOrEmpty()`: returns a boolean value indicating whether the string or list is either null or empty.
- `isNotNullOrEmpty()`: returns a boolean value indicating whether the string or list is not null and has at least one element.

## Example

An example app is included in the [example](https://github.com/djangoflow/djangoflow-examples/tree/main/simple_chat/frontend-flutter)
