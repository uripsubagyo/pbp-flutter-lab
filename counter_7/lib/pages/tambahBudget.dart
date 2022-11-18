
import 'package:counter_7/pages/Budget.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/pages/data.dart';
import 'package:counter_7/pages/drawe.dart';
import 'package:intl/intl.dart';
import 'dart:core';

class TambahBudget extends StatefulWidget {
    List<Budget> data;
    TambahBudget({super.key, required this.data});

    @override
    State<TambahBudget> createState() => _TambahBudget();
}

class _TambahBudget extends State<TambahBudget> {
    final _formKey = GlobalKey<FormState>();
    String judul = "";
    int nominal = 0;

    final fieldTextJudul = TextEditingController();
    final fieldTextNominal = TextEditingController();


    String jenisChoice = "Pemasukan";
    List<String> choiceUser = ['Pemasukan', 'Pengeluaran'];
    // List<Budget> data = [];
    void changeJenis(String? selectedValue){
      if(selectedValue is String){
        setState(() {
          jenisChoice = selectedValue;
        });
      }
    }

    void clearFieldForm(){
      setState(() {
        nominal = 0;
        judul = "";
      });
      fieldTextJudul.clear();
      fieldTextNominal.clear();
    }

    void clearNominal(){
      setState(() {
        nominal = 0;
      });
     fieldTextNominal.clear();
    }

    void addBudget(){
        
        setState(() {
          var now = DateTime.now();
          String nowFormat = DateFormat.yMMMMd('en_US').format(now);
          Budget newData = Budget(judul, nominal, jenisChoice, nowFormat.toString());
          if(judul.length != 0 && nominal != 0){
            widget.data.add(newData);
            clearFieldForm();
            showDialog(
              context: context,
              builder: (BuildContext context) {
                // return alert dialog object
                return AlertDialog(
                  title: new Text("Data Berhasil disimpan"),
                  //content: new Text("Alert Dialog body"),
                  actions: <Widget>[
                    new FlatButton(
                      child: new Text("OK"),
                      onPressed: () {
                        clearFieldForm();
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            );
          } else {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                // return alert dialog object
                return AlertDialog(
                  title: new Text("Judul dan Nominal harus diisi"),
                  //content: new Text("Alert Dialog body"),
                  actions: <Widget>[
                    new FlatButton(
                      child: new Text("OK"),
                      onPressed: () {
                        clearFieldForm();
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            );
          }
        });
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
                  controller: fieldTextJudul,
                ),

                SizedBox(height: 20),
                Text("Nominal"),
                TextFormField(
                  decoration : InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(17)
                    )
                  ),
                  onChanged: (value) {
                    try{
                          int valueCheck = int.parse(value);
                          setState(() {
                            nominal = valueCheck;
                          });
                        } catch(err){
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              // return alert dialog object
                              return AlertDialog(
                                title: new Text("Nominal harus berupa bilangan"),
                                //content: new Text("Alert Dialog body"),
                                actions: <Widget>[
                                  new FlatButton(
                                    child: new Text("OK"),
                                    onPressed: () {
                                      clearNominal();
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        }
                
                  },
                  controller: fieldTextNominal,
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
                      addBudget();
                    },
                    child: Text("Submit"),
                  ),
                )
              ],
            ),
            )),
            drawer: HomeDrawer(data: widget.data,),
        );
    }
}