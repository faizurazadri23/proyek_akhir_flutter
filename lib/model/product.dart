class Product {
  String productName;
  String imageProduct;
  String description;
  String priceProduct;

  Product({
    required this.productName,
    required this.imageProduct,
    required this.description,
    required this.priceProduct,
  });
}

var productList = [
  Product(
      productName: 'Rendang',
      imageProduct: 'images/product_rendang.webp',
      description:
          'Masakan khas Padang yang pertama adalah rendang Kuliner tradisional khas Padang ini pernah dinobatkan sebagai makanan terlezat di dunia oleh CNN. Kelezatan dari daging sapi yang dimasak dengan campuran bumbu dan rempah ini tentu tak perlu lagi diragukan kelezatannya.',
      priceProduct: 'Rp 120.000'),
  Product(
      productName: 'Sate Padang',
      imageProduct: 'images/product_sate.jpg',
      description:
          'Masakan khas Padang yang berikutnya adalah sate padang. Sate khas Padang adalah kuliner tradisional ranah minang selanjutnya yang tak kalah populer. Terbuat dari daging sapi dan terkadang dikombinasikan dengan usus dan lidah, makanan khas Padang ini disajikan dengan siraman saus kuah sate padang kekuningan gurih yang kaya akan rempah.',
      priceProduct: 'Rp 25.000'),
  Product(
      productName: 'Dendeng Balado',
      imageProduct: 'images/product_dendeng_balado.jpg',
      description:
          'Masakan khas Padang yang berikutnya adalah dendeng balado. Dendeng adalah daging sapi yang dikeringkan sebagai metode pengawetan. Oleh masyarakat Minang, dendeng ini diolah dengan bumbu balado pedas yang sangat cocok untuk Anda penggemar kuliner dengan cita rasa yang pedas.',
      priceProduct: 'Rp 35.000'),
  Product(
      productName: 'Dendeng Batokok',
      imageProduct: 'images/product_dendeng_batokok.jpg',
      description:
          'Selain diolah dengan olahan bumbu balado yang terkenal, masih ada masakan khas Padang lainnya yang diolah dari dendeng yang tak kalah lezat, yaitu dendeng Batokok. Kuliner tradisional Padang ini diolah dengan cara dipukul yang dalam bahasa setempat disebut batokok.',
      priceProduct: 'Rp 32.000'),
  Product(
      productName: 'Soto Padang',
      imageProduct: 'images/product_soto_padang.jpeg',
      description:
          'Kebanyakan hampir di setiap daerah di Indonesia memiliki kuliner soto dengan jenisnya masing-masing, tak terkecuali juga soto padang. Masakan khas Padang satu ini terbuat dari irisan daging sapi dan memiliki cita rasa gurih yang khas. Tentu tak akan lengkap ke Padang tanpa mencicipi kuliner khas Padang berkuah satu ini.',
      priceProduct: 'Rp 25.000'),
  Product(
      productName: 'Gulai Itiak',
      imageProduct: 'images/product_gulai_itiak.jpg',
      description:
          'Jika Anda seorang penggemar kuliner lezat yang terbuat dari bebek, maka masakan khas Padang yang satu ini harus dicoba. Gulai itiak kaya akan bumbu, daging bebek ini tak hanya gurih tapi juga jauh dari aroma amis khas bebek.',
      priceProduct: 'Rp 25.000'),
  Product(
      productName: 'Gulai Tauco',
      imageProduct: 'images/product_gulai_toco.jpg',
      description:
          'Selain itik yang menjadi bahan dasar gulai khas masakan Padang, masakan khas Padang berikut ini yaitu gulai tauco juga tak kalah lezat. Gulai tauco terbuat dari tauco yang dikombinasikan dengan berbagai rempah-rempah khas makanan Padang. Irisan buncis, tahu, dan udang juga melengkapi makanan lezat asal Padang ini.',
      priceProduct: 'Rp 25.000'),
  Product(
      productName: 'Cancang',
      imageProduct: 'images/product_cancang.jpeg',
      description:
          'Masakan khas Padang yang selanjutnya dinamakan dengan cancang. Cancang adalah olahan daging kambing yang dipotong dadu dan dimasak dengan rempah serta santan yang memiliki cita rasa pedas. Cocok untuk Anda penggemar masakan olahan daging kambing.',
      priceProduct: 'Rp 27.000'),
];
