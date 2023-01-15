// Can re-use to implement concrete classes
abstract class DjangoflowDeepLinkRepositoryBase<T> {
  Stream<T> getLinkStream();
  Future<T?> getIntialLink();
}
