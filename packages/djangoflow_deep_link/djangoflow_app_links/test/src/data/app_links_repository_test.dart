import 'package:djangoflow_app_links/djangoflow_app_links.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:test/test.dart';

@GenerateNiceMocks([MockSpec<AppLinksRepository>()])
import 'app_links_repository_test.mocks.dart';

void main() {
  late MockAppLinksRepository mockAppLinksRepository;

  setUp(() {
    mockAppLinksRepository = MockAppLinksRepository();
    when(mockAppLinksRepository.getInitialLink())
        .thenAnswer((_) async => Future<Uri?>.value(null));
    when(mockAppLinksRepository.getLinkStream())
        .thenAnswer((_) => const Stream.empty());
  });

  test('getInitialLink() returns URI correctly', () {
    expectLater(mockAppLinksRepository.getInitialLink(), isA<Future<Uri?>>());
  });

  test('getLinkStream() returns a stream', () {
    expect(mockAppLinksRepository.getLinkStream(), isA<Stream<Uri>>());
  });
}
