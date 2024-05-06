import 'package:flutter/material.dart';
import 'package:trend_style_store/src/components/spacer.dart';
import 'package:trend_style_store/src/modules/shop/components/order/order_item.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';

class TOrderListItems extends StatelessWidget {
  const TOrderListItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      shrinkWrap: true,
      separatorBuilder: (_, __) => TSpacer.vSpacing(TSizes.spaceBtwItems),
      itemBuilder: (_, index) => const TOrderItem(),
    );
  }
}
