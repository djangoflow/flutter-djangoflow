import 'package:characters/characters.dart';

extension StringExtension on String {
  String sentenceCase() => _capitalizeFirst(this);

  String titleCase() => split(' ').map(_capitalizeFirst).join(' ');

  String _capitalizeFirst(String data) {
    if (data.length < 2) {
      return data.toUpperCase();
    }

    return data[0].toUpperCase() + data.substring(1);
  }

  String toInitialString() {
    final splittedTexts = split(' ');
    var updatedSplittedTexts = <String>[];
    if (splittedTexts.length >= 2) {
      updatedSplittedTexts.addAll(splittedTexts.sublist(0, 2));
    } else {
      updatedSplittedTexts.addAll(splittedTexts);
    }

    return updatedSplittedTexts
        .where((e) => (e.isNotEmpty))
        .map((e) => e.characters.first)
        .join('');
  }
}

extension NullifyExtension on String? {
  String? nullify() => (this?.isEmpty ?? true) ? null : this;

  bool get isNullOrEmpty => this == null || this!.isEmpty;

  bool get isNotNullOrEmpty => !isNullOrEmpty;
}
