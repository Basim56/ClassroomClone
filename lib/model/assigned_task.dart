import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

class AssignedTask {
  AssignedTask(
      {required this.assDetails,
      required this.postedBy,
      required this.postedOn})
      : id = const Uuid().v4();
  final String id;
  final String assDetails;
  final String postedBy;
  final DateTime postedOn;

  String get formattedDate {
    return DateFormat('d MMMM y').format(postedOn);
  }
}
