import 'add_expense.dart';
// ignore_for_file: avoid_print

void viewExpenses() {
  print('=== My Expenses ===');
  if (expenses.isEmpty) {
    print('Not expenses recorded Yet.');
  } else {
    for (int i = 0; i < expenses.length; i++) {
      final e = expenses[i];
      print(
          '${i + 1}. ${e['date']} | ${e['category']} | ${e['description']} - \$${e['amount'].toStringAsFixed(2)}');
    }
  }
}
