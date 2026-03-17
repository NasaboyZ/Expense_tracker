import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';


var kColorSheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 96, 59, 181));
void main() {
  WidgetsFlutterBinding.ensureInitialized();

    runApp(MaterialApp(
      theme: ThemeData().copyWith(
          useMaterial3: true,
          colorScheme: kColorSheme,
          appBarTheme: const AppBarTheme().copyWith(
              backgroundColor: kColorSheme.onPrimaryContainer,
              foregroundColor: kColorSheme.primary),
          cardTheme: const CardTheme().copyWith(
              color: kColorSheme.secondaryContainer,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8)),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  backgroundColor: kColorSheme.primaryContainer)),
          textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kColorSheme.onSecondaryContainer,
                  fontSize: 16))),
      home: const Expenses(),
    ));

}
