import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override // State<?> 클래스는 데이터를 갖고 있다.
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  List<int> numbers = [];

  void onClicked() {
    numbers.add(numbers.length);
    setState(() {});
  }

  @override // UI 부분
  Widget build(BuildContext context) {
    if (numbers.length > 20) {
      numbers.clear();
    }
    // setState가 동작할 때마다 build() method 재 실행됨 : 데이터 리프레시
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Click Count',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [],
              ),
              for (var n in numbers) Text('$n'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    iconSize: 40,
                    onPressed: onClicked,
                    icon: const Icon(
                      Icons.add_box_rounded,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
