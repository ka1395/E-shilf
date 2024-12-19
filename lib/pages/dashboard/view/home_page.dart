import 'package:e_shilf/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../model/list_offers.dart';
import 'widgets/custom_appbar.dart';
import 'widgets/custom_drawer.dart';
import 'widgets/offers_listview.dart';
import 'widgets/service_lsitview.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(),
            const SizedBox(
              height: 30,
            ),
            Text("العروض", style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(
              height: 15,
            ),
            const OffersListView(),
            const SizedBox(
              height: 15,
            ),
            Text("الخدمات", style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(
              height: 15,
            ),
            const ServiceListView()
          ],
        ),
      ),
    );
  }
}

