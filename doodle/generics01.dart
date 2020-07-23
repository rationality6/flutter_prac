class Slot<T> {
  insert(T shape) {}
}

class Circle {}

class Square {}

class SquareSlot {
  insert(Square spareSlot) {}
}

class CircleSlot {
  insert(Circle circleSlot2) {}
}

void main() {
  var circleSlot0 = new CircleSlot();
  circleSlot0.insert(new Circle());
  var squareSlot = SquareSlot();
  print(squareSlot);
  // got an error
  // squareSlot.insert(new Circle());
}
