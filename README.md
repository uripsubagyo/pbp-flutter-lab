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

## Mekanisme pengambilan data
1.	Mengaktifkan pengaksesan internet pada flutter
2.	Membuat model kustom sesuai dengan struktur JSON (dapat menggunakan [Quictype](https://app.quicktype.io/))
3.	Mengambil data JSON dengan metode http.get
4.	Mengelolah JSON menggunakan model yang telah dibuat sebelumnya untuk mengubah stuktur data JSON menjadi structural model.
5.	Menampilkan data dari web service telah diproses pada model ke widget.

## Cara Impementasi