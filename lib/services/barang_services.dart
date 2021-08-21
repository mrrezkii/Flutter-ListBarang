part of 'services.dart';

class BarangServices {
  static CollectionReference _barangCollection =
  FirebaseFirestore.instance.collection('barang');

  static Future<void> insertData(BarangModel barang) async {
    _barangCollection.doc(barang.id).set({
      'nama': barang.nama,
      'harga': barang.harga
    });
  }
}
