import 'package:flutter/material.dart';

class Min extends StatefulWidget {
  const Min({super.key});

  @override
  State<Min> createState() => _MinState();
}

class _MinState extends State<Min> {

  late List<String> hobbiesList;
  late List<String> hobbiesImageList;
  late List<String> favoriteSongList;
  late int hobbyNum;
  late int musicNum;

  @override
  void initState() {
    super.initState();
    
    hobbyNum = 0;
    musicNum = 0;
    hobbiesList = ['취미', '탁구', '볼링', '게임'];
    hobbiesImageList = ['hobbies', 'pingpong', 'bowling', 'game'];
    favoriteSongList = ['Trip - 릴러말즈', 'TOMBOY - 혁오', '좋은 밤 좋은 꿈 - 너드커넥션', 'Pretender - Official Hige Dandism'];
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'images/min_profile.jpg',
                  width: 150,
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '이름',
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 5),
                        child: Text(
                          '노민철',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Text(
                        '나이',
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 5),
                        child: Text(
                          '25 (만 23)',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Text(
                        '거주지',
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 5),
                        child: Text(
                          '경기도 하남',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Text(
                        '전공',
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: Text(
                          '인공지능 소프트웨어',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // CircleAvatar(
                //   backgroundImage: AssetImage('images/min/min_jump.jpg'),
                // ),
              ],
            ),
          ),
          const Divider(
            color: Colors.black,
            height: 5,
          ),
          const Text(
            '이미지를 눌러주세요',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Colors.black54,
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () => changeHobby(),
                  child: Image.asset(
                    'images/min_${hobbiesImageList[hobbyNum]}.png',
                    width: 150,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(hobbiesList[hobbyNum]),
                ),
              ],
            ),
          ),
          
          GestureDetector(
            onTap: () => changeMusic(),
            child: Row(
              children: [
                Column(
                  children: [
                    Image.asset(
                      'images/min_musicplayer.png',
                      width: 150,
                    ),
                    const Text('좋아하는 노래'),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.music_note_rounded),
                    SizedBox(
                      width: 200,
                      child: Text(
                        favoriteSongList[musicNum],
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.blue[700],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


  changeHobby(){
    hobbyNum++;
    hobbyNum = hobbyNum == hobbiesList.length ?  0 : hobbyNum;
    setState(() {});
  }

  changeMusic(){
    musicNum++;
    musicNum = musicNum == favoriteSongList.length ?  0 : musicNum;
    setState(() {});
  }
}