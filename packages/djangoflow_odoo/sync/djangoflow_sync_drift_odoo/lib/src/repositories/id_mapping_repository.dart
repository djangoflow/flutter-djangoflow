abstract class IdMappingRepository {
  Future<void> updateRelatedFields(String modelName, int oldId, int newId);

  // You might want to add a method to handle batch updates for performance
  Future<void> batchUpdateRelatedFields(
      List<MapEntry<String, MapEntry<int, int>>> updates);
}
