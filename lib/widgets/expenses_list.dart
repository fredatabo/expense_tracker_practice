import 'package:expense_practice/models/expense.dart';
import 'package:expense_practice/widgets/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(
      {super.key, required this.expenses, required this.onRemoveExpense});

  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (ctx, index) => Dismissible(
              background: Container(
                color: Colors.red,
                margin: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
              ),
              key: ValueKey(expenses[index]),
              onDismissed: (direction) {
                // note direction is not used just needed.
                onRemoveExpense(expenses[index]);
              },
              child: ExpenseItem(expenses[index]),
            ));
  }
}
