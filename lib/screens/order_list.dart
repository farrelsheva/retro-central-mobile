import 'package:flutter/material.dart';
import 'package:retro_central/screens/order_detail.dart';
import 'package:retro_central/widgets/left_drawer.dart';
import 'order_form.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:retro_central/models/item.dart';



class OrderList extends StatefulWidget {
  const OrderList({super.key});


  @override
  _OrderListState createState() => _OrderListState();

}

class _OrderListState extends State<OrderList> {
  Future<List<Item>> fetchProduct() async {
    var url = Uri.parse(
        'http://farrel-sheva-tugas.pbp.cs.ui.ac.id/json/');
    var response = await http.get(
      url,
      headers: {"Content-Type": "application/json"},
    );

    // melakukan decode response menjadi bentuk json
    var data = jsonDecode(utf8.decode(response.bodyBytes));

    // melakukan konversi data json menjadi object Product
    List<Item> list_Item = [];
    for (var d in data) {
      if (d != null) {
        list_Item.add(Item.fromJson(d));
      }
    }
    return list_Item;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Items'),
        ),
        drawer: const LeftDrawer(),
        body: FutureBuilder(
            future: fetchProduct(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return const Column(
                    children: [
                      Text(
                        "Tidak ada data Item. ",
                        style:
                        TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                      ),
                      SizedBox(height: 8),
                    ],
                  );
                } else {
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (_, index) => Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${snapshot.data![index].fields.name}",
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text("${snapshot.data![index].fields.price}"),
                            const SizedBox(height: 10),
                            Text(
                                "${snapshot.data![index].fields.description}"),
                            const SizedBox(height: 10),
                            ElevatedButton(onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => OrderDetail(item: snapshot.data![index] )),
                              );
                            },
                                child: Text("SEE DETAIL"))
                          ],
                        ),
                      ));
                }
              }
            }
            )
    );
  }

}