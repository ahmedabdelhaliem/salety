import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selaty/Feature/presentation/home/presentation/manager/product_cubit/product_cubit.dart';
import 'package:selaty/Feature/presentation/home/presentation/widget/best_seller_list_view_item.dart';
import 'package:selaty/core/widget/custom_error_massege.dart';

class BestSellerListViewBlocBuilder extends StatelessWidget {
  const BestSellerListViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(builder: (context, state) {
      if (state is ProductSuccess) {
        final products = state.productsModel.data?.data;
        return BestSellerListViewItem(
          product: products,
        );
      } else if (state is ProductFailure) {
        return CustomErrorMassege(errprMessage: state.errorMessage);
      } else {
        return CircularProgressIndicator();
      }
    });
  }
}
