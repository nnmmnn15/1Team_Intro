import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('자기소개'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/min'),
                child: const Text('노민철'),
              ),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/won'),
              child: const Text('이원영'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/jong'),
              child: const Text('이종남'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/ho'),
              child: const Text('최호영'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 200),
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/jae'),
                child: const Text('한재영'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}