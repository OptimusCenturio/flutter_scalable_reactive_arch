import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_scalable_reactive_arch/cart/cart.dart';

import '../../catalog/models/models.dart';
import '../../theme/config.dart';
import '../catalog.dart';

class CatalogPage extends StatefulWidget {
  CatalogPage({Key key}) : super(key: key);

  @override
  _CatalogPageState createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog'),
        actions: [
          /// Toogle app theme
          IconButton(
            icon: Icon(Icons.brightness_4),
            tooltip: 'Toogle app theme',
            onPressed: () => currentTheme.toggleTheme(),
          ),

          /// Cart
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () => Navigator.of(context).pushNamed('/cart'),
          ),
        ],
      ),
      body: Center(
        child: BlocBuilder<CatalogBloc, CatalogState>(
          builder: (context, state) {
            if (state is CatalogLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is CatalogLoaded) {
              return ListView.builder(
                itemBuilder: (context, index) => _CatalogListItem(
                  state.catalog.getByPosition(index),
                ),
              );
            }
            return const Text('Something went wrong!');
          },
        ),
      ),
    );
  }
}

class _CatalogListItem extends StatelessWidget {
  const _CatalogListItem(this.item, {Key key}) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme.headline6;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: LimitedBox(
        maxHeight: 48,
        child: Row(
          children: [
            AspectRatio(aspectRatio: 1, child: ColoredBox(color: item.color)),
            const SizedBox(width: 24),
            Expanded(child: Text(item.name, style: textTheme)),
            const SizedBox(width: 24),
            _AddButton(item: item),
          ],
        ),
      ),
    );
  }
}

class _AddButton extends StatelessWidget {
  const _AddButton({Key key, @required this.item}) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        if (state is CartLoading) {
          return const CircularProgressIndicator();
        }
        if (state is CartLoaded) {
          return FlatButton(
            onPressed: state.cart.items.contains(item)
                ? null
                : () => context.read<CartBloc>().add(CartItemAdded(item)),
            splashColor: theme.primaryColor,
            child: state.cart.items.contains(item)
                ? Icon(Icons.check, semanticLabel: 'ADDED', color: theme.buttonColor)
                : Text('ADD', style: theme.textTheme.button),
          );
        }
        return const Text('Something went wrong!');
      },
    );
  }
}
