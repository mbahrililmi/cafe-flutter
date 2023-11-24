class Cafe {
  String name;
  String location;
  String description;
  String openDays;
  String openTime;
  String ticketPrice;
  String imageAsset;
  List<String> imageUrls;

  Cafe({
    required this.name,
    required this.location,
    required this.description,
    required this.openDays,
    required this.openTime,
    required this.ticketPrice,
    required this.imageAsset,
    required this.imageUrls,
  });
}

var cafeList = [
  Cafe(
    name: 'Kopi Kreatif',
    location: 'Bandung',
    description:
        'Nikmati kopi berkualitas tinggi dan suasana yang nyaman di Kopi Kreatif. Terletak di pusat Bandung, tempat ini menawarkan pengalaman unik bagi pecinta kopi dengan berbagai varian rasa dan aroma kopi dari seluruh dunia.',
    openDays: 'Open Everyday',
    openTime: '08:00 - 22:00',
    ticketPrice: 'Rp 30000',
    imageAsset: 'images/1.jpg',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'
    ],
  ),
  Cafe(
    name: 'Caffeine Corner',
    location: 'Bandung',
    description:
        'Caffeine Corner adalah tempat yang cocok untuk para pecinta kopi. Dengan desain interior yang modern dan suasana yang tenang, Anda dapat menikmati berbagai jenis kopi spesial dan camilan lezat di sini.',
    openDays: 'Open Monday - Saturday',
    openTime: '07:00 - 20:00',
    ticketPrice: 'Rp 25000',
    imageAsset: 'images/2.jpg',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-o/12/6b/63/0b/bosscha-observatory.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-p/0d/6a/88/9b/photo3jpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/11/3f/04/39/p-20171111-110220-largejpg.jpg',
    ],
  ),
  Cafe(
     name: 'Bean Bliss',
    location: 'Bandung',
    description:
        'Rasakan kenikmatan kopi terbaik di Bean Bliss. Terletak di pusat kota Bandung, tempat ini menawarkan berbagai jenis kopi dari biji kopi pilihan. Suasana yang cozy membuat pengalaman minum kopi Anda menjadi lebih spesial.',
    openDays: 'Open Everyday',
    openTime: '09:00 - 18:00',
    ticketPrice: 'Rp 35000',
    imageAsset: 'images/3.jpg',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-o/0d/c2/e7/e6/quotes-kota-bandung.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/17/f4/44/01/jalan-asia-afrika.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-s/0a/ef/36/e2/jalan-asia-afrika.jpg',
    ],
  ),
  Cafe(
    name: 'Aroma Haven',
    location: 'Bandung',
    description:
        'Aroma Haven adalah tempat yang ideal untuk menikmati kopi terbaik di Bandung. Dengan berbagai pilihan kopi dan suasana yang tenang, tempat ini menjadi destinasi favorit para penikmat kopi.',
    openDays: 'Open Tuesday - Sunday',
    openTime: '10:00 - 21:00',
    ticketPrice: 'Rp 28000',
    imageAsset: 'images/4.jpg',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-o/15/01/d7/4b/p-20180510-153310-01.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/15/68/00/32/stone-garden-citatah.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/0d/a2/cb/05/stone-garden-citatah.jpg',
    ],
  ),
  Cafe(
    name: 'Mocha Moments',
    location: 'Bandung',
    description:
        'Nikmati momen spesial Anda dengan kopi terbaik di Mocha Moments. Tempat ini menawarkan suasana yang nyaman dan pilihan kopi yang memikat untuk menyempurnakan pengalaman kopi Anda.',
    openDays: 'Open Everyday',
    openTime: '08:00 - 19:00',
    ticketPrice: 'Rp 32000',
    imageAsset: 'images/5.jpg',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-o/08/8b/87/50/bandung-movie-park.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/17/67/d5/53/img-20190505-114509-largejpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/09/73/33/05/taman-film-pasopati.jpg',
    ],
  ),
  Cafe(
     name: 'Espresso Elegance',
    location: 'Bandung',
    description:
        'Espresso Elegance adalah destinasi terbaik bagi pencinta kopi. Dengan menu kopi yang beragam dan suasana yang elegan, tempat ini menjadi pilihan sempurna untuk menikmati kopi berkualitas di Bandung.',
    openDays: 'Open Monday - Friday',
    openTime: '07:30 - 17:00',
    ticketPrice: 'Rp 30000',
    imageAsset: 'images/6.jpg',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-w/19/1c/8e/f7/geology-museum.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/11/a7/35/b7/geology-museum.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-s/1a/55/e0/dc/geology-museum.jpg',
    ],
  ),
  Cafe(
   name: 'Café Delight',
    location: 'Bandung',
    description:
        'Café Delight adalah destinasi kopi yang menyajikan berbagai varian kopi dengan sentuhan unik. Suasana yang hangat dan penuh kenikmatan membuat setiap kunjungan menjadi pengalaman yang tak terlupakan.',
    openDays: 'Open Everyday',
    openTime: '10:00 - 22:00',
    ticketPrice: 'Rp 28000',
    imageAsset: 'images/7.jpg',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-o/17/f9/ff/f8/floating-market-bandung.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-p/1a/86/d3/cd/20200103-125059-largejpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-p/19/ce/b4/9b/img20181224120857-largejpg.jpg',
    ],
  ),
  Cafe(
    name: 'Kopi Indah',
    location: 'Bandung',
    description:
        'Kopi Indah adalah tempat yang sempurna untuk menikmati secangkir kopi yang lezat. Dengan desain yang instagramable dan pilihan kopi yang beragam, tempat ini menjadi favorit bagi penggemar kopi.',
    openDays: 'Open Tuesday - Sunday',
    openTime: '08:00 - 20:00',
    ticketPrice: 'Rp 32000',
    imageAsset: 'images/8.jpg',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-o/0b/6e/7c/ce/rocks-sticking-out-of.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-p/0b/35/30/14/white-crater.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/0a/8b/9a/79/2945-t00572-www-initempatwisat.jpg',
    ],
  ),
  Cafe(
     name: 'Rustic Roasters',
    location: 'Bandung',
    description:
        'Rustic Roasters adalah tempat kopi yang menawarkan kombinasi sempurna antara kenyamanan dan cita rasa kopi yang luar biasa. Nikmati suasana yang tenang sambil menikmati kopi berkualitas di sini.',
    openDays: 'Open Everyday',
    openTime: '09:00 - 18:00',
    ticketPrice: 'Rp 30000',
    imageAsset: 'images/9.jpg',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-o/1a/e0/7f/9c/kampung-cai-ranca-upas.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/13/ee/2f/87/ranca-upas.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/13/ee/27/0a/ranca-upas.jpg',
    ],
  ),
];
