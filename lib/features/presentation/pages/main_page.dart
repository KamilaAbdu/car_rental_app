import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:practice_app/core/constants/app_assets.dart';
import 'package:practice_app/core/constants/app_colors.dart';
import 'package:practice_app/core/constants/app_dimens.dart';
import 'package:practice_app/core/constants/app_text_styles.dart';
import 'package:practice_app/features/car_rental/models/car_model.dart';
import 'package:practice_app/features/presentation/pages/cars_page.dart';
import 'package:practice_app/features/presentation/widgets/custom_car_card.dart';
import 'package:practice_app/features/presentation/widgets/main_banner.dart';
import 'package:practice_app/features/presentation/widgets/main_choise_chip.dart';
import 'package:practice_app/features/presentation/widgets/main_drawer.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

List<String> labels = ['Family cars', 'Cheap cars', 'Luxury cars'];
int currentLabel = 0;

List<CarModels> dataCars = [
  CarModels(
      image: AppAssets.toyota,
      price: 300,
      title: 'TOYOTA',
      transition: 'Automatic',
      speed: '220kmph',
      year: '2021',
      owner: 'Edward Callin'),
  CarModels(
      image: AppAssets.lamborgini,
      price: 550,
      title: 'Lamborgini',
      transition: 'Automatic',
      speed: '180kmph',
      year: '2020',
      owner: 'Bella Swan'),
  CarModels(
      image: AppAssets.rangeRover,
      price: 200,
      title: 'Range Rover',
      transition: 'Automatic',
      speed: '200kmph',
      year: '2022',
      owner: 'Michael Johns'),
  CarModels(
      image: AppAssets.tesla,
      price: 150,
      title: 'Tesla',
      transition: 'Automatic',
      speed: '160kmph',
      year: '2024',
      owner: 'Cammie Ace'),
];

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MainDrawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Image.asset(AppAssets.drawerIcon),
            );
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: const [
          Icon(
            Icons.shopping_cart_checkout_outlined,
            color: Colors.black,
            size: 30,
          ),
          SizedBox(width: 40),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MainBanner(),
            const SizedBox(height: AppDimens.vp50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MainChoiseChip(
                  label: labels[0],
                  selected: currentLabel == 0,
                  onSelected: (isSelected) {
                    currentLabel = 0;
                    setState(() {});
                  },
                ),
                MainChoiseChip(
                  label: labels[1],
                  selected: currentLabel == 1,
                  onSelected: (isSelected) {
                    currentLabel = 1;
                    setState(() {});
                  },
                ),
                MainChoiseChip(
                  label: labels[2],
                  selected: currentLabel == 2,
                  onSelected: (isSelected) {
                    currentLabel = 2;
                    setState(() {});
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(
              height: AppDimens.vp60,
            ),
            const Text(
              'Cars Available Near You',
              style: AppTextStyles.s20w400,
            ),
            Row(
              children: [
                const Spacer(),
                Text(
                  'View more',
                  style: AppTextStyles.s11w400.copyWith(color: Colors.red),
                ),
              ],
            ),
            Expanded(
              child: GridView.builder(
                itemCount: dataCars.length,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (BuildContext context, int index) {
                  return CustomCarCard(
                    title: dataCars[index].title,
                    price: dataCars[index].price,
                    image: dataCars[index].image,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  CarsPage(data: dataCars[index])));
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
