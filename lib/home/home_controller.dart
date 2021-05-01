import 'package:dev_quiz/core/core.dart';
import 'package:dev_quiz/home/home_state.dart';
import 'package:dev_quiz/shared/models/awnser_,model.dart';
import 'package:dev_quiz/shared/models/question_model.dart';
import 'package:dev_quiz/shared/models/quiz_model.dart';
import 'package:dev_quiz/shared/models/use_model.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);

  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;
  
  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async{
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    user = UserModel(
      name: 'Felps',
      photoUrl: 'https://github.com/felixvicent.png'
    );
    state = HomeState.success;
  }

  void getQuizzes() async{
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    quizzes = [
      QuizModel(
        title: 'NLW 5 Flutter',
        question: [
          QuestionModel(
            title: 'Está curtindo o Flutter',
            awnsers: [
              AwnserModel(title: 'Estou curtindo', isRight: true),
              AwnserModel(title: 'Estou amando'),
              AwnserModel(title: 'Show de bola'),
              AwnserModel(title: 'Demais'),
            ],
          ),
          QuestionModel(
            title: 'Está curtindo o Flutter',
            awnsers: [
              AwnserModel(title: 'Estou curtindo', isRight: true),
              AwnserModel(title: 'Estou amando'),
              AwnserModel(title: 'Show de bola'),
              AwnserModel(title: 'Demais'),
            ],
          )
        ],
        imagem: AppImages.blocks,
        questionAnswered: 1,
        level: Level.facil
      )
    ];
    state = HomeState.success;
  }
}