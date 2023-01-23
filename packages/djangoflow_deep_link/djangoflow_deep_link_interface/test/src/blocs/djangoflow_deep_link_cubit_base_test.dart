import 'package:bloc_test/bloc_test.dart';
import 'package:djangoflow_deep_link_interface/djangoflow_deep_link_interface.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import '../data/djangoflow_deep_link_repository_base_test.mocks.dart';

class TestDjangoflowDeepLinkCubit<String>
    extends DjangoflowDeepLinkCubitBase<String> {
  TestDjangoflowDeepLinkCubit(
      DjangoflowDeepLinkRepositoryBase<String> repository)
      : super(null, repository);
}

void main() {
  late MockDjangoflowDeepLinkRepositoryBase repository;

  setUp(() {
    repository = MockDjangoflowDeepLinkRepositoryBase();
  });

  blocTest<TestDjangoflowDeepLinkCubit<String>, String?>(
    'emit() correctly updates the state',
    build: () => TestDjangoflowDeepLinkCubit(repository),
    act: (cubit) {
      cubit.emit('test');
    },
    expect: () => ['test'],
  );

  blocTest<TestDjangoflowDeepLinkCubit<String>, String?>(
    'close() correctly closes bloc',
    build: () => TestDjangoflowDeepLinkCubit(repository),
    act: (cubit) {
      cubit.close();
      cubit.emit('state');
    },
    errors: () => {
      isA<StateError>(),
    },
  );
  blocTest<TestDjangoflowDeepLinkCubit<String>, String?>(
    'correctly subscribes to the repository stream',
    build: () => TestDjangoflowDeepLinkCubit(repository),
    verify: (cubit) => verify(repository.getLinkStream().listen(any)),
  );
}
