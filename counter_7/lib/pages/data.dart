import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/pages/tambahBudget.dart';
import 'package:counter_7/pages/data.dart';


class Data extends StatefulWidget {
    var myData;
    const Data({super.key, required this.myData});

    @override
    State<Data> createState() => _Data();
}

class _Data extends State<Data> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('My Data'),
            ),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        Text('Hello World!'),
                    ],
                ),
            ),
            drawer: Drawer(
      child: Column(
        children: [
          // Menambahkan clickable menu
          ListTile(
            title: const Text('counter_7'),
            onTap: () {
              // Route menu ke halaman utama
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage(title: "title")),
              );
            },
          ),
          ListTile(
            title: const Text('Tambah Budget'),
            onTap: () {
              // Route menu ke halaman form
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const TambahBudget()),
              );
            },
          ),
          ListTile(
            title: const Text('Data Budget'),
            onTap: () {
              // Route menu ke halaman form
              // Navigator.pushReplacement(
              //   context,
              //   MaterialPageRoute(builder: (context) => const Data(myData: widget.myData)),
              // );
            },
          ),
        ],
      ),
    ),
        );
    }
}