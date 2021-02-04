import 'dart:io';

import 'models/account.dart';
import 'models/person.dart';
import 'models/role.dart';
import 'models/user.dart';

var users = <User>[];

void main() {
  print("Welcome to Bank of Kigali!\n1: Sign in\n2: Sign up");

  String answer = stdin.readLineSync();

  if (answer == "1") {
    signin();
  } else if (answer == "2") {
    signUp();

    signin();
  }
}

void signUp() {
  print("Okay, lets quickly create your new account.");
  stdout.write("Your first name: ");
  String firstname = stdin.readLineSync();
  stdout.write("Your last name: ");
  String lastname = stdin.readLineSync();
  stdout.write("Your age: ");
  int age = int.parse(stdin.readLineSync());
  stdout.write("Your NID: ");
  String nId = stdin.readLineSync();
  stdout.write("Your country: ");
  String country = stdin.readLineSync();
  stdout.write("Your email: ");
  String email = stdin.readLineSync();
  stdout.write("Your password: ");
  String password = stdin.readLineSync();

  Person newPerson = new Person(
    nId,
    firstname,
    lastname,
    age,
    country: country,
  );

  Account newAccount = new Account();

  User newUser = new User(
    Role.Customer,
    email,
    password,
    newPerson,
    account: newAccount,
  );

  users.add(newUser);

  print("Account was sssss");
}

void signin() {
  stdout.write("Your email: ");
  String email = stdin.readLineSync();
  stdout.write("Your password: ");
  String password = stdin.readLineSync();

  User user;

  try {
    user = users
        .firstWhere((user) => user.password == password && user.email == email);
  } catch (e) {
    print(e);
  }
  if (user != null) {}
}

///
/// iffgg
/// iiiiii
/// jjjkj
/// jjj
/// jjjk
/// hhjjjj
