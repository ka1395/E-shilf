

import 'package:flutter/material.dart';

import '../../../../core/app_colors.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.backGroundColorOnboarding,
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: DrawerHeader(
              decoration: const BoxDecoration(
                color: AppColors.primaryColorLight,
              ),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("assets/images/logo.jpg"),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "E-Shelf",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(color: AppColors.colorWhite),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: Text(
              "الصفحه الرئيسيه",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: Text(
              "حسابي",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: Text(
              "العدادات",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            onTap: () {},
          ),
          const Spacer(),
          ListTile(
          
            leading: const Icon(Icons.logout), 
            title: Text(
              "تسجيل خروج",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            onTap: () {},
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
