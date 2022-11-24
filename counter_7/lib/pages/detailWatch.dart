import 'package:counter_7/model/mywatchlist.dart';
import 'package:counter_7/pages/drawe.dart';
import 'package:counter_7/pages/watchlist.dart';
import 'package:flutter/material.dart';


class DetailWatch extends StatefulWidget {
  DetailWatch({super.key, required this.myWatch, required this.data});

  final WatchList myWatch;
  var data;

  @override
  State<DetailWatch> createState() => _DetailWatch();
}

class _DetailWatch extends State<DetailWatch> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Your Watch")),
      drawer: HomeDrawer(data: widget.data),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
            Text("${widget.myWatch.fields.title}",style: const TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            )),
            SizedBox(height: 20,),
            Row(children: [
                Text("Release Date : ", style: const TextStyle(
              
              fontWeight: FontWeight.bold,
            )),
                Text("${widget.myWatch.fields.releaseDate}")
              ],),
            SizedBox(height: 5,),
            Row(children: [
                Text("Rating : ", style: const TextStyle(
              
              fontWeight: FontWeight.bold,
            )),
                Text("${widget.myWatch.fields.rating}/5")
              ],),
            SizedBox(height: 5,),
            Row(children: [
                Text("Status : ", style: const TextStyle(
              
              fontWeight: FontWeight.bold,
            )),
                Text(widget.myWatch.fields.watched == true? "Sudah ditonton" : "Belum ditonton")
              ],),
            SizedBox(height: 5,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Review", style: const TextStyle(
              
              fontWeight: FontWeight.bold,
            )),
                        SizedBox(height: 5,),
                Text("${widget.myWatch.fields.review}")
              ],
            ),
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(onPressed: (){
                    Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyWatchList(data: widget.data)));
                                
                }, child: SizedBox(
                  height: 30,
                  width: 250,
                  child:Text("Back", style: TextStyle(color:Colors.white),)),
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue))
                )
                
              ],
            ),
            SizedBox(height: 10,)
          ],
        )
      ),

    );
  }
}