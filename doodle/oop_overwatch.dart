abstract class Hero {
  String name;
  Hero({this.name});

  void sayMyName() {
    print("${this.name}");
  }

  void ultimate();
}

class Reinhardt extends Hero {
  Reinhardt(name) : super(name: name);
  ultimate() {
    print("망치 나가신다!");
  }
}

class McCree extends Hero {
  McCree(name) : super(name: name);
  ultimate() {
    print("석양이 진다. 빵야빵야");
  }
}

class Mei extends Hero {
  Mei({name}) : super(name: name);
  ultimate() {
    print("꼼짝 마! 움직이지 마세요!");
  }
}

void main() {
  // var heroOne = Hero(name: "foobarMan");
  // print(heroOne.name);
  // heroOne.sayMyName();
  final reinhardt0 = Reinhardt('reinhardt');
  reinhardt0.sayMyName();
  reinhardt0.ultimate();
  final mcCree0 = McCree('mccree');
  mcCree0.sayMyName();
  mcCree0.ultimate();
  final mei0 = Mei(name: 'mei');
  mei0.sayMyName();
  mei0.ultimate();
}
