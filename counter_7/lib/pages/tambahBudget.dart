
import 'package:counter_7/pages/Budget.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/pages/data.dart';

class TambahBudget extends StatefulWidget {
    const TambahBudget({super.key});

    @override
    State<TambahBudget> createState() => _TambahBudget();
}

class _TambahBudget extends State<TambahBudget> {
    final _formKey = GlobalKey<FormState>();
    String judul = "";
    String nominal = "";

    String jenisChoice = "Pemasukan";
    List<String> choiceUser = ['Pemasukan', 'Pengeluaran'];
    List<Budget> data = [];
    // List<String> jenis = ["Pengeluaran", "Pemasukan"];

    void changeJenis(String? selectedValue){
      if(selectedValue is String){
        setState(() {
          jenisChoice = selectedValue;
        });
      }
    }

    void onClick(){
      data.add(Budget(judul, nominal, jenisChoice));
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Form'),
            ),
            body: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child:Column(
              children: <Widget>[
                Text("Welcome Back,\nLet's Manage You Budget"),
                SizedBox(height: 40,),
                Text("Judul"),
                TextFormField(
                  decoration : InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(17)
                    )
                  ),
                  onChanged: (String? value) {
                            setState(() {
                                judul = value!;
                            });
                        },
                ),
                SizedBox(height: 20),
                Text("Judul"),
                TextFormField(
                  decoration : InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(17)
                    )
                  ),
                  onChanged: (value) {
                            setState(() {
                                nominal = value;
                            });
                        },
                ),
                SizedBox(height: 20,),
                ListTile(
                  trailing: DropdownButton(
                      value: jenisChoice,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      items: choiceUser.map((String items) {
                      return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                      );
                      }).toList(),
                      onChanged: (String? newValue) {
                      setState(() {
                          jenisChoice = newValue!;
                      });
                      },
                  ),
                  ),
                Container(
                  width: 295,
                  height: 55,
                  child: TextButton(
                    onPressed: (){

                    },
                    child: Text("Submit"),
                  ),
                )
              ],
            ),
            )),
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
                MaterialPageRoute(builder: (context) => const MyHomePage(title:'title')),
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
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Data()),
              );
            },
          ),
        ],
      ),
    ),
        );
    }
}