import 'package:e_commerce_craftybay/app/constrants.dart';
import 'package:flutter/material.dart';
import '../../../../app/app_colors.dart';
import '../../products/presentation/screens/product_details_screen.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  // final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
            context, ProductDetailsScreen.name, );
      },
      child: Card(
        color: Colors.white,
        shadowColor: AppColors.themeColor.withOpacity(0.2),
        child: SizedBox(
          width: 140,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.themeColor.withOpacity(0.1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                ),
                child: Image.asset(
                 // productModel.photos.firstOrNull ?? '',
                  //AssetPaths.shoe,
                 'assets/images/shoe.png',
                  width: 140,
                  height: 80,
                  fit: BoxFit.cover,
                  // errorBuilder: (_, __, ___) {
                  //   return SizedBox(
                  //     width: 140,
                  //     height: 80,
                  //     child: Icon(
                  //       Icons.error_outline,
                  //       size: 48,
                  //       color: Colors.grey,
                  //     ),
                  //   );
                  // },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 4,
                  children: [
                    Text(
                      //productModel.title,
                      'New Year Special Shoes 30',
                      maxLines: 1,
                      style: TextStyle(overflow: TextOverflow.ellipsis),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '$TakaSign${'100'}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.themeColor,
                          ),
                        ),
                        Wrap(
                          children: [
                            Icon(Icons.star, size: 18, color: Colors.amber),
                            Text('4.8'),
                          ],
                        ),
                        Card(
                          color: AppColors.themeColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2),
                            child: Icon(
                              Icons.favorite_outline,
                              size: 14,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}