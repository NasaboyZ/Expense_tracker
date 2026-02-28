import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat('dd/MM/yyyy');

const uuid = Uuid();

enum Category { food, travel, lesure, work }

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight,
  Category.lesure: Icons.movie_edit,
  Category.work: Icons.work,
};

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

  String get formattedDate {
    return formatter.format(date);
  }
}
