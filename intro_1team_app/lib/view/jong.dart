import 'package:flutter/material.dart';

class Jong extends StatelessWidget {
  const Jong({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('자기소개'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(
                  'images/1.jpg',
                  width: 200,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text('이름 : 이종남', style: TextStyle(
                      fontSize: 20,
                    ),
                    ),
                    Text('나이 : 만 34세', style: TextStyle(
                      fontSize: 20,
                    ),),
                    Text('전공 : 정보통신공학과', style: TextStyle(
                      fontSize: 20,
                    ),),
                  ],
                ),
              )
            ]
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('취미 : 마라톤', style: TextStyle(
                  fontSize: 20,
                ),),
                Image.asset(
                'images/2.jpg',
                width: 150,
                ),
                const Text('클라이밍', style: TextStyle(
                  fontSize: 20,
                ),),
                Image.asset(
                  'images/3.jpg',
                  width: 125,
                  ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('애완견 : 조이와 대박이', style: TextStyle(
                fontSize: 20
              ),),
              Image.asset(
              'images/4.jpg',
              width: 150,
              ),
            ],
          ),
          
        ],
      ),
    );
  }
}