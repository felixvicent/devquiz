import 'package:dev_quiz/challenge/widgets/awnser/awnser_widget.dart';
import 'package:dev_quiz/core/core.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;

  const QuizWidget({required this.title}) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyles.heading,
          ),
          SizedBox(height: 24),
          AwnserWidget(title: 'Kit de desenvolvimento de interface de usuário'),
          AwnserWidget(
            title: 'Possibilita a criação de aplicativos compilados nativamente',
            isRight: true,
            isSelected: true
          ),
          AwnserWidget(title: 'Acho que é uma marca de café do Himalaia'),
          AwnserWidget(
            title: 'Possibilita a criação de desktops que são muitos incriveis'
          ),
        ],
      ),
    );
  }
}