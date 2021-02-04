class Account {
  int _id;
  double _amount;

  Account() {
    this._id = DateTime.now().microsecond;
    this._amount = 0.0;
  }

  double get amount => this._amount;

  get id => this._id;
}
