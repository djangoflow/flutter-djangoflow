extension NullifyExtension on String? {
  /// Returns null if the string is empty
  String? nullify() => (this?.isEmpty ?? true) ? null : this;

  /// Returns null if the string is empty
  bool get isNullOrEmpty => this == null || this!.isEmpty;

  /// Returns true if the string is not empty
  bool get isNotNullOrEmpty => !isNullOrEmpty;
}

extension NullifyListExtension on List? {
  /// Returns null if the list is empty
  bool get isNullOrEmpty => this == null || this!.isEmpty;

  /// Returns true if the list is not empty
  bool get isNotNullOrEmpty => !isNullOrEmpty;
}
