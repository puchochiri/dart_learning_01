import 'dart:async';

void main() {
  final controller = StreamController();  //StreamController 선언
  final stream = controller.stream;        //Stream 가져오기

  //Strean에 Listen()함수를 실행하면 값이 주입될 때마다 콜백 함수를 실행할 수 있습니다.
  final streamListener1 = stream.listen((val) {
    print(val);
  });

  //Stream에 값을 주입하기
  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);



}


