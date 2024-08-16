import 'package:get/get.dart';
import '../view/edashboard3_view.dart';

class Edashboard3Controller extends GetxController {
  Edashboard3View? view;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  List<Map<String, dynamic>> store = [
    {
      'title': 'Wisata Pantai Indah',
      'subtitle': 'Liburan Seru di Pinggir Laut',
      'message':
          'Nikmati liburan seru di pantai indah ini. Hamparan pasir putih, ombak yang tenang, dan pemandangan matahari terbenam yang menakjubkan. Jadikan momen ini tak terlupakan bersama keluarga dan teman-teman! 🌅',
      'photo': 'https://source.unsplash.com/random/101',
    },
    {
      'title': 'Kuliner Khas Lokal',
      'subtitle': 'Jelajahi Ragam Kuliner yang Lezat',
      'message':
          'Cicipi kelezatan kuliner khas lokal dengan berbagai varian rasa. Mulai dari makanan tradisional hingga hidangan modern, pasti akan memuaskan lidah Anda. Jangan lupa mencoba hidangan khas daerah ini! 🍜',
      'photo': 'https://source.unsplash.com/random/102',
    },
    {
      'title': 'Petualangan Alam Terbuka',
      'subtitle': 'Eksplorasi Alam dan Keindahan Alam Liar',
      'message':
          'Rasakan petualangan yang belum pernah Anda alami sebelumnya di alam terbuka ini. Jelajahi hutan, gunung, dan danau yang memukau. Temukan keindahan alam liar dan jauh dari hiruk-pikuk perkotaan! 🌳',
      'photo': 'https://source.unsplash.com/random/103',
    },
    {
      'title': 'Seni dan Budaya Lokal',
      'subtitle': 'Dalam Keindahan Seni dan Budaya Daerah Ini',
      'message':
          'Telusuri seni dan budaya lokal yang kaya akan sejarah dan tradisi. Kunjungi museum, galeri seni, dan acara budaya untuk mendapatkan pengalaman yang mendalam tentang warisan dan keunikan daerah ini! 🎨',
      'photo': 'https://source.unsplash.com/random/104',
    },
    {
      'title': 'Aktivitas Olahraga Seru',
      'subtitle': 'Tantang Adrenalin Anda dengan Aktivitas Olahraga',
      'message':
          'Jadikan liburan Anda lebih berwarna dengan mencoba berbagai aktivitas olahraga seru. Mulai dari selancar, panjat tebing, hingga menyelam. Temukan kegembiraan dan tantangan di setiap sudut! 🏄‍♂️',
      'photo': 'https://source.unsplash.com/random/105',
    },
    {
      'title': 'Kesenangan Malam Hari',
      'subtitle': 'Nikmati Kehangatan Malam dengan Hiburan Seru',
      'message':
          'Jelajahi kehidupan malam yang penuh warna dengan berbagai hiburan. Mulai dari restoran eksklusif, bar dengan live music, hingga pertunjukan seni jalanan. Malam Anda akan menjadi tak terlupakan! 🌃',
      'photo': 'https://source.unsplash.com/random/106',
    },
    {
      'title': 'Pasar Tradisional yang Ramai',
      'subtitle': 'Beli Oleh-oleh dan Kenali Keunikan Pasar Tradisional',
      'message':
          'Rasakan ramainya pasar tradisional dan nikmati berbelanja oleh-oleh khas daerah ini. Temukan berbagai produk unik dan handmade yang tak akan Anda temui di tempat lain. Jadikan pengalaman berbelanja Anda lebih berkesan! 🛍️',
      'photo': 'https://source.unsplash.com/random/107',
    },
    {
      'title': 'Tempat Bersejarah yang Menarik',
      'subtitle': 'Jelajahi Keindahan Tempat Bersejarah',
      'message':
          'Telusuri tempat bersejarah yang menyimpan kisah dan keindahan masa lalu. Kunjungi candi-candi, istana bersejarah, dan situs bersejarah lainnya. Lihatlah bagaimana warisan budaya terjaga dengan baik! 🏰',
      'photo': 'https://source.unsplash.com/random/108',
    },
    {
      'title': 'Komunitas Pecinta Alam',
      'subtitle': 'Bergabung dengan Komunitas Pecinta Alam Setempat',
      'message':
          'Jalin hubungan dengan komunitas pecinta alam setempat. Bergabunglah dalam kegiatan mereka, ikuti jejak-jejak alam, dan dapatkan pengalaman berharga bersama mereka. Nikmati kehangatan persaudaraan di alam terbuka! 🌿',
      'photo': 'https://source.unsplash.com/random/109',
    },
    {
      'title': 'Rekreasi Keluarga',
      'subtitle': 'Kebersamaan Keluarga di Tempat Rekreasi',
      'message':
          'Bawa keluarga Anda ke tempat rekreasi yang menawarkan kebersamaan dan keseruan. Mainkan permainan, nikmati wahana, dan ciptakan momen indah bersama keluarga tercinta. Jadikan liburan Anda lebih bermakna! 🎡',
      'photo': 'https://source.unsplash.com/random/110',
    },
  ];
}
