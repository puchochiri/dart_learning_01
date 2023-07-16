enum Status {
  approved,
  pending,
  rejected,
}
void main() {
  var name = '코드팩토리';
  print(name);

  //변숫값 변경 가능
  name = '골든래빗';
  print(name);
  main1();

  final DateTime now = DateTime.now();
  print(now);

  // String -문자열
  String nameString = '코드팩토리';

  // int
  int isInt = 10;

  //double 실수
  double isDouble = 2.5;

  //bool - 불리언 (true/false)
  bool isTrue = true;
  print(isInt);
  print(isDouble);
  print(isTrue);

  //리스트에 넣을 타입을 <> 사이에 명시할 수 있습니다.
  List<String> blackPinkList = ['리사','지수','제니','로제'];

  print(blackPinkList);
  print(blackPinkList[0]);  // 첫번째 원소지정
  print(blackPinkList[3]);  // 마지막 원소지정
  print(blackPinkList.length);  // 길이 반환
  blackPinkList[3] = '코드팩토리';
  print(blackPinkList);

  blackPinkList.add('로제');
  print(blackPinkList);

  final newList = blackPinkList.where(
      (name) => name == '리사' || name =='지수', // '리사' 또는 '지수' 만 유지
  );

  print(newList);
  print(newList.toList()); // Iterable을 List로 다시 변환할때 .toList() 사용

  blackPinkList.add('로제');
  blackPinkList.add('제니');

  final newBlackPink = blackPinkList.map(
      (name) => '블랙핑크 $name', // 리스트의 모든 값 앞에 '블랙핑크' 추가
  );

  print(newBlackPink);
  print(newBlackPink.toList());

  final allMembers = blackPinkList.reduce((value, element) => value + ', ' + element); //리스트를 순회하며 값들을 더합니다.
  print(allMembers);

  //실행 dart lib/main.dart
  final allMembers1 = blackPinkList.fold<int>(0, (value, element) => value + element.length);
  print(allMembers1);

  Map<String, String> dictionary = {
    'Harry Potter' : '해리 포터',   // 키 : 값
    'Ron Weasley'  : '론 위즐리',
    'Hermione Granger' : '헤르미온느 그레인저',
  };
  print(dictionary['Harry Potter']);
  print(dictionary['Hermione Granger']);

  print(dictionary.keys);
  print(dictionary.keys.toList());
  // Iterable이 반환되기 때문에 .toList()를 실행해서 List
  print(dictionary.values);
  print(dictionary.values.toList());

  Set<String> blankPink3 = {'로제', '지수', '리사', '제니', '제니'}; // 제니 중복
  print(blankPink3);
  print(blankPink3.contains('로제')); // 값이 있는지 확인
  print(blankPink3.toList()); // 리스트로 변환하기

  List<String> blackPink4 = ['로제','지수', '지수'];
  print(Set.from(blackPink4)); // List 타입을 Set 타입으로 변환

  double number = 2;

  print(number + 2); // 4 출력
  print(number - 2); // 0 출력
  print(number * 2); // 4 출력
  print(number / 2); // 1 출력. 나눈 몫
  print(number % 3); // 2 출력. 나눈 나머지

  //단항 연산도 됩니다.
  print(number++); // 3
  print(number--); // 2
  print(number += 2); // 4
  print(number -= 2); // 2
  print(number *= 2); // 4
  print(number /= 2); // 2

  //타입 뒤에 ?를 명시해서 null 값을 가질 수 있습니다.
  double? number1 = 1;
  print(number1);

  // 타입 뒤에 ?를 명시하지 않아 에러가 남.
  double? number2 = null;
  print(number2);

  double? number3;
  print(number3);

  // ??를 사용하면 기존 값이 null일 때만 저장 됩니다.
  number3 ??=3;
  print(number3);

  // null이 아니므로 3이 유지 됩니다.
  number3 ??=4;
  print(number3);

  int number4 = 1;
  int number5 = 2;

  print(number4 > number5); //false
  print(number4 < number5); //true
  print(number4 >= number5); //false
  print(number4 <= number5); //true
  print(number4 == number5); //false
  print(number4 != number5); //true


  int number6 = 1;

  print(number6 is int); //true
  print(number6 is String); //false
  print(number6 is! int); //false !는 반대를 의미(int 타입이 아닌 경우 true);
  print(number6 is! String); //true

  bool result = 12 > 10 && 1 > 0; //12가 10보다 크고 1이 0보다 클 때
  print(result); //true;

  bool result2 = 12 > 10 && 0 > 1; //12가 10보다 크고 0이 1보다 클 때
  print(result2); //false;

  bool result3= 12 > 10 || 1 > 0; //12가 10보다 크거나 1이 0보다 클 때
  print(result3); //true;

  bool result4 = 12 > 10 || 0 > 1; //12가 10보다 크거나 0이 1보다 클 때
  print(result4); //true;

  bool result5 = 12 < 10 || 0 > 1; //10가 12보다 크거나 0이 1보다 클 때
  print(result5); //false;

  // 조건문
  int number7 = 2;

  if (number % 3 == 0) {
    print('3의 배수입니다.');
  } else if (number % 3 ==1) {
    print('나머지가 1입니다.');
  } else {
    //조건에 맞지 않기 때문에 다음 코드 실행
    print('맞는 조건이 없습니다.');
  }

  Status status =Status.approved;
  switch (status) {
    case Status.approved:
      // approved 값이기 때문에 다음 코드가 실행 됩니다.
      print('승인 상태입니다.');
      break;
    case Status.pending:
      print('대기 상태입니다.');
      break;
    case Status.rejected:
      print('거절 상태입니다.');
      break;
    default:
      print('알 수 없는 상태입니다.');

  }

  for (int i = 0; i < 3; i++) {
    print(i);
  }

  List<int> numberList = [3,6,9];
  for(int number in numberList){
    print(number);
  }


  int total = 0;
  do {
    total += 1;
  } while(total < 10);

  print(total);

  print(addTwoNumbers(1, 2));
  print(addTwoNumbers1(a: 2, b: 3));
  print(addTwoNumbers3(1));
  print(addTwoNumbers4(a:1));
  print(addTwoNumbers5(1,b: 3,c: 7));

  //일반 함수로 모든 값 더하기
  List<int> numbers = [1, 2, 3, 4, 5];
  final allMembers2 = numbers.reduce((value, element) {
    return value + element;
  });

  print(allMembers2);

  final allMembers3 = numbers.reduce((value, element) => value + element);

  print(allMembers3);

  calculate(1,2,add);

  try {
    //에러가 없을 때 실행할 로직
    final String name = '코드팩토리';
    print(name); //에러가 없으니 출력됩

    // throw 키워드로 고의적으로 에러를 발생 시킴
    throw Exception('이름이 잘못됐습니다.');
  } catch(e) {  // catch는 첫번째 매개변수에 에러 정보를 전달해 줍니다.
    //에러가 있을 때 실행할 로직
    print(e);
  }
}

