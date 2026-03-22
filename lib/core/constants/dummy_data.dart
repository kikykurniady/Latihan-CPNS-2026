import 'package:flutter/material.dart';
import 'package:latihan_cpns/core/constants/app_colors.dart';
import 'package:latihan_cpns/models/category.dart';
import 'package:latihan_cpns/models/sub_topic.dart';
import 'package:latihan_cpns/models/question.dart';
import 'package:latihan_cpns/models/answer.dart';

final List<Category> dummyCategories = [
  const Category(
    id: 'twk',
    name: 'TWK',
    icon: Icons.flag,
    questionCount: 350,
    backgroundColor: AppColors.twkColor,
  ),
  const Category(
    id: 'tiu',
    name: 'TIU',
    icon: Icons.lightbulb,
    questionCount: 420,
    backgroundColor: AppColors.tiuColor,
  ),
  const Category(
    id: 'tkp',
    name: 'TKP',
    icon: Icons.person,
    questionCount: 510,
    backgroundColor: AppColors.tkpColor,
  ),
];

final List<SubTopic> dummySubTopics = [
  // TWK Sub-topics
  const SubTopic(id: 'twk1', categoryId: 'twk', name: 'Pancasila', totalQuestions: 50, completedQuestions: 20),
  const SubTopic(id: 'twk2', categoryId: 'twk', name: 'UUD 1945', totalQuestions: 60),
  const SubTopic(id: 'twk3', categoryId: 'twk', name: 'Bhinneka Tunggal Ika', totalQuestions: 40, completedQuestions: 40),
  const SubTopic(id: 'twk4', categoryId: 'twk', name: 'NKRI', totalQuestions: 70),

  // TIU Sub-topics
  const SubTopic(id: 'tiu1', categoryId: 'tiu', name: 'Sinonim & Antonim', totalQuestions: 80, completedQuestions: 15),
  const SubTopic(id: 'tiu2', categoryId: 'tiu', name: 'Analogi', totalQuestions: 60),
  const SubTopic(id: 'tiu3', categoryId: 'tiu', name: 'Deret Angka', totalQuestions: 90, completedQuestions: 90),
  const SubTopic(id: 'tiu4', categoryId: 'tiu', name: 'Soal Cerita', totalQuestions: 50),

  // TKP Sub-topics
  const SubTopic(id: 'tkp1', categoryId: 'tkp', name: 'Integritas Diri', totalQuestions: 100),
  const SubTopic(id: 'tkp2', categoryId: 'tkp', name: 'Semangat Berprestasi', totalQuestions: 80),
  const SubTopic(id: 'tkp3', categoryId: 'tkp', name: 'Kreativitas dan Inovasi', totalQuestions: 70, completedQuestions: 35),
  const SubTopic(id: 'tkp4', categoryId: 'tkp', name: 'Orientasi pada Pelayanan', totalQuestions: 90),
];

final List<Question> dummyQuestions = [
  // Pancasila Questions
  const Question(
    id: 'q1',
    subTopicId: 'twk1',
    questionText: 'Sila ke-3 Pancasila dilambangkan dengan ...',
    answers: [
      Answer(text: 'Bintang'),
      Answer(text: 'Rantai'),
      Answer(text: 'Pohon Beringin', isCorrect: true),
      Answer(text: 'Kepala Banteng'),
    ],
    explanation: 'Sila ke-3, Persatuan Indonesia, dilambangkan dengan Pohon Beringin.',
  ),
  const Question(
    id: 'q2',
    subTopicId: 'twk1',
    questionText: 'Rumusan Pancasila yang sah dan benar terdapat dalam ...',
    answers: [
      Answer(text: 'Piagam Jakarta'),
      Answer(text: 'Pembukaan UUD 1945', isCorrect: true),
      Answer(text: 'TAP MPR'),
      Answer(text: 'Dekrit Presiden'),
    ],
  ),

  // UUD 1945 Questions
  const Question(
    id: 'q3',
    subTopicId: 'twk2',
    questionText: 'Amandemen UUD 1945 pertama kali dilakukan pada tahun ...',
    answers: [
      Answer(text: '1998'),
      Answer(text: '1999', isCorrect: true),
      Answer(text: '2000'),
      Answer(text: '2001'),
    ],
  ),

  // Deret Angka Questions
  const Question(
    id: 'q4',
    subTopicId: 'tiu3',
    questionText: 'Lanjutkan deret berikut: 2, 4, 8, 16, ...',
    answers: [
      Answer(text: '24'),
      Answer(text: '32', isCorrect: true),
      Answer(text: '64'),
      Answer(text: '20'),
    ],
    explanation: 'Setiap angka adalah hasil perkalian 2 dari angka sebelumnya.',
  ),
];
