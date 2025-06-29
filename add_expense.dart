import 'dart:io';
// ignore_for_file: avoid_print



List<Map<String, dynamic>> expenses = [];

void addExpense() {
  print('\n=== Add New Expense ===');

  stdout.write('Enter description: ');
  String? description = stdin.readLineSync() ?? '';
  stdout.write(
      "select category (1-4):\n1. Food\n2. Transport\n3. Entertainment\n4. Other\n");
  String? category = stdin.readLineSync() ?? '';

  double amount;
  while (true) {
    stdout.write('Enter amount: ');
    Object input = stdin.readLineSync() ?? 00.0;
    try {
      amount = double.parse(input.toString());
      if (amount < 0) {
        print('Amount cannot be negative.');
        continue;
      }
      break;
    } catch (e) {
      print('Invalid input. Please enter a valid number.');
    }
  }

  stdout.write('Enter date (in YYYY-MM-DD format, or press Enter for today): ');
  Object date = stdin.readLineSync() ?? DateTime.now();

  String categoryName;
  switch (category) {
    case '1':
      categoryName = 'Food';
      break;
    case '2':
      categoryName = 'Transport';
      break;
    case '3':
      categoryName = 'Entertainment';
      break;
    case '4':
      categoryName = 'Other';
      break;
    default:
      categoryName = 'Unknown';
  }

  Map<String, dynamic> expense = {
    'description': description,
    'category': categoryName,
    'amount': amount,
    'date': date
  };

  expenses.add(expense);
  print('Expense added successfully.');
}
