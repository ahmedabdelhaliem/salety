import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selaty/Feature/presentation/home/data/repo/home_repo.dart';
import 'package:selaty/Feature/presentation/home/data/repo/home_repo_impl.dart';
import 'package:selaty/Feature/presentation/home/presentation/manager/category_cubit/cubit/category_cubit.dart';
import 'package:selaty/Feature/presentation/home/presentation/manager/product_cubit/product_cubit.dart';
import 'package:selaty/Feature/presentation/home/presentation/manager/slider_cubit/slider_cubit.dart';
import 'package:selaty/Feature/presentation/home/presentation/widget/home_view_body.dart';
import 'package:selaty/core/api/api_services.dart';
import 'package:selaty/core/utils/service_locator.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) =>
                  SliderCubit(getIt.get<HomeRepoImpl>())..fetchSlider(),
            ),
            BlocProvider(
              create: (context) =>
                  ProductCubit(getIt.get<HomeRepoImpl>())..frechProducts(),
            ),
            BlocProvider(
              create: (context) =>
                  CategoryCubit(getIt.get<HomeRepoImpl>())..fetchCategory(),
            ),
          ],
          child: const HomeViewBody(), // ✅ الآن كل شيء داخل MultiBlocProvider
        ),
      ),
    );
  }
}
