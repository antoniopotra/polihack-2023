import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventuriRecord extends FirestoreRecord {
  EventuriRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "descriere" field.
  String? _descriere;
  String get descriere => _descriere ?? '';
  bool hasDescriere() => _descriere != null;

  // "imagine" field.
  String? _imagine;
  String get imagine => _imagine ?? '';
  bool hasImagine() => _imagine != null;

  // "location1" field.
  String? _location1;
  String get location1 => _location1 ?? '';
  bool hasLocation1() => _location1 != null;

  // "location2" field.
  String? _location2;
  String get location2 => _location2 ?? '';
  bool hasLocation2() => _location2 != null;

  // "program" field.
  String? _program;
  String get program => _program ?? '';
  bool hasProgram() => _program != null;

  // "titlu" field.
  String? _titlu;
  String get titlu => _titlu ?? '';
  bool hasTitlu() => _titlu != null;

  // "tag" field.
  String? _tag;
  String get tag => _tag ?? '';
  bool hasTag() => _tag != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  void _initializeFields() {
    _descriere = snapshotData['descriere'] as String?;
    _imagine = snapshotData['imagine'] as String?;
    _location1 = snapshotData['location1'] as String?;
    _location2 = snapshotData['location2'] as String?;
    _program = snapshotData['program'] as String?;
    _titlu = snapshotData['titlu'] as String?;
    _tag = snapshotData['tag'] as String?;
    _rating = castToType<double>(snapshotData['rating']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('eventuri');

  static Stream<EventuriRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventuriRecord.fromSnapshot(s));

  static Future<EventuriRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventuriRecord.fromSnapshot(s));

  static EventuriRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EventuriRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventuriRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventuriRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventuriRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventuriRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventuriRecordData({
  String? descriere,
  String? imagine,
  String? location1,
  String? location2,
  String? program,
  String? titlu,
  String? tag,
  double? rating,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'descriere': descriere,
      'imagine': imagine,
      'location1': location1,
      'location2': location2,
      'program': program,
      'titlu': titlu,
      'tag': tag,
      'rating': rating,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventuriRecordDocumentEquality implements Equality<EventuriRecord> {
  const EventuriRecordDocumentEquality();

  @override
  bool equals(EventuriRecord? e1, EventuriRecord? e2) {
    return e1?.descriere == e2?.descriere &&
        e1?.imagine == e2?.imagine &&
        e1?.location1 == e2?.location1 &&
        e1?.location2 == e2?.location2 &&
        e1?.program == e2?.program &&
        e1?.titlu == e2?.titlu &&
        e1?.tag == e2?.tag &&
        e1?.rating == e2?.rating;
  }

  @override
  int hash(EventuriRecord? e) => const ListEquality().hash([
        e?.descriere,
        e?.imagine,
        e?.location1,
        e?.location2,
        e?.program,
        e?.titlu,
        e?.tag,
        e?.rating
      ]);

  @override
  bool isValidKey(Object? o) => o is EventuriRecord;
}
