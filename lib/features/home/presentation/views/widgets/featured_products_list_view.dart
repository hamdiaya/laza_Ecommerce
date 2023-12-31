import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:laza_ecommerce/core/utils/app_routes.dart';
import '../../../../product_by_category/presentation/views/widgets/product_card.dart';

class FeaturedProductsListView extends StatefulWidget {
  const FeaturedProductsListView({
    super.key,
  });

  @override
  State<FeaturedProductsListView> createState() =>
      _FeaturedProductsListViewState();
}

class _FeaturedProductsListViewState extends State<FeaturedProductsListView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: ProductCard(
              imgUrl: 'assets/undraw_beer_xg5f.svg',
              price: '22.33\$',
              productName: 'Fresh Peach',
              doze: 'dozen',
              onTap: () {
                GoRouter.of(context).push(AppRoutes.productDetailsViewPath);
              },
            ),
          );
        },
      ),
    );
  }
}
