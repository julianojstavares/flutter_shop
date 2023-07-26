import 'package:flutter/material.dart';
import '../components/product_grid.dart';

enum FilterOptions { favorite, all }

class ProductsOverviewPage extends StatefulWidget {
  const ProductsOverviewPage({super.key});

  @override
  State<ProductsOverviewPage> createState() => _ProductsOverviewPageState();
}

class _ProductsOverviewPageState extends State<ProductsOverviewPage> {
  bool _showFavoriteOnly = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Minha Loja"),
        actions: [
          PopupMenuButton<FilterOptions>(
            itemBuilder: (_) => [
              const PopupMenuItem(
                value: FilterOptions.favorite,
                child: Text("Somente Favoritos"),
              ),
              const PopupMenuItem(
                value: FilterOptions.all,
                child: Text("Todos"),
              ),
            ],
            onSelected: (FilterOptions options) => setState(() {
              if (options == FilterOptions.favorite) {
                _showFavoriteOnly = true;
              } else {
                _showFavoriteOnly = false;
              }
            }),
          ),
        ],
      ),
      body: ProductGrid(showFavoriteOnly: _showFavoriteOnly),
    );
  }
}
