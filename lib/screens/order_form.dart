import 'package:flutter/material.dart';
import 'package:retro_central/widgets/left_drawer.dart';
import 'package:retro_central/screens/order_list.dart';


class OrderForm extends StatefulWidget{
  const OrderForm({super.key});

  @override
  State<OrderForm> createState() => _OrderFormState();
}

class _OrderFormState extends State<OrderForm>{
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  int _price = 0;
  String _description = '';
  int _year = DateTime.now().year;
  List<int> yearList = List<int>.generate(100, (i) => 1970 + i);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Form Order Console',
          ),
        ),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Name of Console",
                  labelText: "Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)
                  ),
                ),
                onChanged: (String? value) {
                  setState(() {
                    _name = value!;
                  });
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Name can't be empty!";
                  }
                  return null;
                },
              ),
              ),//Name form
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Price of Console",
                    labelText: "Price",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _price = int.parse(value!);
                    });
                  },
                  validator: (String? value)  {
                    if (value == null || value.isEmpty) {
                      return "price can't be empty!";
                    }
                    if (int.tryParse(value) == null) {
                      return "Price must be a number!";
                    }
                    if (int.parse(value) < 0) {
                      return "Price must be a positive number!";
                    }
                    return null;
                  },
                ),
              ),//price form
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Description of Console",
                    labelText: "Description",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _description = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Description can't be empty!";
                    }
                    return null;
                  },
                ),
              ),//description form
              Padding (
                padding: const EdgeInsets.all(8.0),
                child: InputDecorator(
                  decoration: InputDecoration(
                    labelText: 'Year',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<int>(
                      isExpanded: true,
                      value: _year,
                      onChanged: (int? newValue) {
                        setState(() {
                          _year = newValue!;
                        });
                      },
                      items: yearList.map((int value) {
                        return DropdownMenuItem<int>(
                          value: value,
                          child: Text(value.toString()),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Colors.deepOrange),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        showDialog(
                            context: context,
                            builder: (context){
                              return AlertDialog(
                                title: const Text("Console Order"),
                                content: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Name: $_name"),
                                      Text("Price: $_price"),
                                      Text("Description: $_description"),
                                      Text("Year: $_year"),
                                    ],
                                  )
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      final newOrder = Console(_name, _price, _description, _year);
                                      Navigator.pop(context, newOrder); //return newOrder object
                                    },
                                    child: const Text("Confirm"),
                                  )
                                ],
                              );
                            }
                        );
                        _formKey.currentState!.reset();
                        _year = DateTime.now().year;
                      }
                    },
                    child: const Text(
                      "Save",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}

