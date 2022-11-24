import 'package:counter_7/pages/detailWatch.dart';
import 'package:counter_7/pages/drawe.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/model/mywatchlist.dart';


class MyWatchList extends StatefulWidget {
    var data;
    MyWatchList({Key? key, required this.data}) : super(key: key);

    @override
    _MyWatchListPage createState() => _MyWatchListPage();
}

class _MyWatchListPage extends State<MyWatchList> {
  Future<List<WatchList>> fetchWatchList() async {
        var url = Uri.parse('https://pbp-tugas-urip.herokuapp.com/mywatchlist/json/');
        var response = await http.get(
        url,
        headers: {
            "Access-Control-Allow-Origin": "*",
            "Content-Type": "application/json",
        },
        );

        // melakukan decode response menjadi bentuk json
        var data = jsonDecode(utf8.decode(response.bodyBytes));
        // melakukan konversi data json menjadi object ToDo
        List<WatchList> mywatch = [];
        for (var d in data) {
        if (d != null) {
            mywatch.add(WatchList.fromJson(d));
        }
        }
        return mywatch;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        title: const Text('My Watch List'),
    ),
    drawer: HomeDrawer(data: widget.data),
    body: FutureBuilder(
        future: fetchWatchList(),
        builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
            } else {
            if (!snapshot.hasData) {
                return Column(
                children: const [
                    Text(
                    "Tidak ada data My Watch List",
                    style: TextStyle(
                        color: Color(0xff59A5D8),
                        fontSize: 20),
                    ),
                    SizedBox(height: 8),
                ],
                );
            } else {
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (_, index) => GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailWatch(myWatch: snapshot.data![index], data: widget.data)));
                                }, 
                      child: Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 12),
                              padding: const EdgeInsets.all(20.0),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1,
                                      color: Colors.blue),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15.0)),
                              child: Row(children: [

                                Text("${snapshot.data![index].fields.title}",style: const TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                  ),
                              ]),
                )));
            }
            }
        }
    )
);
  }

}