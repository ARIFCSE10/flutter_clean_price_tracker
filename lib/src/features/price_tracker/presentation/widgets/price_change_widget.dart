import 'package:flutter/material.dart';

class PriceChangeWidget extends StatelessWidget {
  const PriceChangeWidget({
    super.key,
    this.price,
    this.lastPrice,
    this.isPriceLoading = false,
  });
  final double? price;
  final double? lastPrice;
  final bool isPriceLoading;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isPriceLoading == false,
      replacement: const SizedBox.square(
        dimension: 32,
        child: CircularProgressIndicator(),
      ),
      child: Center(
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 300),
          style: TextStyle(
            fontSize: 24,
            color: (lastPrice ?? 0) > (price ?? 0)
                ? Colors.red
                : (lastPrice ?? 0) < (price ?? 0)
                    ? Colors.green
                    : Colors.black54,
          ),
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: Text(
              'Price: ${price ?? '--'}',
            ),
          ),
        ),
      ),
    );
  }
}
