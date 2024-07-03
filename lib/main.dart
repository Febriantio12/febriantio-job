import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daftar Mahasiswa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Map<String, String>> mahasiswa = [
    {'nama': 'Awan Restu Listiyanto', 'nim': 'STI202102395'},
    {'nama': 'Agus Priyanto', 'nim': 'STI202102397'},
    {'nama': 'Febriantio', 'nim': 'STI202102399'},
    {'nama': 'Sri Mulyaningsih', 'nim': 'STI202102401'},
    {'nama': 'Ade Firmansyah', 'nim': 'STI202102402'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Mahasiswa'),
      ),
      body: ListView.builder(
        itemCount: mahasiswa.length,
        itemBuilder: (context, index) {
          return Container(
            color: mahasiswa[index]['nama'] == 'Febriantio'
                ? Colors.green
                : Colors.transparent,
            child: ListTile(
              title: Text(mahasiswa[index]['nama']!),
              subtitle: Text('NIM: ${mahasiswa[index]['nim']}'),
            ),
          );
        },
      ),
    );
  }
}
