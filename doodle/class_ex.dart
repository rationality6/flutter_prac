class Car {
  void ShowOwner() => print("This is Parent's car");
}

class Jay extends Car {
  @override
  void ShowOwner() {
    print("This JD's car");
  }
}

class Sanket extends Car{
  @override
  void ShowOwner(){
    print("This is Sanket's car");
  }
}

main() {
  Car myCar = new Car();
  Jay jayCar = new Jay();
  Sanket sanketCar = new Sanket();
  myCar.ShowOwner();
  jayCar.ShowOwner();
  sanketCar.ShowOwner();
}
