
import 'package:counter_7/pages/Budget.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/pages/data.dart';
import 'package:counter_7/pages/tambahBudget.dart';
import 'package:counter_7/pages/watchlist.dart';

class HomeDrawer extends StatefulWidget {
    List<Budget> data;
    HomeDrawer({super.key, required this.data});

    @override
    State<HomeDrawer> createState() => _HomeDrawer();
}

class _HomeDrawer extends State<HomeDrawer> {
    @override
    Widget build(BuildContext context) {
        return Drawer(
          child: Column(
            children: [
              ListTile(
                title: const Text('counter_7'),
                onTap: () {
                  // Route menu ke halaman utama
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  MyHomePage(title: "Counter 7", data: widget.data,)),
                  );
                },
              ),

              ListTile(
                title: const Text('Tambah Budget'),
                onTap: () {
                  // Route menu ke halaman form
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => TambahBudget(data: widget.data)),
                  );
                },
              ),
              ListTile(
                title: const Text('Data Budget'),
                onTap: () {
                  // Route menu ke halaman Data
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => DataPage(data: widget.data)),
                  );
                },
              ),
              ListTile(
                title: const Text('My Watch List'),
                onTap: () {
                  // Route menu ke halaman Data
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => MyWatchList(data: widget.data)),
                  );
                },
              ),
            ],
          ),
        );

    }
}