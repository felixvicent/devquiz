import 'package:dev_quiz/core/core.dart';
import 'package:dev_quiz/shared/widgets/progess_indicator/progress_indicator_widget.dart';
import 'package:flutter/material.dart';

class QuestionIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Questão 04 ',
                style: AppTextStyles.body,
              ),
              Text(
                'de 10',
                style: AppTextStyles.body,
              )
            ],
          ),
          SizedBox(height: 16),
          ProgressIndicatorWidget(value: 0.4,)
        ],
      ),
    );
  }
}