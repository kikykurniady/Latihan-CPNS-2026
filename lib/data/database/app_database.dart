import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

import '../models/question.dart' as model;
import 'daos/bookmark_dao.dart';
import 'daos/question_dao.dart';
import 'daos/session_dao.dart';
import 'tables/bookmarks_table.dart';
import 'tables/questions_table.dart';
import 'tables/sessions_table.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [QuestionsTable, SessionsTable, BookmarksTable], daos: [QuestionDao, SessionDao, BookmarkDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (m) async {
          await m.createAll();
          await _seedQuestions();
        },
      );

  Future<void> _seedQuestions() async {
    final questions = [
      // TWK
      model.Question(
        id: 1,
        category: 'TWK',
        subTopic: 'Pancasila',
        question: 'Sila keempat Pancasila mengandung makna...',
        options: ['A. Ketuhanan yang maha esa', 'B. Kemanusiaan', 'C. Musyawarah mufakat', 'D. Keadilan', 'E. Persatuan'],
        correctAnswer: 2,
        explanation: 'Sila keempat berbunyi "Kerakyatan yang dipimpin oleh hikmat kebijaksanaan dalam permusyawaratan/perwakilan" yang mengandung makna musyawarah mufakat.',
        difficulty: 'mudah',
        tkpWeights: null,
      ),
      model.Question(
        id: 2,
        category: 'TWK',
        subTopic: 'Pancasila',
        question: 'Lambang dari sila kedua Pancasila adalah...',
        options: ['A. Bintang', 'B. Rantai', 'C. Pohon Beringin', 'D. Kepala Banteng', 'E. Padi dan Kapas'],
        correctAnswer: 1,
        explanation: 'Lambang sila kedua, "Kemanusiaan yang adil dan beradab", adalah rantai.',
        difficulty: 'mudah',
        tkpWeights: null,
      ),
      model.Question(
        id: 3,
        category: 'TWK',
        subTopic: 'UUD 1945',
        question: 'Amandemen UUD 1945 yang keempat dilakukan pada tahun...',
        options: ['A. 1999', 'B. 2000', 'C. 2001', 'D. 2002', 'E. 2003'],
        correctAnswer: 3,
        explanation: 'Amandemen UUD 1945 dilakukan sebanyak empat kali, yaitu pada tahun 1999, 2000, 2001, dan 2002.',
        difficulty: 'sedang',
        tkpWeights: null,
      ),
      model.Question(
        id: 4,
        category: 'TWK',
        subTopic: 'UUD 1945',
        question: 'Pasal dalam UUD 1945 yang mengatur tentang Hak Asasi Manusia (HAM) adalah...',
        options: ['A. Pasal 27', 'B. Pasal 28A-J', 'C. Pasal 29', 'D. Pasal 30', 'E. Pasal 31'],
        correctAnswer: 1,
        explanation: 'Pasal 28A hingga 28J dalam UUD 1945 secara khusus mengatur tentang Hak Asasi Manusia.',
        difficulty: 'sedang',
        tkpWeights: null,
      ),
      model.Question(
        id: 5,
        category: 'TWK',
        subTopic: 'NKRI',
        question: 'Batas wilayah Indonesia di sebelah utara adalah...',
        options: ['A. Samudera Hindia', 'B. Papua Nugini', 'C. Malaysia, Singapura, Filipina', 'D. Timor Leste', 'E. Australia'],
        correctAnswer: 2,
        explanation: 'Di sebelah utara, Indonesia berbatasan darat dengan Malaysia (di Pulau Kalimantan) dan laut dengan Malaysia, Singapura, dan Filipina.',
        difficulty: 'sulit',
        tkpWeights: null,
      ),
      model.Question(
        id: 6,
        category: 'TWK',
        subTopic: 'NKRI',
        question: 'Sumpah Pemuda dicetuskan pada tanggal...',
        options: ['A. 20 Mei 1908', 'B. 17 Agustus 1945', 'C. 28 Oktober 1928', 'D. 10 November 1945', 'E. 1 Juni 1945'],
        correctAnswer: 2,
        explanation: 'Sumpah Pemuda merupakan hasil Kongres Pemuda Kedua yang diselenggarakan pada 27-28 Oktober 1928.',
        difficulty: 'sedang',
        tkpWeights: null,
      ),
      model.Question(
        id: 7,
        category: 'TWK',
        subTopic: 'Bhinneka Tunggal Ika',
        question: 'Arti dari Bhinneka Tunggal Ika adalah...',
        options: ['A. Berbeda-beda tetapi tetap satu jua', 'B. Bersatu kita teguh, bercerai kita runtuh', 'C. Esa hilang, dua terbilang', 'D. Patah tumbuh hilang berganti', 'E. Berat sama dipikul, ringan sama dijinjing'],
        correctAnswer: 0,
        explanation: 'Bhinneka Tunggal Ika adalah semboyan bangsa Indonesia yang berarti "berbeda-beda tetapi tetap satu jua".',
        difficulty: 'mudah',
        tkpWeights: null,
      ),
      // TIU
      model.Question(
        id: 8,
        category: 'TIU',
        subTopic: 'Verbal - Sinonim',
        question: 'Sinonim dari kata "andal" adalah...',
        options: ['A. Cepat', 'B. Lemah', 'C. Terpercaya', 'D. Kuat', 'E. Pintar'],
        correctAnswer: 2,
        explanation: '"Andal" berarti dapat dipercaya atau diandalkan.',
        difficulty: 'mudah',
        tkpWeights: null,
      ),
      model.Question(
        id: 9,
        category: 'TIU',
        subTopic: 'Verbal - Antonim',
        question: 'Antonim dari kata "maya" adalah...',
        options: ['A. Nyata', 'B. Hilang', 'C. Gaib', 'D. Abstrak', 'E. Semu'],
        correctAnswer: 0,
        explanation: '"Maya" berarti tidak nyata atau hanya ada dalam angan-angan, sehingga antonimnya adalah "nyata".',
        difficulty: 'mudah',
        tkpWeights: null,
      ),
      model.Question(
        id: 10,
        category: 'TIU',
        subTopic: 'Verbal - Analogi',
        question: 'Api : Bakar :: Air : ...',
        options: ['A. Dingin', 'B. Basah', 'C. Hujan', 'D. Minum', 'E. Lembab'],
        correctAnswer: 1,
        explanation: 'Api menyebabkan sesuatu menjadi terbakar. Air menyebabkan sesuatu menjadi basah.',
        difficulty: 'sedang',
        tkpWeights: null,
      ),
      model.Question(
        id: 11,
        category: 'TIU',
        subTopic: 'Numerik - Deret Angka',
        question: '2, 3, 5, 8, 13, ...',
        options: ['A. 15', 'B. 17', 'C. 19', 'D. 21', 'E. 23'],
        correctAnswer: 3,
        explanation: 'Ini adalah deret Fibonacci, di mana setiap angka adalah jumlah dari dua angka sebelumnya. 8 + 13 = 21.',
        difficulty: 'sedang',
        tkpWeights: null,
      ),
      model.Question(
        id: 12,
        category: 'TIU',
        subTopic: 'Numerik - Deret Angka',
        question: '100, 95, 85, 70, 50, ...',
        options: ['A. 25', 'B. 30', 'C. 35', 'D. 40', 'E. 45'],
        correctAnswer: 0,
        explanation: 'Pola pengurangannya adalah -5, -10, -15, -20, -25. Jadi, 50 - 25 = 25.',
        difficulty: 'sedang',
        tkpWeights: null,
      ),
      model.Question(
        id: 13,
        category: 'TIU',
        subTopic: 'Figural',
        question: 'Pilihlah gambar yang berbeda dari yang lain.',
        options: ['A. Gambar lingkaran', 'B. Gambar persegi', 'C. Gambar segitiga', 'D. Gambar jajar genjang', 'E. Gambar panah'],
        correctAnswer: 4,
        explanation: 'A, B, C, dan D adalah bentuk geometri dasar tertutup, sedangkan E (panah) adalah bentuk yang lebih kompleks dan memiliki arah.',
        difficulty: 'sulit',
        tkpWeights: null,
      ),
      model.Question(
        id: 14,
        category: 'TIU',
        subTopic: 'Figural',
        question: 'Manakah gambar selanjutnya dari seri gambar berikut? [Gambar seri rotasi]',
        options: ['A', 'B', 'C', 'D', 'E'],
        correctAnswer: 0,
        explanation: 'Setiap gambar dalam seri ini berputar 45 derajat searah jarum jam. Pilihan A adalah rotasi selanjutnya.',
        difficulty: 'sulit',
        tkpWeights: null,
      ),
      // TKP
      model.Question(
        id: 15,
        category: 'TKP',
        subTopic: 'Pelayanan Publik',
        question: 'Saat sedang sibuk, seorang warga datang meminta informasi yang sebenarnya bisa diakses online. Sikap Anda?',
        options: [
          'A. Memberitahunya dengan ketus bahwa informasi itu ada di website.',
          'B. Mengabaikannya karena Anda sedang banyak pekerjaan.',
          'C. Menyuruhnya bertanya kepada rekan kerja Anda yang lain.',
          'D. Meluangkan waktu sejenak untuk menjelaskan cara mengakses informasi di website.',
          'E. Memberikan informasi yang dia minta secara lengkap meskipun akan menyita waktu Anda.'
        ],
        correctAnswer: 3,
        explanation: 'Pilihan D menunjukkan sikap melayani yang baik tanpa mengorbankan seluruh waktu kerja. Pilihan E juga baik, tapi kurang efisien. Pilihan A, B, C menunjukkan kurangnya jiwa melayani.',
        difficulty: 'sedang',
        tkpWeights: [1, 2, 3, 5, 4],
      ),
      model.Question(
        id: 16,
        category: 'TKP',
        subTopic: 'Sosial Budaya',
        question: 'Anda ditempatkan di daerah yang memiliki budaya sangat berbeda dengan Anda. Apa yang Anda lakukan?',
        options: [
          'A. Meminta atasan untuk memindahkan Anda ke tempat lain.',
          'B. Bergaul hanya dengan orang-orang yang berasal dari daerah yang sama dengan Anda.',
          'C. Berusaha mempelajari dan beradaptasi dengan budaya setempat.',
          'D. Menganggap budaya Anda lebih baik dan tidak mau bergaul.',
          'E. Bersikap biasa saja dan tidak berusaha berinteraksi lebih dalam.'
        ],
        correctAnswer: 2,
        explanation: 'Kemampuan beradaptasi dengan lingkungan sosial budaya yang baru adalah kunci keberhasilan ASN. Pilihan C adalah yang paling tepat.',
        difficulty: 'sedang',
        tkpWeights: [1, 2, 5, 3, 4],
      ),
      model.Question(
        id: 17,
        category: 'TKP',
        subTopic: 'TIK',
        question: 'Instansi Anda menerapkan sistem kerja baru berbasis digital yang belum Anda kuasai. Tindakan Anda adalah...',
        options: [
          'A. Meminta rekan kerja untuk mengerjakan bagian Anda yang menggunakan sistem baru.',
          'B. Berpura-pura sudah paham dan mengerjakannya semampu Anda.',
          'C. Secara proaktif mengikuti pelatihan dan belajar mandiri untuk menguasai sistem tersebut.',
          'D. Mengeluh kepada atasan bahwa sistem baru ini menyusahkan.',
          'E. Menunggu perintah atasan untuk mengikuti pelatihan.'
        ],
        correctAnswer: 2,
        explanation: 'Inisiatif untuk belajar dan mengembangkan kemampuan TIK adalah cerminan profesionalisme. Pilihan C menunjukkan sikap proaktif dan bertanggung jawab.',
        difficulty: 'sedang',
        tkpWeights: [2, 3, 5, 1, 4],
      ),
      model.Question(
        id: 18,
        category: 'TKP',
        subTopic: 'Profesionalisme',
        question: 'Anda menemukan kesalahan dalam laporan yang dibuat oleh rekan kerja Anda dan akan segera dipresentasikan. Apa yang Anda lakukan?',
        options: [
          'A. Diam saja karena itu bukan tanggung jawab Anda.',
          'B. Melaporkannya langsung kepada atasan di depan semua orang.',
          'C. Memberitahu rekan Anda secara pribadi dan menawarkan bantuan untuk memperbaikinya.',
          'D. Menunggu sampai presentasi selesai dan baru memberitahukannya.',
          'E. Menyindirnya saat presentasi berlangsung agar dia menyadari kesalahannya.'
        ],
        correctAnswer: 2,
        explanation: 'Menjaga profesionalisme berarti bekerja sama untuk hasil terbaik. Memberitahu secara pribadi (C) adalah cara yang paling etis dan konstruktif.',
        difficulty: 'sedang',
        tkpWeights: [1, 3, 5, 2, 4],
      ),
       model.Question(
        id: 19,
        category: 'TKP',
        subTopic: 'Pelayanan Publik',
        question: 'Seorang lansia kesulitan mengisi formulir online di kantor Anda. Apa tindakan Anda?',
        options: [
          'A. Mengatakan bahwa sekarang semua serba online dan dia harus belajar.',
          'B. Memintanya untuk pulang dan meminta bantuan keluarganya.',
          'C. Dengan sabar, membimbing lansia tersebut langkah demi langkah.',
          'D. Mengambil alih dan mengisi formulir untuknya tanpa banyak bertanya.',
          'E. Menyarankannya untuk datang lagi lain kali saat tidak terlalu ramai.'
        ],
        correctAnswer: 2,
        explanation: 'Memberikan pelayanan prima kepada semua lapisan masyarakat, terutama kelompok rentan, adalah kewajiban. Pilihan C menunjukkan empati dan pelayanan yang tulus.',
        difficulty: 'sedang',
        tkpWeights: [1, 2, 5, 4, 3],
      ),
       model.Question(
        id: 20,
        category: 'TKP',
        subTopic: 'Profesionalisme',
        question: 'Atasan memberikan tugas yang tidak sesuai dengan keahlian Anda. Bagaimana Anda menanggapinya?',
        options: [
          'A. Langsung menolak karena bukan bidang Anda.',
          'B. Menerimanya dengan setengah hati dan mengerjakannya asal-asalan.',
          'C. Menyatakan terus terang bahwa itu bukan keahlian Anda, namun Anda bersedia mencoba dan belajar.',
          'D. Menerimanya dan meminta rekan kerja yang lebih ahli untuk mengerjakannya secara penuh.',
          'E. Menerimanya tanpa berkomentar dan berharap hasilnya akan bagus.'
        ],
        correctAnswer: 2,
        explanation: 'Seorang profesional harus jujur tentang kemampuannya, namun tetap menunjukkan kemauan untuk berkembang dan bertanggung jawab. Pilihan C adalah sikap yang paling profesional dan positif.',
        difficulty: 'sedang',
        tkpWeights: [1, 2, 5, 3, 4],
      ),
    ];

    final questionCompanions = questions.map((q) {
      return QuestionsTableCompanion.insert(
        category: q.category,
        subTopic: q.subTopic,
        question: q.question,
        options: q.options,
        correctAnswer: q.correctAnswer,
        explanation: q.explanation,
        difficulty: q.difficulty,
        tkpWeights: Value(q.tkpWeights),
      );
    }).toList();

    await batch((batch) {
      batch.insertAll(questionsTable, questionCompanions);
    });
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}