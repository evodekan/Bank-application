import 'person.dart';

class Account {
  int _id;
  Person _owner;
  double _amount;

  Account(this._owner) {
    this._id = DateTime.now().microsecond;
    this._amount = 0.0;
  }

  double get amount => this._amount;

  Person get owner => this._owner;

  get id => this._id;
}
