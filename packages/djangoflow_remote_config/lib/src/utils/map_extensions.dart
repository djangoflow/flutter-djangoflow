extension MapExtensions on Map<String, dynamic>? {
  /// Removes all null values from the map and casts it to a `Map<String, Object>`
  Map<String, Object>? removeNullAndCast() {
    final Map<String, Object> newMap = {};
    if (this == null || this!.isEmpty) {
      return null;
    } else {
      this!.forEach((key, value) {
        if (value != null) {
          newMap[key] = value;
        }
      });

      return newMap;
    }
  }
}
