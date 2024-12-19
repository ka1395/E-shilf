import 'package:flutter/material.dart';

import '../../../../core/app_colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(25),
                onTap: () {},
                child: const CircleAvatar(
                  radius: 30,
                  foregroundImage: AssetImage("assets/images/profile.png"),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("مرحبا!",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(color: AppColors.colorGray)),
                  Text("خالد احمد اسماعيل",
                      style: Theme.of(context).textTheme.headlineMedium),
                ],
              )
            ],
          ),
          Builder(builder: (context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                size: 30,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          }),
        ],
      ),
    );
  }
}
