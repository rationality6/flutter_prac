class Customer {
  String name;
  int age;

  Customer({this.name, this.age});

  @override
  String toString() {
    return '${this.name}, ${this.age}';
  }
}

main() {
  List<Customer> customers = [];
  customers.add(Customer(name: '후밍', age: 33));
  customers.add(Customer(name: '미유', age: 31));
  customers.add(Customer(name: '까미', age: 30));

  print(customers);
  print(customers.length);
  print(customers[0]);
  print(customers[1]);
  print(customers[2]);
}
