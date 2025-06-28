abstract class Vehicle{
  late int _speed; // null safe and it must be initialized lated

  void move();  //abstract method

  // Getter to read private property _speed
  int get speed => this._speed;
  // Setter to update private property _speed
  set speed(int speed) => this._speed = speed;
}

class Car extends Vehicle{
  // Implementation of start()
  @override
  void move() {
    print("The car is moving at $_speed km/h");
  }

}

void main() {
  Car car = Car();
  car.speed = 200;
  car.move();
}