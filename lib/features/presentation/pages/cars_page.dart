import 'package:flutter/material.dart';
import 'package:practice_app/core/constants/app_colors.dart';

class CarsPage extends StatelessWidget {
  const CarsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.5),
        child: AppBar(
          backgroundColor: AppColors.coldBlue,
          actions: const [
            Icon(Icons.more_vert, color: Colors.white,),
            SizedBox(width: 10),
          ],
        ),
      ), 
    );
  }
}
