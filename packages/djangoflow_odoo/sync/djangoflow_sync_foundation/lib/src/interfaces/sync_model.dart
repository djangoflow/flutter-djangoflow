abstract class SyncModel {
  int get id;
  DateTime get createDate;
  DateTime get writeDate;
  bool? get isMarkedAsDeleted;

  Map<String, dynamic> toJson();

  // This method can be used to create a copy of the model with updated fields
  SyncModel copyWith({
    int? id,
    DateTime? createDate,
    DateTime? writeDate,
    bool? isMarkedAsDeleted,
  });
}
