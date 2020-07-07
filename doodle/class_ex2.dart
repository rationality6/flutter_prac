class DialPhone {
  int year;
  DialPhone() {
    print("이 전화기는 다이얼을 돌려서 전화를 겁니다.");
  }

  void whenCame() {
    print("1889년 발명");
  }
}

class ButtonPhone extends DialPhone {
  ButtonPhone() {
    print("이 전화기는 버튼을 눌러서 전화를 겁니다.");
  }

  @override
  void whenCame() {
    print("1963년 발명");
  }
}

class SmartPhone extends ButtonPhone {
  String menufacturer;
  String model;

  SmartPhone(String manufacturer, String model, int year) {
    this.menufacturer;
    this.model = model;
    this.year = year;

    print("이 전화기는 터치를 해서 전화를 겁니다.");
  }

  @override
  void whenCame() {
    print("2001년 잡스가 만듬");
  }
}

void main() {
  // DialPhone dp0 = DialPhone();
  // ButtonPhone bp0 = ButtonPhone();
  SmartPhone sp0 = SmartPhone('apple', 'iphone', 29);
  // print(dp0);
  // print(bp0);
  print(sp0.year);
}
