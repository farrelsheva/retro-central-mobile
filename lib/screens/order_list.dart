import 'package:flutter/material.dart';
import 'package:retro_central/widgets/left_drawer.dart';
import 'order_form.dart';

class Console{
  String name;
  int price;
  String description;
  int year;

  Console(this.name, this.price, this.description, this.year);
}


class OrderList extends StatefulWidget {
  const OrderList({super.key});


  @override
  _OrderListState createState() => _OrderListState();

}

class _OrderListState extends State<OrderList>{

  final List<Console> consoles = [
    Console("Playstation 1", 1000000, "Console pertama dari Sony", 1994),
    Console("Playstation 2", 1500000, "Console kedua dari Sony", 2000),
    Console("Playstation 3", 2000000, "Console ketiga dari Sony", 2006),
    Console("Playstation 4", 2500000, "Console keempat dari Sony", 2013),
    Console("Playstation 5", 3000000, "Console kelima dari Sony", 2020),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'List Order Console',
            ),
          ),
          backgroundColor: Colors.deepOrange,
          foregroundColor: Colors.white,
        ),
        drawer: const LeftDrawer(),
        body: ListView.builder(
          itemCount: consoles.length,
          itemBuilder: (context, index){
            return ListTile(
              title: Text(consoles[index].name),
              subtitle: Text("${consoles[index].price}\n${consoles[index].description}"),
              trailing: Text(consoles[index].year.toString()),
            );
          }
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  const OrderForm()),
          );
        },
      ),
        );

  }
}