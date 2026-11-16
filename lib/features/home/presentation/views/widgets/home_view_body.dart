import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:savor/core/widgets/custom_skeletonizer.dart';
import 'package:savor/features/home/manager/cubit/get_categories_cubit.dart';
import 'package:savor/features/home/presentation/views/widgets/home_content.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key, required this.onTap});
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: BlocBuilder<GetCategoriesCubit, GetCategoriesState>(
        builder: (context, state) {
          if (state is GetCategoriesLoading) {
            return CustomSkeletonizer(child: HomeContent());
          } else if (state is GetCategoriesSuccess) {
            return HomeContent(
              onTap: onTap,
              categoryModel: state.categoryModel,
            );
          } else if (state is GetCategoriesFailure) {
            return Center(child: Text(state.errMessage));
          } else {
            return Center(
              child: Text('There is a problem, please try again later!'),
            );
          }
        },
      ),
    );
  }
}
