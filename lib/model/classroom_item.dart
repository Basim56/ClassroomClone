import 'package:uuid/uuid.dart';

class ClassroomItem {
  ClassroomItem({required this.documentName, required this.datePosted})
      : id = const Uuid().v4();
  final String id;
  final String documentName;
  final String datePosted;
}
