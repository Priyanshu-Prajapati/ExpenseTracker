import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(context) {
    return Card(
      margin: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              expense.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$${expense.amount.toStringAsFixed(2)}'),
                const Spacer(),
                Row(
                  children: [
                    Icon(categoryIcons[expense.category]),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(expense.formatedDate),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
