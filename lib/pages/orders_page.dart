import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/components/app_drawer.dart';
import 'package:shop/components/order_widget.dart';
import 'package:shop/models/order_list.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final OrderList orders = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Meus pedidos"),
      ),
      drawer: const AppDrawer(),
      body: ListWidget(orders: orders),
    );
  }
}

class ListWidget extends StatelessWidget {
  const ListWidget({
    super.key,
    required this.orders,
  });

  final OrderList orders;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: orders.itemsCount,
      itemBuilder: (ctx, i) => OrderWidget(
        order: orders.items[i],
      ),
    );
  }
}
