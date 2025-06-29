import 'dart:io';
// ignore_for_file: avoid_print

void displayMenu() {
  print('===== Expense Tracker ========');
  print('1. Add Expense');
  print('2. View All Expenses');
  print('3. Exit');
  print('==============================');
}

void run() {
  bool running = true;

  while (running) {
    displayMenu();
    stdout.write('Enter your choice (1-3): ');
    var input = stdin.readLineSync();

    try {
      int choice = int.parse(input!);

      switch (choice) {
        case 1:
          //TODO:
          break;
        case 2:
          //TODO:

          break;

        case 3:
          running = false;
          print('Thank you for using Expense Tracker  System!');
          break;

        default:
          print('Invalid choice. Please enter a number between 1 and 3');
      }
    } catch (e) {
      print('Invalid input. Please enter a number.');
    }
  }
}
