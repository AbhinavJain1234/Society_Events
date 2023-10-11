import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

const uuid = Uuid();
final formatter = DateFormat.yMd();

class Event {
  Event({
    required this.date,
    required this.title,
    required this.id,
  });
  final String title;
  final String id;
  final DateTime date;
  String get formattedDate {
    return formatter.format(date);
  }
}
