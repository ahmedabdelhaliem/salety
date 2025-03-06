import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/Feature/presentation/home/presentation/manager/category_cubit/cubit/category_cubit.dart';
import 'package:selaty/Feature/presentation/home/presentation/widget/list_view_Categories.dart';

class ListViewCategoriesBlocBuilder extends StatelessWidget {
  const ListViewCategoriesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(
      builder: (context, state) {
        if (state is CategoryLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is CategoryError) {
          return Center(child: Text("⚠️ ${state.errorMessage}"));
        } else if (state is CategoryLoaded) {
          if ((state.category.data ?? []).isEmpty) {
            return const Center(child: Text("🚫 لا توجد تصنيفات متاحة"));
          }
          return SizedBox(
            height: 120.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.category.data!.length,
              itemBuilder: (context, index) {
                final category = state.category
                    .data![index]; // ✅ تمرير الكائن الرئيسي `CategoryModel`
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: ListViewCategories(category: category),
                );
              },
            ),
          );
        }
        return const Center(child: Text("❌ حدث خطأ غير متوقع"));
      },
    );
  }
}
