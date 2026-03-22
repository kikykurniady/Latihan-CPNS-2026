import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:latihan_cpns/models/quiz_result.dart';
import 'package:latihan_cpns/ui/components/breakdown_card.dart';
import 'package:latihan_cpns/ui/components/duration_chip.dart';
import 'package:latihan_cpns/ui/components/hero_score.dart';
import 'package:latihan_cpns/ui/components/passing_grade_card.dart';

class ResultScreen extends StatelessWidget {
  final QuizResult result;

  const ResultScreen({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 250.0,
              floating: false,
              pinned: true,
              stretch: true,
              backgroundColor: Theme.of(context).primaryColor,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: innerBoxIsScrolled ? const Text('Hasil') : null,
                background: HeroScore(result: result),
              ),
              actions: [
                IconButton(
                  icon: const Icon(Icons.share),
                  onPressed: () { /* Share logic */ },
                ),
              ],
            ),
          ];
        },
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              PassingGradeCard(result: result),
              const SizedBox(height: 16),
              BreakdownCard(result: result),
              const SizedBox(height: 16),
              DurationChip(duration: result.totalDuration),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
       bottomNavigationBar: Padding(
         padding: const EdgeInsets.all(16.0),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             Expanded(
               child: OutlinedButton.icon(
                 icon: const Icon(Icons.home),
                 label: const Text('Beranda'),
                 onPressed: () => context.go('/'), // Navigate to Home
               ),
             ),
             const SizedBox(width: 16),
             Expanded(
               child: ElevatedButton.icon(
                 icon: const Icon(Icons.rate_review),
                 label: const Text('Tinjau'),
                 onPressed: () {
                   // Navigate to Review Screen, passing the list of questions
                   // context.push('/review', extra: result.questions);
                 },
               ),
             ),
           ],
         ),
       ),
    );
  }
}
