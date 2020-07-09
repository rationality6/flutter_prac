class Circle {}

class Square {}

class SquareSlot {
  insert(Square spareSlot) {}
}

class CircleSlot {
  insert(Circle circleSlot) {}
}

void main() {
  var circleSlot = new CircleSlot();
  circleSlot.insert(new Circle());
  var squareSlot = SquareSlot();
  // got an error
  // squareSlot.insert(new Circle());
}
