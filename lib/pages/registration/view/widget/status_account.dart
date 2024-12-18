import 'package:flutter/material.dart';

import '../../../../core/app_colors.dart';

class StatusAccount extends StatelessWidget {
  const StatusAccount({
    super.key,
    required this.color,
    required this.title,
    required this.icon,
    required this.subtitle,
  });
  final Color color;
  final String title;
  final String subtitle;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height * .7,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: MediaQuery.sizeOf(context).width * .5,
              color: AppColors.colorWhite,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: AppColors.colorWhite,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                title,
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: color,
                    ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: AppColors.colorWhite,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
