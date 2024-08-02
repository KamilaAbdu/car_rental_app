import 'package:flutter/material.dart';
import 'package:practice_app/core/constants/app_assets.dart';

class MainBanner extends StatefulWidget {
  const MainBanner({
    super.key,
  });

  @override
  State<MainBanner> createState() => _MainBannerState();
}

class _MainBannerState extends State<MainBanner> {
  double spreadRadius = 2;
  double blurRadius = 3;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTapDown: (_) {
        spreadRadius = 0;
        blurRadius = 0;
        setState(() {});
      },
      onTapUp: (_) {
        spreadRadius = 2;
        blurRadius = 3;
        setState(() {});
      },
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('30% Off this July'),
            content: Row(
              children: [
                const Text('Get a car with 30% off'),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close_sharp),
                )
              ],
            ),
          ),
        );
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              spreadRadius: spreadRadius,
              blurRadius: blurRadius,
              color: Colors.black.withOpacity(0.5),
            ),
          ],
        ),
        child: Image.asset(
          AppAssets.mainBanner,
        ),
      ),
    );
  }
}
