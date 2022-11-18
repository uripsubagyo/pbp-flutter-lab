import 'package:counter_7/pages/drawe.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/pages/tambahBudget.dart';
import 'package:counter_7/pages/data.dart';
import 'package:counter_7/pages/drawe.dart';

class DataPage extends StatefulWidget {
    var data;
    DataPage({super.key, required this.data});

    @override
    State<DataPage> createState() => _Data();
}

class _Data extends State<DataPage> {
    
    @override
    Widget build(BuildContext context) {
      List<Widget> mywidgets = [];
      for(var i = 0; i < widget.data.length; i++){
        mywidgets.add(Card(
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), boxShadow: [
            BoxShadow(
              // offset: Offset(0, 4),
              color: Color(0xFFF9D276), //edited
              spreadRadius: 1,
              blurRadius: 10 
            )
          ] 
            ),
            margin: EdgeInsets.only(right: 8,top: 8),
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                Row(children: [Text(widget.data[i].judul.toString(),
                style: TextStyle(fontWeight: FontWeight.bold),
                ),Spacer(), Text(widget.data[i].timeNow.toString(),)],),
                Row(children: [Text(widget.data[i].nominal.toString(),style: TextStyle(fontWeight: FontWeight.bold)),Spacer(), Text(widget.data[i].type.toString())],)
              ],
            ),
          )
        )
      );
      }

        return Scaffold(
            appBar: AppBar(
                title: Text('My Data'),
            ),
            body: Column(
            children: [
              if (widget.data == null)
                const Center(
                  child: Text("Data Kosong"),
                )
              else if (widget.data.length == 0)
                const Center(
                  child: Text("Data Kosong"),
                )
              else
                Container(
                  child: Column(children: mywidgets),
                )
                
        ],
      ),
            drawer: HomeDrawer(data:widget.data,),
        );
    }
}