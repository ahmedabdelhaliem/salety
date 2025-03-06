import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/Feature/presentation/home/data/model/products_model/datum.dart';
import 'package:selaty/constants.dart';
import 'package:selaty/core/assets/styles.dart';

class BestSellerListViewItem extends StatelessWidget {
  final List<Datum>? product;
  const BestSellerListViewItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return SizedBox(
      height: isLandscape ? 550.h : 500.h,
      child: product == null || product!.isEmpty
          ? const Center(child: Text("لا توجد منتجات متاحة"))
          : GridView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: product!.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5.h,
                mainAxisSpacing: 8.w,
                childAspectRatio: isLandscape ? 1.4 : 1.6,
              ),
              itemBuilder: (BuildContext context, int index) {
                final item = product![index];

                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 5.w),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// **أيقونة المفضلة + التصنيف (Tag)**
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.w),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  item.isFavorite == 1
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color: kMyGreen,
                                ),
                              ),
                              const Spacer(),
                              if (item.tag != null && item.tag!.isNotEmpty)
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8.w, vertical: 2.h),
                                  decoration: BoxDecoration(
                                    color: kMyGreen,
                                    borderRadius: BorderRadius.circular(12.r),
                                  ),
                                  child: Text(
                                    item.tag!,
                                    style: Styles.textStyle12
                                        .copyWith(color: Colors.white),
                                  ),
                                ),
                            ],
                          ),
                        ),

                        /// **صورة المنتج**
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.r),
                            child: Container(
                              width: double.infinity,
                              color: Colors.white,
                              child: Image.network(
                                "https://marketappmaster.com/uploads/${item.img ?? ''}",
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return const Icon(Icons.image_not_supported,
                                      size: 50, color: Colors.grey);
                                },
                              ),
                            ),
                          ),
                        ),

                        /// **اسم المنتج والتفاصيل**
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.w, vertical: 4.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.name ?? "منتج غير معروف",
                                style: Styles.textStyle14.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 2.h),
                              Text(
                                item.details ?? '',
                                style: Styles.textStyle12
                                    .copyWith(color: Colors.grey[700]),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),

                        /// **السعر + زر الإضافة للسلة**
                        Container(
                          decoration: BoxDecoration(
                            color: kMyGray.withOpacity(0.2),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(12.r),
                              bottomRight: Radius.circular(12.r),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 8.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                /// **زر الإضافة للسلة**
                                Container(
                                  height: 36.h,
                                  width: 36.h,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: kMyRed,
                                  ),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.add_shopping_cart,
                                        size: 18, color: Colors.white),
                                  ),
                                ),

                                /// **السعر**
                                Text(
                                  '${item.priceAfterDiscount ?? item.price ?? 'غير متوفر'}',
                                  style: Styles.textStyle14.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: kMyGreen),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
