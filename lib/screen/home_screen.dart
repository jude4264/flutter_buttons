import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Buttons'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 8.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('ButtonStyle'),
              style: ButtonStyle(backgroundColor:
                  MaterialStateProperty.resolveWith((Set<MaterialState> state) {
                if (state.contains(MaterialState.pressed)) {
                  return Colors.green;
                }
                return Colors.black;
              }), foregroundColor: MaterialStateProperty.resolveWith(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.white;
                  }
                  return Colors.red;
                },
              ), padding: MaterialStateProperty.resolveWith(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) {
                  return EdgeInsets.all(20.0);
                }
                return EdgeInsets.all(10.0);
              })),
            ),
            ElevatedButton(
              child: const Text('ElevatedButton'),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                //그림자크기
                elevation: 18.0,
                //배경색
                primary: Colors.red,
                //버튼 안의 글자색
                onPrimary: Colors.black,
                //그림자색상
                shadowColor: Colors.deepPurple,
                //버튼 글자 스타일
                textStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0,
                ),
                //패딩
                padding: EdgeInsets.all(32.0),
                side: BorderSide(color: Colors.black, width: 4.0),
              ),
            ),
            OutlinedButton(
              child: const Text('OutlinedButton'),
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                primary: Colors.green,
                // backgroundColor: Colors.yellow
              ),
            ),
            TextButton(
              child: Text('TextButton'),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
