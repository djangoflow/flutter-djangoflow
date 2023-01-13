# Djangoflow deep-link extraction and listening interface.

This package provides interface to implement handling deep-link in flutter applications.

## Features

It provides two main interfaces

- `DjangoflowDeepLinkRepositoryBase` : This is an abstract class for a repository of deep links in a DjangoFlow application. The class is generic and takes a type parameter "T" which represents the type of the deep links. The class has two methods, `getLinkStream()` which returns a stream of deep links of type T and `getIntialLink()` which returns a future that resolves to an initial deep link of type T or null if it doesn't exist. Classes that extend this abstract class are expected to provide the implementation for these methods.

- `DjangoflowDeepLinkCubitBase` : This is an abstract class for a Cubit (a state management architecture for Flutter) that handles deep links. The class is generic and takes a type parameter "T" which represents the type of the deep links. The class extends the Cubit class and takes the initial state as a parameter in its constructor. It also takes a field repository of type `DjangoflowDeepLinkRepositoryBase<T>` which is an abstract class for the repository of deep links.
  The class has two methods:
  `startListening()`: This method starts listening to the stream of deep links returned by the repository's getLinkStream() method, and whenever there's a new deep link, it emits the new state.

  `close()`: This method is an override of the Cubit class's close() method, it cancels the stream subscription and calls the super method to close the cubit.

  This cubit is intended to be extended by concrete classes to provide the implementation of the initialState and the repository fields.

## Getting started

Install it via [pub.dev](https://pub.dev/packages/djangoflow_deep_link_interface/install)

## Usage

Extend the classes to implement concrete classes for implementing deep-link extraction and listening.

```dart
class SomeDeepLinkCubit extends DjangoflowDeepLinkCubitBase { ....
```
