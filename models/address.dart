class Address {
  int id;
  String streetNumber;
  String city;
  String country;

  Address(this.streetNumber, this.city, this.country) {
    this.id = DateTime.now().microsecond;
  }
}
