import 'package:app_links/app_links.dart';
import 'package:djangoflow_deep_link_interface/djangoflow_deep_link_interface.dart';

class AppLinksRepository extends DjangoflowDeepLinkRepositoryBase<Uri> {
  final _appLinks = AppLinks();

  @override
  Future<Uri?> getInitialLink() => _appLinks.getInitialLink();

  @override
  Stream<Uri> getLinkStream() => _appLinks.uriLinkStream;
}
