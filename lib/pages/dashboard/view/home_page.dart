import 'package:flutter/material.dart';

import '../model/list_service.dart';
import 'widgets/custom_appbar.dart';
import 'widgets/custom_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const SizedBox(
            height: 30,
          ),
          Text("الخدمات", style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.2,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: services.length,
              itemBuilder: (context, index) {
                return LayoutBuilder(builder: (context, constrains) {
                  return Column(
                    children: [
                      Container(
                        height: constrains.maxHeight * .7,
                        margin: const EdgeInsets.only(right: 10),
                        width: MediaQuery.sizeOf(context).width * 0.4,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(
                                services[index].imageUrl,
                              ),
                              fit: BoxFit.cover),
                        ),
                        child: const Center(
                          child: Text("Service"),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        services[index].title,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  );
                });
              },
            ),
          )
        ],
      ),
    );
  }
}


