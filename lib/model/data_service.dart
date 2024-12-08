class ServiceData {
  String nama;
  String jasa;
  String location;
  String openDays;
  String openTimes;
  String description;
  String imageAsset;
  String rate;

  ServiceData(
      {required this.nama,
      required this.jasa,
      required this.location,
      required this.openDays,
      required this.openTimes,
      required this.description,
      required this.imageAsset,
      required this.rate});
}

var serviceDataList = [
  ServiceData(
      nama: "Rahman Kariadi",
      jasa: "Service AC",
      location: "Kota Pekanbaru",
      openDays: "Senin - Jumat",
      openTimes: "08:00 - 19:00",
      description:
          "Tim kami siap membantu dengan pengecekan menyeluruh, mulai dari pengisian freon, perbaikan kebocoran sistem, hingga pembersihan evaporator dan kondensor.Dengan teknologi terkini dan teknisi berpengalaman, kami menjamin kualitas terbaik untuk AC mobil Anda. Jangan biarkan masalah AC mengganggu kenyamanan berkendara Anda. Hubungi kami sekarang untuk mendapatkan layanan AC mobil terbaik dengan harga yang kompetitif.",
      imageAsset:
          "https://smb-padiumkm-images-public-prod.oss-ap-southeast-5.aliyuncs.com/product/image/05072023/647ff10870b64cf4bac969fd/64a4d429da115f14e1ed5ac8/b96f4a9fae0135160a87430169b9ac.png",
      rate: "4.9"),
  ServiceData(
      nama: "Fahmi Tukul",
      jasa: "Montir",
      location: "Kota Pekanbaru",
      openDays: "Senin - Jumat",
      openTimes: "10:00 - 17:00",
      description:
          "Layanan kami mencakup perbaikan mesin, pengecekan rem, pergantian oli, servis rutin, hingga penggantian komponen yang rusak. Apapun merek atau tipe mobil Anda, teknisi kami memiliki keahlian dan pengalaman untuk memberikan solusi terbaik. Kami menggunakan suku cadang berkualitas tinggi dan peralatan modern untuk setiap perbaikan. Pastikan keamanan dan kenyamanan Anda di jalan dengan mempercayakan kendaraan Anda kepada kami. Hubungi kami hari ini untuk layanan montir mobil terpercaya!",
      imageAsset:
          "https://fleetmaintenance.co.id/wp-content/uploads/2024/01/3-9.jpg",
      rate: "4.5"),
  ServiceData(
      nama: "Firman Ariadi",
      jasa: "Sedot WC",
      location: "Kota Pekanbaru",
      openDays: "Senin - Jumat",
      openTimes: "10:00 - 17:00",
      description:
          "ami menyediakan layanan sedot WC yang cepat, efisien, dan terpercaya untuk mengatasi masalah saluran pembuangan yang tersumbat atau penuh. Dengan menggunakan alat dan teknologi modern, tim ahli kami siap membantu membersihkan dan menguras WC, septic tank, serta saluran pembuangan lainnya dengan prosedur yang aman dan ramah lingkungan. Tim kami terlatih dan berpengalaman dalam menangani berbagai masalah saluran pembuangan, memastikan pekerjaan selesai tepat waktu tanpa menimbulkan gangguan pada aktivitas Anda. Kami siap melayani Anda kapan saja, bahkan di luar jam kerja, dengan harga yang bersaing.",
      imageAsset:
          "https://bekasi.media/wp-content/uploads/2023/11/Jasa-Sedot-Wc-Bekasi.jpeg",
      rate: "4.5"),
];
