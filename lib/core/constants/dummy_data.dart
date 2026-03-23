import 'package:flutter/material.dart';
import 'package:latihan_cpns_2026/models/question.dart';
import 'package:latihan_cpns_2026/models/category.dart';
import 'package:latihan_cpns_2026/models/sub_topic.dart';

// Categories
final dummyCategories = [
  Category(
    id: 'twk',
    name: 'TWK (Tes Wawasan Kebangsaan)',
    icon: Icons.flag,
    questionCount: 5,
    backgroundColor: Colors.blue.shade100,
  ),
  Category(
    id: 'tiu',
    name: 'TIU (Tes Intelegensia Umum)',
    icon: Icons.school,
    questionCount: 6,
    backgroundColor: Colors.green.shade100,
  ),
];

// SubTopics
final dummySubTopics = [
  const SubTopic(
      id: 'pancasila', categoryId: 'twk', name: 'Pancasila', totalQuestions: 1),
  const SubTopic(
      id: 'uud-1945', categoryId: 'twk', name: 'UUD 1945', totalQuestions: 1),
  const SubTopic(
      id: 'nasionalisme',
      categoryId: 'twk',
      name: 'Nasionalisme',
      totalQuestions: 1),
  const SubTopic(
      id: 'integritas',
      categoryId: 'twk',
      name: 'Integritas',
      totalQuestions: 1),
  const SubTopic(
      id: 'bela-negara',
      categoryId: 'twk',
      name: 'Bela Negara',
      totalQuestions: 1),
  const SubTopic(
      id: 'verbal', categoryId: 'tiu', name: 'Verbal', totalQuestions: 2),
  const SubTopic(
      id: 'numerik', categoryId: 'tiu', name: 'Numerik', totalQuestions: 3),
  const SubTopic(
      id: 'figural', categoryId: 'tiu', name: 'Figural', totalQuestions: 1),
];

// Questions
final dummyQuestions = [
  Question.fromOptions(
    id: 1,
    category: 'TWK',
    subTopic: 'pancasila',
    question: 'Landasan idiil negara Republik Indonesia adalah...',
    options: ['UUD 1945', 'Pancasila', 'GBHN', 'Proklamasi', 'Tap MPR'],
    correctAnswer: 1,
    explanation:
        'Pancasila adalah landasan idiil negara Indonesia, sementara UUD 1945 adalah landasan konstitusional.',
  ),
  Question.fromOptions(
    id: 2,
    category: 'TWK',
    subTopic: 'uud-1945',
    question: 'Amandemen UUD 1945 yang pertama kali dilakukan pada tahun...',
    options: ['1998', '1999', '2000', '2001', '2002'],
    correctAnswer: 1,
    explanation:
        'Amandemen pertama UUD 1945 disahkan pada Sidang Umum MPR tanggal 19 Oktober 1999.',
  ),
  Question.fromOptions(
    id: 3,
    category: 'TWK',
    subTopic: 'nasionalisme',
    question: 'Sumpah Pemuda dicetuskan pada tanggal 28 Oktober 1928 di...',
    options: ['Bandung', 'Surabaya', 'Yogyakarta', 'Jakarta', 'Semarang'],
    correctAnswer: 3,
    explanation:
        'Kongres Pemuda Kedua menghasilkan Sumpah Pemuda di Batavia (sekarang Jakarta).',
  ),
  Question.fromOptions(
    id: 4,
    category: 'TWK',
    subTopic: 'integritas',
    question: 'Berikut ini yang bukan merupakan pilar integritas adalah...',
    options: ['Jujur', 'Tanggung Jawab', 'Disiplin', 'Kekayaan', 'Adil'],
    correctAnswer: 3,
    explanation:
        'Pilar integritas meliputi jujur, tanggung jawab, disiplin, mandiri, kerja keras, sederhana, berani, peduli, dan adil. Kekayaan tidak termasuk.',
  ),
  Question.fromOptions(
    id: 5,
    category: 'TWK',
    subTopic: 'bela-negara',
    question:
        'Sikap dan perilaku warga negara yang dijiwai oleh kecintaannya kepada NKRI disebut...',
    options: [
      'Nasionalisme',
      'Patriotisme',
      'Bela Negara',
      'Chauvinisme',
      'Separatisme'
    ],
    correctAnswer: 2,
    explanation:
        'Definisi tersebut merupakan pengertian dari Bela Negara sesuai dengan UU No. 3 Tahun 2002.',
  ),
  Question.fromOptions(
    id: 6,
    category: 'TIU',
    subTopic: 'verbal',
    question: 'Antonim dari kata "PROMINEN" adalah...',
    options: ['Terkenal', 'Biasa', 'Unggul', 'Menonjol', 'Penting'],
    correctAnswer: 1,
    explanation:
        'Prominen berarti menonjol atau terkenal. Antonimnya adalah biasa.',
  ),
  Question.fromOptions(
    id: 7,
    category: 'TIU',
    subTopic: 'verbal',
    question: 'Analogi: GUDANG : BARANG :: ... : ...',
    options: [
      'Bank : Uang',
      'Buku : Halaman',
      'Rumah : Atap',
      'Laci : Meja',
      'Pohon : Buah'
    ],
    correctAnswer: 0,
    explanation:
        'Gudang adalah tempat menyimpan barang. Analogi yang paling sesuai adalah Bank tempat menyimpan uang.',
  ),
  Question.fromOptions(
    id: 8,
    category: 'TIU',
    subTopic: 'numerik',
    question:
        'Jika 5 pekerja dapat menyelesaikan proyek dalam 12 hari, berapa hari yang dibutuhkan 3 pekerja?',
    options: ['15', '18', '20', '22', '25'],
    correctAnswer: 2,
    explanation:
        'Ini adalah perbandingan terbalik. (5 * 12) = (3 * x) => 60 = 3x => x = 20 hari.',
  ),
  Question.fromOptions(
    id: 9,
    category: 'TIU',
    subTopic: 'numerik',
    question:
        'Sebuah mobil menempuh jarak 120 km dengan kecepatan 80 km/jam. Jika kembali dengan 60 km/jam, berapa waktu total?',
    options: ['3 jam', '3,5 jam', '4 jam', '4,5 jam', '5 jam'],
    correctAnswer: 1,
    explanation:
        'Waktu pergi = 120/80 = 1,5 jam. Waktu kembali = 120/60 = 2 jam. Total = 3,5 jam.',
  ),
  Question.fromOptions(
    id: 10,
    category: 'TIU',
    subTopic: 'numerik',
    question: 'Seri angka: 1, 4, 9, 16, 25, ... Angka selanjutnya?',
    options: ['30', '32', '36', '40', '49'],
    correctAnswer: 2,
    explanation:
        'Ini adalah deret kuadrat sempurna (1^2, 2^2, 3^2, dst.). Selanjutnya adalah 6^2 = 36.',
  ),
  Question.fromOptions(
    id: 11,
    category: 'TIU',
    subTopic: 'figural',
    question: 'Manakah gambar yang berbeda dari yang lain?',
    options: [
      'A. Segitiga',
      'B. Lingkaran',
      'C. Persegi',
      'D. Jajar Genjang',
      'E. Trapesium'
    ],
    correctAnswer: 1,
    explanation:
        'Lingkaran adalah satu-satunya gambar yang tidak memiliki sudut.',
  ),
];
