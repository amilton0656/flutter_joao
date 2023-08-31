import 'package:flutter/material.dart';
import 'package:greengrocer/src/models/cart_item_model.dart';
import 'package:greengrocer/src/pages/common_widgets/quantity_widget.dart';

class CartTile extends StatelessWidget {
  final CartItemModel cartItem;

  const CartTile({
    super.key,
    required this.cartItem,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      leading: Image.asset(
        cartItem.item.imgUrl,
        height: 60,
        width: 60,
      ),
      title: Text(
        cartItem.item.itemName,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: QuantityWidget(
        value: cartItem.quantity,
        suffixText: cartItem.item.unit,
        result: (quantity) {},
      ),
    ));
  }
}
