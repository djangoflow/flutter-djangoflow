extension NullifyExtension on String? {
  String? nullify() => (this?.isEmpty ?? true) ? null : this;

  bool get isNullOrEmpty => this == null || this!.isEmpty;

  bool get isNotNullOrEmpty => !isNullOrEmpty;
}

extension NullifyListExtension on List? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;

  bool get isNotNullOrEmpty => !isNullOrEmpty;
}
