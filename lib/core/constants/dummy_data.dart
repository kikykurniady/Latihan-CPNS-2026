import 'dart:convert';
import 'package:drift/drift.dart';
import 'package:latihan_cpns/data/local/app_database.dart';

// This file contains the dummy data for the questions.
// The data is converted into QuestionCompanion objects to be inserted into the database.

class DummyData {
  static List<QuestionCompanion> get questions {
    return [
      // TWK
      QuestionCompanion.insert(
        id: const Value(1),
        category: const Value('TWK'),
        subTopic: const Value('Pancasila'),
        difficulty: const Value('mudah'),
        question:
            const Value('Landasan idiil negara Republik Indonesia adalah...'),
        options: const Value(
            '["UUD 1945","Pancasila","GBHN","Proklamasi","Tap MPR"]'),
        correctAnswer: const Value(1),
        explanation: const Value(
            'Pancasila adalah landasan idiil (dasar ideologi) negara Indonesia, sementara UUD 1945 adalah landasan konstitusional.'),
      ),
      QuestionCompanion.insert(
        id: const Value(2),
        category: const Value('TWK'),
        subTopic: const Value('UUD 1945'),
        difficulty: const Value('sedang'),
        question: const Value(
            'Amandemen UUD 1945 yang pertama kali dilakukan pada tahun...'),
        options: const Value('["1998","1999","2000","2001","2002"]'),
        correctAnswer: const Value(1),
        explanation: const Value(
            'Amandemen pertama UUD 1945 disahkan pada Sidang Umum MPR tanggal 19 Oktober 1999.'),
      ),
      QuestionCompanion.insert(
        id: const Value(3),
        category: const Value('TWK'),
        subTopic: const Value('Nasionalisme'),
        difficulty: const Value('sulit'),
        question: const Value(
            'Sumpah Pemuda dicetuskan pada tanggal 28 Oktober 1928 di...'),
        options: const Value(
            '["Bandung","Surabaya","Yogyakarta","Jakarta","Semarang"]'),
        correctAnswer: const Value(3),
        explanation: const Value(
            'Kongres Pemuda Kedua yang menghasilkan Sumpah Pemuda diselenggarakan di Batavia (sekarang Jakarta).'),
      ),
      QuestionCompanion.insert(
        id: const Value(4),
        category: const Value('TWK'),
        subTopic: const Value('Integritas'),
        difficulty: const Value('sedang'),
        question: const Value(
            'Berikut ini yang bukan merupakan pilar integritas adalah...'),
        options: const Value(
            '["Jujur","Tanggung Jawab","Disiplin","Kekayaan","Adil"]'),
        correctAnswer: const Value(3),
        explanation: const Value(
            'Pilar integritas meliputi jujur, tanggung jawab, disiplin, mandiri, kerja keras, sederhana, berani, peduli, dan adil. Kekayaan tidak termasuk di dalamnya.'),
      ),
      QuestionCompanion.insert(
        id: const Value(5),
        category: const Value('TWK'),
        subTopic: const Value('Bela Negara'),
        difficulty: const Value('mudah'),
        question: const Value(
            'Sikap dan perilaku warga negara yang dijiwai oleh kecintaannya kepada NKRI disebut...'),
        options: const Value(
            '["Nasionalisme","Patriotisme","Bela Negara","Chauvinisme","Separatisme"]'),
        correctAnswer: const Value(2),
        explanation: const Value(
            'Definisi tersebut merupakan pengertian dari Bela Negara sesuai dengan UU No. 3 Tahun 2002.'),
      ),

      // TIU
      QuestionCompanion.insert(
        id: const Value(6),
        category: const Value('TIU'),
        subTopic: const Value('Verbal'),
        difficulty: const Value('mudah'),
        question: const Value('Antonim dari kata "PROMINEN" adalah...'),
        options: const Value('["Terkenal","Biasa","Unggul","Menonjol","Penting"]'),
        correctAnswer: const Value(1),
        explanation: const Value(
            'Prominen berarti menonjol atau terkenal. Antonimnya adalah biasa.'),
      ),
      QuestionCompanion.insert(
        id: const Value(7),
        category: const Value('TIU'),
        subTopic: const Value('Verbal'),
        difficulty: const Value('sedang'),
        question: const Value('Analogi: GUDANG : BARANG :: ... : ...'),
        options: const Value(
            '["Bank : Uang","Buku : Halaman","Rumah : Atap","Laci : Meja","Pohon : Buah"]'),
        correctAnswer: const Value(0),
        explanation: const Value(
            'Gudang adalah tempat menyimpan barang. Analogi yang paling sesuai adalah Bank tempat menyimpan uang.'),
      ),
      QuestionCompanion.insert(
        id: const Value(8),
        category: const Value('TIU'),
        subTopic: const Value('Numerik'),
        difficulty: const Value('sedang'),
        question: const Value(
            'Jika 5 pekerja dapat menyelesaikan proyek dalam 12 hari, berapa hari yang dibutuhkan 3 pekerja untuk menyelesaikan proyek yang sama?'),
        options: const Value('["15","18","20","22","25"]'),
        correctAnswer: const Value(2),
        explanation: const Value(
            'Ini adalah perbandingan terbalik. (5 * 12) = (3 * x) => 60 = 3x => x = 20 hari.'),
      ),
      QuestionCompanion.insert(
        id: const Value(9),
        category: const Value('TIU'),
        subTopic: const Value('Numerik'),
        difficulty: const Value('sulit'),
        question: const Value(
            'Sebuah mobil menempuh jarak 120 km dengan kecepatan 80 km/jam. Jika mobil tersebut kembali dengan kecepatan 60 km/jam, berapa waktu tempuh totalnya?'),
        options: const Value(
            '["3 jam","3,5 jam","4 jam","4,5 jam","5 jam"]'),
        correctAnswer: const Value(1),
        explanation: const Value(
            'Waktu pergi = 120/80 = 1,5 jam. Waktu kembali = 120/60 = 2 jam. Total waktu = 1,5 + 2 = 3,5 jam.'),
      ),
      QuestionCompanion.insert(
        id: const Value(10),
        category: const Value('TIU'),
        subTopic: const Value('Figural'),
        difficulty: const Value('mudah'),
        question: const Value(
            'Manakah gambar yang berbeda dari yang lain?'),
        options: const Value(
            '["A. Segitiga","B. Lingkaran","C. Persegi","D. Jajar Genjang","E. Trapesium"]'),
        correctAnswer: const Value(1),
        explanation: const Value(
            'Lingkaran adalah satu-satunya gambar yang tidak memiliki sudut.'),
      ),
      QuestionCompanion.insert(
        id: const Value(11),
        category: const Value('TIU'),
        subTopic: const Value('Numerik'),
        difficulty: const Value('sedang'),
        question:
            const Value('Seri angka: 1, 4, 9, 16, 25, ... Angka selanjutnya?'),
        options: const Value('["30","32","36","40","49"]'),
        correctAnswer: const Value(2),
        explanation:
            const Value('Ini adalah deret kuadrat sempurna (1^2, 2^2, 3^2, dst.). Selanjutnya adalah 6^2 = 36.'),
      ),
      QuestionCompanion.insert(
        id: const Value(12),
        category: const Value('TIU'),
        subTopic: const Value('Verbal'),
        difficulty: const Value('mudah'),
        question: const Value('Sinonim dari kata "MITIGASI" adalah...'),
        options: const Value(
            '["Pencegahan","Peningkatan","Pengurangan","Percepatan","Penambahan"]'),
        correctAnswer: const Value(2),
        explanation: const Value(
            'Mitigasi berarti serangkaian upaya untuk mengurangi risiko bencana.'),
      ),
      QuestionCompanion.insert(
        id: const Value(13),
        category: const Value('TIU'),
        subTopic: const Value('Numerik'),
        difficulty: const Value('sulit'),
        question: const Value(
            'Harga sebuah buku didiskon 20% menjadi Rp 48.000. Berapa harga aslinya?'),
        options: const Value(
            '["Rp 50.000","Rp 55.000","Rp 60.000","Rp 64.000","Rp 70.000"]'),
        correctAnswer: const Value(2),
        explanation: const Value(
            'Harga asli = Harga setelah diskon / (1 - persentase diskon) = 48.000 / (1 - 0.20) = 48.000 / 0.80 = Rp 60.000.'),
      ),
      QuestionCompanion.insert(
        id: const Value(14),
        category: const Value('TIU'),
        subTopic: const Value('Figural'),
        difficulty: const Value('sulit'),
        question: const Value(
            'Perhatikan seri gambar berikut. Manakah gambar selanjutnya? [Disini ada gambar seri rotasi objek]'),
        options: const Value('["A","B","C","D","E"]'),
        correctAnswer: const Value(0),
        explanation: const Value(
            'Setiap gambar dalam seri ini berputar 45 derajat searah jarum jam. Pilihan A adalah rotasi selanjutnya.'),
      ),
      QuestionCompanion.insert(
        id: const Value(20),
        category: const Value('TIU'),
        subTopic: const Value('Numerik'),
        difficulty: const Value('mudah'),
        question: const Value('Seri selanjutnya dari 2, 4, 8, 16, ... adalah?'),
        options: const Value('["20","24","32","36","40"]'),
        correctAnswer: const Value(2),
        explanation: const Value(
            'Ini adalah deret geometri dengan rasio 2. Angka selanjutnya adalah 16 * 2 = 32.'),
      ),

      // TKP
      QuestionCompanion.insert(
          id: const Value(15),
          category: const Value('TKP'),
          subTopic: const Value('Pelayanan Publik'),
          difficulty: const Value('sedang'),
          question: const Value(
              'Saat sedang sibuk, seorang warga datang meminta informasi yang sebenarnya bisa diakses online. Sikap Anda?'),
          options: const Value(
              '["A. Memberitahunya dengan ketus bahwa informasi itu ada di website.","B. Mengabaikannya karena Anda sedang banyak pekerjaan.","C. Menyuruhnya bertanya kepada rekan kerja Anda yang lain.","D. Meluangkan waktu sejenak untuk menjelaskan cara mengakses informasi di website.","E. Memberikan informasi yang dia minta secara lengkap meskipun akan menyita waktu Anda."]'),
          correctAnswer: const Value(3),
          explanation: const Value(
              'Melayani publik adalah tugas utama. Pilihan D menunjukkan sikap melayani tanpa mengorbankan seluruh waktu kerja. Ini adalah keseimbangan antara pelayanan dan tanggung jawab pekerjaan.'),
          tkpWeights: const Value('[1, 2, 3, 5, 4]')),
      QuestionCompanion.insert(
          id: const Value(16),
          category: const Value('TKP'),
          subTopic: const Value('Sosial Budaya'),
          difficulty: const Value('sedang'),
          question: const Value(
              'Anda ditempatkan di daerah yang memiliki budaya sangat berbeda dengan Anda. Bagaimana Anda bersikap?'),
          options: const Value(
              '["A. Tetap memegang teguh budaya sendiri tanpa mau tahu budaya lokal.","B. Merasa tidak nyaman dan meminta pindah.","C. Berusaha mempelajari dan beradaptasi dengan budaya setempat.","D. Hanya bergaul dengan orang-orang yang berasal dari daerah yang sama.","E. Mengkritik budaya setempat yang menurut Anda aneh."]'),
          correctAnswer: const Value(2),
          explanation: const Value(
              'Kemampuan beradaptasi dengan lingkungan sosial budaya yang baru adalah kunci keberhasilan ASN. Pilihan C adalah yang paling tepat.'),
          tkpWeights: const Value('[1, 2, 5, 3, 4]')),
      QuestionCompanion.insert(
          id: const Value(17),
          category: const Value('TKP'),
          subTopic: const Value('TIK'),
          difficulty: const Value('sedang'),
          question: const Value(
              'Instansi Anda menerapkan sistem kerja baru berbasis digital yang belum Anda kuasai. Tindakan Anda adalah...'),
          options: const Value(
              '["A. Meminta rekan kerja untuk mengerjakan bagian Anda yang menggunakan sistem baru.","B. Berpura-pura sudah paham dan mengerjakannya semampu Anda.","C. Secara proaktif mengikuti pelatihan dan belajar mandiri untuk menguasai sistem tersebut.","D. Mengeluh kepada atasan bahwa sistem baru ini menyusahkan.","E. Menunggu perintah atasan untuk mengikuti pelatihan."]'),
          correctAnswer: const Value(2),
          explanation: const Value(
              'Inisiatif dan kemauan belajar (proaktif) adalah kunci dalam menghadapi perubahan teknologi (TIK). Pilihan C menunjukkan nilai tertinggi.'),
          tkpWeights: const Value('[1, 2, 5, 3, 4]')),
      QuestionCompanion.insert(
          id: const Value(18),
          category: const Value('TKP'),
          subTopic: const Value('Jejaring Kerja'),
          difficulty: const Value('sedang'),
          question: const Value(
              'Anda melihat rekan kerja melakukan kesalahan yang dapat merugikan instansi. Apa yang Anda lakukan?'),
          options: const Value(
              '["A. Melaporkannya langsung ke atasan.","B. Mendiamkannya karena bukan urusan Anda.","C. Memberitahunya secara pribadi dan menyarankan perbaikan.","D. Membicarakannya dengan rekan kerja yang lain.","E. Menegurnya dengan keras di depan umum."]'),
          correctAnswer: const Value(2),
          explanation: const Value(
              'Menjaga profesionalisme berarti bekerja sama untuk hasil terbaik. Memberitahu secara pribadi (C) adalah cara yang paling etis dan konstruktif.'),
          tkpWeights: const Value('[1, 3, 5, 2, 4]')),
      QuestionCompanion.insert(
          id: const Value(19),
          category: const Value('TKP'),
          subTopic: const Value('Pelayanan Publik'),
          difficulty: const Value('sulit'),
          question: const Value(
              'Seorang lansia kesulitan mengisi formulir online di kantor Anda. Apa tindakan Anda?'),
          options: const Value(
              '["A. Mengatakan bahwa sekarang semua serba online dan dia harus belajar.","B. Memintanya untuk pulang dan meminta bantuan keluarganya.","C. Dengan sabar, membimbing lansia tersebut langkah demi langkah.","D. Mengambil alih dan mengisi formulir untuknya tanpa banyak bertanya.","E. Menyarankannya untuk datang lagi lain kali saat tidak terlalu ramai."]'),
          correctAnswer: const Value(2),
          explanation: const Value(
              'Memberikan pelayanan prima, terutama kepada kelompok rentan seperti lansia, adalah prioritas. Pilihan C menunjukkan empati dan pelayanan yang tulus.'),
          tkpWeights: const Value('[1, 2, 5, 4, 3]')),
    ];
  }
}
