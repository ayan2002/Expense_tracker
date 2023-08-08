import 'package:flutter/material.dart';
import 'widgets/expense_tracker.dart';

final kColorSchema =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 96, 59, 181));
final kDarkscheme = ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 5, 99, 195));
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: kDarkscheme,
        cardTheme: CardTheme(
          color: kDarkscheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 16,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkscheme.primaryContainer,
            foregroundColor: kDarkscheme.onPrimaryContainer,
          ),
        ),
      ),
      theme: ThemeData().copyWith(
          colorScheme: kColorSchema,
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kColorSchema.onPrimaryContainer,
            foregroundColor: kColorSchema.onPrimaryContainer,
          ),
          cardTheme: CardTheme(
            color: kColorSchema.secondaryContainer,
            margin: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 16,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: kColorSchema.primaryContainer,
            ),
          ),
          textTheme: ThemeData().textTheme.copyWith(
                  titleLarge: TextStyle(
                fontWeight: FontWeight.bold,
                color: kColorSchema.onSecondaryContainer,
                fontSize: 16,
              ))),
      themeMode: ThemeMode.system,
      home: const ExpenseTracker(),
    );
  }
}
