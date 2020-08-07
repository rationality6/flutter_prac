class Iphone {
  String manufacturer = 'apple';
  String os = "ios";
}

class Iphone7 extends Iphone {
  int version = 7;
}

class A {
  String title;
  String content;
  A({this.title, this.content});
}

class B extends A {
  bool read;
  B({title, content, this.read}) : super(title: title, content: content);
}

void main() {
  // Iphone7 myIphone7 = Iphone7();
  // print(myIphone7.manufacturer);
  // print(myIphone7.version);
  // print(myIphone7.os);

  var oop = B(
    title: "New notification",
    content: "Lorem ipsum doro si maet 100",
    read: false,
  );

  print(oop.title);
  print(oop.content);
  print(oop.read);
}
