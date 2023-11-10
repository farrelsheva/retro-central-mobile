import 'package:flutter/material.dart';
import 'package:retro_central/screens/menu.dart';
import 'package:retro_central/screens/order_form.dart';

class LeftDrawer extends StatelessWidget{
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context){
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.deepOrange,
            ),
            child: Column(
              children: [
                Text(
                  'Retro Central',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'All your retro needs',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Main Menu'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage())
              );
            },
          ),//Done Main menu
          ListTile(
            leading: const Icon(Icons.checklist),
            title: const Text('Lihat Order'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_shopping_cart),
            title: const Text('Order Console'),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const OrderForm())
              );
            },
          ),// Done order form
        ],
      )
    );

  }


}