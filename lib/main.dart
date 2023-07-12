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
}
void annotation() {
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