// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventuriStruct extends FFFirebaseStruct {
  EventuriStruct({
    String? descriere,
    String? imagine,
    String? location1,
    String? location2,
    String? program,
    String? titlu,
    String? tag,
    double? rating,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _descriere = descriere,
        _imagine = imagine,
        _location1 = location1,
        _location2 = location2,
        _program = program,
        _titlu = titlu,
        _tag = tag,
        _rating = rating,
        super(firestoreUtilData);

  // "descriere" field.
  String? _descriere;
  String get descriere => _descriere ?? '';
  set descriere(String? val) => _descriere = val;
  bool hasDescriere() => _descriere != null;

  // "imagine" field.
  String? _imagine;
  String get imagine => _imagine ?? '';
  set imagine(String? val) => _imagine = val;
  bool hasImagine() => _imagine != null;

  // "location1" field.
  String? _location1;
  String get location1 => _location1 ?? '';
  set location1(String? val) => _location1 = val;
  bool hasLocation1() => _location1 != null;

  // "location2" field.
  String? _location2;
  String get location2 => _location2 ?? '';
  set location2(String? val) => _location2 = val;
  bool hasLocation2() => _location2 != null;

  // "program" field.
  String? _program;
  String get program => _program ?? '';
  set program(String? val) => _program = val;
  bool hasProgram() => _program != null;

  // "titlu" field.
  String? _titlu;
  String get titlu => _titlu ?? '';
  set titlu(String? val) => _titlu = val;
  bool hasTitlu() => _titlu != null;

  // "tag" field.
  String? _tag;
  String get tag => _tag ?? '';
  set tag(String? val) => _tag = val;
  bool hasTag() => _tag != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  set rating(double? val) => _rating = val;
  void incrementRating(double amount) => _rating = rating + amount;
  bool hasRating() => _rating != null;

  static EventuriStruct fromMap(Map<String, dynamic> data) => EventuriStruct(
        descriere: data['descriere'] as String?,
        imagine: data['imagine'] as String?,
        location1: data['location1'] as String?,
        location2: data['location2'] as String?,
        program: data['program'] as String?,
        titlu: data['titlu'] as String?,
        tag: data['tag'] as String?,
        rating: castToType<double>(data['rating']),
      );

  static EventuriStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? EventuriStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'descriere': _descriere,
        'imagine': _imagine,
        'location1': _location1,
        'location2': _location2,
        'program': _program,
        'titlu': _titlu,
        'tag': _tag,
        'rating': _rating,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'descriere': serializeParam(
          _descriere,
          ParamType.String,
        ),
        'imagine': serializeParam(
          _imagine,
          ParamType.String,
        ),
        'location1': serializeParam(
          _location1,
          ParamType.String,
        ),
        'location2': serializeParam(
          _location2,
          ParamType.String,
        ),
        'program': serializeParam(
          _program,
          ParamType.String,
        ),
        'titlu': serializeParam(
          _titlu,
          ParamType.String,
        ),
        'tag': serializeParam(
          _tag,
          ParamType.String,
        ),
        'rating': serializeParam(
          _rating,
          ParamType.double,
        ),
      }.withoutNulls;

  static EventuriStruct fromSerializableMap(Map<String, dynamic> data) =>
      EventuriStruct(
        descriere: deserializeParam(
          data['descriere'],
          ParamType.String,
          false,
        ),
        imagine: deserializeParam(
          data['imagine'],
          ParamType.String,
          false,
        ),
        location1: deserializeParam(
          data['location1'],
          ParamType.String,
          false,
        ),
        location2: deserializeParam(
          data['location2'],
          ParamType.String,
          false,
        ),
        program: deserializeParam(
          data['program'],
          ParamType.String,
          false,
        ),
        titlu: deserializeParam(
          data['titlu'],
          ParamType.String,
          false,
        ),
        tag: deserializeParam(
          data['tag'],
          ParamType.String,
          false,
        ),
        rating: deserializeParam(
          data['rating'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'EventuriStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EventuriStruct &&
        descriere == other.descriere &&
        imagine == other.imagine &&
        location1 == other.location1 &&
        location2 == other.location2 &&
        program == other.program &&
        titlu == other.titlu &&
        tag == other.tag &&
        rating == other.rating;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [descriere, imagine, location1, location2, program, titlu, tag, rating]);
}

EventuriStruct createEventuriStruct({
  String? descriere,
  String? imagine,
  String? location1,
  String? location2,
  String? program,
  String? titlu,
  String? tag,
  double? rating,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EventuriStruct(
      descriere: descriere,
      imagine: imagine,
      location1: location1,
      location2: location2,
      program: program,
      titlu: titlu,
      tag: tag,
      rating: rating,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EventuriStruct? updateEventuriStruct(
  EventuriStruct? eventuri, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    eventuri
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEventuriStructData(
  Map<String, dynamic> firestoreData,
  EventuriStruct? eventuri,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (eventuri == null) {
    return;
  }
  if (eventuri.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && eventuri.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final eventuriData = getEventuriFirestoreData(eventuri, forFieldValue);
  final nestedData = eventuriData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = eventuri.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEventuriFirestoreData(
  EventuriStruct? eventuri, [
  bool forFieldValue = false,
]) {
  if (eventuri == null) {
    return {};
  }
  final firestoreData = mapToFirestore(eventuri.toMap());

  // Add any Firestore field values
  eventuri.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEventuriListFirestoreData(
  List<EventuriStruct>? eventuris,
) =>
    eventuris?.map((e) => getEventuriFirestoreData(e, true)).toList() ?? [];
