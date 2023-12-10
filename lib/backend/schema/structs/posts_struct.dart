// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostsStruct extends FFFirebaseStruct {
  PostsStruct({
    String? description,
    String? image,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _description = description,
        _image = image,
        super(firestoreUtilData);

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;
  bool hasImage() => _image != null;

  static PostsStruct fromMap(Map<String, dynamic> data) => PostsStruct(
        description: data['description'] as String?,
        image: data['image'] as String?,
      );

  static PostsStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? PostsStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'description': _description,
        'image': _image,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
      }.withoutNulls;

  static PostsStruct fromSerializableMap(Map<String, dynamic> data) =>
      PostsStruct(
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PostsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PostsStruct &&
        description == other.description &&
        image == other.image;
  }

  @override
  int get hashCode => const ListEquality().hash([description, image]);
}

PostsStruct createPostsStruct({
  String? description,
  String? image,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PostsStruct(
      description: description,
      image: image,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PostsStruct? updatePostsStruct(
  PostsStruct? posts, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    posts
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPostsStructData(
  Map<String, dynamic> firestoreData,
  PostsStruct? posts,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (posts == null) {
    return;
  }
  if (posts.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && posts.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final postsData = getPostsFirestoreData(posts, forFieldValue);
  final nestedData = postsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = posts.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPostsFirestoreData(
  PostsStruct? posts, [
  bool forFieldValue = false,
]) {
  if (posts == null) {
    return {};
  }
  final firestoreData = mapToFirestore(posts.toMap());

  // Add any Firestore field values
  posts.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPostsListFirestoreData(
  List<PostsStruct>? postss,
) =>
    postss?.map((e) => getPostsFirestoreData(e, true)).toList() ?? [];
