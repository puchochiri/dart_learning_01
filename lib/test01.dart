

void main() {
  // 변수 타입을  Idol로 지정하고
  // Idol의 인스턴스를 생성할 수 있습니다.
  // 인스턴스를 생성할 때는 함수를 실행하는 것처럼
  // 인스턴스화하고 싶은 클래스에 괄호를 열고 닫아줍니다.
  Idol blackPink = Idol(); // Idol 인스턴스 생성

  // 메서드를 실행합니다.
  blackPink.sayName();

  // name에 '블랙핑크' 저장
  Idol1 blackPink1 = Idol1('블랙핑크');
  blackPink.sayName();

  // name에 'BTS' 저장
  Idol1 bts = Idol1('BTS');
  bts.sayName();


  // name에 '블랙핑크' 저장
  Idol2 blackPink2 = Idol2('블랙핑크');
  blackPink2.sayName();

  // name에 'BTS' 저장
  Idol2 bts2 = Idol2('BTS');
  bts2.sayName();


  // 기본 생성자 사용
  Idol3 blankPink3 = Idol3('블랙핑크', 4);
  blankPink3.sayName();

  // fromMap이라는 네임드 생성자 사용\
  Idol3 bts3 = Idol3.fromMap({
    'name': 'BTS',
    'membersCount' : 7,
  });
  bts3.sayName();

  //프라이빗 변수
  Idol4 blackPink4 = Idol4('블랙핑크');

  // 같은 파일에서는 _name 변수에 접근할 수 있지만
  // 다른 파일에서는 _name 변수에 접근할 수 없습니다.
  print(blackPink4._name);

  //getter setter
  Idol5 blackPink5 = Idol5();
  blackPink5.name = '에이핑크'; // 세터
  print(blackPink5.name); // 게터


}
// getter//setter
class Idol5 {
  String _name = '블랙핑크';

  // get 키워드를 사용해서 게터임을 명시합니다.
  // 게터는 메서드와 다르게 매개변수를 전혀 받지 않습니다.
  String get name {
    return this._name;
  }

  // 세터는 set이라는 키워드를 사용해서 선언합니다.
  // 세터는 매개변수로 딱 하나의 변수를 받을 수 있습니다.
  set name(String name) {
    this._name = name;
  }
}
//프라이빗 변수
class Idol4 {
  // '_'로 변수명을 시작하면
  // 프라이빗 변수를 선언할 수 있습니다.
  String _name;
  Idol4(this._name);
}

// 네임드 생성자
class Idol3 {
  final String name;
  final int membersCount;

  //생성자
  Idol3(String name, int membersCount)
  // 1개 이상의 변수를 저장하고 싶을 때는, 기호로 연결해주면 됩니다.
    : this.name = name,
      this.membersCount = membersCount;

  // 네임드 생성자
  // {클래스명 .네임드 생성자명} 형식
  // 나머지 과정은 기본 생성자와 같습니다.
  Idol3.fromMap(Map<String, dynamic> map)
    : this.name = map['name'],
      this.membersCount = map['membersCount'];

  void sayName() {
    print('저는 ${this.name}입니다. ${this.name} 멤버는 ${this.membersCount}명입니다.');
  }

}
// 생성자
class Idol2{
  final String name;

  // this를 사용할 경우
  // 해당되는 변수에 자동으로 매개변수가 저장됩니다.
  Idol2(this.name);

  void sayName() {
    print('저는 ${this.name}입니다.');
  }
}

class Idol1{
  // 생성자에서 입력받는 변수들은 일반적으로 final 키워드 사용
  final String name;

  // 생성자 선언
  // 클래스와 같은 이름이여야 합니다.
  // 함수의 매개변수를 선언하는 것처럼 매개변수를 지정해줍니다.

  Idol1(String name) : this.name = name;

  void sayName() {
    print('저는 ${this.name}입니다.');
  }

}

// class 키워드를  입력 후 클래스 명을 지정해 클래스를 선언 합니다.
class Idol {
  // 틀래스에 종속되는 변수를 지정할 수 있습니다.
  String name = '블랙핑크';

  // 클래스에 종속되는 함수를 지정할 수 있습니다.


  // 클래스에 종속되는 함수를 지정할 수 있습니다.
  // 클래스에 종속되는 함수를 메서드라고 부릅니다.
  void sayName() {

    // 클래스 내부의 속성을 지칭하고 싶을 때는 this 키워드를 사용하면 됩니다.
    // 클래스에 종속되는 함수를 메서드라고 부릅니다.
    print('저는 ${this.name}입니다.');

    // 스코프 안에 같은 속성 이름이 하나만 존재한다면 this를 생략할 수 있습니다.
    print('저는 $name입니다.');
  }
}

