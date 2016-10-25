# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

MuwashafatUser.delete_all
Muwashafat.delete_all
Muwashafat.create([
    {name: "Tidak berhubungan dengan jin", level: 0, category: 0},
    {name: "Tidak meminta tolong kepada orang yang berlindung kepada jin", level: 0, category: 0},
    {name: "Tidak meramal nasib dengan melihat telapak tangan", level: 0, category: 0},
    {name: "Tidak menghadiri majelis dukun dan peramal", level: 0, category: 0},
    {name: "Tidak meminta berkah dengan mengusap-usap kuburan", level: 0, category: 0},
    {name: "Tidak meminta tolong kepada orang yang telah dikubur (mati)", level: 0, category: 0},
    {name: "Tidak bersumpah dengan selain Allah swt", level: 0, category: 0},
    {name: "Tidak tasya'um (merasa sial karena melihat atau mendengar sesuatu)", level: 0, category: 0},
    {name: "Mengikhlaskan amal untuk Allah swt", level: 0, category: 0},
    {name: "Mengimani rukun iman", level: 0, category: 0},
    {name: "Beriman kepada nikmat dan siksa kubur", level: 0, category: 0},
    {name: "Mensyukuri nikmat Allah swt saat mendapatkan nikmat", level: 0, category: 0},
    {name: "Menjadikan setan sebagai musuh", level: 0, category: 0},
    {name: "Tidak mengikuti langkah-langkah setan", level: 0, category: 0},
    {name: "Menerima dan tunduk secara penuh kepada Allah swt dan tidak bertahkim selain yang diturunkan-Nya", level: 0, category: 0},
    {name: "Ihsan dalam Thaharah", level: 0, category: 1},
    {name: "Ihsan dalam shalat", level: 0, category: 1},
    {name: "Membayar zakat", level: 0, category: 1},
    {name: "Berpuasa fardhu", level: 0, category: 1},
    {name: "Niat melaksanakan haji", level: 0, category: 1},
    {name: "Komitmen dengan adab tilawah", level: 0, category: 1},
    {name: "Menjauhi dosa besar", level: 0, category: 1},
    {name: "Memenuhi nadzar", level: 0, category: 1},
    {name: "Menyebar luaskan salam", level: 0, category: 1},
    {name: "Menahan anggota tubuh dari segala yang haram", level: 0, category: 1},
    {name: "Tidak sungkan adzan", level: 0, category: 1},
    {name: "Bersemangat untuk shalat berjamaah", level: 0, category: 1},
    {name: "Qiyamul-Lain minimal sekali sepekan", level: 0, category: 1},
    {name: "Berpuasa sunnah minimal sehari dalam sebulan", level: 0, category: 1},
    {name: "Khusyu dalam membaca Al-Quran", level: 0, category: 1},
    {name: "Hafal satu juz Al-Quran", level: 0, category: 1},
    {name: "Komitmen dengan wirid tilawah harian", level: 0, category: 1},
    {name: "Berdoa pada waktu-waktu utama", level: 0, category: 1},
    {name: "Menutup hari-harinya dengan bertobat dan beristighfar", level: 0, category: 1},
    {name: "Berniat pada setiap melakukan perbuatan", level: 0, category: 1},
    {name: "Merutinkan dzikir pagi hari", level: 0, category: 1},
    {name: "Merutinkan dzikir sore hari", level: 0, category: 1},
    {name: "Dzikir kepada Allah swt dalam setiap keadaan", level: 0, category: 1},
    {name: "Beri'tikaf pada bulan Ramadhan, jika mungkin", level: 0, category: 1},
    {name: "Mempergunakan siwak", level: 0, category: 1},
    {name: "Senantiasa menjaga kondisi Thaharah, jika mungkin", level: 0, category: 1},
    {name: "Tidak takabur", level: 0, category: 2},
    {name: "Tidak Imma'ah (asal ikut, tidak punya prinsip)", level: 0, category: 2},
    {name: "Tidak dusta", level: 0, category: 2},
    {name: "Tidak mencaci maki", level: 0, category: 2},
    {name: "Tidak mengadu domba", level: 0, category: 2},
    {name: "Tidak ghibah", level: 0, category: 2},
    {name: "Tidak menjadikan orang buruk sebagai teman/sahabat", level: 0, category: 2},
    {name: "Memenuhi janji", level: 0, category: 2},
    {name: "Birrul walidain", level: 0, category: 2},
    {name: "Memiliki ghirah (rasa cemburu) pada keluarganya", level: 0, category: 2},
    {name: "Memiliki ghirah (rasa cemburu) pada agamanya", level: 0, category: 2},
    {name: "Tidak memotong pembicaraan orang lain", level: 0, category: 2},
    {name: "Tidak mencibir dengan isyarat apapun", level: 0, category: 2},
    {name: "Tidak menghina dan meremehkan orang lain", level: 0, category: 2},
    {name: "Menyayangi yang kecil", level: 0, category: 2},
    {name: "Menghormati yang besar", level: 0, category: 2},
    {name: "Menundukkan pandangan", level: 0, category: 2},
    {name: "Menyimpan rahasia", level: 0, category: 2},
    {name: "Menutupi dosa orang lain", level: 0, category: 2},
    {name: "Menjauhi sumber penghasil haram", level: 0, category: 3},
    {name: "Menjauhi riba", level: 0, category: 3},
    {name: "Menjauhi judi dengan segala macamnya", level: 0, category: 3},
    {name: "Menjauhi tindak penipuan", level: 0, category: 3},
    {name: "Membayar zakat", level: 0, category: 3},
    {name: "Tidak menunda dalam melaksanakan hak orang lain", level: 0, category: 3},
    {name: "Menabung, meskipun sedikit", level: 0, category: 3},
    {name: "Menjaga fasilitas umum", level: 0, category: 3},
    {name: "Menjaga fasilitas khusus", level: 0, category: 3},
    {name: "Baik dalam membaca dan menulis", level: 0, category: 4},
    {name: "Memperhatikan hukum-hukum tilawah", level: 0, category: 4},
    {name: "Mengkaji marhalah Makkiyah dan menguasai karakteristiknya", level: 0, category: 4},
    {name: "Mengenal 10 sahabat yang dijamin masuk surga", level: 0, category: 4},
    {name: "Mengetahui hukum thaharah", level: 0, category: 4},
    {name: "Mengetahui hukum shalat", level: 0, category: 4},
    {name: "Mengetahui hukum puasa", level: 0, category: 4},
    {name: "Menyadari adanya peperangan Zionisme terhadap Islam", level: 0, category: 4},
    {name: "Mengetahui ghazwul fikri", level: 0, category: 4},
    {name: "Mengetahui organisasi-organisasi terselubung", level: 0, category: 4},
    {name: "Mengetahui bahaya pembatasan kelahiran", level: 0, category: 4},
    {name: "Berpartisipasi dalam kerja-kerja jama'i", level: 0, category: 4},
    {name: "Tidak menerima suara-suara miring tentang kita", level: 0, category: 4},
    {name: "Membaca satu juz tafsir Al-Quran (juz 30)", level: 0, category: 4},
    {name: "Menghafalkan separuh Arba'in (1-20)", level: 0, category: 4},
    {name: "Menghafalkan 20 hadits pilihan dari Riyadhus-Shalihin", level: 0, category: 4},
    {name: "Membaca sesuatu yang di luar spesialisasinya 4 jam setiap pekan", level: 0, category: 4},
    {name: "Memperluas wawasan diri dengan sarana-sarana baru", level: 0, category: 4},
    {name: "Menjadi pendengar yang baik", level: 0, category: 4},
    {name: "Mengemukakan pendapatnya", level: 0, category: 4},
    {name: "Bersih badan", level: 0, category: 5},
    {name: "Bersih pakaian", level: 0, category: 5},
    {name: "Bersih tempat tinggal", level: 0, category: 5},
    {name: "Komitmen dengan olah raga 2 jam setiap pekan", level: 0, category: 5},
    {name: "Bangun sebelum fajar", level: 0, category: 5},
    {name: "Memperhatikan tata cara baca yang sehat", level: 0, category: 5},
    {name: "Mencabut diri dari merokok", level: 0, category: 5},
    {name: "Komitmen dengan adab makan dan minum sesuai dengan sunnah", level: 0, category: 5},
    {name: "Tidak berlebihan dalam begadang", level: 0, category: 5},
    {name: "Menghindari tempat-tempat kotor dan polusi", level: 0, category: 5},
    {name: "Menghindari tempat-tempat bencana (bila masih di luar area)", level: 0, category: 5},
    {name: "Menjauhi segala yang haram", level: 0, category: 6},
    {name: "Menjauhi tempat-tempat maksiat", level: 0, category: 6},
    {name: "Menjauhi tempat-tempat bermain yang haram", level: 0, category: 6},
    {name: "Tidak menjalin hubungan dengan lembaga-lembaga yang menentang Islam", level: 0, category: 7},
    {name: "Memperbaiki penampilannya", level: 0, category: 7},
    {name: "Bangun pagi", level: 0, category: 8},
    {name: "Menghabiskan waktu untuk belajar", level: 0, category: 8},
    {name: "Melaksanakan hak kedua orang tua", level: 0, category: 9},
    {name: "Membantu yang membutuhkan", level: 0, category: 9},
    {name: "Memberi petunjuk orang tersesat", level: 0, category: 9},
    {name: "Ikut berpartisipasi dalam kegembiraan", level: 0, category: 9},
    {name: "Menikah dengan pasangan yang sesuai", level: 0, category: 9}
  ])



