import 'address.dart';

class Person extends Address {
  String _nId;
  String _firstName;
  String _lastName;
  int _age;

  Person(
    this._nId,
    this._firstName,
    this._lastName,
    this._age, {
    int id,
    String streetNumber,
    String city,
    String country,
  }) : super(
          streetNumber,
          city,
          country,
        );

  ///
  /// This returns [_firstName], [_lastName]
  /// eg: Evode Kanuma
  ///
  String get names => "${this._firstName} ${this._lastName}";

  int get age => this._age;

  String get nId => this._nId;

  void set age(int value) {
    this._age = value;
  }

  void editNames({String firstName, String lastName}) {
    if (firstName != null) {
      if (firstName.isEmpty) return;
      this._firstName = firstName;
    }
    if (lastName != null) {
      if (lastName.isEmpty) return;
      this._lastName = lastName;
    }
  }
}
