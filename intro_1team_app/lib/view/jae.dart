import 'package:flutter/material.dart';

class Jae extends StatelessWidget {
  const Jae({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 197, 234, 252),
      appBar: AppBar(
          title: Text('한재영'),
          backgroundColor: Color.fromARGB(255, 1, 43, 77),
          foregroundColor: Colors.white),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/jae_hanjaeng.jpg'),
                  radius: 70,
                ),
              ),
              Divider(
                color: Colors.black,
                indent: 20,
                endIndent: 20,
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              '학력',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            Text('신월초등학교'),
                            Text('명덕고등학교'),
                            Text('인하대학교'),
                          ],
                        )),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            '전공',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Text('화학공학과'),
                        ],
                      ),
                    ),
                    Text(''),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            '자격사항',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Text('컴퓨터활용능력'),
                          Text('위험물산업기사'),
                          Text('가스기능사'),
                          Text('에너지관리기능사'),
                        ],
                      ),
                    ),
                    Text(''),
                    Text(
                      '     경력',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(130, 10, 0, 0),
                      child: Row(
                        children: [
                          Image.asset('images/jae_mil.png', width: 50),
                          Text('  31사단 화생방통제장교'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(110, 10, 0, 0),
                      child: Row(
                        children: [
                          Image.asset('images/jae_lgcham.png', width: 100),
                          Text('  LG화학 자동차용전지 공정기술팀'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(110, 10, 0, 0),
                      child: Row(
                        children: [
                          Image.asset('images/jae_gilsan.png', width: 100),
                          Text('  길산파이프 재무회계팀'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(110, 10, 0, 0),
                      child: Row(
                        children: [
                          Image.asset('images/jae_korbooks.png', width: 100),
                          Text('  고려북스 대표'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(110, 10, 0, 0),
                      child: Row(
                        children: [
                          Image.asset('images/jae_book.png', width: 100),
                          Text('  연표와도표로보는한국사 책 출간'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
