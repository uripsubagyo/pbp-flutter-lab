## TUGAS FLUTTER PBP
    Nama    : I Made Urip Subagyo
    NPM     : 2106752243
    KELAS   : PBP A

## Stateless Widget VS Stateful Widget

- Stateless Widget adalah widget yang tidak dapat diubah ketika sedang dijalankan. 
- Stateful Widget adalah widget yang dinamis atau dapat berubah ketika terkena action

    Perbedaan yang paling mencolok dari kedua widget ini adalah actionnya yaitu stateless widget bersifat tetap yaitu dari awal inisiasi pada code hingga program code dijalankan value akan tetap sama. Sedangkan stateful widget bersifat dinamis yaitu ketika di awal inisiasi telah memiliki nilai tetap saja nilai tersebut dapat berubah ketika terjadi action yang berpengaruh pada nilai tersebut.

## Widget yang digunakan
- Scaffold 
    ```bash
    Scaffold adalah widget utama flutter untuk mengkonstruksi widget lainnya.
    ```
- Row 
    ```bash
    Row adalah widget yang berisikan list untuk mengatur secara horizontal.
    ```
- Container : 
    ```bash
    Container adalah widget yang menampung berbagai widget, atribut, dan lain-lain.
    ```
- Icon
    ```bash
    Icon merupakan widget yang berisikan berbagai icon yang tidak interaktif.
    ```
- Text
    ```bash
    Text merupakan widget yang menampilkan text dan dapat di style sesuai keinginan.
    ```
- FloatingActionButton : 
    ```bash
    FloatingActionButton adalah widget button yang memiliki lokasi floating atau mengambang pada flutter. 
    ```



## Fungsi setState()
  
  `setState()` adalah suatu fungsi untuk menginformasikan kepada framework bahwa terdapat perubahan pada suatu value yang di deklarasi dalam `setState()`. Dengan begitu framework mengetahui bahwa terdapat perubahan dan akan build ulang dengan value terbaru.

## const VS final
  Keduanya tersebut memiliki fungsi yang sama yaitu menyatakan sebuah value sebuah variabel secara tetap. Pembeda antara const dan final yaitu `const` variabelnya bersifat constan, hanya berupa data yang bisa di oleh saat compile time, dan harus di deklarasikan nilainya sebelum di kompilasi atau dijalankan programnya. Sedangkan `final`  tidak mengharuskan variabel diinisasi secara langsung pada saat kompilasi.


## Implementasi Program

- Membuat program flutter dengan nama counter_7
    Jalankan `flutter create counter_7` pada terminal anda
- Membuat floating button pada flutter
    
    Untuk membuat floating, anda dapat menggunakan code dibawah untuk membuat dua floating button.
    ```bash
    floatingActionButton: Container(
        margin: const EdgeInsets.only(left:30),
        child: 
          Row(
            // inser button
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(                 --> Untuk button decrement
                  onPressed: _decrementCounter,
                  tooltip: 'Decrement',
                  child: const Icon(Icons.remove)),

                  FloatingActionButton(             --> untuk button increment
                  onPressed: _incrementCounter,
                  tooltip: 'Increment',
                  child: const Icon(Icons.add))
            ],
          )
        ,
      )
    ```
    Dua floating button dapat kita bungkus dalam satu container. Tetapi dalam 1 container dibutuhkan row agar dapat di styling pada 1row yang sama.
    Kemudian, untuk floating yang pertama untuk decrement dan floating yang kedua untuk increment angka
