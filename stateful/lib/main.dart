import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int counter = 0;

  void plus() {
    setState(() {
      // setState : State<?> 클래스에게 데이터가 변경되었음을 알림
      counter = counter + 1;
    });
  }

  void minus() {
    setState(() {
      // setState : State<?> 클래스에게 데이터가 변경되었음을 알림
      counter = counter - 1;
    });
  }

  void reset() {
    setState(() {
      // setState : State<?> 클래스에게 데이터가 변경되었음을 알림
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
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
                    'Click Count: ',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$counter',
                    style: const TextStyle(fontSize: 30),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    iconSize: 40,
                    onPressed: plus,
                    icon: const Icon(
                      Icons.add_box_rounded,
                    ),
                  ),
                  IconButton(
                    iconSize: 40,
                    onPressed: minus,
                    icon: const Icon(
                      Icons.remove_circle_outline_outlined,
                    ),
                  ),
                  IconButton(
                    iconSize: 40,
                    onPressed: reset,
                    icon: const Icon(
                      Icons.reset_tv_outlined,
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
