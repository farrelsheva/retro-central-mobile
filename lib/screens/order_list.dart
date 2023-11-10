import 'package:flutter/material.dart';
import 'package:retro_central/widgets/left_drawer.dart';

class OrderList extends StatelessWidget {
  const OrderList({super.key});

  @override
  Widget build(BuildContext context) {
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
        body: const SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Card(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              leading: Icon(Icons.album),
                              title: Text('Nintendo Switch'),
                              subtitle: Text('Rp 5.000.000'),
                            )
                          ],
                        ),
                      )
                  )
                ]
            )
        )
    );
  }
}