import 'package:flutter/material.dart';

class Ho extends StatelessWidget {
  const Ho({super.key});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('자기소개서 양식'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: ResumeForm(),
      ),
    );
  }
}

class ResumeForm extends StatefulWidget {
  const ResumeForm({super.key});

  @override
  _ResumeFormState createState() => _ResumeFormState();
}

class _ResumeFormState extends State<ResumeForm> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _educationController = TextEditingController();
  final TextEditingController _experienceController = TextEditingController();
  final TextEditingController _skillsController = TextEditingController();
  final TextEditingController _motivationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        children: <Widget>[
          TextFormField(
            controller: _nameController,
            decoration: const InputDecoration(labelText: '이름'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return '이름을 입력하세요';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _ageController,
            decoration: const InputDecoration(labelText: '나이'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return '나이를 입력하세요';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _educationController,
            decoration: const InputDecoration(labelText: '학력'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return '학력을 입력하세요';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _experienceController,
            decoration: const InputDecoration(labelText: '경력'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return '경력을 입력하세요';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _skillsController,
            decoration: const InputDecoration(labelText: '기술 및 능력'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return '기술 및 능력을 입력하세요';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _motivationController,
            decoration: const InputDecoration(labelText: '지원 동기'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return '지원 동기를 입력하세요';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('자기소개서'),
                      content: SingleChildScrollView(
                        child: ListBody(
                          children: <Widget>[
                            Text('이름: ${_nameController.text}'),
                            Text('나이: ${_ageController.text}'),
                            Text('학력: ${_educationController.text}'),
                            Text('경력: ${_experienceController.text}'),
                            Text('기술 및 능력: ${_skillsController.text}'),
                            Text('지원 동기: ${_motivationController.text}'),
                          ],
                        ),
                      ),
                      actions: <Widget>[
                        TextButton(
                          child: const Text('확인'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              }
            },
            child: const Text('제출'),
          ),
        ],
      ),
    );
  }
}