- Menambahkan fungsi baru

    Setelah anda membuat button tersebut,  tetapi terdapat fungsi yang belum anda deklarasikan untuk dapat berfungsi dengan baik.

    - Buat variabel yang akan menyimpan angka inteher dan string ganjil & genap.

    ```bash
    class _MyHomePageState extends State<MyHomePage> {
        int _counter = 0;
        String text_status = "GENAP";
        .
        .
        .
    ),
    ```

    - Kemudian buat fungsi yang melakukan pengurangan dan penambahan

        ```bash
            void _decrementCounter() {
                setState(() {
                if(_counter != 0){          // agar proses pengurangan tidak kurang dari nol
                    _counter--;
                    change_text();
                }
            });
        ```

    - kemudian untuk menampilkan pada layar, tambahkan dibawah ini:
    
        ubah bagian column pada widget colum menjadi seperti code dibawah

        ```bash
            mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                    Text(
                    '$text_status', 
                        style: TextStyle(color: (text_status == "GENAP" ? Colors.red : Colors.blue)),
                    ),
                    Text(
                    '$_counter',
                    style: Theme.of(context).textTheme.headline4,
                    ),
                ],
        ```


        style dibawah ini digunakan untuk mengubah ketika genap berubah menjadi merah dan biru ketika ganjil.


        ```bash
            style: TextStyle(color: (text_status == "GENAP" ? Colors.red : Colors.blue)),

        ```

    - Agar proses text ganjil dan genap dapat berjalan semestinya, maka deklarasikan fungsi dibawah untuk merubah value pada variabel text ganjil dan genap.

        ```bash
                void change_text(){
                    text_status = (_counter % 2 == 0 )? "GENAP" : "GANJIL";
                }
        ```

        letakkan code tersebut dibawah fungsi increment atau decrement.
    

Akhir sebagi penutup. Ubah title pada main.dart menjadi `Program Counter`




# TUGAS 8

## Navigator.push vs Navigator.pushReplacement

- Navigator.push :

    Berfungsi menambahkan route baru ke stack navigasi
- Navigator.pushReplacement : 
    
    Bergungsi untuk mengganti route yang ada di stack navigasi ke route baru 

## Widget
- Scaffold 
    ```bash
    Scaffold adalah widget utama flutter untuk mengkonstruksi widget lainnya.
    ```
- Row 
    ```bash
    Row adalah widget yang berisikan list untuk mengatur secara horizontal.
    ```
- Column 
    ```bash
    Column adalah widget yang berisikan list untuk mengatur secara vertikal.
    ```
- Container : 
    ```bash
    Container adalah widget yang menampung berbagai widget, atribut, dan lain-lain.
    ```
- Text
    ```bash
    Text merupakan widget yang menampilkan text dan dapat di style sesuai keinginan.
    ```
- Drawer
    ```bash
    Merupakan widget untuk membuat side navbar pada flutter
    ```
- TextFormField
    ```bash
    Widget ini digunakan untuk membuat text form pada flutter
    ```
- Spacer
    ```bash
    Merupakan widget yang digunakan untuk memerikan efek space beetwen antar dua widget lainnya
    ```
- Form
    ```bash
    Merupakan widget untuk membuat form
    ```
- MaterialPageRoute
    ```bash
    Widget yang digunakan untuk merefresh dan berpindah lokasi atau halaman.
    ``` 


## Jenis Event Pada Flutter

- `onChanged` : Event yang tejadi ketika widget diubah.
- `onPressed` : Event yang melakukan action ketika widget di tekan.
- `onSaved` : Event yang melakukan action ketika widget disimpan.
- `onTap` : Event yang melakukan action ketika widget ditap.


## Implementasi Checklist
- Pertama yaitu membuat file `Budget.dart` sebagai class setiap budget yang akan ditambahkan dengan form. Isi bagian file tersebut dengan kode dibawah ini
    ```bash
        import 'package:flutter/material.dart';

        class Budget{
        String judul;
        int nominal;
        String type;
        String timeNow;

        Budget(this.judul, this.nominal, this.type, this.timeNow);
        }
    ```

- Kemudian buat drawer external file dengan nama file `drawe.dart`. Isi file tersebut dengan `Widget build(BuildContext context)` kode dibawah ini.

    ```bash
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
            ],
          ),
        );}
    ```

- kemudian setelah membuat drawer, tambahkan drawer pada `MyHomepage` dengan kode dibawah ini.

    ```bash
        appBar: AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: Text(widget.title),
        ),
        drawer: HomeDrawer(data: widget.data == null ? [] : widget.data),  
        body: ......
    ```

- kemudian buat file bernama `data.dart` untuk menampilkan data dan `tambahdata.dart` sebagai page untuk mengisi form.

- Isi `tambahdata.dart` seperti yang telah diajarkan pada tutorial

