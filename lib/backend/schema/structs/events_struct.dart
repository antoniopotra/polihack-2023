// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventsStruct extends FFFirebaseStruct {
  EventsStruct({
    String? image,
    double? rating,
    String? tag,
    String? title,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _image = image,
        _rating = rating,
        _tag = tag,
        _title = title,
        super(firestoreUtilData);

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;
  bool hasImage() => _image != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  set rating(double? val) => _rating = val;
  void incrementRating(double amount) => _rating = rating + amount;
  bool hasRating() => _rating != null;

  // "tag" field.
  String? _tag;
  String get tag => _tag ?? '';
  set tag(String? val) => _tag = val;
  bool hasTag() => _tag != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;
  bool hasTitle() => _title != null;

  static EventsStruct fromMap(Map<String, dynamic> data) => EventsStruct(
        image: data['image'] as String?,
        rating: castToType<double>(data['rating']),
        tag: data['tag'] as String?,
        title: data['title'] as String?,
      );

  static EventsStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? EventsStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'image': _image,
        'rating': _rating,
        'tag': _tag,
        'title': _title,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'rating': serializeParam(
          _rating,
          ParamType.double,
        ),
        'tag': serializeParam(
          _tag,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
      }.withoutNulls;

  static EventsStruct fromSerializableMap(Map<String, dynamic> data) =>
      EventsStruct(
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        rating: deserializeParam(
          data['rating'],
          ParamType.double,
          false,
        ),
        tag: deserializeParam(
          data['tag'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'EventsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EventsStruct &&
        image == other.image &&
        rating == other.rating &&
        tag == other.tag &&
        title == other.title;
  }

  @override
  int get hashCode => const ListEquality().hash([image, rating, tag, title]);
}

EventsStruct createEventsStruct({
  String? image,
  double? rating,
  String? tag,
  String? title,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EventsStruct(
      image: image,
      rating: rating,
      tag: tag,
      title: title,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EventsStruct? updateEventsStruct(
  EventsStruct? events, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    events
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEventsStructData(
  Map<String, dynamic> firestoreData,
  EventsStruct? events,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (events == null) {
    return;
  }
  if (events.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && events.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final eventsData = getEventsFirestoreData(events, forFieldValue);
  final nestedData = eventsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = events.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEventsFirestoreData(
  EventsStruct? events, [
  bool forFieldValue = false,
]) {
  if (events == null) {
    return {};
  }
  final firestoreData = mapToFirestore(events.toMap());

  // Add any Firestore field values
  events.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEventsListFirestoreData(
  List<EventsStruct>? eventss,
) =>
    eventss?.map((e) => getEventsFirestoreData(e, true)).toList() ?? [];
