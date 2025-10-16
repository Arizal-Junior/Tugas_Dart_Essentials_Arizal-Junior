import 'dart:io';

Future<void> main() async {
  // Data diri
  String nama = "Arizal Junior";
  String nim = "23552011310";
  String jurusan = "Teknik Informatika";

  print("===== DATA DIRI =====");
  print("Nama     : $nama");
  print("NIM      : $nim");
  print("Jurusan  : $jurusan");

  // List mata kuliah
  List<String> mataKuliah = [
    "Bahasa Indonesia",
    "Intelegensi Buatan",
    "Keamanan Informasi",
    "Keamanan Jaringan",
    "Pemograman Mobile 2",
    "Pemograman Web 1",
    "Sistem Informasi Enterprise",
    "Sistem Mikroprosessor"
  ];

  // Input nilai harapan
  print("\n===== INPUT NILAI HARAPAN =====");
  Map<String, String> nilaiHarapan = {};

  for (var matkul in mataKuliah) {
    stdout.write("Harapan nilai untuk $matkul: ");
    String? nilai = stdin.readLineSync();
    nilaiHarapan[matkul] = nilai ?? "-";
  }

  // Tampilkan hasil input
  print("\n===== HASIL INPUT =====");
  nilaiHarapan.forEach((matkul, nilai) {
    print("$matkul : $nilai");
  });

  // Tampilkan kata motivasi (asynchronous)
  await kataMotivasi();
}

Future<void> kataMotivasi() async {
  await Future.delayed(Duration(seconds: 2));
  print("\n===== KATA MOTIVASI =====");
  print("Semoga aku bisa lulus tepat waktu dan pergi kemanapun yang aku mau, Aaminn");
}
