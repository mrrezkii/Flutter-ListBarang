part of 'models.dart';

class BarangModel extends Equatable {
  late final String id;
  late final String nama;
  late final int harga;

  BarangModel(this.id, this.nama, this.harga);

  @override
  List<Object?> get props => [id, nama, harga];
}
