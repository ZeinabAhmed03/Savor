import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:savor/core/utils/app_assets.dart';
import 'package:savor/core/utils/app_colors.dart';
import 'package:savor/features/home/manager/cubit/get_categories_cubit.dart';
import 'package:savor/features/home/presentation/views/widgets/search_text_field.dart';
import 'package:savor/features/home/presentation/views/widgets/show_all_categories.dart';
import 'package:skeletonizer/skeletonizer.dart';

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
            return Skeletonizer(
              ignoreContainers: true,
              effect: ShimmerEffect(baseColor: Colors.grey.shade400),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //--------------Show Search Text Field----------------
                    SearchTextField(onTap: onTap),
                    SizedBox(height: 12),
                    //TODO: uncomment recently viewed section once meal details is implemented.
                    /*
                    Text(
                      'Recently Viewed',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    RecentlyViewedSection(),
                    SizedBox(height: 12),
                    */
                    //--------------show categories section----------------
                    Text(
                      'All Food Genres',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 12),

                    ShowAllCategories(),
                  ],
                ),
              ),
            );
          } else if (state is GetCategoriesSuccess) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //--------------Show Search Text Field----------------
                  SearchTextField(onTap: onTap),
                  SizedBox(height: 12),
                  //TODO: uncomment recently viewed section once meal details is implemented.
                  /*
                  Text(
                    'Recently Viewed',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  RecentlyViewedSection(),
                  SizedBox(height: 12),
                  */
                  //--------------show categories section----------------
                  Text(
                    'All Food Genres',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontFamily: AppAssets.fontFamily,
                      color: AppColors.goldColor,
                    ),
                  ),
                  SizedBox(height: 12),

                  ShowAllCategories(categoryModel: state.categoryModel),
                ],
              ),
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
