import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expenses_item.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget {
  final List<Expense> expenses;
  const ExpenseList(
      {super.key, required this.expenses, required this.removeExpense});

  final void Function(Expense expense) removeExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (ctx, index) => Dismissible(
            background: Container(
                color: Theme.of(context).colorScheme.error.withOpacity(0.75),
                margin: const EdgeInsets.symmetric(
                  horizontal: 16,
                )),
            onDismissed: (direction) {
              removeExpense(expenses[index]);
            },
            key: ValueKey(expenses[index]),
            child: ExpenseItem(expenses[index])));
  }
}
