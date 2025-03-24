class Todo {
  final String id;
  final String kegiatan;
  final String keterangan;
  final DateTime tanggalMulai;
  final DateTime tanggalSelesai;
  final String kategori;

  Todo({
    required this.id,
    required this.kegiatan,
    required this.keterangan,
    required this.tanggalMulai,
    required this.tanggalSelesai,
    required this.kategori,
  });
}
