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