- Isi `data.dart` dengan kode dibawah ini

    ```bash
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
    ``` 
    
    dan tambahkan pemanggilan pada container sebagai berikut

    ```bash
        Scarfold(
            .....
            Container(
                child: Column(children: mywidgets),
            )
        )
    ```

- Agar dapat mengambil date realtime maka harus menambahkan kode sebagai berikut pada file `pubspec.yml`.
    ```bash
        dependencies:
        ....
        ....
        intl: ^0.17.0       --> this
    ```

    Jika sudah melakuakn diatas, kamu bisa menggunakan `DateTime.now()`



# TUGAS 9
## Data JSON tanpa model?
Jawabannya adalah bisa. Akan tetapi dalam pengolahan data akan menjadi ribet pada pengolahan data karena mengolahnya secara manual. Dengan begitu akan lebih baik jika menggunakan model dalam pengambilan data JSON dari respons web service.  

## Widget yang digunakan
- `CircularProgressIndicator`: Digunakan untuk menampilkan loading ketika aplikasi sedang menunggu fetch data.
- `FutureBuilder` : Berfungsi untuk melakuakn update child berasarkn hasil future yang diberikan
- `ListView` : untuk membuat data list statis atau data list yang tidak terlalu panjang

## Mekanisme pengambilan data
1.	Mengaktifkan pengaksesan internet pada flutter
2.	Membuat model kustom sesuai dengan struktur JSON (dapat menggunakan [Quictype](https://app.quicktype.io/))
3.	Mengambil data JSON dengan metode http.get
4.	Mengelolah JSON menggunakan model yang telah dibuat sebelumnya untuk mengubah stuktur data JSON menjadi structural model.
5.	Menampilkan data dari web service telah diproses pada model ke widget.

## Cara Impementasi
1. Menambahkan Model sesuai dengan file json yang akan di fetch. Kode sebagai berikut:
    ```bash
    import 'dart:convert';

    List<WatchList> watchListFromJson(String str) => List<WatchList>.from(json.decode(str).map((x) => WatchList.fromJson(x)));

    String watchListToJson(List<WatchList> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

    class WatchList {
        WatchList({
            required this.model,
            required this.pk,
            required this.fields,
        });

        Model model;
        int pk;
        Fields fields;

        factory WatchList.fromJson(Map<String, dynamic> json) => WatchList(
            model: modelValues.map[json["model"]]!,
            pk: json["pk"],
            fields: Fields.fromJson(json["fields"]),
        );

        Map<String, dynamic> toJson() => {
            "model": modelValues.reverse[model],
            "pk": pk,
            "fields": fields.toJson(),
        };
    }

    class Fields {
        Fields({
            required this.watched,
            required this.title,
            required this.rating,
            required this.releaseDate,
            required this.review,
        });

        String watched;
        String title;
        int rating;
        String releaseDate;
        String review;

        factory Fields.fromJson(Map<String, dynamic> json) => Fields(
            watched: json["watched"],
            title: json["title"],
            rating: json["rating"],
            releaseDate: json["release_date"],
            review: json["review"],
        );

        Map<String, dynamic> toJson() => {
            "watched": watched,
            "title": title,
            "rating": rating,
            "release_date": releaseDate,
            "review": review,
        };
    }

    enum Model { MYWATCHLIST_MYWATCHLIST }

    final modelValues = EnumValues(map:{
        "mywatchlist.mywatchlist": Model.MYWATCHLIST_MYWATCHLIST
    });

    class EnumValues<T> {
        Map<String, T> map;
        Map<T, String>? reverseMap;

        EnumValues({required this.map});

        Map<T, String> get reverse {
            if (reverseMap == null) {
                reverseMap = map.map((k, v) => new MapEntry(v, k));
            }
            return reverseMap!;
        }
    }

    ```

2. Menambahkan halaman untuk menampilkan semua data list dan halaman untuk detail page.

    Kode untuk menampilkan page watchlist:

    ```bash
         
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
    ```
    
    Tambahkan potongan kode dibawah ini untuk membuat halaman detail.

    ```bash
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
    ```

    Tambahkan potongan kode fetch data sebagai beikur dibawah line kode `class _MyWatchListPage extends State<MyWatchList> {`.

    ```bash
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
    ```

3. Menambahkan navigasi My Watch list agar dapat terintergrasi.