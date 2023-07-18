

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

  BoyGroup bts1 = BoyGroup('BTS', 7); // 생성자로 객체 생성
  bts1.sayName();         // 부모한테 물려받은 매소드
  bts1.sayMembersCount(); // 부모한테 물려받은 메서드
  bts1.sayMale();         // 자식이 새로 추가한 메서드

  GirlGroup blackPink6 = GirlGroup('블랙핑크', 4);

  blackPink6.sayName(); //자식 클래스의 오버라이드된 메서드 사용

  // sayMembersCount는 오버라이드하지 않았기 때문에
  // 그대로 Idol 클래스의 메서드가 실행됩니다.
  // 부모 클래스의 메서드 사용
  blackPink6.sayMembersCount();

  GirlGroup2 blackPink7 =GirlGroup2('블랙핑크1', 7);
  blackPink7.sayName();
  blackPink7.sayMembersCount();

  BoyGroup1 bts4 = BoyGroup1('BTS', 7);
  bts4.sing();
  bts4.sayName();
  bts4.sayMembersCount();
  bts4.sayMale();

  GirlGroup3 blackPink8 = GirlGroup3('블랙핑크8',8);
  blackPink8.sayName();
  blackPink8.sayMembersCount();




  //T의 타입을 List<int>로 입력합니다.
  final cache = Cache<List<int>>(
    data: [1,2,3],
  );
  //제네릭에 입력된 값을 통해 data 변수의 타입이 자동으로 유추됩니다.
  //reduce() 함수가 기억나지 않는다면 1.4.1절 'List 타입'을 복습하세요.
  print(cache.data.reduce((value, element) => value + element));

  Counter count1 = Counter();
  Counter count2 = Counter();
  Counter count3 = Counter();

  //cascade operator (..)을 사용하면
  //선언한 변수의 메서드를 연속으로 실행할 수 있습니다.
  Idol6 blackpink9 = Idol6('블랙핑크',4)
  ..sayName()
  ..sayMembersCount();

}



//스태틱
class Counter{
  // static 키워드를 사용해서 static 변수 선언
  static int i = 0;


  // static 키워드를 사용해서 static 변수 선언
  Counter(){
    //i++;
    print(i++);
  }
}

//제네릭
//인스턴스화 할 때 입력받는 타입을 T로 지정합니다.
class Cache<T> {
//data의 타입을 추후 입력될 T타입으로 지정합니다.
  final T data;

  Cache({
    required this.data,
  });
}



// abstract 키워드를 사용해 추상 클래스 지정
abstract class Idol7 {
  final String name;
  final int membersCount;

  Idol7(this.name, this.membersCount); // 생성자 선언

  void sayName();         //  추상 메서드 선언
  void sayMembersCount(); //  추상 메서드 선언
}

//implements 키워드를 사용해 추상 클래스를 구현하는 클래스
class GirlGroup3 implements Idol7{
  final String name;
  final int membersCount;

  GirlGroup3(
      this.name,
      this.membersCount,
      );
  void sayName() {
    print('저는 여자 아이돌8 ${this.name}입니다.');
  }
  void sayMembersCount(){
    print('${this.name} 멤버는 ${this.membersCount}명입니다.');
  }
}
//믹스인
mixin IdolSingMixin on Idol6{
  void sing() {
    print('${this.name}이 노래를 부릅니다.');
  }
}

//믹스인을 적용할 때는 with 키워드 서용
class BoyGroup1 extends Idol6 with IdolSingMixin{
  BoyGroup1(
      super.name,
      super.membersCount,
  );

  void sayMale() {
    print('저는 남자 아이돌입니다.');
  }

  //믹스인에 정의된 sing() 함수 사용 가능
}

//인터페이스
class GirlGroup2 implements Idol6 {
  final String name;
  final int membersCount;
  GirlGroup2(
      this.name,
      this.membersCount,
      );

  @override
  void sayMembersCount() {
    // TODO: implement sayMembersCount
    print('${this.name} 멤버는 ${this.membersCount}명입니다.');
  }

  @override
  void sayName() {
    // TODO: implement sayName
    print('저는 여자 아이돌 ${this.name}입니다.');

  }


}
//오버라이드
class GirlGroup extends Idol6 {
  GirlGroup(super.name, super.membersCount);

  @override
  void sayName(){
    print('저는 여자 아이돌 ${this.name}입니다.');
  }

}


//상속
class Idol6 {
  final String name;
  final int membersCount;

  Idol6(this.name, this.membersCount);
  void sayName() {
    print('저는 ${this.name}입니다.');
  }

  void sayMembersCount() {
    print('${this.name} 멤버는 ${this.membersCount}명입니다.');
  }
}

class BoyGroup extends Idol6
  {
    // 상속받은 기능
    BoyGroup(
        String  name,
        int membersCount
    ) : super( // super는 부모 클래스를 지칭합니다.
        name,
        membersCount,
    );

    //상속받지 않은 기능
    void sayMale(){
    print('저는 남자 아이돌 입니다.');

  }

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

