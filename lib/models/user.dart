import 'package:floor/floor.dart';

@entity
class User {
  @PrimaryKey(autoGenerate: true)
  int? id;
  final String name;

  User({this.id, required this.name});
}
