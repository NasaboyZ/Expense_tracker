import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category { food, travel, lesure, work }

class Expense {
  Expense({
    required this.title,
    required this.amout,
    required this.date,
    required this.category,
  }) : id = uuid.v4();
  final String id;
  final String title;
  final double amout; // erlaubt uns zahlen wie 1.99 rein zu schreiben
  final DateTime date;
  final Category category;
}
