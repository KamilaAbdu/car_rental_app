import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:practice_app/core/constants/app_assets.dart';
import 'package:practice_app/core/constants/app_colors.dart';
import 'package:practice_app/core/constants/app_text_styles.dart';
import 'package:practice_app/features/car_rental/models/car_model.dart';
import 'package:practice_app/features/presentation/pages/main_page.dart';
import 'package:practice_app/features/presentation/widgets/cars_info_list.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://flutter.dev');

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}

class CarsPage extends StatelessWidget {
  const CarsPage({super.key, required this.data});

  final CarModels data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: AppColors.coldBlue,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(45),
                  bottomRight: Radius.circular(45)),
            ),
            height: 426,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(height: 27),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MainPage()));
                        },
                        icon: const Icon(Icons.arrow_back_ios,
                            color: Colors.white),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon:
                            const Icon(Icons.more_vert, color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(height: 87),
                  Stack(
                    children: [
                      Text(
                        'TIRA',
                        style: AppTextStyles.s160w400
                            .copyWith(color: Colors.white),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Image.asset(
                          data.image,
                          height: 210,
                          width: double.infinity,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 30, 47, 25),
            child: Row(
              children: [
                Text(
                  data.title,
                  style: AppTextStyles.s16w400,
                ),
                const Spacer(),
                Text(
                  '${data.price}\$',
                  style: AppTextStyles.s12w700.copyWith(
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 18),
              child: CarsInfoList(
                data: data,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text('RENDER',
              style:
                  AppTextStyles.s16w400.copyWith(color: AppColors.darkBlue),
                textAlign: TextAlign.start,),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 30,
                ),
                const SizedBox(width: 10),
                Text(
                  data.owner,
                  style: AppTextStyles.s12w400,
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.messenger),
                ),
                IconButton(
                  onPressed: () async {
                    _launchUrl();
                  },
                  icon: const Icon(Icons.phone),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
