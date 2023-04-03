import 'package:flutter/material.dart';
import 'package:quiz_app_test/model/model_quiz.dart';
import 'package:quiz_app_test/screen/screen_quiz.dart';
import 'dart:convert';

class ListScreen2 extends StatefulWidget {
  const ListScreen2({Key? key}) : super(key: key);

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen2> {
  List<Quiz> quizs = [
    Quiz.fromMap({
    'title': 'test',
    'candidates': ['a','b','c','d'],
    'answer': 0
    }),
    Quiz.fromMap({
    'title': 'test',
    'candidates': ['a','b','c','d'],
    'answer': 0
    }),
    Quiz.fromMap({
    'title': 'test',
    'candidates': ['a','b','c','d'],
    'answer': 0
    }),
  ];


  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      '64','63','62','61','60','59','58','57','56','55'
      ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: Container(),
          centerTitle: true,
        title: const Text('한국사능력검정시험 심화'),
      ),
      body: ListView.builder(
        itemCount:entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child:ListTile(
              title: Text(
                '한국사능력검정시험 심화 ${entries[index]}',
                style: TextStyle(
                  fontSize:25
                ),
              ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => QuizScreen(
                            quizs:quizs,
                          ),
                        ),
                      );
                    },
            ),
            color: Colors.white
          );
        },
    ),
    );
  }
}