import 'package:flutter/cupertino.dart';
import 'package:retro_central/models/item.dart';

class OrderDetail extends StatefulWidget {
  final Item item;
  const OrderDetail({Key? key, required this.item}) : super(key: key);

  @override
  _OrderDetailState createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Text('NAME: ${widget.item.fields.name}'),
            Text('AMOUNT: ${widget.item.fields.amount.toString()}'),
            Text('DESCRIPTION: ${widget.item.fields.description}'),
          ]
      );
  }
}
