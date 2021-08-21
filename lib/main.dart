import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:list_harga_barang/model/models.dart';
import 'package:list_harga_barang/services/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                  child: Text("Insert data"),
                  onPressed: () async {
                    await BarangServices.insertData(
                        BarangModel("2", "test", 9));
                  })
            ],
          ),
        ),
      ),
    );
  }
}

