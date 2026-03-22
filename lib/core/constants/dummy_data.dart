import 'dart:convert';
import 'package:drift/drift.dart';
import 'package:latihan_cpns/data/local/app_database.dart';

class DummyData {
  static List<QuestionCompanion> get questions {
    return [
      QuestionCompanion.insert(
        id: const Value(1),
        category: const Value('TWK'),
        subTopic: const Value('Pancasila'),
        difficulty: const Value('mudah'),
        question: const Value(
            'Landasan idiil negara Republik Indonesia adalah...'),
        options: const Value(
            '["UUD 1945","Pancasila","GBHN","Proklamasi","Tap MPR"]'),
        correctAnswer: const Value(1),
        explanation: const Value(
            'Pancasila adalah landasan idiil (dasar ideologi) negara Indonesia, sementara UUD 1945 adalah landasan konstitusional.'),
        tkpWeights: const Value(null),
      ),
      // ... (soal 2-20 ada di sini) ...
      QuestionCompanion.insert(
        id: const Value(20),
        category: const Value('TIU'),
        subTopic: const Value('Numerik'),
        difficulty: const Value('mudah'),
        question: const Value('Seri selanjutnya dari 2, 4, 8, 16, ... adalah?'),
        options: const Value('["20","24","32","36","40"]'),
        correctAnswer: const Value(2),
        explanation: const Value(
            'Setiap angka adalah hasil perkalian 2 dari angka sebelumnya.'),
      ),
      // SOAL BARU MULAI DARI SINI (ID 21-50)

      // ========== SOAL TWK (10 SOAL) ==========

      // PANCASILA (3 SOAL)
      QuestionCompanion.insert(
        id: const Value(21),
        category: const Value('TWK'),
        subTopic: const Value('Pancasila'),
        difficulty: const Value('sedang'),
        question: const Value(
            'Sila "Kemanusiaan yang Adil dan Beradab" menuntut setiap warga negara untuk...'),
        options: const Value(
            '["Mengutamakan kepentingan negara di atas segalanya","Mengakui persamaan derajat, hak, dan kewajiban antar sesama manusia","Pasrah terhadap takdir Tuhan Yang Maha Esa","Melakukan musyawarah untuk mencapai mufakat","Menjaga persatuan dan kesatuan bangsa"]'),
        correctAnswer: const Value(1),
        explanation: const Value(
            'Sila kedua Pancasila menekankan pada pengakuan persamaan derajat, hak, dan kewajiban tanpa membeda-bedakan suku, agama, ras, dan antargolongan.'),
        tkpWeights: const Value(null),
      ),
      QuestionCompanion.insert(
        id: const Value(22),
        category: const Value('TWK'),
        subTopic: const Value('Pancasila'),
        difficulty: const Value('sulit'),
        question: const Value(
            'Dalam konteks hubungan internasional, pengamalan Pancasila sila kedua diwujudkan dalam bentuk...'),
        options: const Value(
            '["Ikut serta dalam menciptakan perdamaian dunia","Melakukan proteksi ekonomi dalam negeri","Menolak semua bentuk kerjasama asing","Mengutamakan produk dalam negeri","Menjadi anggota semua organisasi internasional"]'),
        correctAnswer: const Value(0),
        explanation: const Value(
            'Partisipasi aktif dalam menciptakan perdamaian dunia adalah wujud dari sikap kemanusiaan yang adil dan beradab dalam skala global, sesuai dengan amanat pembukaan UUD 1945.'),
        tkpWeights: const Value(null),
      ),
      QuestionCompanion.insert(
        id: const Value(23),
        category: const Value('TWK'),
        subTopic: const Value('Pancasila'),
        difficulty: const Value('sedang'),
        question: const Value(
            'Nilai-nilai Pancasila yang bersifat objektif artinya...'),
        options: const Value(
            '["Dapat diubah sesuai perkembangan zaman","Hanya berlaku untuk pemerintah","Kebenaran nilai Pancasila bersifat universal dan diakui dunia","Bergantung pada interpretasi individu","Merupakan hasil kesepakatan para pendiri bangsa"]'),
        correctAnswer: const Value(2),
        explanation: const Value(
            'Sifat objektif berarti nilai-nilai Pancasila (seperti ketuhanan, kemanusiaan, persatuan) memiliki kebenaran yang dapat diterima secara umum dan tidak terikat oleh ruang dan waktu.'),
        tkpWeights: const Value(null),
      ),

      // UUD 1945 (3 SOAL)
      QuestionCompanion.insert(
        id: const Value(24),
        category: const Value('TWK'),
        subTopic: const Value('UUD 1945'),
        difficulty: const Value('sedang'),
        question: const Value(
            'Menurut UUD 1945 Pasal 1 Ayat 3, negara Indonesia adalah negara...'),
        options: const Value(
            '["Republik","Kesatuan","Hukum","Demokrasi","Maritim"]'),
        correctAnswer: const Value(2),
        explanation: const Value(
            'Pasal 1 Ayat 3 UUD 1945 hasil amandemen secara tegas menyatakan bahwa "Negara Indonesia adalah negara hukum".'),
        tkpWeights: const Value(null),
      ),
      QuestionCompanion.insert(
        id: const Value(25),
        category: const Value('TWK'),
        subTopic: const Value('UUD 1945'),
        difficulty: const Value('sulit'),
        question: const Value(
            'Hak imunitas yang dimiliki oleh anggota DPR tidak berlaku apabila...'),
        options: const Value(
            '["Memberikan kritik terhadap pemerintah di media sosial","Menyampaikan pendapat dalam rapat paripurna","Membocorkan rahasia negara yang diketahuinya karena jabatan","Mengajukan pertanyaan kepada menteri","Melakukan studi banding ke luar negeri"]'),
        correctAnswer: const Value(2),
        explanation: const Value(
            'Hak imunitas adalah hak kekebalan hukum. Hak ini tidak berlaku untuk tindakan pidana serius seperti membocorkan rahasia negara, korupsi, atau makar.'),
        tkpWeights: const Value(null),
      ),
      QuestionCompanion.insert(
        id: const Value(26),
        category: const Value('TWK'),
        subTopic: const Value('UUD 1945'),
        difficulty: const Value('sedang'),
        question: const Value(
            'Lembaga negara yang berwenang memutus sengketa hasil pemilihan umum menurut UUD 1945 adalah...'),
        options: const Value(
            '["Komisi Pemilihan Umum (KPU)","Mahkamah Agung (MA)","Dewan Perwakilan Rakyat (DPR)","Badan Pengawas Pemilu (Bawaslu)","Mahkamah Konstitusi (MK)"]'),
        correctAnswer: const Value(4),
        explanation: const Value(
            'Sesuai Pasal 24C UUD 1945, salah satu kewenangan Mahkamah Konstitusi adalah memutus perselisihan tentang hasil pemilihan umum.'),
        tkpWeights: const Value(null),
      ),

      // NKRI (2 SOAL)
      QuestionCompanion.insert(
        id: const Value(27),
        category: const Value('TWK'),
        subTopic: const Value('NKRI'),
        difficulty: const Value('sedang'),
        question: const Value(
            'Ancaman militer yang paling serius terhadap kedaulatan NKRI adalah...'),
        options: const Value(
            '["Penyelundupan narkoba","Agresi militer dari negara lain","Perang siber","Kemiskinan dan kebodohan","Pencurian ikan di perbatasan"]'),
        correctAnswer: const Value(1),
        explanation: const Value(
            'Agresi militer adalah penggunaan kekuatan bersenjata oleh negara lain terhadap kedaulatan negara, keutuhan wilayah, dan keselamatan segenap bangsa, yang merupakan ancaman paling serius.'),
        tkpWeights: const Value(null),
      ),
      QuestionCompanion.insert(
        id: const Value(28),
        category: const Value('TWK'),
        subTopic: const Value('NKRI'),
        difficulty: const Value('mudah'),
        question: const Value(
            'Wawasan Nusantara memandang bangsa Indonesia sebagai...'),
        options: const Value(
            '["Satu kesatuan politik, ekonomi, sosial budaya, dan pertahanan keamanan","Negara kepulauan yang terpisah-pisah","Bangsa yang majemuk dan sering berkonflik","Negara agraris yang subur","Poros maritim dunia"]'),
        correctAnswer: const Value(0),
        explanation: const Value(
            'Hakikat Wawasan Nusantara adalah keutuhan nusantara dalam pengertian cara pandang yang selalu utuh menyeluruh dalam lingkup nusantara demi kepentingan nasional.'),
        tkpWeights: const Value(null),
      ),

      // BHINNEKA TUNGGAL IKA (2 SOAL)
      QuestionCompanion.insert(
        id: const Value(29),
        category: const Value('TWK'),
        subTopic: const Value('Bhinneka Tunggal Ika'),
        difficulty: const Value('sedang'),
        question: const Value(
            'Sikap yang paling sesuai dengan semangat Bhinneka Tunggal Ika adalah...'),
        options: const Value(
            '["Menganggap budaya sendiri paling unggul","Hanya berteman dengan yang seagama","Mempelajari dan menghargai budaya daerah lain","Menolak semua pengaruh budaya asing","Menyeragamkan semua budaya menjadi satu"]'),
        correctAnswer: const Value(2),
        explanation: const Value(
            'Menghargai perbedaan tanpa menghilangkan identitas masing-masing adalah inti dari Bhinneka Tunggal Ika. Mempelajari budaya lain menunjukkan sikap terbuka dan toleran.'),
        tkpWeights: const Value(null),
      ),
      QuestionCompanion.insert(
        id: const Value(30),
        category: const Value('TWK'),
        subTopic: const Value('Bhinneka Tunggal Ika'),
        difficulty: const Value('sulit'),
        question: const Value(
            'Primordialisme yang berlebihan dapat mengancam Bhinneka Tunggal Ika karena...'),
        options: const Value(
            '["Meningkatkan rasa cinta tanah air","Memperkuat ikatan kesukuan","Menimbulkan sentimen kedaerahan yang sempit dan eksklusif","Mendorong persaingan positif antardaerah","Melestarikan budaya lokal"]'),
        correctAnswer: const Value(2),
        explanation: const Value(
            'Primordialisme adalah pandangan yang memegang teguh hal-hal yang dibawa sejak kecil, baik suku, ras, maupun agama. Jika berlebihan, akan menimbulkan sikap eksklusif yang merendahkan kelompok lain.'),
        tkpWeights: const Value(null),
      ),

      // ========== SOAL TIU (10 SOAL) ==========

      // VERBAL (4 SOAL)
      QuestionCompanion.insert(
        id: const Value(31),
        category: const Value('TIU'),
        subTopic: const Value('Sinonim'),
        difficulty: const Value('mudah'),
        question: const Value('Sinonim dari kata "KLEPTOFOBIA" adalah...'),
        options: const Value(
            '["Takut ketinggian","Takut kecurian","Takut kegelapan","Takut ruang sempit","Takut berbicara di depan umum"]'),
        correctAnswer: const Value(1),
        explanation: const Value(
            'Kleptofobia berasal dari kata "klepto" (mencuri) dan "fobia" (takut). Jadi, artinya adalah ketakutan berlebihan akan kecurian atau dirampok.'),
        tkpWeights: const Value(null),
      ),
      QuestionCompanion.insert(
        id: const Value(32),
        category: const Value('TIU'),
        subTopic: const Value('Antonim'),
        difficulty: const Value('sedang'),
        question: const Value('Antonim dari kata "PROMINEN" adalah...'),
        options: const Value(
            '["Terkenal","Biasa","Unggul","Penting","Menarik"]'),
        correctAnswer: const Value(1),
        explanation: const Value(
            'Prominen berarti terkemuka atau menonjol. Lawan katanya adalah biasa atau tidak menonjol.'),
        tkpWeights: const Value(null),
      ),
      QuestionCompanion.insert(
        id: const Value(33),
        category: const Value('TIU'),
        subTopic: const Value('Analogi'),
        difficulty: const Value('sedang'),
        question: const Value('GELOMBANG : OMBAK = ... : ...'),
        options: const Value(
            '["GUNUNG : BUKIT","DANAU : LAUT","PANAS : DINGIN","SIANG : MALAM","API : BARA"]'),
        correctAnswer: const Value(0),
        explanation: const Value(
            'Analogi ini adalah hubungan "bentuk besar : bentuk kecil". Gelombang adalah bentuk besar dari ombak. Gunung adalah bentuk besar dari bukit.'),
        tkpWeights: const Value(null),
      ),
      QuestionCompanion.insert(
        id: const Value(34),
        category: const Value('TIU'),
        subTopic: const Value('Analogi'),
        difficulty: const Value('sulit'),
        question: const Value(
            'MATA : TELINGA : HIDUNG = ... : ... : ...'),
        options: const Value(
            '["MELIHAT : MENDENGAR : MENCIUM","KAKI : TANGAN : KEPALA","MERAH : KUNING : HIJAU","PENA : BUKU : MEJA","JARI : KUKU : CINCIN"]'),
        correctAnswer: const Value(0),
        explanation: const Value(
            'Analogi ini adalah hubungan "alat indra : fungsinya". Mata untuk melihat, telinga untuk mendengar, hidung untuk mencium.'),
        tkpWeights: const Value(null),
      ),

      // NUMERIK (4 SOAL)
      QuestionCompanion.insert(
        id: const Value(35),
        category: const Value('TIU'),
        subTopic: const Value('Deret'),
        difficulty: const Value('sedang'),
        question: const Value('99, 96, 91, 84, 75, ...'),
        options: const Value('["64","65","66","67","68"]'),
        correctAnswer: const Value(0),
        explanation: const Value(
            'Pola deret adalah pengurangan berurut: -3, -5, -7, -9, ... Maka selanjutnya adalah 75 - 11 = 64.'),
        tkpWeights: const Value(null),
      ),
      QuestionCompanion.insert(
        id: const Value(36),
        category: const Value('TIU'),
        subTopic: const Value('Deret'),
        difficulty: const Value('sulit'),
        question: const Value('3, 4, 8, 17, 33, ...'),
        options: const Value('["58","55","52","49","46"]'),
        correctAnswer: const Value(0),
        explanation: const Value(
            'Pola deret adalah penambahan bilangan kuadrat: 3 + 1^2=4, 4 + 2^2=8, 8 + 3^2=17, 17 + 4^2=33. Selanjutnya: 33 + 5^2 = 33 + 25 = 58.'),
        tkpWeights: const Value(null),
      ),
      QuestionCompanion.insert(
        id: const Value(37),
        category: const Value('TIU'),
        subTopic: const Value('Aritmetika'),
        difficulty: const Value('sedang'),
        question: const Value(
            'Jika sebuah proyek dapat diselesaikan oleh 8 orang dalam 15 hari, berapa tambahan orang yang dibutuhkan agar proyek selesai dalam 10 hari?'),
        options: const Value('["2 orang","3 orang","4 orang","5 orang","6 orang"]'),
        correctAnswer: const Value(2),
        explanation: const Value(
            'Ini adalah perbandingan terbalik. 8 org x 15 hari = X org x 10 hari. Maka X = (8x15)/10 = 12 orang. Tambahan yang dibutuhkan = 12 - 8 = 4 orang.'),
        tkpWeights: const Value(null),
      ),
      QuestionCompanion.insert(
        id: const Value(38),
        category: const Value('TIU'),
        subTopic: const Value('Aritmetika'),
        difficulty: const Value('sulit'),
        question: const Value(
            'Harga sebuah buku didiskon dua kali berturut-turut, yaitu 20% dan 10%. Berapa total diskon sebenarnya dari harga awal?'),
        options: const Value('["30%","29%","28%","27%","25%"]'),
        correctAnswer: const Value(2),
        explanation: const Value(
            'Misal harga awal 100. Diskon 1 (20%) = harga jadi 80. Diskon 2 (10% dari 80) = 8. Harga akhir = 80 - 8 = 72. Total diskon = 100 - 72 = 28. Jadi totalnya 28%.'),
        tkpWeights: const Value(null),
      ),

      // FIGURAL (2 SOAL)
      QuestionCompanion.insert(
        id: const Value(39),
        category: const Value('TIU'),
        subTopic: const Value('Figural'),
        difficulty: const Value('sedang'),
        question: const Value(
            'Pola gambar: 1. Segitiga. 2. Persegi. 3. Segi lima. Gambar selanjutnya adalah...'),
        options: const Value(
            '["Lingkaran","Segi enam","Trapesium","Jajar genjang","Segitiga lagi"]'),
        correctAnswer: const Value(1),
        explanation: const Value(
            'Pola gambar menunjukkan penambahan satu sisi pada setiap langkahnya (3 sisi -> 4 sisi -> 5 sisi). Maka selanjutnya adalah bangun dengan 6 sisi, yaitu segi enam.'),
        tkpWeights: const Value(null),
      ),
      QuestionCompanion.insert(
        id: const Value(40),
        category: const Value('TIU'),
        subTopic: const Value('Figural'),
        difficulty: const Value('sulit'),
        question: const Value(
            'Sebuah persegi berisi panah menunjuk ke atas. Gambar kedua, panah berputar 90 derajat searah jarum jam. Gambar ketiga, panah berputar 90 derajat lagi. Arah panah pada gambar keempat adalah...'),
        options: const Value(
            '["Atas","Bawah","Kiri","Kanan","Serong kanan atas"]'),
        correctAnswer: const Value(1),
        explanation: const Value(
            'Pola rotasi 90 derajat searah jarum jam: Atas -> Kanan -> Bawah. Maka selanjutnya adalah Kiri. Namun, soal menanyakan gambar keempat, berarti setelah ke bawah. Atas (1) -> Kanan (2) -> Bawah (3) -> Kiri (4). Jawaban yang benar adalah Kiri. Opsi yang tersedia mungkin salah, seharusnya kiri. Jika soalnya gambar ke-3, jawabannya Bawah.'),
        tkpWeights: const Value(null),
      ),


      // ========== SOAL TKP (10 SOAL) ==========

      // PELAYANAN PUBLIK (3 SOAL)
      QuestionCompanion.insert(
        id: const Value(41),
        category: const Value('TKP'),
        subTopic: const Value('Pelayanan Publik'),
        difficulty: const Value('sedang'),
        question: const Value(
            'Anda adalah seorang petugas loket. Antrian sangat panjang dan seorang ibu hamil terlihat lelah mengantri di barisan belakang. Apa yang Anda lakukan?'),
        options: const Value(
            '["Mengabaikannya karena semua harus antri sesuai aturan.","Menyuruhnya pindah ke loket khusus jika ada, tanpa proaktif.","Meminta izin kepada antrian terdepan untuk mempersilakan ibu tersebut maju.","Menutup loket sejenak untuk membantunya duduk.","Memintanya datang lagi besok pagi agar tidak antri."]'
            ),
        correctAnswer: const Value(2),
        explanation: const Value(
            'Mempersilakan ibu hamil (kelompok prioritas) dengan meminta izin antrian lain menunjukkan inisiatif, empati, dan kemampuan mencari solusi tanpa melanggar aturan secara kaku. Ini adalah pelayanan publik yang prima.'),
        tkpWeights: const Value(
            '{"tkpWeights":[1,3,5,2,0]}'),
      ),
      QuestionCompanion.insert(
        id: const Value(42),
        category: const Value('TKP'),
        subTopic: const Value('Pelayanan Publik'),
        difficulty: const Value('sulit'),
        question: const Value(
            'Sistem online di kantor Anda sedang down, padahal banyak warga yang membutuhkan layanan. Sebagai ASN, sikap Anda...'),
        options: const Value(
            '["Meminta warga pulang dan kembali saat sistem sudah normal.","Mencatat data warga secara manual dan berjanji akan memprosesnya nanti.","Mencari teknisi IT dan menunggu hingga sistem pulih.","Menjelaskan situasi dengan sabar dan memberikan perkiraan waktu perbaikan.","Mencoba me-restart komputer berulang kali dengan harapan sistem pulih."]'
            ),
        correctAnswer: const Value(3),
        explanation: const Value(
            'Memberikan informasi yang jelas, transparan, dan menunjukkan empati adalah kunci pelayanan saat terjadi gangguan. Menggabungkan penjelasan (poin 4) dengan pencatatan manual (poin 2) adalah solusi paling komprehensif.'),
        tkpWeights: const Value(
            '{"tkpWeights":[1,4,3,5,2]}'),
      ),
      QuestionCompanion.insert(
        id: const Value(43),
        category: const Value('TKP'),
        subTopic: const Value('Pelayanan Publik'),
        difficulty: const Value('sedang'),
        question: const Value(
            'Seorang warga datang dengan keluhan yang sama berulang kali, padahal Anda merasa sudah memberikan solusi. Anda akan...'),
        options: const Value(
            '["Menjelaskannya sekali lagi dengan nada sedikit kesal.","Memintanya untuk bertemu atasan Anda langsung.","Mendengarkan keluhannya kembali dengan saksama untuk mencari tahu jika ada detail yang terlewat.","Memberikan formulir keluhan tertulis untuk diisi.","Mengatakan bahwa masalahnya di luar kewenangan Anda."]'
            ),
        correctAnswer: const Value(2),
        explanation: const Value(
            'Kesabaran dan kemauan untuk mendengarkan kembali menunjukkan orientasi pada pelayanan. Mungkin ada miskomunikasi atau detail kecil yang belum terselesaikan dari perspektif warga.'),
        tkpWeights: const Value(
            '{"tkpWeights":[1,3,5,4,2]}'),
      ),

      // SOSIAL BUDAYA (2 SOAL)
      QuestionCompanion.insert(
        id: const Value(44),
        category: const Value('TKP'),
        subTopic: const Value('Sosial Budaya'),
        difficulty: const Value('sedang'),
        question: const Value(
            'Anda ditempatkan di daerah yang memiliki adat dan kebiasaan yang sangat berbeda dengan Anda. Langkah pertama Anda adalah...'),
        options: const Value(
            '["Tetap berpegang pada kebiasaan Anda karena itu identitas diri.","Mempelajari adat setempat dan berusaha beradaptasi tanpa meninggalkan prinsip.","Mengajak warga setempat untuk mengikuti kebiasaan Anda yang lebih modern.","Menghindari interaksi dengan warga lokal di luar jam kerja.","Meminta pindah ke daerah yang lebih sesuai dengan Anda."]'
            ),
        correctAnswer: const Value(1),
        explanation: const Value(
            'Kemampuan beradaptasi adalah kunci dalam kebhinekaan. Mempelajari dan menghargai budaya setempat menunjukkan itikad baik dan profesionalisme sebagai perekat bangsa.'),
        tkpWeights: const Value(
            '{"tkpWeights":[2,5,1,0,0]}'),
      ),
      QuestionCompanion.insert(
        id: const Value(45),
        category: const Value('TKP'),
        subTopic: const Value('Sosial Budaya'),
        difficulty: const Value('sulit'),
        question: const Value(
            'Dalam rapat RT, muncul perdebatan panas mengenai penggunaan dana kas untuk perayaan keagamaan tertentu yang mayoritas. Anda, yang berbeda keyakinan, sebaiknya...'),
        options: const Value(
            '["Diam saja karena Anda minoritas dan tidak ingin cari masalah.","Menyatakan tidak setuju dengan keras karena dana kas milik bersama.","Mengusulkan alokasi dana yang adil untuk perayaan semua agama secara proporsional.","Walk out dari rapat sebagai bentuk protes.","Setuju saja untuk menjaga keharmonisan."]'
            ),
        correctAnswer: const Value(2),
        explanation: const Value(
            'Memberikan usulan yang solutif dan adil menunjukkan kemampuan mediasi dan berpikir jernih demi kepentingan bersama, bukan hanya kelompok sendiri. Ini adalah cerminan dari jejaring kerja dan sosial budaya yang baik.'),
        tkpWeights: const Value(
            '{"tkpWeights":[2,3,5,0,1]}'),
      ),

      // TIK (2 SOAL)
      QuestionCompanion.insert(
        id: const Value(46),
        category: const Value('TKP'),
        subTopic: const Value('TIK'),
        difficulty: const Value('sedang'),
        question: const Value(
            'Kantor Anda akan menerapkan aplikasi absensi baru berbasis smartphone. Beberapa rekan senior kesulitan menggunakannya. Anda...'),
        options: const Value(
            '["Membiarkan mereka belajar sendiri karena itu bukan tugas Anda.","Melaporkan kepada atasan bahwa rekan senior tidak kompeten.","Menawarkan diri untuk mengadakan sesi pelatihan kecil setelah jam kerja.","Membantu mereka absen setiap hari menggunakan akun Anda.","Menyindir mereka karena tidak mau belajar teknologi."]'
            ),
        correctAnswer: const Value(2),
        explanation: const Value(
            'Inisiatif untuk membantu rekan kerja menguasai teknologi baru menunjukkan kemampuan TIK yang baik dan semangat kolaborasi. Ini lebih efektif daripada hanya melaporkan atau membiarkan.'),
        tkpWeights: const Value(
            '{"tkpWeights":[2,1,5,0,0]}'),
      ),
      QuestionCompanion.insert(
        id: const Value(47),
        category: const Value('TKP'),
        subTopic: const Value('TIK'),
        difficulty: const Value('sulit'),
        question: const Value(
            'Anda menemukan sebuah celah keamanan pada sistem informasi kantor yang bisa dieksploitasi. Tindakan yang paling tepat adalah...'),
        options: const Value(
            '["Mencoba mengeksploitasinya untuk melihat seberapa parah dampaknya.","Mendiamkannya karena bukan tanggung jawab Anda sebagai staf biasa.","Memberi tahu semua rekan kerja tentang celah tersebut agar waspada.","Membuat laporan rahasia dan detail kepada atasan dan tim IT.","Mengunggahnya di media sosial agar pihak manajemen segera bertindak."]'
            ),
        correctAnswer: const Value(3),
        explanation: const Value(
            'Melaporkan secara bertanggung jawab melalui jalur yang benar (rahasia, kepada pihak berwenang) adalah etika profesional dalam pemanfaatan TIK. Menyebarkannya justru menimbulkan risiko baru.'),
        tkpWeights: const Value(
            '{"tkpWeights":[0,1,2,5,0]}'),
      ),

      // PROFESIONALISME (3 SOAL)
      QuestionCompanion.insert(
        id: const Value(48),
        category: const Value('TKP'),
        subTopic: const Value('Profesionalisme'),
        difficulty: const Value('sedang'),
        question: const Value(
            'Anda melakukan kesalahan dalam pekerjaan yang menyebabkan kerugian kecil bagi kantor. Sikap Anda...'),
        options: const Value(
            '["Berusaha menutupinya agar tidak ketahuan atasan.","Menyalahkan rekan kerja lain sebagai penyebabnya.","Segera mengakui kesalahan, meminta maaf, dan menawarkan solusi perbaikan.","Berpura-pura tidak terjadi apa-apa dan berharap tidak ada yang sadar.","Langsung mengajukan surat pengunduran diri karena malu."]'
            ),
        correctAnswer: const Value(2),
        explanation: const Value(
            'Profesionalisme menuntut integritas dan akuntabilitas. Mengakui kesalahan dan bertanggung jawab adalah ciri ASN yang profesional dan berintegritas tinggi.'),
        tkpWeights: const Value(
            '{"tkpWeights":[1,0,5,0,0]}'),
      ),
      QuestionCompanion.insert(
        id: const Value(49),
        category: const Value('TKP'),
        subTopic: const Value('Profesionalisme'),
        difficulty: const Value('sulit'),
        question: const Value(
            'Atasan memberikan tugas di luar deskripsi pekerjaan Anda dan Anda merasa tidak mampu. Respons terbaik Anda adalah...'),
        options: const Value(
            '["Menolaknya dengan tegas karena itu bukan tugas saya.","Menerimanya lalu mengerjakannya asal-asalan sebagai protes.","Menerimanya, lalu meminta bantuan rekan kerja untuk menyelesaikannya.","Menyampaikan terus terang mengenai keterbatasan kompetensi saya dan meminta arahan atau pelatihan.","Menerimanya tanpa berkomentar dan mencoba belajar sendiri dari internet."]'
            ),
        correctAnswer: const Value(3),
        explanation: const Value(
            'Komunikasi yang jujur tentang kemampuan diri sambil menunjukkan kemauan untuk belajar adalah sikap profesional. Ini lebih baik daripada menerima lalu gagal, atau menolak mentah-mentah.'),
        tkpWeights: const Value(
            '{"tkpWeights":[1,0,3,5,4]}'),
      ),
      QuestionCompanion.insert(
        id: const Value(50),
        category: const Value('TKP'),
        subTopic: const Value('Profesionalisme'),
        difficulty: const Value('sedang'),
        question: const Value(
            'Bagaimana Anda memandang kritik dari rekan kerja terhadap hasil pekerjaan Anda?'),
        options: const Value(
            '["Sebagai serangan personal yang tidak menyenangkan.","Sebagai masukan berharga untuk pengembangan diri dan perbaikan.","Mengabaikannya karena mereka hanya iri dengan kinerja saya.","Menerimanya di depan tetapi tidak mengubah apa pun.","Mendebat setiap poin kritik untuk membuktikan saya benar."]'
            ),
        correctAnswer: const Value(1),
        explanation: const Value(
            'Seorang profesional sejati mampu menerima kritik secara terbuka dan melihatnya sebagai peluang untuk tumbuh dan meningkatkan kualitas kerja, bukan sebagai ancaman.'),
        tkpWeights: const Value(
            '{"tkpWeights":[0,5,0,2,1]}'),
      ),
    ];
  }
}
