import 'account.dart';
import 'person.dart';
import 'role.dart';

class User {
  Role role;
  String email;
  String password;
  Person person;
  Account account;

  User(this.role, this.email, this.password, this.person, {this.account});
}
