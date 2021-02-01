import 'dart:io';

import 'models/account.dart';
import 'models/person.dart';

void main() {
  print("Welcome to Bank of Kigali!\n");
  stdout.write(
    "We can help you to create an account, Do you want to open a new account? Yes/No:  ",
  );
  var answer = stdin.readLineSync();
  if (answer == "Yes") {
    print("Okay, lets quickly create your new account.");
    stdout.write("Your first name: ");
    var firstname = stdin.readLineSync();
    stdout.write("Your last name: ");
    var lastname = stdin.readLineSync();
    stdout.write("Your age: ");
    var age = int.parse(stdin.readLineSync());
    stdout.write("Your NID: ");
    var nId = stdin.readLineSync();
    stdout.write("Your country: ");
    var country = stdin.readLineSync();

    var account = Account(
      Person(
        nId,
        firstname,
        lastname,
        age,
        country: country,
      ),
    );

    print("Dear ${account.owner.names}, Thank you for banking with us!");
  }
}
