import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/models/order_list.dart';
import 'package:shop/models/product_list.dart';
import 'package:shop/pages/cart_page.dart';
import 'package:shop/pages/products_overview_page.dart';
import 'package:shop/utils/app_routes.dart';

import 'models/cart.dart';
import 'pages/product_detail_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductList()),
        ChangeNotifierProvider(create: (_) => Cart()),
        ChangeNotifierProvider(create: (_) => OrderList()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: "Lato",
          colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: Colors.purple,
            onPrimary: Colors.white,
            secondary: Colors.deepOrange,
            onSecondary: Colors.black,
            error: Colors.red,
            onError: Colors.black,
            background: Colors.white,
            onBackground: Colors.black,
            surface: Colors.pink,
            onSurface: Colors.black,
          ),
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          AppRoutes.productDetail: (ctx) => const ProductDetailPage(),
          AppRoutes.cart: (ctx) => const CartPage(),
        },
        home: const ProductsOverviewPage(),
      ),
    );
  }
}
