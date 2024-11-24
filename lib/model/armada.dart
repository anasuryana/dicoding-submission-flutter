class Armada {
  String name;
  String registrationNumber;
  String lastLocation;
  String description;
  String imageAsset;
  String contactNumber;
  List<String> lastTenDestionation;

  Armada({
    required this.name,
    required this.registrationNumber,
    required this.lastLocation,
    required this.description,
    required this.imageAsset,
    required this.contactNumber,
    required this.lastTenDestionation,
  });
}

var armadaList = [
  Armada(
      name: 'Los Bak',
      registrationNumber: 'B 1 RI',
      description: 'Armada Pertama Kita',
      lastLocation: 'Tukang Bubur Maya',
      imageAsset: 'images/mobil_bak.jpg',
      contactNumber: '0852-1848-1513',
      lastTenDestionation: ['PT. KKM', 'PT. MULYA', 'PT. BERSAMA MAJU']),
  Armada(
      name: 'Mobil Bok',
      registrationNumber: 'B 3 RI',
      description: 'Armada Kedua Kita',
      lastLocation: 'Masjid AT-TAQWA BPN CIKARANG',
      imageAsset: 'images/mobil_box.jpeg',
      contactNumber: '0852-1848-1513',
      lastTenDestionation: ['PT. MULYA', 'PT. BANSHU']),
];
