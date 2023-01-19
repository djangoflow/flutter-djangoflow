import 'dart:async';
import 'package:djangoflow_deep_link_interface/djangoflow_deep_link_interface.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

@GenerateNiceMocks([MockSpec<DjangoflowDeepLinkRepositoryBase<String>>()])
import 'djangoflow_deep_link_repository_base_test.mocks.dart';

void main() {
  late MockDjangoflowDeepLinkRepositoryBase repository;

  setUp(() {
    repository = MockDjangoflowDeepLinkRepositoryBase();
  });

  test('getLinkStream() returns a stream', () {
    expect(repository.getLinkStream(), isA<Stream<String>>());
  });

  test('getInitialLink() returns a future', () {
    expect(repository.getIntialLink(), isA<Future<String?>>());
  });

  test('getInitialLink() returns the expected value', () async {
    final initialLink = await repository.getIntialLink();
    expect(initialLink, isNull);
  });

  test('getLinkStream() can add to stream', () {
    when(repository.getLinkStream())
        .thenAnswer((invo) => Stream<String>.fromIterable(['link']));

    expect(repository.getLinkStream(), emits('link'));
  });
}
