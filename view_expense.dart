import 'add_expense.dart';

void viewExpenses() {
  print('=== My Expenses ===');
  if (expenses.isEmpty) {
    print('Not expenses recorded Yet.');
  } else {
    for (int i = 0; i < expenses.length; i++) {
      final e = expenses[i];
      print(
          '\n ${e['date']} \n ${e['category']} \n ${e['description']} \n \$${e['amount'].toStringAsFixed(2)}');
    }
  }
}
