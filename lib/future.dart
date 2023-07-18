

void main() async{
  addNumbers(1, 1);

  await addNumbers1(2, 2);
  await addNumbers1(3, 3);

  final result = await addNumbers3(1,1);
  print('결괏값 $result'); // 일반 함수와 동일하게 반환값을 받을 수 있음
  final result2 = await addNumbers3(2,2);
  print('결괏값 $result2');

}
  //결괏값 반환받기
  Future<int> addNumbers3(int number1, int number2) async {
    print('$number1 = $number2 계산 시작!');

    await Future.delayed(Duration(seconds: 3), (){
      print('$number1 + $number2 = ${number1 + number2}');
    });
    print('$number1 + $number2 코드 실행 끝');

    return number1 = number2;

  }

  //async와 await
  //async 키워드는 함수 매개변수 정의와 바디 사이에 입력합니다.
  Future<void> addNumbers1(int number1, int number2) async {
  print('$number1 + $number2 계산 시작');

  // await는 대기하고 싶은 비동기 함수 앞에 입력합니다.
  await Future.delayed(Duration(seconds: 3), (){
    print('$number1 + $number2 = ${number1 + number2}');
  });

  print('$number1 + $number2 코드 실행 끝');

}

//Future
void addNumbers(int number1, int number2){
  print('$number1 + $number2 계산 시작!');

  // Future.delayed()를 사용하면 일정 시간 후에 콜백 함수를 실행할 수 있음
  Future.delayed(Duration(seconds: 3), (){
    print('$number1 + $number2 = ${number1 + number2}');
  });

  print('$number1 + $number2 코드 실행 끝');
}

