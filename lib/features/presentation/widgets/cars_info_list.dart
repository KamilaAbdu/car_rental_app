import 'package:flutter/material.dart';
import 'package:practice_app/core/constants/app_colors.dart';
import 'package:practice_app/core/constants/app_text_styles.dart';
import 'package:practice_app/features/car_rental/models/car_model.dart';
import 'package:practice_app/features/presentation/widgets/cars_info_container.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarsInfoList extends StatelessWidget {
  CarsInfoList({super.key, required this.data});
  final PageController _controller = PageController();

  final CarModels data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 95,
          child: Expanded(
            child: ListView.builder(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  children: [
                    CarsInfoContainer(data: data, title: 'Transition', subTitle: data.transition,),
                    const SizedBox(width: 10,),
                    CarsInfoContainer(data: data, title: 'Speed', subTitle: data.speed,),
                    CarsInfoContainer(data: data, title: 'Year', subTitle: data.year,),
                  ],
                );
                
              },
            ),
          ),
        ),
        const SizedBox(height: 16),
        SmoothPageIndicator(
          controller: _controller,
          count: 3,
          effect: const WormEffect(
            dotHeight: 8.0,
            dotWidth: 8.0,
            activeDotColor: AppColors.lightBlue,
            dotColor: AppColors.grey,
          ),
        ),
      ],
    );
  }
}