typedef Operation = void Function(int x, int y);

void add(int x, int y) {
  print('결괏값 : ${x + y}');
}

void calculate(int x, int y, Operation oper) {
  oper(x, y);
}

int addTwoNumbers(int a, int b) {
  return a + b;
}

int addTwoNumbers1({
  required int a,
  required int b,
}) {
  return a + b;
}

int addTwoNumbers3(int a,[int b = 2]) {
  return a + b;
}

int addTwoNumbers4({
  required int a,
  int b = 2,
}) {
  return a + b;
}

int addTwoNumbers5(
int a, {
  required int b,
  int c = 4,
}) {
  return a + b + c;
}





void annotation() {

 //Status.approved
  // 주석을 작성하는 첫 번째 방법은
  // 한 줄 주석 입니다.

  /*
  * 여러 줄 주석 방법입니다.
  * 시작 기호는 /*이고 끝나는 기호는 */입니다.
    필수는 아니지만 관행상 중간 줄의 시작으로 *를 사용합니다.
   */

 /// 슬래스 세게를 사용하면
  /// 문서 주석을 작성할 수 있습니다.
  /// DartDoc이나 안드로이드 스튜디오 같은
  /// IDE에서 문서(Documentation)로 인식합니다.

//test

}

void main1() {


  dynamic name = '코드팩토리';
  name =1;
  print(name);
}

void main2() {
  final String name = '블랙핑크';
  //name = 'BTS'; //에러 발생. final로 선언한 변수는 선언 후 값을 변경할 수 없음

  const String name2 = 'BTS';
  //name2 = '블랙핑크'; // 에러 발생. const로 선언한 변수는 선언 후 값을 변경할 수 없음

}