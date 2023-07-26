import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/cart_item.dart';

class CartItemWidget extends StatelessWidget {
  final CartItem cartItem;

  const CartItemWidget({
    super.key,
    required this.cartItem,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: CircleAvatar(
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: FittedBox(
                child: Text("${cartItem.price}"),
              ),
            ),
          ),
          title: Text(cartItem.name),
          subtitle: Text(
              "Total: R\$ ${(cartItem.price * cartItem.quantity).toStringAsFixed(2).replaceAll(".", ",")}"),
          trailing: Text("${cartItem.quantity}x"),
        ),
      ),
    );
  }
}
