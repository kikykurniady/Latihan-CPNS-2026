import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// Assuming go_router is used for navigation
import 'package:go_router/go_router.dart';
import 'package:latihan_cpns_2026/core/constants/app_colors.dart';
import 'package:latihan_cpns_2026/models/sub_topic.dart';
import 'package:latihan_cpns_2026/providers/quiz_provider.dart';
import 'package:latihan_cpns_2026/ui/components/explanation_card.dart';
import 'package:latihan_cpns_2026/ui/components/option_tile.dart';
import 'package:latihan_cpns_2026/ui/components/question_card.dart';
import 'package:latihan_cpns_2026/ui/components/quiz_header.dart';

class QuizScreen extends ConsumerStatefulWidget {
  final SubTopic subTopic;
  const QuizScreen({super.key, required this.subTopic});

  @override
  ConsumerState<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends ConsumerState<QuizScreen> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(quizProvider.notifier).loadQuestions(widget.subTopic);
      _startTimer();
    });
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (mounted) {
        final notifier = ref.read(quizProvider.notifier);
        notifier.tickTimer();
        if (notifier.isTimeUp()) {
          _timer?.cancel();
          // Handle time up logic, maybe navigate to results
          if (context.canPop()) context.pop();
        }
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(quizProvider);
    final notifier = ref.read(quizProvider.notifier);

    ref.listen(quizProvider.select((s) => s.isQuizFinished), (previous, next) {
      if (next == true) {
        ref.read(quizProvider.notifier).buildResult();
        // Using a placeholder for GoRouter navigation
        // context.pushReplacement('/result', extra: result);
      }
    });

    if (state.isLoading || state.currentQuestion == null) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    final question = state.currentQuestion!;
    final categoryColor = AppColors.getCategoryColor(state.category);

    return PopScope(
      canPop: false,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              QuizHeader(
                currentQuestionIndex: state.currentQuestionIndex,
                totalQuestions: state.questions.length,
                category: state.category,
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: LinearProgressIndicator(
                  value:
                      (state.currentQuestionIndex + 1) / state.questions.length,
                  backgroundColor: Colors.grey[300],
                  valueColor: AlwaysStoppedAnimation<Color>(categoryColor),
                ),
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  children: [
                    const SizedBox(height: 16),
                    QuestionCard(question: question),
                    const SizedBox(height: 20),
                    ...question.answers.mapIndexed((index, answer) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: OptionTile(
                          answer: answer,
                          question: question,
                          answerIndex: index,
                        ),
                      );
                    }),
                    const SizedBox(height: 20),
                    if (state.showExplanation)
                      ExplanationCard(
                        question: question,
                        isLastQuestion: state.isLastQuestion,
                        onContinue: () {
                          notifier.nextQuestion();
                          // Interstitial Ad Logic
                          if ((state.currentQuestionIndex + 1) % 10 == 0) {
                            // adService.showInterstitial();
                          }
                        },
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
