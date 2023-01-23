import 'package:djangoflow_app_links/src/blocs/app_links_cubit.dart';
import 'package:mockito/mockito.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import '../data/app_links_repository_test.mocks.dart';

class TestAppLinksCubit extends AppLinksCubit {
  TestAppLinksCubit(MockAppLinksRepository repository)
      : super(null, repository);
}

void main() {
  late MockAppLinksRepository mockAppLinksRepository;
  late TestAppLinksCubit testAppLinksCubit;
  setUp(() {
    mockAppLinksRepository = MockAppLinksRepository();
    testAppLinksCubit = TestAppLinksCubit(mockAppLinksRepository);
  });

  test('AppLinksCubit() returns a cubit', () {
    expect(TestAppLinksCubit(mockAppLinksRepository), isA<AppLinksCubit>());
  });

  tearDown(() {
    testAppLinksCubit.close();
  });

  blocTest<TestAppLinksCubit, Uri?>(
    'emit() correctly updates the state',
    build: () => TestAppLinksCubit(mockAppLinksRepository),
    act: (cubit) {
      cubit.emit(Uri());
    },
    expect: () => [isA<Uri>()],
  );

  blocTest<TestAppLinksCubit, Uri?>(
    'close() correctly closes bloc',
    build: () => TestAppLinksCubit(mockAppLinksRepository),
    act: (cubit) {
      cubit.close();
      cubit.emit(Uri());
    },
    errors: () => {
      isA<StateError>(),
    },
  );
  blocTest<TestAppLinksCubit, Uri?>(
    'correctly subscribes to the repository stream',
    build: () => TestAppLinksCubit(mockAppLinksRepository),
    verify: (cubit) =>
        verify(mockAppLinksRepository.getLinkStream().listen(any)),
  );
}
